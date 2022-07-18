# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MWAA
  module Parsers

    # Operation Parser for CreateCliToken
    class CreateCliToken
      def self.parse(http_resp)
        data = Types::CreateCliTokenOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.cli_token = map['CliToken']
        data.web_server_hostname = map['WebServerHostname']
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

    # Operation Parser for CreateEnvironment
    class CreateEnvironment
      def self.parse(http_resp)
        data = Types::CreateEnvironmentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
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

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CreateWebLoginToken
    class CreateWebLoginToken
      def self.parse(http_resp)
        data = Types::CreateWebLoginTokenOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.web_token = map['WebToken']
        data.web_server_hostname = map['WebServerHostname']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
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

    # Operation Parser for GetEnvironment
    class GetEnvironment
      def self.parse(http_resp)
        data = Types::GetEnvironmentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.environment = (Parsers::Environment.parse(map['Environment']) unless map['Environment'].nil?)
        data
      end
    end

    class Environment
      def self.parse(map)
        data = Types::Environment.new
        data.name = map['Name']
        data.status = map['Status']
        data.arn = map['Arn']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.webserver_url = map['WebserverUrl']
        data.execution_role_arn = map['ExecutionRoleArn']
        data.service_role_arn = map['ServiceRoleArn']
        data.kms_key = map['KmsKey']
        data.airflow_version = map['AirflowVersion']
        data.source_bucket_arn = map['SourceBucketArn']
        data.dag_s3_path = map['DagS3Path']
        data.plugins_s3_path = map['PluginsS3Path']
        data.plugins_s3_object_version = map['PluginsS3ObjectVersion']
        data.requirements_s3_path = map['RequirementsS3Path']
        data.requirements_s3_object_version = map['RequirementsS3ObjectVersion']
        data.airflow_configuration_options = (Parsers::AirflowConfigurationOptions.parse(map['AirflowConfigurationOptions']) unless map['AirflowConfigurationOptions'].nil?)
        data.environment_class = map['EnvironmentClass']
        data.max_workers = map['MaxWorkers']
        data.network_configuration = (Parsers::NetworkConfiguration.parse(map['NetworkConfiguration']) unless map['NetworkConfiguration'].nil?)
        data.logging_configuration = (Parsers::LoggingConfiguration.parse(map['LoggingConfiguration']) unless map['LoggingConfiguration'].nil?)
        data.last_update = (Parsers::LastUpdate.parse(map['LastUpdate']) unless map['LastUpdate'].nil?)
        data.weekly_maintenance_window_start = map['WeeklyMaintenanceWindowStart']
        data.tags = (Parsers::TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data.webserver_access_mode = map['WebserverAccessMode']
        data.min_workers = map['MinWorkers']
        data.schedulers = map['Schedulers']
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

    class LastUpdate
      def self.parse(map)
        data = Types::LastUpdate.new
        data.status = map['Status']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.error = (Parsers::UpdateError.parse(map['Error']) unless map['Error'].nil?)
        data.source = map['Source']
        return data
      end
    end

    class UpdateError
      def self.parse(map)
        data = Types::UpdateError.new
        data.error_code = map['ErrorCode']
        data.error_message = map['ErrorMessage']
        return data
      end
    end

    class LoggingConfiguration
      def self.parse(map)
        data = Types::LoggingConfiguration.new
        data.dag_processing_logs = (Parsers::ModuleLoggingConfiguration.parse(map['DagProcessingLogs']) unless map['DagProcessingLogs'].nil?)
        data.scheduler_logs = (Parsers::ModuleLoggingConfiguration.parse(map['SchedulerLogs']) unless map['SchedulerLogs'].nil?)
        data.webserver_logs = (Parsers::ModuleLoggingConfiguration.parse(map['WebserverLogs']) unless map['WebserverLogs'].nil?)
        data.worker_logs = (Parsers::ModuleLoggingConfiguration.parse(map['WorkerLogs']) unless map['WorkerLogs'].nil?)
        data.task_logs = (Parsers::ModuleLoggingConfiguration.parse(map['TaskLogs']) unless map['TaskLogs'].nil?)
        return data
      end
    end

    class ModuleLoggingConfiguration
      def self.parse(map)
        data = Types::ModuleLoggingConfiguration.new
        data.enabled = map['Enabled']
        data.log_level = map['LogLevel']
        data.cloud_watch_log_group_arn = map['CloudWatchLogGroupArn']
        return data
      end
    end

    class NetworkConfiguration
      def self.parse(map)
        data = Types::NetworkConfiguration.new
        data.subnet_ids = (Parsers::SubnetList.parse(map['SubnetIds']) unless map['SubnetIds'].nil?)
        data.security_group_ids = (Parsers::SecurityGroupList.parse(map['SecurityGroupIds']) unless map['SecurityGroupIds'].nil?)
        return data
      end
    end

    class SecurityGroupList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class SubnetList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class AirflowConfigurationOptions
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListEnvironments
    class ListEnvironments
      def self.parse(http_resp)
        data = Types::ListEnvironmentsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.environments = (Parsers::EnvironmentList.parse(map['Environments']) unless map['Environments'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class EnvironmentList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Parsers::TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    # Operation Parser for PublishMetrics
    class PublishMetrics
      def self.parse(http_resp)
        data = Types::PublishMetricsOutput.new
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

    # Operation Parser for UpdateEnvironment
    class UpdateEnvironment
      def self.parse(http_resp)
        data = Types::UpdateEnvironmentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data
      end
    end
  end
end
