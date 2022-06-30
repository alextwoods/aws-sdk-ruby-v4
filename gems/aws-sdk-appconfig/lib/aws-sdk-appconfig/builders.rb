# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::AppConfig
  module Builders

    # Operation Builder for CreateApplication
    class CreateApplication
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/applications')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for TagMap
    class TagMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for CreateConfigurationProfile
    class CreateConfigurationProfile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<ApplicationId>s/configurationprofiles',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['LocationUri'] = input[:location_uri] unless input[:location_uri].nil?
        data['RetrievalRoleArn'] = input[:retrieval_role_arn] unless input[:retrieval_role_arn].nil?
        data['Validators'] = Builders::ValidatorList.build(input[:validators]) unless input[:validators].nil?
        data['Tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ValidatorList
    class ValidatorList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Validator.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Validator
    class Validator
      def self.build(input)
        data = {}
        data['Type'] = input[:type] unless input[:type].nil?
        data['Content'] = input[:content] unless input[:content].nil?
        data
      end
    end

    # Operation Builder for CreateDeploymentStrategy
    class CreateDeploymentStrategy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/deploymentstrategies')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['DeploymentDurationInMinutes'] = input[:deployment_duration_in_minutes] unless input[:deployment_duration_in_minutes].nil?
        data['FinalBakeTimeInMinutes'] = input[:final_bake_time_in_minutes] unless input[:final_bake_time_in_minutes].nil?
        data['GrowthFactor'] = Hearth::NumberHelper.serialize(input[:growth_factor]) unless input[:growth_factor].nil?
        data['GrowthType'] = input[:growth_type] unless input[:growth_type].nil?
        data['ReplicateTo'] = input[:replicate_to] unless input[:replicate_to].nil?
        data['Tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateEnvironment
    class CreateEnvironment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<ApplicationId>s/environments',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Monitors'] = Builders::MonitorList.build(input[:monitors]) unless input[:monitors].nil?
        data['Tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for MonitorList
    class MonitorList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Monitor.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Monitor
    class Monitor
      def self.build(input)
        data = {}
        data['AlarmArn'] = input[:alarm_arn] unless input[:alarm_arn].nil?
        data['AlarmRoleArn'] = input[:alarm_role_arn] unless input[:alarm_role_arn].nil?
        data
      end
    end

    # Operation Builder for CreateHostedConfigurationVersion
    class CreateHostedConfigurationVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        if input[:configuration_profile_id].to_s.empty?
          raise ArgumentError, "HTTP label :configuration_profile_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<ApplicationId>s/configurationprofiles/%<ConfigurationProfileId>s/hostedconfigurationversions',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s),
            ConfigurationProfileId: Hearth::HTTP.uri_escape(input[:configuration_profile_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/octet-stream'
        http_req.body = StringIO.new(input[:content] || '')
        http_req.headers['Description'] = input[:description] unless input[:description].nil? || input[:description].empty?
        http_req.headers['Content-Type'] = input[:content_type] unless input[:content_type].nil? || input[:content_type].empty?
        http_req.headers['Latest-Version-Number'] = input[:latest_version_number].to_s unless input[:latest_version_number].nil?
      end
    end

    # Operation Builder for DeleteApplication
    class DeleteApplication
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<ApplicationId>s',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteConfigurationProfile
    class DeleteConfigurationProfile
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        if input[:configuration_profile_id].to_s.empty?
          raise ArgumentError, "HTTP label :configuration_profile_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<ApplicationId>s/configurationprofiles/%<ConfigurationProfileId>s',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s),
            ConfigurationProfileId: Hearth::HTTP.uri_escape(input[:configuration_profile_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteDeploymentStrategy
    class DeleteDeploymentStrategy
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:deployment_strategy_id].to_s.empty?
          raise ArgumentError, "HTTP label :deployment_strategy_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/deployementstrategies/%<DeploymentStrategyId>s',
            DeploymentStrategyId: Hearth::HTTP.uri_escape(input[:deployment_strategy_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteEnvironment
    class DeleteEnvironment
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        if input[:environment_id].to_s.empty?
          raise ArgumentError, "HTTP label :environment_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<ApplicationId>s/environments/%<EnvironmentId>s',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s),
            EnvironmentId: Hearth::HTTP.uri_escape(input[:environment_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteHostedConfigurationVersion
    class DeleteHostedConfigurationVersion
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        if input[:configuration_profile_id].to_s.empty?
          raise ArgumentError, "HTTP label :configuration_profile_id cannot be nil or empty."
        end
        if input[:version_number].to_s.empty?
          raise ArgumentError, "HTTP label :version_number cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<ApplicationId>s/configurationprofiles/%<ConfigurationProfileId>s/hostedconfigurationversions/%<VersionNumber>s',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s),
            ConfigurationProfileId: Hearth::HTTP.uri_escape(input[:configuration_profile_id].to_s),
            VersionNumber: Hearth::HTTP.uri_escape(input[:version_number].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetApplication
    class GetApplication
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<ApplicationId>s',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetConfiguration
    class GetConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application].to_s.empty?
          raise ArgumentError, "HTTP label :application cannot be nil or empty."
        end
        if input[:environment].to_s.empty?
          raise ArgumentError, "HTTP label :environment cannot be nil or empty."
        end
        if input[:configuration].to_s.empty?
          raise ArgumentError, "HTTP label :configuration cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<Application>s/environments/%<Environment>s/configurations/%<Configuration>s',
            Application: Hearth::HTTP.uri_escape(input[:application].to_s),
            Environment: Hearth::HTTP.uri_escape(input[:environment].to_s),
            Configuration: Hearth::HTTP.uri_escape(input[:configuration].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['client_id'] = input[:client_id].to_s unless input[:client_id].nil?
        params['client_configuration_version'] = input[:client_configuration_version].to_s unless input[:client_configuration_version].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetConfigurationProfile
    class GetConfigurationProfile
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        if input[:configuration_profile_id].to_s.empty?
          raise ArgumentError, "HTTP label :configuration_profile_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<ApplicationId>s/configurationprofiles/%<ConfigurationProfileId>s',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s),
            ConfigurationProfileId: Hearth::HTTP.uri_escape(input[:configuration_profile_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetDeployment
    class GetDeployment
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        if input[:environment_id].to_s.empty?
          raise ArgumentError, "HTTP label :environment_id cannot be nil or empty."
        end
        if input[:deployment_number].to_s.empty?
          raise ArgumentError, "HTTP label :deployment_number cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<ApplicationId>s/environments/%<EnvironmentId>s/deployments/%<DeploymentNumber>s',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s),
            EnvironmentId: Hearth::HTTP.uri_escape(input[:environment_id].to_s),
            DeploymentNumber: Hearth::HTTP.uri_escape(input[:deployment_number].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetDeploymentStrategy
    class GetDeploymentStrategy
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:deployment_strategy_id].to_s.empty?
          raise ArgumentError, "HTTP label :deployment_strategy_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/deploymentstrategies/%<DeploymentStrategyId>s',
            DeploymentStrategyId: Hearth::HTTP.uri_escape(input[:deployment_strategy_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetEnvironment
    class GetEnvironment
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        if input[:environment_id].to_s.empty?
          raise ArgumentError, "HTTP label :environment_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<ApplicationId>s/environments/%<EnvironmentId>s',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s),
            EnvironmentId: Hearth::HTTP.uri_escape(input[:environment_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetHostedConfigurationVersion
    class GetHostedConfigurationVersion
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        if input[:configuration_profile_id].to_s.empty?
          raise ArgumentError, "HTTP label :configuration_profile_id cannot be nil or empty."
        end
        if input[:version_number].to_s.empty?
          raise ArgumentError, "HTTP label :version_number cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<ApplicationId>s/configurationprofiles/%<ConfigurationProfileId>s/hostedconfigurationversions/%<VersionNumber>s',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s),
            ConfigurationProfileId: Hearth::HTTP.uri_escape(input[:configuration_profile_id].to_s),
            VersionNumber: Hearth::HTTP.uri_escape(input[:version_number].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListApplications
    class ListApplications
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/applications')
        params = Hearth::Query::ParamList.new
        params['max_results'] = input[:max_results].to_s unless input[:max_results].nil?
        params['next_token'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListConfigurationProfiles
    class ListConfigurationProfiles
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<ApplicationId>s/configurationprofiles',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['max_results'] = input[:max_results].to_s unless input[:max_results].nil?
        params['next_token'] = input[:next_token].to_s unless input[:next_token].nil?
        params['type'] = input[:type].to_s unless input[:type].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListDeploymentStrategies
    class ListDeploymentStrategies
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/deploymentstrategies')
        params = Hearth::Query::ParamList.new
        params['max_results'] = input[:max_results].to_s unless input[:max_results].nil?
        params['next_token'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListDeployments
    class ListDeployments
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        if input[:environment_id].to_s.empty?
          raise ArgumentError, "HTTP label :environment_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<ApplicationId>s/environments/%<EnvironmentId>s/deployments',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s),
            EnvironmentId: Hearth::HTTP.uri_escape(input[:environment_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['max_results'] = input[:max_results].to_s unless input[:max_results].nil?
        params['next_token'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListEnvironments
    class ListEnvironments
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<ApplicationId>s/environments',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['max_results'] = input[:max_results].to_s unless input[:max_results].nil?
        params['next_token'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListHostedConfigurationVersions
    class ListHostedConfigurationVersions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        if input[:configuration_profile_id].to_s.empty?
          raise ArgumentError, "HTTP label :configuration_profile_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<ApplicationId>s/configurationprofiles/%<ConfigurationProfileId>s/hostedconfigurationversions',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s),
            ConfigurationProfileId: Hearth::HTTP.uri_escape(input[:configuration_profile_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['max_results'] = input[:max_results].to_s unless input[:max_results].nil?
        params['next_token'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for StartDeployment
    class StartDeployment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        if input[:environment_id].to_s.empty?
          raise ArgumentError, "HTTP label :environment_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<ApplicationId>s/environments/%<EnvironmentId>s/deployments',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s),
            EnvironmentId: Hearth::HTTP.uri_escape(input[:environment_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['DeploymentStrategyId'] = input[:deployment_strategy_id] unless input[:deployment_strategy_id].nil?
        data['ConfigurationProfileId'] = input[:configuration_profile_id] unless input[:configuration_profile_id].nil?
        data['ConfigurationVersion'] = input[:configuration_version] unless input[:configuration_version].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopDeployment
    class StopDeployment
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        if input[:environment_id].to_s.empty?
          raise ArgumentError, "HTTP label :environment_id cannot be nil or empty."
        end
        if input[:deployment_number].to_s.empty?
          raise ArgumentError, "HTTP label :deployment_number cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<ApplicationId>s/environments/%<EnvironmentId>s/deployments/%<DeploymentNumber>s',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s),
            EnvironmentId: Hearth::HTTP.uri_escape(input[:environment_id].to_s),
            DeploymentNumber: Hearth::HTTP.uri_escape(input[:deployment_number].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:tag_keys].nil? || input[:tag_keys].empty?
          params['tagKeys'] = input[:tag_keys].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateApplication
    class UpdateApplication
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<ApplicationId>s',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateConfigurationProfile
    class UpdateConfigurationProfile
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        if input[:configuration_profile_id].to_s.empty?
          raise ArgumentError, "HTTP label :configuration_profile_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<ApplicationId>s/configurationprofiles/%<ConfigurationProfileId>s',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s),
            ConfigurationProfileId: Hearth::HTTP.uri_escape(input[:configuration_profile_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['RetrievalRoleArn'] = input[:retrieval_role_arn] unless input[:retrieval_role_arn].nil?
        data['Validators'] = Builders::ValidatorList.build(input[:validators]) unless input[:validators].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateDeploymentStrategy
    class UpdateDeploymentStrategy
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:deployment_strategy_id].to_s.empty?
          raise ArgumentError, "HTTP label :deployment_strategy_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/deploymentstrategies/%<DeploymentStrategyId>s',
            DeploymentStrategyId: Hearth::HTTP.uri_escape(input[:deployment_strategy_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Description'] = input[:description] unless input[:description].nil?
        data['DeploymentDurationInMinutes'] = input[:deployment_duration_in_minutes] unless input[:deployment_duration_in_minutes].nil?
        data['FinalBakeTimeInMinutes'] = input[:final_bake_time_in_minutes] unless input[:final_bake_time_in_minutes].nil?
        data['GrowthFactor'] = Hearth::NumberHelper.serialize(input[:growth_factor]) unless input[:growth_factor].nil?
        data['GrowthType'] = input[:growth_type] unless input[:growth_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateEnvironment
    class UpdateEnvironment
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        if input[:environment_id].to_s.empty?
          raise ArgumentError, "HTTP label :environment_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<ApplicationId>s/environments/%<EnvironmentId>s',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s),
            EnvironmentId: Hearth::HTTP.uri_escape(input[:environment_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Monitors'] = Builders::MonitorList.build(input[:monitors]) unless input[:monitors].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ValidateConfiguration
    class ValidateConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        if input[:configuration_profile_id].to_s.empty?
          raise ArgumentError, "HTTP label :configuration_profile_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<ApplicationId>s/configurationprofiles/%<ConfigurationProfileId>s/validators',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s),
            ConfigurationProfileId: Hearth::HTTP.uri_escape(input[:configuration_profile_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['configuration_version'] = input[:configuration_version].to_s unless input[:configuration_version].nil?
        http_req.append_query_params(params)
      end
    end
  end
end
