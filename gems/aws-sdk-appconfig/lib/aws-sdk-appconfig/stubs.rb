# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::AppConfig
  module Stubs

    # Operation Stubber for CreateApplication
    class CreateApplication
      def self.default(visited=[])
        {
          id: 'id',
          name: 'name',
          description: 'description',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateConfigurationProfile
    class CreateConfigurationProfile
      def self.default(visited=[])
        {
          application_id: 'application_id',
          id: 'id',
          name: 'name',
          description: 'description',
          location_uri: 'location_uri',
          retrieval_role_arn: 'retrieval_role_arn',
          validators: ValidatorList.default(visited),
          type: 'type',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['ApplicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['LocationUri'] = stub[:location_uri] unless stub[:location_uri].nil?
        data['RetrievalRoleArn'] = stub[:retrieval_role_arn] unless stub[:retrieval_role_arn].nil?
        data['Validators'] = Stubs::ValidatorList.stub(stub[:validators]) unless stub[:validators].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ValidatorList
    class ValidatorList
      def self.default(visited=[])
        return nil if visited.include?('ValidatorList')
        visited = visited + ['ValidatorList']
        [
          Validator.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Validator.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Validator
    class Validator
      def self.default(visited=[])
        return nil if visited.include?('Validator')
        visited = visited + ['Validator']
        {
          type: 'type',
          content: 'content',
        }
      end

      def self.stub(stub)
        stub ||= Types::Validator.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Content'] = stub[:content] unless stub[:content].nil?
        data
      end
    end

    # Operation Stubber for CreateDeploymentStrategy
    class CreateDeploymentStrategy
      def self.default(visited=[])
        {
          id: 'id',
          name: 'name',
          description: 'description',
          deployment_duration_in_minutes: 1,
          growth_type: 'growth_type',
          growth_factor: 1.0,
          final_bake_time_in_minutes: 1,
          replicate_to: 'replicate_to',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['DeploymentDurationInMinutes'] = stub[:deployment_duration_in_minutes] unless stub[:deployment_duration_in_minutes].nil?
        data['GrowthType'] = stub[:growth_type] unless stub[:growth_type].nil?
        data['GrowthFactor'] = Hearth::NumberHelper.serialize(stub[:growth_factor])
        data['FinalBakeTimeInMinutes'] = stub[:final_bake_time_in_minutes] unless stub[:final_bake_time_in_minutes].nil?
        data['ReplicateTo'] = stub[:replicate_to] unless stub[:replicate_to].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateEnvironment
    class CreateEnvironment
      def self.default(visited=[])
        {
          application_id: 'application_id',
          id: 'id',
          name: 'name',
          description: 'description',
          state: 'state',
          monitors: MonitorList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['ApplicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['Monitors'] = Stubs::MonitorList.stub(stub[:monitors]) unless stub[:monitors].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for MonitorList
    class MonitorList
      def self.default(visited=[])
        return nil if visited.include?('MonitorList')
        visited = visited + ['MonitorList']
        [
          Monitor.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Monitor.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Monitor
    class Monitor
      def self.default(visited=[])
        return nil if visited.include?('Monitor')
        visited = visited + ['Monitor']
        {
          alarm_arn: 'alarm_arn',
          alarm_role_arn: 'alarm_role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::Monitor.new
        data = {}
        data['AlarmArn'] = stub[:alarm_arn] unless stub[:alarm_arn].nil?
        data['AlarmRoleArn'] = stub[:alarm_role_arn] unless stub[:alarm_role_arn].nil?
        data
      end
    end

    # Operation Stubber for CreateHostedConfigurationVersion
    class CreateHostedConfigurationVersion
      def self.default(visited=[])
        {
          application_id: 'application_id',
          configuration_profile_id: 'configuration_profile_id',
          version_number: 1,
          description: 'description',
          content: 'content',
          content_type: 'content_type',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Application-Id'] = stub[:application_id] unless stub[:application_id].nil? || stub[:application_id].empty?
        http_resp.headers['Configuration-Profile-Id'] = stub[:configuration_profile_id] unless stub[:configuration_profile_id].nil? || stub[:configuration_profile_id].empty?
        http_resp.headers['Version-Number'] = stub[:version_number].to_s unless stub[:version_number].nil?
        http_resp.headers['Description'] = stub[:description] unless stub[:description].nil? || stub[:description].empty?
        http_resp.headers['Content-Type'] = stub[:content_type] unless stub[:content_type].nil? || stub[:content_type].empty?
        http_resp.headers['Content-Type'] = 'application/octet-stream'
        http_resp.body = StringIO.new(stub[:content] || '')
      end
    end

    # Operation Stubber for DeleteApplication
    class DeleteApplication
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteConfigurationProfile
    class DeleteConfigurationProfile
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteDeploymentStrategy
    class DeleteDeploymentStrategy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteEnvironment
    class DeleteEnvironment
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteHostedConfigurationVersion
    class DeleteHostedConfigurationVersion
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for GetApplication
    class GetApplication
      def self.default(visited=[])
        {
          id: 'id',
          name: 'name',
          description: 'description',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetConfiguration
    class GetConfiguration
      def self.default(visited=[])
        {
          content: 'content',
          configuration_version: 'configuration_version',
          content_type: 'content_type',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Configuration-Version'] = stub[:configuration_version] unless stub[:configuration_version].nil? || stub[:configuration_version].empty?
        http_resp.headers['Content-Type'] = stub[:content_type] unless stub[:content_type].nil? || stub[:content_type].empty?
        http_resp.headers['Content-Type'] = 'application/octet-stream'
        http_resp.body = StringIO.new(stub[:content] || '')
      end
    end

    # Operation Stubber for GetConfigurationProfile
    class GetConfigurationProfile
      def self.default(visited=[])
        {
          application_id: 'application_id',
          id: 'id',
          name: 'name',
          description: 'description',
          location_uri: 'location_uri',
          retrieval_role_arn: 'retrieval_role_arn',
          validators: ValidatorList.default(visited),
          type: 'type',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ApplicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['LocationUri'] = stub[:location_uri] unless stub[:location_uri].nil?
        data['RetrievalRoleArn'] = stub[:retrieval_role_arn] unless stub[:retrieval_role_arn].nil?
        data['Validators'] = Stubs::ValidatorList.stub(stub[:validators]) unless stub[:validators].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetDeployment
    class GetDeployment
      def self.default(visited=[])
        {
          application_id: 'application_id',
          environment_id: 'environment_id',
          deployment_strategy_id: 'deployment_strategy_id',
          configuration_profile_id: 'configuration_profile_id',
          deployment_number: 1,
          configuration_name: 'configuration_name',
          configuration_location_uri: 'configuration_location_uri',
          configuration_version: 'configuration_version',
          description: 'description',
          deployment_duration_in_minutes: 1,
          growth_type: 'growth_type',
          growth_factor: 1.0,
          final_bake_time_in_minutes: 1,
          state: 'state',
          event_log: DeploymentEvents.default(visited),
          percentage_complete: 1.0,
          started_at: Time.now,
          completed_at: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ApplicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['EnvironmentId'] = stub[:environment_id] unless stub[:environment_id].nil?
        data['DeploymentStrategyId'] = stub[:deployment_strategy_id] unless stub[:deployment_strategy_id].nil?
        data['ConfigurationProfileId'] = stub[:configuration_profile_id] unless stub[:configuration_profile_id].nil?
        data['DeploymentNumber'] = stub[:deployment_number] unless stub[:deployment_number].nil?
        data['ConfigurationName'] = stub[:configuration_name] unless stub[:configuration_name].nil?
        data['ConfigurationLocationUri'] = stub[:configuration_location_uri] unless stub[:configuration_location_uri].nil?
        data['ConfigurationVersion'] = stub[:configuration_version] unless stub[:configuration_version].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['DeploymentDurationInMinutes'] = stub[:deployment_duration_in_minutes] unless stub[:deployment_duration_in_minutes].nil?
        data['GrowthType'] = stub[:growth_type] unless stub[:growth_type].nil?
        data['GrowthFactor'] = Hearth::NumberHelper.serialize(stub[:growth_factor])
        data['FinalBakeTimeInMinutes'] = stub[:final_bake_time_in_minutes] unless stub[:final_bake_time_in_minutes].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['EventLog'] = Stubs::DeploymentEvents.stub(stub[:event_log]) unless stub[:event_log].nil?
        data['PercentageComplete'] = Hearth::NumberHelper.serialize(stub[:percentage_complete])
        data['StartedAt'] = Hearth::TimeHelper.to_date_time(stub[:started_at]) unless stub[:started_at].nil?
        data['CompletedAt'] = Hearth::TimeHelper.to_date_time(stub[:completed_at]) unless stub[:completed_at].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DeploymentEvents
    class DeploymentEvents
      def self.default(visited=[])
        return nil if visited.include?('DeploymentEvents')
        visited = visited + ['DeploymentEvents']
        [
          DeploymentEvent.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DeploymentEvent.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DeploymentEvent
    class DeploymentEvent
      def self.default(visited=[])
        return nil if visited.include?('DeploymentEvent')
        visited = visited + ['DeploymentEvent']
        {
          event_type: 'event_type',
          triggered_by: 'triggered_by',
          description: 'description',
          occurred_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::DeploymentEvent.new
        data = {}
        data['EventType'] = stub[:event_type] unless stub[:event_type].nil?
        data['TriggeredBy'] = stub[:triggered_by] unless stub[:triggered_by].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['OccurredAt'] = Hearth::TimeHelper.to_date_time(stub[:occurred_at]) unless stub[:occurred_at].nil?
        data
      end
    end

    # Operation Stubber for GetDeploymentStrategy
    class GetDeploymentStrategy
      def self.default(visited=[])
        {
          id: 'id',
          name: 'name',
          description: 'description',
          deployment_duration_in_minutes: 1,
          growth_type: 'growth_type',
          growth_factor: 1.0,
          final_bake_time_in_minutes: 1,
          replicate_to: 'replicate_to',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['DeploymentDurationInMinutes'] = stub[:deployment_duration_in_minutes] unless stub[:deployment_duration_in_minutes].nil?
        data['GrowthType'] = stub[:growth_type] unless stub[:growth_type].nil?
        data['GrowthFactor'] = Hearth::NumberHelper.serialize(stub[:growth_factor])
        data['FinalBakeTimeInMinutes'] = stub[:final_bake_time_in_minutes] unless stub[:final_bake_time_in_minutes].nil?
        data['ReplicateTo'] = stub[:replicate_to] unless stub[:replicate_to].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetEnvironment
    class GetEnvironment
      def self.default(visited=[])
        {
          application_id: 'application_id',
          id: 'id',
          name: 'name',
          description: 'description',
          state: 'state',
          monitors: MonitorList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ApplicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['Monitors'] = Stubs::MonitorList.stub(stub[:monitors]) unless stub[:monitors].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetHostedConfigurationVersion
    class GetHostedConfigurationVersion
      def self.default(visited=[])
        {
          application_id: 'application_id',
          configuration_profile_id: 'configuration_profile_id',
          version_number: 1,
          description: 'description',
          content: 'content',
          content_type: 'content_type',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Application-Id'] = stub[:application_id] unless stub[:application_id].nil? || stub[:application_id].empty?
        http_resp.headers['Configuration-Profile-Id'] = stub[:configuration_profile_id] unless stub[:configuration_profile_id].nil? || stub[:configuration_profile_id].empty?
        http_resp.headers['Version-Number'] = stub[:version_number].to_s unless stub[:version_number].nil?
        http_resp.headers['Description'] = stub[:description] unless stub[:description].nil? || stub[:description].empty?
        http_resp.headers['Content-Type'] = stub[:content_type] unless stub[:content_type].nil? || stub[:content_type].empty?
        http_resp.headers['Content-Type'] = 'application/octet-stream'
        http_resp.body = StringIO.new(stub[:content] || '')
      end
    end

    # Operation Stubber for ListApplications
    class ListApplications
      def self.default(visited=[])
        {
          items: ApplicationList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Items'] = Stubs::ApplicationList.stub(stub[:items]) unless stub[:items].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ApplicationList
    class ApplicationList
      def self.default(visited=[])
        return nil if visited.include?('ApplicationList')
        visited = visited + ['ApplicationList']
        [
          Application.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Application.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Application
    class Application
      def self.default(visited=[])
        return nil if visited.include?('Application')
        visited = visited + ['Application']
        {
          id: 'id',
          name: 'name',
          description: 'description',
        }
      end

      def self.stub(stub)
        stub ||= Types::Application.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data
      end
    end

    # Operation Stubber for ListConfigurationProfiles
    class ListConfigurationProfiles
      def self.default(visited=[])
        {
          items: ConfigurationProfileSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Items'] = Stubs::ConfigurationProfileSummaryList.stub(stub[:items]) unless stub[:items].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ConfigurationProfileSummaryList
    class ConfigurationProfileSummaryList
      def self.default(visited=[])
        return nil if visited.include?('ConfigurationProfileSummaryList')
        visited = visited + ['ConfigurationProfileSummaryList']
        [
          ConfigurationProfileSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ConfigurationProfileSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ConfigurationProfileSummary
    class ConfigurationProfileSummary
      def self.default(visited=[])
        return nil if visited.include?('ConfigurationProfileSummary')
        visited = visited + ['ConfigurationProfileSummary']
        {
          application_id: 'application_id',
          id: 'id',
          name: 'name',
          location_uri: 'location_uri',
          validator_types: ValidatorTypeList.default(visited),
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::ConfigurationProfileSummary.new
        data = {}
        data['ApplicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['LocationUri'] = stub[:location_uri] unless stub[:location_uri].nil?
        data['ValidatorTypes'] = Stubs::ValidatorTypeList.stub(stub[:validator_types]) unless stub[:validator_types].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # List Stubber for ValidatorTypeList
    class ValidatorTypeList
      def self.default(visited=[])
        return nil if visited.include?('ValidatorTypeList')
        visited = visited + ['ValidatorTypeList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListDeploymentStrategies
    class ListDeploymentStrategies
      def self.default(visited=[])
        {
          items: DeploymentStrategyList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Items'] = Stubs::DeploymentStrategyList.stub(stub[:items]) unless stub[:items].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DeploymentStrategyList
    class DeploymentStrategyList
      def self.default(visited=[])
        return nil if visited.include?('DeploymentStrategyList')
        visited = visited + ['DeploymentStrategyList']
        [
          DeploymentStrategy.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DeploymentStrategy.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DeploymentStrategy
    class DeploymentStrategy
      def self.default(visited=[])
        return nil if visited.include?('DeploymentStrategy')
        visited = visited + ['DeploymentStrategy']
        {
          id: 'id',
          name: 'name',
          description: 'description',
          deployment_duration_in_minutes: 1,
          growth_type: 'growth_type',
          growth_factor: 1.0,
          final_bake_time_in_minutes: 1,
          replicate_to: 'replicate_to',
        }
      end

      def self.stub(stub)
        stub ||= Types::DeploymentStrategy.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['DeploymentDurationInMinutes'] = stub[:deployment_duration_in_minutes] unless stub[:deployment_duration_in_minutes].nil?
        data['GrowthType'] = stub[:growth_type] unless stub[:growth_type].nil?
        data['GrowthFactor'] = Hearth::NumberHelper.serialize(stub[:growth_factor])
        data['FinalBakeTimeInMinutes'] = stub[:final_bake_time_in_minutes] unless stub[:final_bake_time_in_minutes].nil?
        data['ReplicateTo'] = stub[:replicate_to] unless stub[:replicate_to].nil?
        data
      end
    end

    # Operation Stubber for ListDeployments
    class ListDeployments
      def self.default(visited=[])
        {
          items: DeploymentList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Items'] = Stubs::DeploymentList.stub(stub[:items]) unless stub[:items].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DeploymentList
    class DeploymentList
      def self.default(visited=[])
        return nil if visited.include?('DeploymentList')
        visited = visited + ['DeploymentList']
        [
          DeploymentSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DeploymentSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DeploymentSummary
    class DeploymentSummary
      def self.default(visited=[])
        return nil if visited.include?('DeploymentSummary')
        visited = visited + ['DeploymentSummary']
        {
          deployment_number: 1,
          configuration_name: 'configuration_name',
          configuration_version: 'configuration_version',
          deployment_duration_in_minutes: 1,
          growth_type: 'growth_type',
          growth_factor: 1.0,
          final_bake_time_in_minutes: 1,
          state: 'state',
          percentage_complete: 1.0,
          started_at: Time.now,
          completed_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::DeploymentSummary.new
        data = {}
        data['DeploymentNumber'] = stub[:deployment_number] unless stub[:deployment_number].nil?
        data['ConfigurationName'] = stub[:configuration_name] unless stub[:configuration_name].nil?
        data['ConfigurationVersion'] = stub[:configuration_version] unless stub[:configuration_version].nil?
        data['DeploymentDurationInMinutes'] = stub[:deployment_duration_in_minutes] unless stub[:deployment_duration_in_minutes].nil?
        data['GrowthType'] = stub[:growth_type] unless stub[:growth_type].nil?
        data['GrowthFactor'] = Hearth::NumberHelper.serialize(stub[:growth_factor])
        data['FinalBakeTimeInMinutes'] = stub[:final_bake_time_in_minutes] unless stub[:final_bake_time_in_minutes].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['PercentageComplete'] = Hearth::NumberHelper.serialize(stub[:percentage_complete])
        data['StartedAt'] = Hearth::TimeHelper.to_date_time(stub[:started_at]) unless stub[:started_at].nil?
        data['CompletedAt'] = Hearth::TimeHelper.to_date_time(stub[:completed_at]) unless stub[:completed_at].nil?
        data
      end
    end

    # Operation Stubber for ListEnvironments
    class ListEnvironments
      def self.default(visited=[])
        {
          items: EnvironmentList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Items'] = Stubs::EnvironmentList.stub(stub[:items]) unless stub[:items].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for EnvironmentList
    class EnvironmentList
      def self.default(visited=[])
        return nil if visited.include?('EnvironmentList')
        visited = visited + ['EnvironmentList']
        [
          Environment.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Environment.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Environment
    class Environment
      def self.default(visited=[])
        return nil if visited.include?('Environment')
        visited = visited + ['Environment']
        {
          application_id: 'application_id',
          id: 'id',
          name: 'name',
          description: 'description',
          state: 'state',
          monitors: MonitorList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Environment.new
        data = {}
        data['ApplicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['Monitors'] = Stubs::MonitorList.stub(stub[:monitors]) unless stub[:monitors].nil?
        data
      end
    end

    # Operation Stubber for ListHostedConfigurationVersions
    class ListHostedConfigurationVersions
      def self.default(visited=[])
        {
          items: HostedConfigurationVersionSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Items'] = Stubs::HostedConfigurationVersionSummaryList.stub(stub[:items]) unless stub[:items].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for HostedConfigurationVersionSummaryList
    class HostedConfigurationVersionSummaryList
      def self.default(visited=[])
        return nil if visited.include?('HostedConfigurationVersionSummaryList')
        visited = visited + ['HostedConfigurationVersionSummaryList']
        [
          HostedConfigurationVersionSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::HostedConfigurationVersionSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for HostedConfigurationVersionSummary
    class HostedConfigurationVersionSummary
      def self.default(visited=[])
        return nil if visited.include?('HostedConfigurationVersionSummary')
        visited = visited + ['HostedConfigurationVersionSummary']
        {
          application_id: 'application_id',
          configuration_profile_id: 'configuration_profile_id',
          version_number: 1,
          description: 'description',
          content_type: 'content_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::HostedConfigurationVersionSummary.new
        data = {}
        data['ApplicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['ConfigurationProfileId'] = stub[:configuration_profile_id] unless stub[:configuration_profile_id].nil?
        data['VersionNumber'] = stub[:version_number] unless stub[:version_number].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['ContentType'] = stub[:content_type] unless stub[:content_type].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for TagMap
    class TagMap
      def self.default(visited=[])
        return nil if visited.include?('TagMap')
        visited = visited + ['TagMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for StartDeployment
    class StartDeployment
      def self.default(visited=[])
        {
          application_id: 'application_id',
          environment_id: 'environment_id',
          deployment_strategy_id: 'deployment_strategy_id',
          configuration_profile_id: 'configuration_profile_id',
          deployment_number: 1,
          configuration_name: 'configuration_name',
          configuration_location_uri: 'configuration_location_uri',
          configuration_version: 'configuration_version',
          description: 'description',
          deployment_duration_in_minutes: 1,
          growth_type: 'growth_type',
          growth_factor: 1.0,
          final_bake_time_in_minutes: 1,
          state: 'state',
          event_log: DeploymentEvents.default(visited),
          percentage_complete: 1.0,
          started_at: Time.now,
          completed_at: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['ApplicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['EnvironmentId'] = stub[:environment_id] unless stub[:environment_id].nil?
        data['DeploymentStrategyId'] = stub[:deployment_strategy_id] unless stub[:deployment_strategy_id].nil?
        data['ConfigurationProfileId'] = stub[:configuration_profile_id] unless stub[:configuration_profile_id].nil?
        data['DeploymentNumber'] = stub[:deployment_number] unless stub[:deployment_number].nil?
        data['ConfigurationName'] = stub[:configuration_name] unless stub[:configuration_name].nil?
        data['ConfigurationLocationUri'] = stub[:configuration_location_uri] unless stub[:configuration_location_uri].nil?
        data['ConfigurationVersion'] = stub[:configuration_version] unless stub[:configuration_version].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['DeploymentDurationInMinutes'] = stub[:deployment_duration_in_minutes] unless stub[:deployment_duration_in_minutes].nil?
        data['GrowthType'] = stub[:growth_type] unless stub[:growth_type].nil?
        data['GrowthFactor'] = Hearth::NumberHelper.serialize(stub[:growth_factor])
        data['FinalBakeTimeInMinutes'] = stub[:final_bake_time_in_minutes] unless stub[:final_bake_time_in_minutes].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['EventLog'] = Stubs::DeploymentEvents.stub(stub[:event_log]) unless stub[:event_log].nil?
        data['PercentageComplete'] = Hearth::NumberHelper.serialize(stub[:percentage_complete])
        data['StartedAt'] = Hearth::TimeHelper.to_date_time(stub[:started_at]) unless stub[:started_at].nil?
        data['CompletedAt'] = Hearth::TimeHelper.to_date_time(stub[:completed_at]) unless stub[:completed_at].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StopDeployment
    class StopDeployment
      def self.default(visited=[])
        {
          application_id: 'application_id',
          environment_id: 'environment_id',
          deployment_strategy_id: 'deployment_strategy_id',
          configuration_profile_id: 'configuration_profile_id',
          deployment_number: 1,
          configuration_name: 'configuration_name',
          configuration_location_uri: 'configuration_location_uri',
          configuration_version: 'configuration_version',
          description: 'description',
          deployment_duration_in_minutes: 1,
          growth_type: 'growth_type',
          growth_factor: 1.0,
          final_bake_time_in_minutes: 1,
          state: 'state',
          event_log: DeploymentEvents.default(visited),
          percentage_complete: 1.0,
          started_at: Time.now,
          completed_at: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['ApplicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['EnvironmentId'] = stub[:environment_id] unless stub[:environment_id].nil?
        data['DeploymentStrategyId'] = stub[:deployment_strategy_id] unless stub[:deployment_strategy_id].nil?
        data['ConfigurationProfileId'] = stub[:configuration_profile_id] unless stub[:configuration_profile_id].nil?
        data['DeploymentNumber'] = stub[:deployment_number] unless stub[:deployment_number].nil?
        data['ConfigurationName'] = stub[:configuration_name] unless stub[:configuration_name].nil?
        data['ConfigurationLocationUri'] = stub[:configuration_location_uri] unless stub[:configuration_location_uri].nil?
        data['ConfigurationVersion'] = stub[:configuration_version] unless stub[:configuration_version].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['DeploymentDurationInMinutes'] = stub[:deployment_duration_in_minutes] unless stub[:deployment_duration_in_minutes].nil?
        data['GrowthType'] = stub[:growth_type] unless stub[:growth_type].nil?
        data['GrowthFactor'] = Hearth::NumberHelper.serialize(stub[:growth_factor])
        data['FinalBakeTimeInMinutes'] = stub[:final_bake_time_in_minutes] unless stub[:final_bake_time_in_minutes].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['EventLog'] = Stubs::DeploymentEvents.stub(stub[:event_log]) unless stub[:event_log].nil?
        data['PercentageComplete'] = Hearth::NumberHelper.serialize(stub[:percentage_complete])
        data['StartedAt'] = Hearth::TimeHelper.to_date_time(stub[:started_at]) unless stub[:started_at].nil?
        data['CompletedAt'] = Hearth::TimeHelper.to_date_time(stub[:completed_at]) unless stub[:completed_at].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for UpdateApplication
    class UpdateApplication
      def self.default(visited=[])
        {
          id: 'id',
          name: 'name',
          description: 'description',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateConfigurationProfile
    class UpdateConfigurationProfile
      def self.default(visited=[])
        {
          application_id: 'application_id',
          id: 'id',
          name: 'name',
          description: 'description',
          location_uri: 'location_uri',
          retrieval_role_arn: 'retrieval_role_arn',
          validators: ValidatorList.default(visited),
          type: 'type',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ApplicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['LocationUri'] = stub[:location_uri] unless stub[:location_uri].nil?
        data['RetrievalRoleArn'] = stub[:retrieval_role_arn] unless stub[:retrieval_role_arn].nil?
        data['Validators'] = Stubs::ValidatorList.stub(stub[:validators]) unless stub[:validators].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateDeploymentStrategy
    class UpdateDeploymentStrategy
      def self.default(visited=[])
        {
          id: 'id',
          name: 'name',
          description: 'description',
          deployment_duration_in_minutes: 1,
          growth_type: 'growth_type',
          growth_factor: 1.0,
          final_bake_time_in_minutes: 1,
          replicate_to: 'replicate_to',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['DeploymentDurationInMinutes'] = stub[:deployment_duration_in_minutes] unless stub[:deployment_duration_in_minutes].nil?
        data['GrowthType'] = stub[:growth_type] unless stub[:growth_type].nil?
        data['GrowthFactor'] = Hearth::NumberHelper.serialize(stub[:growth_factor])
        data['FinalBakeTimeInMinutes'] = stub[:final_bake_time_in_minutes] unless stub[:final_bake_time_in_minutes].nil?
        data['ReplicateTo'] = stub[:replicate_to] unless stub[:replicate_to].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateEnvironment
    class UpdateEnvironment
      def self.default(visited=[])
        {
          application_id: 'application_id',
          id: 'id',
          name: 'name',
          description: 'description',
          state: 'state',
          monitors: MonitorList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ApplicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['Monitors'] = Stubs::MonitorList.stub(stub[:monitors]) unless stub[:monitors].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ValidateConfiguration
    class ValidateConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end
  end
end
