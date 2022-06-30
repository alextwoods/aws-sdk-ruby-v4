# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MWAA
  module Stubs

    # Operation Stubber for CreateCliToken
    class CreateCliToken
      def self.default(visited=[])
        {
          cli_token: 'cli_token',
          web_server_hostname: 'web_server_hostname',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['CliToken'] = stub[:cli_token] unless stub[:cli_token].nil?
        data['WebServerHostname'] = stub[:web_server_hostname] unless stub[:web_server_hostname].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateEnvironment
    class CreateEnvironment
      def self.default(visited=[])
        {
          arn: 'arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateWebLoginToken
    class CreateWebLoginToken
      def self.default(visited=[])
        {
          web_token: 'web_token',
          web_server_hostname: 'web_server_hostname',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['WebToken'] = stub[:web_token] unless stub[:web_token].nil?
        data['WebServerHostname'] = stub[:web_server_hostname] unless stub[:web_server_hostname].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetEnvironment
    class GetEnvironment
      def self.default(visited=[])
        {
          environment: Stubs::Environment.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Environment'] = Stubs::Environment.stub(stub[:environment]) unless stub[:environment].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Environment
    class Environment
      def self.default(visited=[])
        return nil if visited.include?('Environment')
        visited = visited + ['Environment']
        {
          name: 'name',
          status: 'status',
          arn: 'arn',
          created_at: Time.now,
          webserver_url: 'webserver_url',
          execution_role_arn: 'execution_role_arn',
          service_role_arn: 'service_role_arn',
          kms_key: 'kms_key',
          airflow_version: 'airflow_version',
          source_bucket_arn: 'source_bucket_arn',
          dag_s3_path: 'dag_s3_path',
          plugins_s3_path: 'plugins_s3_path',
          plugins_s3_object_version: 'plugins_s3_object_version',
          requirements_s3_path: 'requirements_s3_path',
          requirements_s3_object_version: 'requirements_s3_object_version',
          airflow_configuration_options: Stubs::AirflowConfigurationOptions.default(visited),
          environment_class: 'environment_class',
          max_workers: 1,
          network_configuration: Stubs::NetworkConfiguration.default(visited),
          logging_configuration: Stubs::LoggingConfiguration.default(visited),
          last_update: Stubs::LastUpdate.default(visited),
          weekly_maintenance_window_start: 'weekly_maintenance_window_start',
          tags: Stubs::TagMap.default(visited),
          webserver_access_mode: 'webserver_access_mode',
          min_workers: 1,
          schedulers: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Environment.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['WebserverUrl'] = stub[:webserver_url] unless stub[:webserver_url].nil?
        data['ExecutionRoleArn'] = stub[:execution_role_arn] unless stub[:execution_role_arn].nil?
        data['ServiceRoleArn'] = stub[:service_role_arn] unless stub[:service_role_arn].nil?
        data['KmsKey'] = stub[:kms_key] unless stub[:kms_key].nil?
        data['AirflowVersion'] = stub[:airflow_version] unless stub[:airflow_version].nil?
        data['SourceBucketArn'] = stub[:source_bucket_arn] unless stub[:source_bucket_arn].nil?
        data['DagS3Path'] = stub[:dag_s3_path] unless stub[:dag_s3_path].nil?
        data['PluginsS3Path'] = stub[:plugins_s3_path] unless stub[:plugins_s3_path].nil?
        data['PluginsS3ObjectVersion'] = stub[:plugins_s3_object_version] unless stub[:plugins_s3_object_version].nil?
        data['RequirementsS3Path'] = stub[:requirements_s3_path] unless stub[:requirements_s3_path].nil?
        data['RequirementsS3ObjectVersion'] = stub[:requirements_s3_object_version] unless stub[:requirements_s3_object_version].nil?
        data['AirflowConfigurationOptions'] = Stubs::AirflowConfigurationOptions.stub(stub[:airflow_configuration_options]) unless stub[:airflow_configuration_options].nil?
        data['EnvironmentClass'] = stub[:environment_class] unless stub[:environment_class].nil?
        data['MaxWorkers'] = stub[:max_workers] unless stub[:max_workers].nil?
        data['NetworkConfiguration'] = Stubs::NetworkConfiguration.stub(stub[:network_configuration]) unless stub[:network_configuration].nil?
        data['LoggingConfiguration'] = Stubs::LoggingConfiguration.stub(stub[:logging_configuration]) unless stub[:logging_configuration].nil?
        data['LastUpdate'] = Stubs::LastUpdate.stub(stub[:last_update]) unless stub[:last_update].nil?
        data['WeeklyMaintenanceWindowStart'] = stub[:weekly_maintenance_window_start] unless stub[:weekly_maintenance_window_start].nil?
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['WebserverAccessMode'] = stub[:webserver_access_mode] unless stub[:webserver_access_mode].nil?
        data['MinWorkers'] = stub[:min_workers] unless stub[:min_workers].nil?
        data['Schedulers'] = stub[:schedulers] unless stub[:schedulers].nil?
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

    # Structure Stubber for LastUpdate
    class LastUpdate
      def self.default(visited=[])
        return nil if visited.include?('LastUpdate')
        visited = visited + ['LastUpdate']
        {
          status: 'status',
          created_at: Time.now,
          error: Stubs::UpdateError.default(visited),
          source: 'source',
        }
      end

      def self.stub(stub)
        stub ||= Types::LastUpdate.new
        data = {}
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['Error'] = Stubs::UpdateError.stub(stub[:error]) unless stub[:error].nil?
        data['Source'] = stub[:source] unless stub[:source].nil?
        data
      end
    end

    # Structure Stubber for UpdateError
    class UpdateError
      def self.default(visited=[])
        return nil if visited.include?('UpdateError')
        visited = visited + ['UpdateError']
        {
          error_code: 'error_code',
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::UpdateError.new
        data = {}
        data['ErrorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # Structure Stubber for LoggingConfiguration
    class LoggingConfiguration
      def self.default(visited=[])
        return nil if visited.include?('LoggingConfiguration')
        visited = visited + ['LoggingConfiguration']
        {
          dag_processing_logs: Stubs::ModuleLoggingConfiguration.default(visited),
          scheduler_logs: Stubs::ModuleLoggingConfiguration.default(visited),
          webserver_logs: Stubs::ModuleLoggingConfiguration.default(visited),
          worker_logs: Stubs::ModuleLoggingConfiguration.default(visited),
          task_logs: Stubs::ModuleLoggingConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LoggingConfiguration.new
        data = {}
        data['DagProcessingLogs'] = Stubs::ModuleLoggingConfiguration.stub(stub[:dag_processing_logs]) unless stub[:dag_processing_logs].nil?
        data['SchedulerLogs'] = Stubs::ModuleLoggingConfiguration.stub(stub[:scheduler_logs]) unless stub[:scheduler_logs].nil?
        data['WebserverLogs'] = Stubs::ModuleLoggingConfiguration.stub(stub[:webserver_logs]) unless stub[:webserver_logs].nil?
        data['WorkerLogs'] = Stubs::ModuleLoggingConfiguration.stub(stub[:worker_logs]) unless stub[:worker_logs].nil?
        data['TaskLogs'] = Stubs::ModuleLoggingConfiguration.stub(stub[:task_logs]) unless stub[:task_logs].nil?
        data
      end
    end

    # Structure Stubber for ModuleLoggingConfiguration
    class ModuleLoggingConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ModuleLoggingConfiguration')
        visited = visited + ['ModuleLoggingConfiguration']
        {
          enabled: false,
          log_level: 'log_level',
          cloud_watch_log_group_arn: 'cloud_watch_log_group_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::ModuleLoggingConfiguration.new
        data = {}
        data['Enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['LogLevel'] = stub[:log_level] unless stub[:log_level].nil?
        data['CloudWatchLogGroupArn'] = stub[:cloud_watch_log_group_arn] unless stub[:cloud_watch_log_group_arn].nil?
        data
      end
    end

    # Structure Stubber for NetworkConfiguration
    class NetworkConfiguration
      def self.default(visited=[])
        return nil if visited.include?('NetworkConfiguration')
        visited = visited + ['NetworkConfiguration']
        {
          subnet_ids: Stubs::SubnetList.default(visited),
          security_group_ids: Stubs::SecurityGroupList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::NetworkConfiguration.new
        data = {}
        data['SubnetIds'] = Stubs::SubnetList.stub(stub[:subnet_ids]) unless stub[:subnet_ids].nil?
        data['SecurityGroupIds'] = Stubs::SecurityGroupList.stub(stub[:security_group_ids]) unless stub[:security_group_ids].nil?
        data
      end
    end

    # List Stubber for SecurityGroupList
    class SecurityGroupList
      def self.default(visited=[])
        return nil if visited.include?('SecurityGroupList')
        visited = visited + ['SecurityGroupList']
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

    # List Stubber for SubnetList
    class SubnetList
      def self.default(visited=[])
        return nil if visited.include?('SubnetList')
        visited = visited + ['SubnetList']
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

    # Map Stubber for AirflowConfigurationOptions
    class AirflowConfigurationOptions
      def self.default(visited=[])
        return nil if visited.include?('AirflowConfigurationOptions')
        visited = visited + ['AirflowConfigurationOptions']
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

    # Operation Stubber for ListEnvironments
    class ListEnvironments
      def self.default(visited=[])
        {
          environments: Stubs::EnvironmentList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Environments'] = Stubs::EnvironmentList.stub(stub[:environments]) unless stub[:environments].nil?
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

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: Stubs::TagMap.default(visited),
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

    # Operation Stubber for PublishMetrics
    class PublishMetrics
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

    # Operation Stubber for UpdateEnvironment
    class UpdateEnvironment
      def self.default(visited=[])
        {
          arn: 'arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
