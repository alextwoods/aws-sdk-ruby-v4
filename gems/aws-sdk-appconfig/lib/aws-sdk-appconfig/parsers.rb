# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::AppConfig
  module Parsers

    # Operation Parser for CreateApplication
    class CreateApplication
      def self.parse(http_resp)
        data = Types::CreateApplicationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.id = map['Id']
        data.name = map['Name']
        data.description = map['Description']
        data
      end
    end

    # Error Parser for BadRequestException
    class BadRequestException
      def self.parse(http_resp)
        data = Types::BadRequestException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.reason = map['Reason']
        data.details = (BadRequestDetails.parse(map['Details']) unless map['Details'].nil?)
        data
      end
    end

    class BadRequestDetails
      def self.parse(map)
        key, value = map.flatten
        case key
        when 'InvalidConfiguration'
          value = (InvalidConfigurationDetailList.parse(value) unless value.nil?)
          Types::BadRequestDetails::InvalidConfiguration.new(value) if value
        else
          Types::BadRequestDetails::Unknown.new({name: key, value: value})
        end
      end
    end

    class InvalidConfigurationDetailList
      def self.parse(list)
        data = []
        list.map do |value|
          data << InvalidConfigurationDetail.parse(value) unless value.nil?
        end
        data
      end
    end

    class InvalidConfigurationDetail
      def self.parse(map)
        data = Types::InvalidConfigurationDetail.new
        data.constraint = map['Constraint']
        data.location = map['Location']
        data.reason = map['Reason']
        data.type = map['Type']
        return data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateConfigurationProfile
    class CreateConfigurationProfile
      def self.parse(http_resp)
        data = Types::CreateConfigurationProfileOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.application_id = map['ApplicationId']
        data.id = map['Id']
        data.name = map['Name']
        data.description = map['Description']
        data.location_uri = map['LocationUri']
        data.retrieval_role_arn = map['RetrievalRoleArn']
        data.validators = (ValidatorList.parse(map['Validators']) unless map['Validators'].nil?)
        data.type = map['Type']
        data
      end
    end

    class ValidatorList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Validator.parse(value) unless value.nil?
        end
        data
      end
    end

    class Validator
      def self.parse(map)
        data = Types::Validator.new
        data.type = map['Type']
        data.content = map['Content']
        return data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.resource_name = map['ResourceName']
        data
      end
    end

    # Operation Parser for CreateDeploymentStrategy
    class CreateDeploymentStrategy
      def self.parse(http_resp)
        data = Types::CreateDeploymentStrategyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.id = map['Id']
        data.name = map['Name']
        data.description = map['Description']
        data.deployment_duration_in_minutes = map['DeploymentDurationInMinutes']
        data.growth_type = map['GrowthType']
        data.growth_factor = Hearth::NumberHelper.deserialize(map['GrowthFactor'])
        data.final_bake_time_in_minutes = map['FinalBakeTimeInMinutes']
        data.replicate_to = map['ReplicateTo']
        data
      end
    end

    # Operation Parser for CreateEnvironment
    class CreateEnvironment
      def self.parse(http_resp)
        data = Types::CreateEnvironmentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.application_id = map['ApplicationId']
        data.id = map['Id']
        data.name = map['Name']
        data.description = map['Description']
        data.state = map['State']
        data.monitors = (MonitorList.parse(map['Monitors']) unless map['Monitors'].nil?)
        data
      end
    end

    class MonitorList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Monitor.parse(value) unless value.nil?
        end
        data
      end
    end

    class Monitor
      def self.parse(map)
        data = Types::Monitor.new
        data.alarm_arn = map['AlarmArn']
        data.alarm_role_arn = map['AlarmRoleArn']
        return data
      end
    end

    # Operation Parser for CreateHostedConfigurationVersion
    class CreateHostedConfigurationVersion
      def self.parse(http_resp)
        data = Types::CreateHostedConfigurationVersionOutput.new
        data.application_id = http_resp.headers['Application-Id']
        data.configuration_profile_id = http_resp.headers['Configuration-Profile-Id']
        data.version_number = http_resp.headers['Version-Number'].to_i unless http_resp.headers['Version-Number'].nil?
        data.description = http_resp.headers['Description']
        data.content_type = http_resp.headers['Content-Type']
        payload = http_resp.body.read
        data.content = payload unless payload.empty?
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for PayloadTooLargeException
    class PayloadTooLargeException
      def self.parse(http_resp)
        data = Types::PayloadTooLargeException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.measure = map['Measure']
        data.limit = Hearth::NumberHelper.deserialize(map['Limit'])
        data.size = Hearth::NumberHelper.deserialize(map['Size'])
        data
      end
    end

    # Error Parser for ServiceQuotaExceededException
    class ServiceQuotaExceededException
      def self.parse(http_resp)
        data = Types::ServiceQuotaExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteApplication
    class DeleteApplication
      def self.parse(http_resp)
        data = Types::DeleteApplicationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteConfigurationProfile
    class DeleteConfigurationProfile
      def self.parse(http_resp)
        data = Types::DeleteConfigurationProfileOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteDeploymentStrategy
    class DeleteDeploymentStrategy
      def self.parse(http_resp)
        data = Types::DeleteDeploymentStrategyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteEnvironment
    class DeleteEnvironment
      def self.parse(http_resp)
        data = Types::DeleteEnvironmentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteHostedConfigurationVersion
    class DeleteHostedConfigurationVersion
      def self.parse(http_resp)
        data = Types::DeleteHostedConfigurationVersionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for GetApplication
    class GetApplication
      def self.parse(http_resp)
        data = Types::GetApplicationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.id = map['Id']
        data.name = map['Name']
        data.description = map['Description']
        data
      end
    end

    # Operation Parser for GetConfiguration
    class GetConfiguration
      def self.parse(http_resp)
        data = Types::GetConfigurationOutput.new
        data.configuration_version = http_resp.headers['Configuration-Version']
        data.content_type = http_resp.headers['Content-Type']
        payload = http_resp.body.read
        data.content = payload unless payload.empty?
        data
      end
    end

    # Operation Parser for GetConfigurationProfile
    class GetConfigurationProfile
      def self.parse(http_resp)
        data = Types::GetConfigurationProfileOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.application_id = map['ApplicationId']
        data.id = map['Id']
        data.name = map['Name']
        data.description = map['Description']
        data.location_uri = map['LocationUri']
        data.retrieval_role_arn = map['RetrievalRoleArn']
        data.validators = (ValidatorList.parse(map['Validators']) unless map['Validators'].nil?)
        data.type = map['Type']
        data
      end
    end

    # Operation Parser for GetDeployment
    class GetDeployment
      def self.parse(http_resp)
        data = Types::GetDeploymentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.application_id = map['ApplicationId']
        data.environment_id = map['EnvironmentId']
        data.deployment_strategy_id = map['DeploymentStrategyId']
        data.configuration_profile_id = map['ConfigurationProfileId']
        data.deployment_number = map['DeploymentNumber']
        data.configuration_name = map['ConfigurationName']
        data.configuration_location_uri = map['ConfigurationLocationUri']
        data.configuration_version = map['ConfigurationVersion']
        data.description = map['Description']
        data.deployment_duration_in_minutes = map['DeploymentDurationInMinutes']
        data.growth_type = map['GrowthType']
        data.growth_factor = Hearth::NumberHelper.deserialize(map['GrowthFactor'])
        data.final_bake_time_in_minutes = map['FinalBakeTimeInMinutes']
        data.state = map['State']
        data.event_log = (DeploymentEvents.parse(map['EventLog']) unless map['EventLog'].nil?)
        data.percentage_complete = Hearth::NumberHelper.deserialize(map['PercentageComplete'])
        data.started_at = Time.parse(map['StartedAt']) if map['StartedAt']
        data.completed_at = Time.parse(map['CompletedAt']) if map['CompletedAt']
        data
      end
    end

    class DeploymentEvents
      def self.parse(list)
        data = []
        list.map do |value|
          data << DeploymentEvent.parse(value) unless value.nil?
        end
        data
      end
    end

    class DeploymentEvent
      def self.parse(map)
        data = Types::DeploymentEvent.new
        data.event_type = map['EventType']
        data.triggered_by = map['TriggeredBy']
        data.description = map['Description']
        data.occurred_at = Time.parse(map['OccurredAt']) if map['OccurredAt']
        return data
      end
    end

    # Operation Parser for GetDeploymentStrategy
    class GetDeploymentStrategy
      def self.parse(http_resp)
        data = Types::GetDeploymentStrategyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.id = map['Id']
        data.name = map['Name']
        data.description = map['Description']
        data.deployment_duration_in_minutes = map['DeploymentDurationInMinutes']
        data.growth_type = map['GrowthType']
        data.growth_factor = Hearth::NumberHelper.deserialize(map['GrowthFactor'])
        data.final_bake_time_in_minutes = map['FinalBakeTimeInMinutes']
        data.replicate_to = map['ReplicateTo']
        data
      end
    end

    # Operation Parser for GetEnvironment
    class GetEnvironment
      def self.parse(http_resp)
        data = Types::GetEnvironmentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.application_id = map['ApplicationId']
        data.id = map['Id']
        data.name = map['Name']
        data.description = map['Description']
        data.state = map['State']
        data.monitors = (MonitorList.parse(map['Monitors']) unless map['Monitors'].nil?)
        data
      end
    end

    # Operation Parser for GetHostedConfigurationVersion
    class GetHostedConfigurationVersion
      def self.parse(http_resp)
        data = Types::GetHostedConfigurationVersionOutput.new
        data.application_id = http_resp.headers['Application-Id']
        data.configuration_profile_id = http_resp.headers['Configuration-Profile-Id']
        data.version_number = http_resp.headers['Version-Number'].to_i unless http_resp.headers['Version-Number'].nil?
        data.description = http_resp.headers['Description']
        data.content_type = http_resp.headers['Content-Type']
        payload = http_resp.body.read
        data.content = payload unless payload.empty?
        data
      end
    end

    # Operation Parser for ListApplications
    class ListApplications
      def self.parse(http_resp)
        data = Types::ListApplicationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.items = (ApplicationList.parse(map['Items']) unless map['Items'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ApplicationList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Application.parse(value) unless value.nil?
        end
        data
      end
    end

    class Application
      def self.parse(map)
        data = Types::Application.new
        data.id = map['Id']
        data.name = map['Name']
        data.description = map['Description']
        return data
      end
    end

    # Operation Parser for ListConfigurationProfiles
    class ListConfigurationProfiles
      def self.parse(http_resp)
        data = Types::ListConfigurationProfilesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.items = (ConfigurationProfileSummaryList.parse(map['Items']) unless map['Items'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ConfigurationProfileSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ConfigurationProfileSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ConfigurationProfileSummary
      def self.parse(map)
        data = Types::ConfigurationProfileSummary.new
        data.application_id = map['ApplicationId']
        data.id = map['Id']
        data.name = map['Name']
        data.location_uri = map['LocationUri']
        data.validator_types = (ValidatorTypeList.parse(map['ValidatorTypes']) unless map['ValidatorTypes'].nil?)
        data.type = map['Type']
        return data
      end
    end

    class ValidatorTypeList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListDeploymentStrategies
    class ListDeploymentStrategies
      def self.parse(http_resp)
        data = Types::ListDeploymentStrategiesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.items = (DeploymentStrategyList.parse(map['Items']) unless map['Items'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class DeploymentStrategyList
      def self.parse(list)
        data = []
        list.map do |value|
          data << DeploymentStrategy.parse(value) unless value.nil?
        end
        data
      end
    end

    class DeploymentStrategy
      def self.parse(map)
        data = Types::DeploymentStrategy.new
        data.id = map['Id']
        data.name = map['Name']
        data.description = map['Description']
        data.deployment_duration_in_minutes = map['DeploymentDurationInMinutes']
        data.growth_type = map['GrowthType']
        data.growth_factor = Hearth::NumberHelper.deserialize(map['GrowthFactor'])
        data.final_bake_time_in_minutes = map['FinalBakeTimeInMinutes']
        data.replicate_to = map['ReplicateTo']
        return data
      end
    end

    # Operation Parser for ListDeployments
    class ListDeployments
      def self.parse(http_resp)
        data = Types::ListDeploymentsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.items = (DeploymentList.parse(map['Items']) unless map['Items'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class DeploymentList
      def self.parse(list)
        data = []
        list.map do |value|
          data << DeploymentSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class DeploymentSummary
      def self.parse(map)
        data = Types::DeploymentSummary.new
        data.deployment_number = map['DeploymentNumber']
        data.configuration_name = map['ConfigurationName']
        data.configuration_version = map['ConfigurationVersion']
        data.deployment_duration_in_minutes = map['DeploymentDurationInMinutes']
        data.growth_type = map['GrowthType']
        data.growth_factor = Hearth::NumberHelper.deserialize(map['GrowthFactor'])
        data.final_bake_time_in_minutes = map['FinalBakeTimeInMinutes']
        data.state = map['State']
        data.percentage_complete = Hearth::NumberHelper.deserialize(map['PercentageComplete'])
        data.started_at = Time.parse(map['StartedAt']) if map['StartedAt']
        data.completed_at = Time.parse(map['CompletedAt']) if map['CompletedAt']
        return data
      end
    end

    # Operation Parser for ListEnvironments
    class ListEnvironments
      def self.parse(http_resp)
        data = Types::ListEnvironmentsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.items = (EnvironmentList.parse(map['Items']) unless map['Items'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class EnvironmentList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Environment.parse(value) unless value.nil?
        end
        data
      end
    end

    class Environment
      def self.parse(map)
        data = Types::Environment.new
        data.application_id = map['ApplicationId']
        data.id = map['Id']
        data.name = map['Name']
        data.description = map['Description']
        data.state = map['State']
        data.monitors = (MonitorList.parse(map['Monitors']) unless map['Monitors'].nil?)
        return data
      end
    end

    # Operation Parser for ListHostedConfigurationVersions
    class ListHostedConfigurationVersions
      def self.parse(http_resp)
        data = Types::ListHostedConfigurationVersionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.items = (HostedConfigurationVersionSummaryList.parse(map['Items']) unless map['Items'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class HostedConfigurationVersionSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << HostedConfigurationVersionSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class HostedConfigurationVersionSummary
      def self.parse(map)
        data = Types::HostedConfigurationVersionSummary.new
        data.application_id = map['ApplicationId']
        data.configuration_profile_id = map['ConfigurationProfileId']
        data.version_number = map['VersionNumber']
        data.description = map['Description']
        data.content_type = map['ContentType']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    class TagMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for StartDeployment
    class StartDeployment
      def self.parse(http_resp)
        data = Types::StartDeploymentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.application_id = map['ApplicationId']
        data.environment_id = map['EnvironmentId']
        data.deployment_strategy_id = map['DeploymentStrategyId']
        data.configuration_profile_id = map['ConfigurationProfileId']
        data.deployment_number = map['DeploymentNumber']
        data.configuration_name = map['ConfigurationName']
        data.configuration_location_uri = map['ConfigurationLocationUri']
        data.configuration_version = map['ConfigurationVersion']
        data.description = map['Description']
        data.deployment_duration_in_minutes = map['DeploymentDurationInMinutes']
        data.growth_type = map['GrowthType']
        data.growth_factor = Hearth::NumberHelper.deserialize(map['GrowthFactor'])
        data.final_bake_time_in_minutes = map['FinalBakeTimeInMinutes']
        data.state = map['State']
        data.event_log = (DeploymentEvents.parse(map['EventLog']) unless map['EventLog'].nil?)
        data.percentage_complete = Hearth::NumberHelper.deserialize(map['PercentageComplete'])
        data.started_at = Time.parse(map['StartedAt']) if map['StartedAt']
        data.completed_at = Time.parse(map['CompletedAt']) if map['CompletedAt']
        data
      end
    end

    # Operation Parser for StopDeployment
    class StopDeployment
      def self.parse(http_resp)
        data = Types::StopDeploymentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.application_id = map['ApplicationId']
        data.environment_id = map['EnvironmentId']
        data.deployment_strategy_id = map['DeploymentStrategyId']
        data.configuration_profile_id = map['ConfigurationProfileId']
        data.deployment_number = map['DeploymentNumber']
        data.configuration_name = map['ConfigurationName']
        data.configuration_location_uri = map['ConfigurationLocationUri']
        data.configuration_version = map['ConfigurationVersion']
        data.description = map['Description']
        data.deployment_duration_in_minutes = map['DeploymentDurationInMinutes']
        data.growth_type = map['GrowthType']
        data.growth_factor = Hearth::NumberHelper.deserialize(map['GrowthFactor'])
        data.final_bake_time_in_minutes = map['FinalBakeTimeInMinutes']
        data.state = map['State']
        data.event_log = (DeploymentEvents.parse(map['EventLog']) unless map['EventLog'].nil?)
        data.percentage_complete = Hearth::NumberHelper.deserialize(map['PercentageComplete'])
        data.started_at = Time.parse(map['StartedAt']) if map['StartedAt']
        data.completed_at = Time.parse(map['CompletedAt']) if map['CompletedAt']
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateApplication
    class UpdateApplication
      def self.parse(http_resp)
        data = Types::UpdateApplicationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.id = map['Id']
        data.name = map['Name']
        data.description = map['Description']
        data
      end
    end

    # Operation Parser for UpdateConfigurationProfile
    class UpdateConfigurationProfile
      def self.parse(http_resp)
        data = Types::UpdateConfigurationProfileOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.application_id = map['ApplicationId']
        data.id = map['Id']
        data.name = map['Name']
        data.description = map['Description']
        data.location_uri = map['LocationUri']
        data.retrieval_role_arn = map['RetrievalRoleArn']
        data.validators = (ValidatorList.parse(map['Validators']) unless map['Validators'].nil?)
        data.type = map['Type']
        data
      end
    end

    # Operation Parser for UpdateDeploymentStrategy
    class UpdateDeploymentStrategy
      def self.parse(http_resp)
        data = Types::UpdateDeploymentStrategyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.id = map['Id']
        data.name = map['Name']
        data.description = map['Description']
        data.deployment_duration_in_minutes = map['DeploymentDurationInMinutes']
        data.growth_type = map['GrowthType']
        data.growth_factor = Hearth::NumberHelper.deserialize(map['GrowthFactor'])
        data.final_bake_time_in_minutes = map['FinalBakeTimeInMinutes']
        data.replicate_to = map['ReplicateTo']
        data
      end
    end

    # Operation Parser for UpdateEnvironment
    class UpdateEnvironment
      def self.parse(http_resp)
        data = Types::UpdateEnvironmentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.application_id = map['ApplicationId']
        data.id = map['Id']
        data.name = map['Name']
        data.description = map['Description']
        data.state = map['State']
        data.monitors = (MonitorList.parse(map['Monitors']) unless map['Monitors'].nil?)
        data
      end
    end

    # Operation Parser for ValidateConfiguration
    class ValidateConfiguration
      def self.parse(http_resp)
        data = Types::ValidateConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end
  end
end
