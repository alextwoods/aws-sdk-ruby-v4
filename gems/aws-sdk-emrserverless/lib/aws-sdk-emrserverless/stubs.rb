# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::EMRServerless
  module Stubs

    # Operation Stubber for CancelJobRun
    class CancelJobRun
      def self.default(visited=[])
        {
          application_id: 'application_id',
          job_run_id: 'job_run_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['applicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['jobRunId'] = stub[:job_run_id] unless stub[:job_run_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateApplication
    class CreateApplication
      def self.default(visited=[])
        {
          application_id: 'application_id',
          name: 'name',
          arn: 'arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['applicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetApplication
    class GetApplication
      def self.default(visited=[])
        {
          application: Application.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['application'] = Stubs::Application.stub(stub[:application]) unless stub[:application].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Application
    class Application
      def self.default(visited=[])
        return nil if visited.include?('Application')
        visited = visited + ['Application']
        {
          application_id: 'application_id',
          name: 'name',
          arn: 'arn',
          release_label: 'release_label',
          type: 'type',
          state: 'state',
          state_details: 'state_details',
          initial_capacity: InitialCapacityConfigMap.default(visited),
          maximum_capacity: MaximumAllowedResources.default(visited),
          created_at: Time.now,
          updated_at: Time.now,
          tags: TagMap.default(visited),
          auto_start_configuration: AutoStartConfig.default(visited),
          auto_stop_configuration: AutoStopConfig.default(visited),
          network_configuration: NetworkConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Application.new
        data = {}
        data['applicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['releaseLabel'] = stub[:release_label] unless stub[:release_label].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data['stateDetails'] = stub[:state_details] unless stub[:state_details].nil?
        data['initialCapacity'] = Stubs::InitialCapacityConfigMap.stub(stub[:initial_capacity]) unless stub[:initial_capacity].nil?
        data['maximumCapacity'] = Stubs::MaximumAllowedResources.stub(stub[:maximum_capacity]) unless stub[:maximum_capacity].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['updatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:updated_at]).to_i unless stub[:updated_at].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['autoStartConfiguration'] = Stubs::AutoStartConfig.stub(stub[:auto_start_configuration]) unless stub[:auto_start_configuration].nil?
        data['autoStopConfiguration'] = Stubs::AutoStopConfig.stub(stub[:auto_stop_configuration]) unless stub[:auto_stop_configuration].nil?
        data['networkConfiguration'] = Stubs::NetworkConfiguration.stub(stub[:network_configuration]) unless stub[:network_configuration].nil?
        data
      end
    end

    # Structure Stubber for NetworkConfiguration
    class NetworkConfiguration
      def self.default(visited=[])
        return nil if visited.include?('NetworkConfiguration')
        visited = visited + ['NetworkConfiguration']
        {
          subnet_ids: SubnetIds.default(visited),
          security_group_ids: SecurityGroupIds.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::NetworkConfiguration.new
        data = {}
        data['subnetIds'] = Stubs::SubnetIds.stub(stub[:subnet_ids]) unless stub[:subnet_ids].nil?
        data['securityGroupIds'] = Stubs::SecurityGroupIds.stub(stub[:security_group_ids]) unless stub[:security_group_ids].nil?
        data
      end
    end

    # List Stubber for SecurityGroupIds
    class SecurityGroupIds
      def self.default(visited=[])
        return nil if visited.include?('SecurityGroupIds')
        visited = visited + ['SecurityGroupIds']
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

    # List Stubber for SubnetIds
    class SubnetIds
      def self.default(visited=[])
        return nil if visited.include?('SubnetIds')
        visited = visited + ['SubnetIds']
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

    # Structure Stubber for AutoStopConfig
    class AutoStopConfig
      def self.default(visited=[])
        return nil if visited.include?('AutoStopConfig')
        visited = visited + ['AutoStopConfig']
        {
          enabled: false,
          idle_timeout_minutes: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::AutoStopConfig.new
        data = {}
        data['enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['idleTimeoutMinutes'] = stub[:idle_timeout_minutes] unless stub[:idle_timeout_minutes].nil?
        data
      end
    end

    # Structure Stubber for AutoStartConfig
    class AutoStartConfig
      def self.default(visited=[])
        return nil if visited.include?('AutoStartConfig')
        visited = visited + ['AutoStartConfig']
        {
          enabled: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::AutoStartConfig.new
        data = {}
        data['enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data
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

    # Structure Stubber for MaximumAllowedResources
    class MaximumAllowedResources
      def self.default(visited=[])
        return nil if visited.include?('MaximumAllowedResources')
        visited = visited + ['MaximumAllowedResources']
        {
          cpu: 'cpu',
          memory: 'memory',
          disk: 'disk',
        }
      end

      def self.stub(stub)
        stub ||= Types::MaximumAllowedResources.new
        data = {}
        data['cpu'] = stub[:cpu] unless stub[:cpu].nil?
        data['memory'] = stub[:memory] unless stub[:memory].nil?
        data['disk'] = stub[:disk] unless stub[:disk].nil?
        data
      end
    end

    # Map Stubber for InitialCapacityConfigMap
    class InitialCapacityConfigMap
      def self.default(visited=[])
        return nil if visited.include?('InitialCapacityConfigMap')
        visited = visited + ['InitialCapacityConfigMap']
        {
          test_key: InitialCapacityConfig.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::InitialCapacityConfig.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for InitialCapacityConfig
    class InitialCapacityConfig
      def self.default(visited=[])
        return nil if visited.include?('InitialCapacityConfig')
        visited = visited + ['InitialCapacityConfig']
        {
          worker_count: 1,
          worker_configuration: WorkerResourceConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InitialCapacityConfig.new
        data = {}
        data['workerCount'] = stub[:worker_count] unless stub[:worker_count].nil?
        data['workerConfiguration'] = Stubs::WorkerResourceConfig.stub(stub[:worker_configuration]) unless stub[:worker_configuration].nil?
        data
      end
    end

    # Structure Stubber for WorkerResourceConfig
    class WorkerResourceConfig
      def self.default(visited=[])
        return nil if visited.include?('WorkerResourceConfig')
        visited = visited + ['WorkerResourceConfig']
        {
          cpu: 'cpu',
          memory: 'memory',
          disk: 'disk',
        }
      end

      def self.stub(stub)
        stub ||= Types::WorkerResourceConfig.new
        data = {}
        data['cpu'] = stub[:cpu] unless stub[:cpu].nil?
        data['memory'] = stub[:memory] unless stub[:memory].nil?
        data['disk'] = stub[:disk] unless stub[:disk].nil?
        data
      end
    end

    # Operation Stubber for GetJobRun
    class GetJobRun
      def self.default(visited=[])
        {
          job_run: JobRun.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['jobRun'] = Stubs::JobRun.stub(stub[:job_run]) unless stub[:job_run].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for JobRun
    class JobRun
      def self.default(visited=[])
        return nil if visited.include?('JobRun')
        visited = visited + ['JobRun']
        {
          application_id: 'application_id',
          job_run_id: 'job_run_id',
          name: 'name',
          arn: 'arn',
          created_by: 'created_by',
          created_at: Time.now,
          updated_at: Time.now,
          execution_role: 'execution_role',
          state: 'state',
          state_details: 'state_details',
          release_label: 'release_label',
          configuration_overrides: ConfigurationOverrides.default(visited),
          job_driver: JobDriver.default(visited),
          tags: TagMap.default(visited),
          total_resource_utilization: TotalResourceUtilization.default(visited),
          network_configuration: NetworkConfiguration.default(visited),
          total_execution_duration_seconds: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::JobRun.new
        data = {}
        data['applicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['jobRunId'] = stub[:job_run_id] unless stub[:job_run_id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['createdBy'] = stub[:created_by] unless stub[:created_by].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['updatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:updated_at]).to_i unless stub[:updated_at].nil?
        data['executionRole'] = stub[:execution_role] unless stub[:execution_role].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data['stateDetails'] = stub[:state_details] unless stub[:state_details].nil?
        data['releaseLabel'] = stub[:release_label] unless stub[:release_label].nil?
        data['configurationOverrides'] = Stubs::ConfigurationOverrides.stub(stub[:configuration_overrides]) unless stub[:configuration_overrides].nil?
        data['jobDriver'] = Stubs::JobDriver.stub(stub[:job_driver]) unless stub[:job_driver].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['totalResourceUtilization'] = Stubs::TotalResourceUtilization.stub(stub[:total_resource_utilization]) unless stub[:total_resource_utilization].nil?
        data['networkConfiguration'] = Stubs::NetworkConfiguration.stub(stub[:network_configuration]) unless stub[:network_configuration].nil?
        data['totalExecutionDurationSeconds'] = stub[:total_execution_duration_seconds] unless stub[:total_execution_duration_seconds].nil?
        data
      end
    end

    # Structure Stubber for TotalResourceUtilization
    class TotalResourceUtilization
      def self.default(visited=[])
        return nil if visited.include?('TotalResourceUtilization')
        visited = visited + ['TotalResourceUtilization']
        {
          v_cpu_hour: 1.0,
          memory_gb_hour: 1.0,
          storage_gb_hour: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::TotalResourceUtilization.new
        data = {}
        data['vCPUHour'] = Hearth::NumberHelper.serialize(stub[:v_cpu_hour])
        data['memoryGBHour'] = Hearth::NumberHelper.serialize(stub[:memory_gb_hour])
        data['storageGBHour'] = Hearth::NumberHelper.serialize(stub[:storage_gb_hour])
        data
      end
    end

    # Union Stubber for JobDriver
    class JobDriver
      def self.default(visited=[])
        return nil if visited.include?('JobDriver')
        visited = visited + ['JobDriver']
        {
          spark_submit: SparkSubmit.default(visited),
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::JobDriver::SparkSubmit
          data['sparkSubmit'] = (Stubs::SparkSubmit.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::JobDriver::Hive
          data['hive'] = (Stubs::Hive.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::JobDriver"
        end

        data
      end
    end

    # Structure Stubber for Hive
    class Hive
      def self.default(visited=[])
        return nil if visited.include?('Hive')
        visited = visited + ['Hive']
        {
          query: 'query',
          init_query_file: 'init_query_file',
          parameters: 'parameters',
        }
      end

      def self.stub(stub)
        stub ||= Types::Hive.new
        data = {}
        data['query'] = stub[:query] unless stub[:query].nil?
        data['initQueryFile'] = stub[:init_query_file] unless stub[:init_query_file].nil?
        data['parameters'] = stub[:parameters] unless stub[:parameters].nil?
        data
      end
    end

    # Structure Stubber for SparkSubmit
    class SparkSubmit
      def self.default(visited=[])
        return nil if visited.include?('SparkSubmit')
        visited = visited + ['SparkSubmit']
        {
          entry_point: 'entry_point',
          entry_point_arguments: EntryPointArguments.default(visited),
          spark_submit_parameters: 'spark_submit_parameters',
        }
      end

      def self.stub(stub)
        stub ||= Types::SparkSubmit.new
        data = {}
        data['entryPoint'] = stub[:entry_point] unless stub[:entry_point].nil?
        data['entryPointArguments'] = Stubs::EntryPointArguments.stub(stub[:entry_point_arguments]) unless stub[:entry_point_arguments].nil?
        data['sparkSubmitParameters'] = stub[:spark_submit_parameters] unless stub[:spark_submit_parameters].nil?
        data
      end
    end

    # List Stubber for EntryPointArguments
    class EntryPointArguments
      def self.default(visited=[])
        return nil if visited.include?('EntryPointArguments')
        visited = visited + ['EntryPointArguments']
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

    # Structure Stubber for ConfigurationOverrides
    class ConfigurationOverrides
      def self.default(visited=[])
        return nil if visited.include?('ConfigurationOverrides')
        visited = visited + ['ConfigurationOverrides']
        {
          application_configuration: ConfigurationList.default(visited),
          monitoring_configuration: MonitoringConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ConfigurationOverrides.new
        data = {}
        data['applicationConfiguration'] = Stubs::ConfigurationList.stub(stub[:application_configuration]) unless stub[:application_configuration].nil?
        data['monitoringConfiguration'] = Stubs::MonitoringConfiguration.stub(stub[:monitoring_configuration]) unless stub[:monitoring_configuration].nil?
        data
      end
    end

    # Structure Stubber for MonitoringConfiguration
    class MonitoringConfiguration
      def self.default(visited=[])
        return nil if visited.include?('MonitoringConfiguration')
        visited = visited + ['MonitoringConfiguration']
        {
          s3_monitoring_configuration: S3MonitoringConfiguration.default(visited),
          managed_persistence_monitoring_configuration: ManagedPersistenceMonitoringConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MonitoringConfiguration.new
        data = {}
        data['s3MonitoringConfiguration'] = Stubs::S3MonitoringConfiguration.stub(stub[:s3_monitoring_configuration]) unless stub[:s3_monitoring_configuration].nil?
        data['managedPersistenceMonitoringConfiguration'] = Stubs::ManagedPersistenceMonitoringConfiguration.stub(stub[:managed_persistence_monitoring_configuration]) unless stub[:managed_persistence_monitoring_configuration].nil?
        data
      end
    end

    # Structure Stubber for ManagedPersistenceMonitoringConfiguration
    class ManagedPersistenceMonitoringConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ManagedPersistenceMonitoringConfiguration')
        visited = visited + ['ManagedPersistenceMonitoringConfiguration']
        {
          enabled: false,
          encryption_key_arn: 'encryption_key_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::ManagedPersistenceMonitoringConfiguration.new
        data = {}
        data['enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['encryptionKeyArn'] = stub[:encryption_key_arn] unless stub[:encryption_key_arn].nil?
        data
      end
    end

    # Structure Stubber for S3MonitoringConfiguration
    class S3MonitoringConfiguration
      def self.default(visited=[])
        return nil if visited.include?('S3MonitoringConfiguration')
        visited = visited + ['S3MonitoringConfiguration']
        {
          log_uri: 'log_uri',
          encryption_key_arn: 'encryption_key_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3MonitoringConfiguration.new
        data = {}
        data['logUri'] = stub[:log_uri] unless stub[:log_uri].nil?
        data['encryptionKeyArn'] = stub[:encryption_key_arn] unless stub[:encryption_key_arn].nil?
        data
      end
    end

    # List Stubber for ConfigurationList
    class ConfigurationList
      def self.default(visited=[])
        return nil if visited.include?('ConfigurationList')
        visited = visited + ['ConfigurationList']
        [
          Configuration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Configuration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Configuration
    class Configuration
      def self.default(visited=[])
        return nil if visited.include?('Configuration')
        visited = visited + ['Configuration']
        {
          classification: 'classification',
          properties: SensitivePropertiesMap.default(visited),
          configurations: ConfigurationList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Configuration.new
        data = {}
        data['classification'] = stub[:classification] unless stub[:classification].nil?
        data['properties'] = Stubs::SensitivePropertiesMap.stub(stub[:properties]) unless stub[:properties].nil?
        data['configurations'] = Stubs::ConfigurationList.stub(stub[:configurations]) unless stub[:configurations].nil?
        data
      end
    end

    # Map Stubber for SensitivePropertiesMap
    class SensitivePropertiesMap
      def self.default(visited=[])
        return nil if visited.include?('SensitivePropertiesMap')
        visited = visited + ['SensitivePropertiesMap']
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

    # Operation Stubber for ListApplications
    class ListApplications
      def self.default(visited=[])
        {
          applications: ApplicationList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['applications'] = Stubs::ApplicationList.stub(stub[:applications]) unless stub[:applications].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ApplicationList
    class ApplicationList
      def self.default(visited=[])
        return nil if visited.include?('ApplicationList')
        visited = visited + ['ApplicationList']
        [
          ApplicationSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ApplicationSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ApplicationSummary
    class ApplicationSummary
      def self.default(visited=[])
        return nil if visited.include?('ApplicationSummary')
        visited = visited + ['ApplicationSummary']
        {
          id: 'id',
          name: 'name',
          arn: 'arn',
          release_label: 'release_label',
          type: 'type',
          state: 'state',
          state_details: 'state_details',
          created_at: Time.now,
          updated_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ApplicationSummary.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['releaseLabel'] = stub[:release_label] unless stub[:release_label].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data['stateDetails'] = stub[:state_details] unless stub[:state_details].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['updatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:updated_at]).to_i unless stub[:updated_at].nil?
        data
      end
    end

    # Operation Stubber for ListJobRuns
    class ListJobRuns
      def self.default(visited=[])
        {
          job_runs: JobRuns.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['jobRuns'] = Stubs::JobRuns.stub(stub[:job_runs]) unless stub[:job_runs].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for JobRuns
    class JobRuns
      def self.default(visited=[])
        return nil if visited.include?('JobRuns')
        visited = visited + ['JobRuns']
        [
          JobRunSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::JobRunSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for JobRunSummary
    class JobRunSummary
      def self.default(visited=[])
        return nil if visited.include?('JobRunSummary')
        visited = visited + ['JobRunSummary']
        {
          application_id: 'application_id',
          id: 'id',
          name: 'name',
          arn: 'arn',
          created_by: 'created_by',
          created_at: Time.now,
          updated_at: Time.now,
          execution_role: 'execution_role',
          state: 'state',
          state_details: 'state_details',
          release_label: 'release_label',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::JobRunSummary.new
        data = {}
        data['applicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['createdBy'] = stub[:created_by] unless stub[:created_by].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['updatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:updated_at]).to_i unless stub[:updated_at].nil?
        data['executionRole'] = stub[:execution_role] unless stub[:execution_role].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data['stateDetails'] = stub[:state_details] unless stub[:state_details].nil?
        data['releaseLabel'] = stub[:release_label] unless stub[:release_label].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
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
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StartApplication
    class StartApplication
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartJobRun
    class StartJobRun
      def self.default(visited=[])
        {
          application_id: 'application_id',
          job_run_id: 'job_run_id',
          arn: 'arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['applicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['jobRunId'] = stub[:job_run_id] unless stub[:job_run_id].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StopApplication
    class StopApplication
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
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
        http_resp.status = 200
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
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateApplication
    class UpdateApplication
      def self.default(visited=[])
        {
          application: Application.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['application'] = Stubs::Application.stub(stub[:application]) unless stub[:application].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
