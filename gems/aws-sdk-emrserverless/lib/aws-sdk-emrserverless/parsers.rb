# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::EMRServerless
  module Parsers

    # Operation Parser for CancelJobRun
    class CancelJobRun
      def self.parse(http_resp)
        data = Types::CancelJobRunOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.application_id = map['applicationId']
        data.job_run_id = map['jobRunId']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CreateApplication
    class CreateApplication
      def self.parse(http_resp)
        data = Types::CreateApplicationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.application_id = map['applicationId']
        data.name = map['name']
        data.arn = map['arn']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
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

    # Operation Parser for GetApplication
    class GetApplication
      def self.parse(http_resp)
        data = Types::GetApplicationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.application = (Parsers::Application.parse(map['application']) unless map['application'].nil?)
        data
      end
    end

    class Application
      def self.parse(map)
        data = Types::Application.new
        data.application_id = map['applicationId']
        data.name = map['name']
        data.arn = map['arn']
        data.release_label = map['releaseLabel']
        data.type = map['type']
        data.state = map['state']
        data.state_details = map['stateDetails']
        data.initial_capacity = (Parsers::InitialCapacityConfigMap.parse(map['initialCapacity']) unless map['initialCapacity'].nil?)
        data.maximum_capacity = (Parsers::MaximumAllowedResources.parse(map['maximumCapacity']) unless map['maximumCapacity'].nil?)
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.updated_at = Time.at(map['updatedAt'].to_i) if map['updatedAt']
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        data.auto_start_configuration = (Parsers::AutoStartConfig.parse(map['autoStartConfiguration']) unless map['autoStartConfiguration'].nil?)
        data.auto_stop_configuration = (Parsers::AutoStopConfig.parse(map['autoStopConfiguration']) unless map['autoStopConfiguration'].nil?)
        data.network_configuration = (Parsers::NetworkConfiguration.parse(map['networkConfiguration']) unless map['networkConfiguration'].nil?)
        return data
      end
    end

    class NetworkConfiguration
      def self.parse(map)
        data = Types::NetworkConfiguration.new
        data.subnet_ids = (Parsers::SubnetIds.parse(map['subnetIds']) unless map['subnetIds'].nil?)
        data.security_group_ids = (Parsers::SecurityGroupIds.parse(map['securityGroupIds']) unless map['securityGroupIds'].nil?)
        return data
      end
    end

    class SecurityGroupIds
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class SubnetIds
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class AutoStopConfig
      def self.parse(map)
        data = Types::AutoStopConfig.new
        data.enabled = map['enabled']
        data.idle_timeout_minutes = map['idleTimeoutMinutes']
        return data
      end
    end

    class AutoStartConfig
      def self.parse(map)
        data = Types::AutoStartConfig.new
        data.enabled = map['enabled']
        return data
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

    class MaximumAllowedResources
      def self.parse(map)
        data = Types::MaximumAllowedResources.new
        data.cpu = map['cpu']
        data.memory = map['memory']
        data.disk = map['disk']
        return data
      end
    end

    class InitialCapacityConfigMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::InitialCapacityConfig.parse(value) unless value.nil?
        end
        data
      end
    end

    class InitialCapacityConfig
      def self.parse(map)
        data = Types::InitialCapacityConfig.new
        data.worker_count = map['workerCount']
        data.worker_configuration = (Parsers::WorkerResourceConfig.parse(map['workerConfiguration']) unless map['workerConfiguration'].nil?)
        return data
      end
    end

    class WorkerResourceConfig
      def self.parse(map)
        data = Types::WorkerResourceConfig.new
        data.cpu = map['cpu']
        data.memory = map['memory']
        data.disk = map['disk']
        return data
      end
    end

    # Operation Parser for GetJobRun
    class GetJobRun
      def self.parse(http_resp)
        data = Types::GetJobRunOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.job_run = (Parsers::JobRun.parse(map['jobRun']) unless map['jobRun'].nil?)
        data
      end
    end

    class JobRun
      def self.parse(map)
        data = Types::JobRun.new
        data.application_id = map['applicationId']
        data.job_run_id = map['jobRunId']
        data.name = map['name']
        data.arn = map['arn']
        data.created_by = map['createdBy']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.updated_at = Time.at(map['updatedAt'].to_i) if map['updatedAt']
        data.execution_role = map['executionRole']
        data.state = map['state']
        data.state_details = map['stateDetails']
        data.release_label = map['releaseLabel']
        data.configuration_overrides = (Parsers::ConfigurationOverrides.parse(map['configurationOverrides']) unless map['configurationOverrides'].nil?)
        data.job_driver = (Parsers::JobDriver.parse(map['jobDriver']) unless map['jobDriver'].nil?)
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        data.total_resource_utilization = (Parsers::TotalResourceUtilization.parse(map['totalResourceUtilization']) unless map['totalResourceUtilization'].nil?)
        data.network_configuration = (Parsers::NetworkConfiguration.parse(map['networkConfiguration']) unless map['networkConfiguration'].nil?)
        data.total_execution_duration_seconds = map['totalExecutionDurationSeconds']
        return data
      end
    end

    class TotalResourceUtilization
      def self.parse(map)
        data = Types::TotalResourceUtilization.new
        data.v_cpu_hour = Hearth::NumberHelper.deserialize(map['vCPUHour'])
        data.memory_gb_hour = Hearth::NumberHelper.deserialize(map['memoryGBHour'])
        data.storage_gb_hour = Hearth::NumberHelper.deserialize(map['storageGBHour'])
        return data
      end
    end

    class JobDriver
      def self.parse(map)
        key, value = map.flatten
        case key
        when 'sparkSubmit'
          value = (Parsers::SparkSubmit.parse(value) unless value.nil?)
          Types::JobDriver::SparkSubmit.new(value) if value
        when 'hive'
          value = (Parsers::Hive.parse(value) unless value.nil?)
          Types::JobDriver::Hive.new(value) if value
        else
          Types::JobDriver::Unknown.new({name: key, value: value})
        end
      end
    end

    class Hive
      def self.parse(map)
        data = Types::Hive.new
        data.query = map['query']
        data.init_query_file = map['initQueryFile']
        data.parameters = map['parameters']
        return data
      end
    end

    class SparkSubmit
      def self.parse(map)
        data = Types::SparkSubmit.new
        data.entry_point = map['entryPoint']
        data.entry_point_arguments = (Parsers::EntryPointArguments.parse(map['entryPointArguments']) unless map['entryPointArguments'].nil?)
        data.spark_submit_parameters = map['sparkSubmitParameters']
        return data
      end
    end

    class EntryPointArguments
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class ConfigurationOverrides
      def self.parse(map)
        data = Types::ConfigurationOverrides.new
        data.application_configuration = (Parsers::ConfigurationList.parse(map['applicationConfiguration']) unless map['applicationConfiguration'].nil?)
        data.monitoring_configuration = (Parsers::MonitoringConfiguration.parse(map['monitoringConfiguration']) unless map['monitoringConfiguration'].nil?)
        return data
      end
    end

    class MonitoringConfiguration
      def self.parse(map)
        data = Types::MonitoringConfiguration.new
        data.s3_monitoring_configuration = (Parsers::S3MonitoringConfiguration.parse(map['s3MonitoringConfiguration']) unless map['s3MonitoringConfiguration'].nil?)
        data.managed_persistence_monitoring_configuration = (Parsers::ManagedPersistenceMonitoringConfiguration.parse(map['managedPersistenceMonitoringConfiguration']) unless map['managedPersistenceMonitoringConfiguration'].nil?)
        return data
      end
    end

    class ManagedPersistenceMonitoringConfiguration
      def self.parse(map)
        data = Types::ManagedPersistenceMonitoringConfiguration.new
        data.enabled = map['enabled']
        data.encryption_key_arn = map['encryptionKeyArn']
        return data
      end
    end

    class S3MonitoringConfiguration
      def self.parse(map)
        data = Types::S3MonitoringConfiguration.new
        data.log_uri = map['logUri']
        data.encryption_key_arn = map['encryptionKeyArn']
        return data
      end
    end

    class ConfigurationList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Configuration.parse(value) unless value.nil?
        end
        data
      end
    end

    class Configuration
      def self.parse(map)
        data = Types::Configuration.new
        data.classification = map['classification']
        data.properties = (Parsers::SensitivePropertiesMap.parse(map['properties']) unless map['properties'].nil?)
        data.configurations = (Parsers::ConfigurationList.parse(map['configurations']) unless map['configurations'].nil?)
        return data
      end
    end

    class SensitivePropertiesMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListApplications
    class ListApplications
      def self.parse(http_resp)
        data = Types::ListApplicationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.applications = (Parsers::ApplicationList.parse(map['applications']) unless map['applications'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ApplicationList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ApplicationSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ApplicationSummary
      def self.parse(map)
        data = Types::ApplicationSummary.new
        data.id = map['id']
        data.name = map['name']
        data.arn = map['arn']
        data.release_label = map['releaseLabel']
        data.type = map['type']
        data.state = map['state']
        data.state_details = map['stateDetails']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.updated_at = Time.at(map['updatedAt'].to_i) if map['updatedAt']
        return data
      end
    end

    # Operation Parser for ListJobRuns
    class ListJobRuns
      def self.parse(http_resp)
        data = Types::ListJobRunsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.job_runs = (Parsers::JobRuns.parse(map['jobRuns']) unless map['jobRuns'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class JobRuns
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::JobRunSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class JobRunSummary
      def self.parse(map)
        data = Types::JobRunSummary.new
        data.application_id = map['applicationId']
        data.id = map['id']
        data.name = map['name']
        data.arn = map['arn']
        data.created_by = map['createdBy']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.updated_at = Time.at(map['updatedAt'].to_i) if map['updatedAt']
        data.execution_role = map['executionRole']
        data.state = map['state']
        data.state_details = map['stateDetails']
        data.release_label = map['releaseLabel']
        data.type = map['type']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for StartApplication
    class StartApplication
      def self.parse(http_resp)
        data = Types::StartApplicationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for ServiceQuotaExceededException
    class ServiceQuotaExceededException
      def self.parse(http_resp)
        data = Types::ServiceQuotaExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for StartJobRun
    class StartJobRun
      def self.parse(http_resp)
        data = Types::StartJobRunOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.application_id = map['applicationId']
        data.job_run_id = map['jobRunId']
        data.arn = map['arn']
        data
      end
    end

    # Operation Parser for StopApplication
    class StopApplication
      def self.parse(http_resp)
        data = Types::StopApplicationOutput.new
        map = Hearth::JSON.load(http_resp.body)
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
        data.application = (Parsers::Application.parse(map['application']) unless map['application'].nil?)
        data
      end
    end
  end
end
