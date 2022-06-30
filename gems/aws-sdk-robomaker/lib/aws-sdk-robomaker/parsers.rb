# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::RoboMaker
  module Parsers

    # Operation Parser for BatchDeleteWorlds
    class BatchDeleteWorlds
      def self.parse(http_resp)
        data = Types::BatchDeleteWorldsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.unprocessed_worlds = (Parsers::Arns.parse(map['unprocessedWorlds']) unless map['unprocessedWorlds'].nil?)
        data
      end
    end

    class Arns
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
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

    # Error Parser for InvalidParameterException
    class InvalidParameterException
      def self.parse(http_resp)
        data = Types::InvalidParameterException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for BatchDescribeSimulationJob
    class BatchDescribeSimulationJob
      def self.parse(http_resp)
        data = Types::BatchDescribeSimulationJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.jobs = (Parsers::SimulationJobs.parse(map['jobs']) unless map['jobs'].nil?)
        data.unprocessed_jobs = (Parsers::Arns.parse(map['unprocessedJobs']) unless map['unprocessedJobs'].nil?)
        data
      end
    end

    class SimulationJobs
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::SimulationJob.parse(value) unless value.nil?
        end
        data
      end
    end

    class SimulationJob
      def self.parse(map)
        data = Types::SimulationJob.new
        data.arn = map['arn']
        data.name = map['name']
        data.status = map['status']
        data.last_started_at = Time.at(map['lastStartedAt'].to_i) if map['lastStartedAt']
        data.last_updated_at = Time.at(map['lastUpdatedAt'].to_i) if map['lastUpdatedAt']
        data.failure_behavior = map['failureBehavior']
        data.failure_code = map['failureCode']
        data.failure_reason = map['failureReason']
        data.client_request_token = map['clientRequestToken']
        data.output_location = (Parsers::OutputLocation.parse(map['outputLocation']) unless map['outputLocation'].nil?)
        data.logging_config = (Parsers::LoggingConfig.parse(map['loggingConfig']) unless map['loggingConfig'].nil?)
        data.max_job_duration_in_seconds = map['maxJobDurationInSeconds']
        data.simulation_time_millis = map['simulationTimeMillis']
        data.iam_role = map['iamRole']
        data.robot_applications = (Parsers::RobotApplicationConfigs.parse(map['robotApplications']) unless map['robotApplications'].nil?)
        data.simulation_applications = (Parsers::SimulationApplicationConfigs.parse(map['simulationApplications']) unless map['simulationApplications'].nil?)
        data.data_sources = (Parsers::DataSources.parse(map['dataSources']) unless map['dataSources'].nil?)
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        data.vpc_config = (Parsers::VPCConfigResponse.parse(map['vpcConfig']) unless map['vpcConfig'].nil?)
        data.network_interface = (Parsers::NetworkInterface.parse(map['networkInterface']) unless map['networkInterface'].nil?)
        data.compute = (Parsers::ComputeResponse.parse(map['compute']) unless map['compute'].nil?)
        return data
      end
    end

    class ComputeResponse
      def self.parse(map)
        data = Types::ComputeResponse.new
        data.simulation_unit_limit = map['simulationUnitLimit']
        data.compute_type = map['computeType']
        data.gpu_unit_limit = map['gpuUnitLimit']
        return data
      end
    end

    class NetworkInterface
      def self.parse(map)
        data = Types::NetworkInterface.new
        data.network_interface_id = map['networkInterfaceId']
        data.private_ip_address = map['privateIpAddress']
        data.public_ip_address = map['publicIpAddress']
        return data
      end
    end

    class VPCConfigResponse
      def self.parse(map)
        data = Types::VPCConfigResponse.new
        data.subnets = (Parsers::Subnets.parse(map['subnets']) unless map['subnets'].nil?)
        data.security_groups = (Parsers::SecurityGroups.parse(map['securityGroups']) unless map['securityGroups'].nil?)
        data.vpc_id = map['vpcId']
        data.assign_public_ip = map['assignPublicIp']
        return data
      end
    end

    class SecurityGroups
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class Subnets
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
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

    class DataSources
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::DataSource.parse(value) unless value.nil?
        end
        data
      end
    end

    class DataSource
      def self.parse(map)
        data = Types::DataSource.new
        data.name = map['name']
        data.s3_bucket = map['s3Bucket']
        data.s3_keys = (Parsers::S3KeyOutputs.parse(map['s3Keys']) unless map['s3Keys'].nil?)
        data.type = map['type']
        data.destination = map['destination']
        return data
      end
    end

    class S3KeyOutputs
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::S3KeyOutput.parse(value) unless value.nil?
        end
        data
      end
    end

    class S3KeyOutput
      def self.parse(map)
        data = Types::S3KeyOutput.new
        data.s3_key = map['s3Key']
        data.etag = map['etag']
        return data
      end
    end

    class SimulationApplicationConfigs
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::SimulationApplicationConfig.parse(value) unless value.nil?
        end
        data
      end
    end

    class SimulationApplicationConfig
      def self.parse(map)
        data = Types::SimulationApplicationConfig.new
        data.application = map['application']
        data.application_version = map['applicationVersion']
        data.launch_config = (Parsers::LaunchConfig.parse(map['launchConfig']) unless map['launchConfig'].nil?)
        data.upload_configurations = (Parsers::UploadConfigurations.parse(map['uploadConfigurations']) unless map['uploadConfigurations'].nil?)
        data.world_configs = (Parsers::WorldConfigs.parse(map['worldConfigs']) unless map['worldConfigs'].nil?)
        data.use_default_upload_configurations = map['useDefaultUploadConfigurations']
        data.tools = (Parsers::Tools.parse(map['tools']) unless map['tools'].nil?)
        data.use_default_tools = map['useDefaultTools']
        return data
      end
    end

    class Tools
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Tool.parse(value) unless value.nil?
        end
        data
      end
    end

    class Tool
      def self.parse(map)
        data = Types::Tool.new
        data.stream_ui = map['streamUI']
        data.name = map['name']
        data.command = map['command']
        data.stream_output_to_cloud_watch = map['streamOutputToCloudWatch']
        data.exit_behavior = map['exitBehavior']
        return data
      end
    end

    class WorldConfigs
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::WorldConfig.parse(value) unless value.nil?
        end
        data
      end
    end

    class WorldConfig
      def self.parse(map)
        data = Types::WorldConfig.new
        data.world = map['world']
        return data
      end
    end

    class UploadConfigurations
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::UploadConfiguration.parse(value) unless value.nil?
        end
        data
      end
    end

    class UploadConfiguration
      def self.parse(map)
        data = Types::UploadConfiguration.new
        data.name = map['name']
        data.path = map['path']
        data.upload_behavior = map['uploadBehavior']
        return data
      end
    end

    class LaunchConfig
      def self.parse(map)
        data = Types::LaunchConfig.new
        data.package_name = map['packageName']
        data.launch_file = map['launchFile']
        data.environment_variables = (Parsers::EnvironmentVariableMap.parse(map['environmentVariables']) unless map['environmentVariables'].nil?)
        data.port_forwarding_config = (Parsers::PortForwardingConfig.parse(map['portForwardingConfig']) unless map['portForwardingConfig'].nil?)
        data.stream_ui = map['streamUI']
        data.command = (Parsers::CommandList.parse(map['command']) unless map['command'].nil?)
        return data
      end
    end

    class CommandList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class PortForwardingConfig
      def self.parse(map)
        data = Types::PortForwardingConfig.new
        data.port_mappings = (Parsers::PortMappingList.parse(map['portMappings']) unless map['portMappings'].nil?)
        return data
      end
    end

    class PortMappingList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::PortMapping.parse(value) unless value.nil?
        end
        data
      end
    end

    class PortMapping
      def self.parse(map)
        data = Types::PortMapping.new
        data.job_port = map['jobPort']
        data.application_port = map['applicationPort']
        data.enable_on_public_ip = map['enableOnPublicIp']
        return data
      end
    end

    class EnvironmentVariableMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class RobotApplicationConfigs
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::RobotApplicationConfig.parse(value) unless value.nil?
        end
        data
      end
    end

    class RobotApplicationConfig
      def self.parse(map)
        data = Types::RobotApplicationConfig.new
        data.application = map['application']
        data.application_version = map['applicationVersion']
        data.launch_config = (Parsers::LaunchConfig.parse(map['launchConfig']) unless map['launchConfig'].nil?)
        data.upload_configurations = (Parsers::UploadConfigurations.parse(map['uploadConfigurations']) unless map['uploadConfigurations'].nil?)
        data.use_default_upload_configurations = map['useDefaultUploadConfigurations']
        data.tools = (Parsers::Tools.parse(map['tools']) unless map['tools'].nil?)
        data.use_default_tools = map['useDefaultTools']
        return data
      end
    end

    class LoggingConfig
      def self.parse(map)
        data = Types::LoggingConfig.new
        data.record_all_ros_topics = map['recordAllRosTopics']
        return data
      end
    end

    class OutputLocation
      def self.parse(map)
        data = Types::OutputLocation.new
        data.s3_bucket = map['s3Bucket']
        data.s3_prefix = map['s3Prefix']
        return data
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

    # Operation Parser for CancelDeploymentJob
    class CancelDeploymentJob
      def self.parse(http_resp)
        data = Types::CancelDeploymentJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for CancelSimulationJob
    class CancelSimulationJob
      def self.parse(http_resp)
        data = Types::CancelSimulationJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for CancelSimulationJobBatch
    class CancelSimulationJobBatch
      def self.parse(http_resp)
        data = Types::CancelSimulationJobBatchOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for CancelWorldExportJob
    class CancelWorldExportJob
      def self.parse(http_resp)
        data = Types::CancelWorldExportJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for CancelWorldGenerationJob
    class CancelWorldGenerationJob
      def self.parse(http_resp)
        data = Types::CancelWorldGenerationJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for CreateDeploymentJob
    class CreateDeploymentJob
      def self.parse(http_resp)
        data = Types::CreateDeploymentJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.fleet = map['fleet']
        data.status = map['status']
        data.deployment_application_configs = (Parsers::DeploymentApplicationConfigs.parse(map['deploymentApplicationConfigs']) unless map['deploymentApplicationConfigs'].nil?)
        data.failure_reason = map['failureReason']
        data.failure_code = map['failureCode']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.deployment_config = (Parsers::DeploymentConfig.parse(map['deploymentConfig']) unless map['deploymentConfig'].nil?)
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    class DeploymentConfig
      def self.parse(map)
        data = Types::DeploymentConfig.new
        data.concurrent_deployment_percentage = map['concurrentDeploymentPercentage']
        data.failure_threshold_percentage = map['failureThresholdPercentage']
        data.robot_deployment_timeout_in_seconds = map['robotDeploymentTimeoutInSeconds']
        data.download_condition_file = (Parsers::S3Object.parse(map['downloadConditionFile']) unless map['downloadConditionFile'].nil?)
        return data
      end
    end

    class S3Object
      def self.parse(map)
        data = Types::S3Object.new
        data.bucket = map['bucket']
        data.key = map['key']
        data.etag = map['etag']
        return data
      end
    end

    class DeploymentApplicationConfigs
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::DeploymentApplicationConfig.parse(value) unless value.nil?
        end
        data
      end
    end

    class DeploymentApplicationConfig
      def self.parse(map)
        data = Types::DeploymentApplicationConfig.new
        data.application = map['application']
        data.application_version = map['applicationVersion']
        data.launch_config = (Parsers::DeploymentLaunchConfig.parse(map['launchConfig']) unless map['launchConfig'].nil?)
        return data
      end
    end

    class DeploymentLaunchConfig
      def self.parse(map)
        data = Types::DeploymentLaunchConfig.new
        data.package_name = map['packageName']
        data.pre_launch_file = map['preLaunchFile']
        data.launch_file = map['launchFile']
        data.post_launch_file = map['postLaunchFile']
        data.environment_variables = (Parsers::EnvironmentVariableMap.parse(map['environmentVariables']) unless map['environmentVariables'].nil?)
        return data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for IdempotentParameterMismatchException
    class IdempotentParameterMismatchException
      def self.parse(http_resp)
        data = Types::IdempotentParameterMismatchException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ConcurrentDeploymentException
    class ConcurrentDeploymentException
      def self.parse(http_resp)
        data = Types::ConcurrentDeploymentException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CreateFleet
    class CreateFleet
      def self.parse(http_resp)
        data = Types::CreateFleetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.name = map['name']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for CreateRobot
    class CreateRobot
      def self.parse(http_resp)
        data = Types::CreateRobotOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.name = map['name']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.greengrass_group_id = map['greengrassGroupId']
        data.architecture = map['architecture']
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Error Parser for ResourceAlreadyExistsException
    class ResourceAlreadyExistsException
      def self.parse(http_resp)
        data = Types::ResourceAlreadyExistsException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CreateRobotApplication
    class CreateRobotApplication
      def self.parse(http_resp)
        data = Types::CreateRobotApplicationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.name = map['name']
        data.version = map['version']
        data.sources = (Parsers::Sources.parse(map['sources']) unless map['sources'].nil?)
        data.robot_software_suite = (Parsers::RobotSoftwareSuite.parse(map['robotSoftwareSuite']) unless map['robotSoftwareSuite'].nil?)
        data.last_updated_at = Time.at(map['lastUpdatedAt'].to_i) if map['lastUpdatedAt']
        data.revision_id = map['revisionId']
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        data.environment = (Parsers::Environment.parse(map['environment']) unless map['environment'].nil?)
        data
      end
    end

    class Environment
      def self.parse(map)
        data = Types::Environment.new
        data.uri = map['uri']
        return data
      end
    end

    class RobotSoftwareSuite
      def self.parse(map)
        data = Types::RobotSoftwareSuite.new
        data.name = map['name']
        data.version = map['version']
        return data
      end
    end

    class Sources
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Source.parse(value) unless value.nil?
        end
        data
      end
    end

    class Source
      def self.parse(map)
        data = Types::Source.new
        data.s3_bucket = map['s3Bucket']
        data.s3_key = map['s3Key']
        data.etag = map['etag']
        data.architecture = map['architecture']
        return data
      end
    end

    # Operation Parser for CreateRobotApplicationVersion
    class CreateRobotApplicationVersion
      def self.parse(http_resp)
        data = Types::CreateRobotApplicationVersionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.name = map['name']
        data.version = map['version']
        data.sources = (Parsers::Sources.parse(map['sources']) unless map['sources'].nil?)
        data.robot_software_suite = (Parsers::RobotSoftwareSuite.parse(map['robotSoftwareSuite']) unless map['robotSoftwareSuite'].nil?)
        data.last_updated_at = Time.at(map['lastUpdatedAt'].to_i) if map['lastUpdatedAt']
        data.revision_id = map['revisionId']
        data.environment = (Parsers::Environment.parse(map['environment']) unless map['environment'].nil?)
        data
      end
    end

    # Operation Parser for CreateSimulationApplication
    class CreateSimulationApplication
      def self.parse(http_resp)
        data = Types::CreateSimulationApplicationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.name = map['name']
        data.version = map['version']
        data.sources = (Parsers::Sources.parse(map['sources']) unless map['sources'].nil?)
        data.simulation_software_suite = (Parsers::SimulationSoftwareSuite.parse(map['simulationSoftwareSuite']) unless map['simulationSoftwareSuite'].nil?)
        data.robot_software_suite = (Parsers::RobotSoftwareSuite.parse(map['robotSoftwareSuite']) unless map['robotSoftwareSuite'].nil?)
        data.rendering_engine = (Parsers::RenderingEngine.parse(map['renderingEngine']) unless map['renderingEngine'].nil?)
        data.last_updated_at = Time.at(map['lastUpdatedAt'].to_i) if map['lastUpdatedAt']
        data.revision_id = map['revisionId']
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        data.environment = (Parsers::Environment.parse(map['environment']) unless map['environment'].nil?)
        data
      end
    end

    class RenderingEngine
      def self.parse(map)
        data = Types::RenderingEngine.new
        data.name = map['name']
        data.version = map['version']
        return data
      end
    end

    class SimulationSoftwareSuite
      def self.parse(map)
        data = Types::SimulationSoftwareSuite.new
        data.name = map['name']
        data.version = map['version']
        return data
      end
    end

    # Operation Parser for CreateSimulationApplicationVersion
    class CreateSimulationApplicationVersion
      def self.parse(http_resp)
        data = Types::CreateSimulationApplicationVersionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.name = map['name']
        data.version = map['version']
        data.sources = (Parsers::Sources.parse(map['sources']) unless map['sources'].nil?)
        data.simulation_software_suite = (Parsers::SimulationSoftwareSuite.parse(map['simulationSoftwareSuite']) unless map['simulationSoftwareSuite'].nil?)
        data.robot_software_suite = (Parsers::RobotSoftwareSuite.parse(map['robotSoftwareSuite']) unless map['robotSoftwareSuite'].nil?)
        data.rendering_engine = (Parsers::RenderingEngine.parse(map['renderingEngine']) unless map['renderingEngine'].nil?)
        data.last_updated_at = Time.at(map['lastUpdatedAt'].to_i) if map['lastUpdatedAt']
        data.revision_id = map['revisionId']
        data.environment = (Parsers::Environment.parse(map['environment']) unless map['environment'].nil?)
        data
      end
    end

    # Operation Parser for CreateSimulationJob
    class CreateSimulationJob
      def self.parse(http_resp)
        data = Types::CreateSimulationJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.status = map['status']
        data.last_started_at = Time.at(map['lastStartedAt'].to_i) if map['lastStartedAt']
        data.last_updated_at = Time.at(map['lastUpdatedAt'].to_i) if map['lastUpdatedAt']
        data.failure_behavior = map['failureBehavior']
        data.failure_code = map['failureCode']
        data.client_request_token = map['clientRequestToken']
        data.output_location = (Parsers::OutputLocation.parse(map['outputLocation']) unless map['outputLocation'].nil?)
        data.logging_config = (Parsers::LoggingConfig.parse(map['loggingConfig']) unless map['loggingConfig'].nil?)
        data.max_job_duration_in_seconds = map['maxJobDurationInSeconds']
        data.simulation_time_millis = map['simulationTimeMillis']
        data.iam_role = map['iamRole']
        data.robot_applications = (Parsers::RobotApplicationConfigs.parse(map['robotApplications']) unless map['robotApplications'].nil?)
        data.simulation_applications = (Parsers::SimulationApplicationConfigs.parse(map['simulationApplications']) unless map['simulationApplications'].nil?)
        data.data_sources = (Parsers::DataSources.parse(map['dataSources']) unless map['dataSources'].nil?)
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        data.vpc_config = (Parsers::VPCConfigResponse.parse(map['vpcConfig']) unless map['vpcConfig'].nil?)
        data.compute = (Parsers::ComputeResponse.parse(map['compute']) unless map['compute'].nil?)
        data
      end
    end

    # Error Parser for ServiceUnavailableException
    class ServiceUnavailableException
      def self.parse(http_resp)
        data = Types::ServiceUnavailableException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CreateWorldExportJob
    class CreateWorldExportJob
      def self.parse(http_resp)
        data = Types::CreateWorldExportJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.status = map['status']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.failure_code = map['failureCode']
        data.client_request_token = map['clientRequestToken']
        data.output_location = (Parsers::OutputLocation.parse(map['outputLocation']) unless map['outputLocation'].nil?)
        data.iam_role = map['iamRole']
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for CreateWorldGenerationJob
    class CreateWorldGenerationJob
      def self.parse(http_resp)
        data = Types::CreateWorldGenerationJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.status = map['status']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.failure_code = map['failureCode']
        data.client_request_token = map['clientRequestToken']
        data.template = map['template']
        data.world_count = (Parsers::WorldCount.parse(map['worldCount']) unless map['worldCount'].nil?)
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        data.world_tags = (Parsers::TagMap.parse(map['worldTags']) unless map['worldTags'].nil?)
        data
      end
    end

    class WorldCount
      def self.parse(map)
        data = Types::WorldCount.new
        data.floorplan_count = map['floorplanCount']
        data.interior_count_per_floorplan = map['interiorCountPerFloorplan']
        return data
      end
    end

    # Operation Parser for CreateWorldTemplate
    class CreateWorldTemplate
      def self.parse(http_resp)
        data = Types::CreateWorldTemplateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.client_request_token = map['clientRequestToken']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.name = map['name']
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for DeleteFleet
    class DeleteFleet
      def self.parse(http_resp)
        data = Types::DeleteFleetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteRobot
    class DeleteRobot
      def self.parse(http_resp)
        data = Types::DeleteRobotOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteRobotApplication
    class DeleteRobotApplication
      def self.parse(http_resp)
        data = Types::DeleteRobotApplicationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteSimulationApplication
    class DeleteSimulationApplication
      def self.parse(http_resp)
        data = Types::DeleteSimulationApplicationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteWorldTemplate
    class DeleteWorldTemplate
      def self.parse(http_resp)
        data = Types::DeleteWorldTemplateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeregisterRobot
    class DeregisterRobot
      def self.parse(http_resp)
        data = Types::DeregisterRobotOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.fleet = map['fleet']
        data.robot = map['robot']
        data
      end
    end

    # Operation Parser for DescribeDeploymentJob
    class DescribeDeploymentJob
      def self.parse(http_resp)
        data = Types::DescribeDeploymentJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.fleet = map['fleet']
        data.status = map['status']
        data.deployment_config = (Parsers::DeploymentConfig.parse(map['deploymentConfig']) unless map['deploymentConfig'].nil?)
        data.deployment_application_configs = (Parsers::DeploymentApplicationConfigs.parse(map['deploymentApplicationConfigs']) unless map['deploymentApplicationConfigs'].nil?)
        data.failure_reason = map['failureReason']
        data.failure_code = map['failureCode']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.robot_deployment_summary = (Parsers::RobotDeploymentSummary.parse(map['robotDeploymentSummary']) unless map['robotDeploymentSummary'].nil?)
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    class RobotDeploymentSummary
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::RobotDeployment.parse(value) unless value.nil?
        end
        data
      end
    end

    class RobotDeployment
      def self.parse(map)
        data = Types::RobotDeployment.new
        data.arn = map['arn']
        data.deployment_start_time = Time.at(map['deploymentStartTime'].to_i) if map['deploymentStartTime']
        data.deployment_finish_time = Time.at(map['deploymentFinishTime'].to_i) if map['deploymentFinishTime']
        data.status = map['status']
        data.progress_detail = (Parsers::ProgressDetail.parse(map['progressDetail']) unless map['progressDetail'].nil?)
        data.failure_reason = map['failureReason']
        data.failure_code = map['failureCode']
        return data
      end
    end

    class ProgressDetail
      def self.parse(map)
        data = Types::ProgressDetail.new
        data.current_progress = map['currentProgress']
        data.percent_done = Hearth::NumberHelper.deserialize(map['percentDone'])
        data.estimated_time_remaining_seconds = map['estimatedTimeRemainingSeconds']
        data.target_resource = map['targetResource']
        return data
      end
    end

    # Operation Parser for DescribeFleet
    class DescribeFleet
      def self.parse(http_resp)
        data = Types::DescribeFleetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['name']
        data.arn = map['arn']
        data.robots = (Parsers::Robots.parse(map['robots']) unless map['robots'].nil?)
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.last_deployment_status = map['lastDeploymentStatus']
        data.last_deployment_job = map['lastDeploymentJob']
        data.last_deployment_time = Time.at(map['lastDeploymentTime'].to_i) if map['lastDeploymentTime']
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    class Robots
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Robot.parse(value) unless value.nil?
        end
        data
      end
    end

    class Robot
      def self.parse(map)
        data = Types::Robot.new
        data.arn = map['arn']
        data.name = map['name']
        data.fleet_arn = map['fleetArn']
        data.status = map['status']
        data.green_grass_group_id = map['greenGrassGroupId']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.architecture = map['architecture']
        data.last_deployment_job = map['lastDeploymentJob']
        data.last_deployment_time = Time.at(map['lastDeploymentTime'].to_i) if map['lastDeploymentTime']
        return data
      end
    end

    # Operation Parser for DescribeRobot
    class DescribeRobot
      def self.parse(http_resp)
        data = Types::DescribeRobotOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.name = map['name']
        data.fleet_arn = map['fleetArn']
        data.status = map['status']
        data.greengrass_group_id = map['greengrassGroupId']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.architecture = map['architecture']
        data.last_deployment_job = map['lastDeploymentJob']
        data.last_deployment_time = Time.at(map['lastDeploymentTime'].to_i) if map['lastDeploymentTime']
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for DescribeRobotApplication
    class DescribeRobotApplication
      def self.parse(http_resp)
        data = Types::DescribeRobotApplicationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.name = map['name']
        data.version = map['version']
        data.sources = (Parsers::Sources.parse(map['sources']) unless map['sources'].nil?)
        data.robot_software_suite = (Parsers::RobotSoftwareSuite.parse(map['robotSoftwareSuite']) unless map['robotSoftwareSuite'].nil?)
        data.revision_id = map['revisionId']
        data.last_updated_at = Time.at(map['lastUpdatedAt'].to_i) if map['lastUpdatedAt']
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        data.environment = (Parsers::Environment.parse(map['environment']) unless map['environment'].nil?)
        data.image_digest = map['imageDigest']
        data
      end
    end

    # Operation Parser for DescribeSimulationApplication
    class DescribeSimulationApplication
      def self.parse(http_resp)
        data = Types::DescribeSimulationApplicationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.name = map['name']
        data.version = map['version']
        data.sources = (Parsers::Sources.parse(map['sources']) unless map['sources'].nil?)
        data.simulation_software_suite = (Parsers::SimulationSoftwareSuite.parse(map['simulationSoftwareSuite']) unless map['simulationSoftwareSuite'].nil?)
        data.robot_software_suite = (Parsers::RobotSoftwareSuite.parse(map['robotSoftwareSuite']) unless map['robotSoftwareSuite'].nil?)
        data.rendering_engine = (Parsers::RenderingEngine.parse(map['renderingEngine']) unless map['renderingEngine'].nil?)
        data.revision_id = map['revisionId']
        data.last_updated_at = Time.at(map['lastUpdatedAt'].to_i) if map['lastUpdatedAt']
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        data.environment = (Parsers::Environment.parse(map['environment']) unless map['environment'].nil?)
        data.image_digest = map['imageDigest']
        data
      end
    end

    # Operation Parser for DescribeSimulationJob
    class DescribeSimulationJob
      def self.parse(http_resp)
        data = Types::DescribeSimulationJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.name = map['name']
        data.status = map['status']
        data.last_started_at = Time.at(map['lastStartedAt'].to_i) if map['lastStartedAt']
        data.last_updated_at = Time.at(map['lastUpdatedAt'].to_i) if map['lastUpdatedAt']
        data.failure_behavior = map['failureBehavior']
        data.failure_code = map['failureCode']
        data.failure_reason = map['failureReason']
        data.client_request_token = map['clientRequestToken']
        data.output_location = (Parsers::OutputLocation.parse(map['outputLocation']) unless map['outputLocation'].nil?)
        data.logging_config = (Parsers::LoggingConfig.parse(map['loggingConfig']) unless map['loggingConfig'].nil?)
        data.max_job_duration_in_seconds = map['maxJobDurationInSeconds']
        data.simulation_time_millis = map['simulationTimeMillis']
        data.iam_role = map['iamRole']
        data.robot_applications = (Parsers::RobotApplicationConfigs.parse(map['robotApplications']) unless map['robotApplications'].nil?)
        data.simulation_applications = (Parsers::SimulationApplicationConfigs.parse(map['simulationApplications']) unless map['simulationApplications'].nil?)
        data.data_sources = (Parsers::DataSources.parse(map['dataSources']) unless map['dataSources'].nil?)
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        data.vpc_config = (Parsers::VPCConfigResponse.parse(map['vpcConfig']) unless map['vpcConfig'].nil?)
        data.network_interface = (Parsers::NetworkInterface.parse(map['networkInterface']) unless map['networkInterface'].nil?)
        data.compute = (Parsers::ComputeResponse.parse(map['compute']) unless map['compute'].nil?)
        data
      end
    end

    # Operation Parser for DescribeSimulationJobBatch
    class DescribeSimulationJobBatch
      def self.parse(http_resp)
        data = Types::DescribeSimulationJobBatchOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.status = map['status']
        data.last_updated_at = Time.at(map['lastUpdatedAt'].to_i) if map['lastUpdatedAt']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.client_request_token = map['clientRequestToken']
        data.batch_policy = (Parsers::BatchPolicy.parse(map['batchPolicy']) unless map['batchPolicy'].nil?)
        data.failure_code = map['failureCode']
        data.failure_reason = map['failureReason']
        data.failed_requests = (Parsers::FailedCreateSimulationJobRequests.parse(map['failedRequests']) unless map['failedRequests'].nil?)
        data.pending_requests = (Parsers::CreateSimulationJobRequests.parse(map['pendingRequests']) unless map['pendingRequests'].nil?)
        data.created_requests = (Parsers::SimulationJobSummaries.parse(map['createdRequests']) unless map['createdRequests'].nil?)
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    class SimulationJobSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::SimulationJobSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class SimulationJobSummary
      def self.parse(map)
        data = Types::SimulationJobSummary.new
        data.arn = map['arn']
        data.last_updated_at = Time.at(map['lastUpdatedAt'].to_i) if map['lastUpdatedAt']
        data.name = map['name']
        data.status = map['status']
        data.simulation_application_names = (Parsers::SimulationApplicationNames.parse(map['simulationApplicationNames']) unless map['simulationApplicationNames'].nil?)
        data.robot_application_names = (Parsers::RobotApplicationNames.parse(map['robotApplicationNames']) unless map['robotApplicationNames'].nil?)
        data.data_source_names = (Parsers::DataSourceNames.parse(map['dataSourceNames']) unless map['dataSourceNames'].nil?)
        data.compute_type = map['computeType']
        return data
      end
    end

    class DataSourceNames
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class RobotApplicationNames
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class SimulationApplicationNames
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class CreateSimulationJobRequests
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::SimulationJobRequest.parse(value) unless value.nil?
        end
        data
      end
    end

    class SimulationJobRequest
      def self.parse(map)
        data = Types::SimulationJobRequest.new
        data.output_location = (Parsers::OutputLocation.parse(map['outputLocation']) unless map['outputLocation'].nil?)
        data.logging_config = (Parsers::LoggingConfig.parse(map['loggingConfig']) unless map['loggingConfig'].nil?)
        data.max_job_duration_in_seconds = map['maxJobDurationInSeconds']
        data.iam_role = map['iamRole']
        data.failure_behavior = map['failureBehavior']
        data.use_default_applications = map['useDefaultApplications']
        data.robot_applications = (Parsers::RobotApplicationConfigs.parse(map['robotApplications']) unless map['robotApplications'].nil?)
        data.simulation_applications = (Parsers::SimulationApplicationConfigs.parse(map['simulationApplications']) unless map['simulationApplications'].nil?)
        data.data_sources = (Parsers::DataSourceConfigs.parse(map['dataSources']) unless map['dataSources'].nil?)
        data.vpc_config = (Parsers::VPCConfig.parse(map['vpcConfig']) unless map['vpcConfig'].nil?)
        data.compute = (Parsers::Compute.parse(map['compute']) unless map['compute'].nil?)
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    class Compute
      def self.parse(map)
        data = Types::Compute.new
        data.simulation_unit_limit = map['simulationUnitLimit']
        data.compute_type = map['computeType']
        data.gpu_unit_limit = map['gpuUnitLimit']
        return data
      end
    end

    class VPCConfig
      def self.parse(map)
        data = Types::VPCConfig.new
        data.subnets = (Parsers::Subnets.parse(map['subnets']) unless map['subnets'].nil?)
        data.security_groups = (Parsers::SecurityGroups.parse(map['securityGroups']) unless map['securityGroups'].nil?)
        data.assign_public_ip = map['assignPublicIp']
        return data
      end
    end

    class DataSourceConfigs
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::DataSourceConfig.parse(value) unless value.nil?
        end
        data
      end
    end

    class DataSourceConfig
      def self.parse(map)
        data = Types::DataSourceConfig.new
        data.name = map['name']
        data.s3_bucket = map['s3Bucket']
        data.s3_keys = (Parsers::S3KeysOrPrefixes.parse(map['s3Keys']) unless map['s3Keys'].nil?)
        data.type = map['type']
        data.destination = map['destination']
        return data
      end
    end

    class S3KeysOrPrefixes
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class FailedCreateSimulationJobRequests
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::FailedCreateSimulationJobRequest.parse(value) unless value.nil?
        end
        data
      end
    end

    class FailedCreateSimulationJobRequest
      def self.parse(map)
        data = Types::FailedCreateSimulationJobRequest.new
        data.request = (Parsers::SimulationJobRequest.parse(map['request']) unless map['request'].nil?)
        data.failure_reason = map['failureReason']
        data.failure_code = map['failureCode']
        data.failed_at = Time.at(map['failedAt'].to_i) if map['failedAt']
        return data
      end
    end

    class BatchPolicy
      def self.parse(map)
        data = Types::BatchPolicy.new
        data.timeout_in_seconds = map['timeoutInSeconds']
        data.max_concurrency = map['maxConcurrency']
        return data
      end
    end

    # Operation Parser for DescribeWorld
    class DescribeWorld
      def self.parse(http_resp)
        data = Types::DescribeWorldOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.generation_job = map['generationJob']
        data.template = map['template']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        data.world_description_body = map['worldDescriptionBody']
        data
      end
    end

    # Operation Parser for DescribeWorldExportJob
    class DescribeWorldExportJob
      def self.parse(http_resp)
        data = Types::DescribeWorldExportJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.status = map['status']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.failure_code = map['failureCode']
        data.failure_reason = map['failureReason']
        data.client_request_token = map['clientRequestToken']
        data.worlds = (Parsers::Arns.parse(map['worlds']) unless map['worlds'].nil?)
        data.output_location = (Parsers::OutputLocation.parse(map['outputLocation']) unless map['outputLocation'].nil?)
        data.iam_role = map['iamRole']
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for DescribeWorldGenerationJob
    class DescribeWorldGenerationJob
      def self.parse(http_resp)
        data = Types::DescribeWorldGenerationJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.status = map['status']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.failure_code = map['failureCode']
        data.failure_reason = map['failureReason']
        data.client_request_token = map['clientRequestToken']
        data.template = map['template']
        data.world_count = (Parsers::WorldCount.parse(map['worldCount']) unless map['worldCount'].nil?)
        data.finished_worlds_summary = (Parsers::FinishedWorldsSummary.parse(map['finishedWorldsSummary']) unless map['finishedWorldsSummary'].nil?)
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        data.world_tags = (Parsers::TagMap.parse(map['worldTags']) unless map['worldTags'].nil?)
        data
      end
    end

    class FinishedWorldsSummary
      def self.parse(map)
        data = Types::FinishedWorldsSummary.new
        data.finished_count = map['finishedCount']
        data.succeeded_worlds = (Parsers::Arns.parse(map['succeededWorlds']) unless map['succeededWorlds'].nil?)
        data.failure_summary = (Parsers::FailureSummary.parse(map['failureSummary']) unless map['failureSummary'].nil?)
        return data
      end
    end

    class FailureSummary
      def self.parse(map)
        data = Types::FailureSummary.new
        data.total_failure_count = map['totalFailureCount']
        data.failures = (Parsers::WorldFailures.parse(map['failures']) unless map['failures'].nil?)
        return data
      end
    end

    class WorldFailures
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::WorldFailure.parse(value) unless value.nil?
        end
        data
      end
    end

    class WorldFailure
      def self.parse(map)
        data = Types::WorldFailure.new
        data.failure_code = map['failureCode']
        data.sample_failure_reason = map['sampleFailureReason']
        data.failure_count = map['failureCount']
        return data
      end
    end

    # Operation Parser for DescribeWorldTemplate
    class DescribeWorldTemplate
      def self.parse(http_resp)
        data = Types::DescribeWorldTemplateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.client_request_token = map['clientRequestToken']
        data.name = map['name']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.last_updated_at = Time.at(map['lastUpdatedAt'].to_i) if map['lastUpdatedAt']
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        data.version = map['version']
        data
      end
    end

    # Operation Parser for GetWorldTemplateBody
    class GetWorldTemplateBody
      def self.parse(http_resp)
        data = Types::GetWorldTemplateBodyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.template_body = map['templateBody']
        data
      end
    end

    # Operation Parser for ListDeploymentJobs
    class ListDeploymentJobs
      def self.parse(http_resp)
        data = Types::ListDeploymentJobsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.deployment_jobs = (Parsers::DeploymentJobs.parse(map['deploymentJobs']) unless map['deploymentJobs'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class DeploymentJobs
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::DeploymentJob.parse(value) unless value.nil?
        end
        data
      end
    end

    class DeploymentJob
      def self.parse(map)
        data = Types::DeploymentJob.new
        data.arn = map['arn']
        data.fleet = map['fleet']
        data.status = map['status']
        data.deployment_application_configs = (Parsers::DeploymentApplicationConfigs.parse(map['deploymentApplicationConfigs']) unless map['deploymentApplicationConfigs'].nil?)
        data.deployment_config = (Parsers::DeploymentConfig.parse(map['deploymentConfig']) unless map['deploymentConfig'].nil?)
        data.failure_reason = map['failureReason']
        data.failure_code = map['failureCode']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        return data
      end
    end

    # Operation Parser for ListFleets
    class ListFleets
      def self.parse(http_resp)
        data = Types::ListFleetsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.fleet_details = (Parsers::Fleets.parse(map['fleetDetails']) unless map['fleetDetails'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class Fleets
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Fleet.parse(value) unless value.nil?
        end
        data
      end
    end

    class Fleet
      def self.parse(map)
        data = Types::Fleet.new
        data.name = map['name']
        data.arn = map['arn']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.last_deployment_status = map['lastDeploymentStatus']
        data.last_deployment_job = map['lastDeploymentJob']
        data.last_deployment_time = Time.at(map['lastDeploymentTime'].to_i) if map['lastDeploymentTime']
        return data
      end
    end

    # Operation Parser for ListRobotApplications
    class ListRobotApplications
      def self.parse(http_resp)
        data = Types::ListRobotApplicationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.robot_application_summaries = (Parsers::RobotApplicationSummaries.parse(map['robotApplicationSummaries']) unless map['robotApplicationSummaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class RobotApplicationSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::RobotApplicationSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class RobotApplicationSummary
      def self.parse(map)
        data = Types::RobotApplicationSummary.new
        data.name = map['name']
        data.arn = map['arn']
        data.version = map['version']
        data.last_updated_at = Time.at(map['lastUpdatedAt'].to_i) if map['lastUpdatedAt']
        data.robot_software_suite = (Parsers::RobotSoftwareSuite.parse(map['robotSoftwareSuite']) unless map['robotSoftwareSuite'].nil?)
        return data
      end
    end

    # Operation Parser for ListRobots
    class ListRobots
      def self.parse(http_resp)
        data = Types::ListRobotsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.robots = (Parsers::Robots.parse(map['robots']) unless map['robots'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    # Operation Parser for ListSimulationApplications
    class ListSimulationApplications
      def self.parse(http_resp)
        data = Types::ListSimulationApplicationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.simulation_application_summaries = (Parsers::SimulationApplicationSummaries.parse(map['simulationApplicationSummaries']) unless map['simulationApplicationSummaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class SimulationApplicationSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::SimulationApplicationSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class SimulationApplicationSummary
      def self.parse(map)
        data = Types::SimulationApplicationSummary.new
        data.name = map['name']
        data.arn = map['arn']
        data.version = map['version']
        data.last_updated_at = Time.at(map['lastUpdatedAt'].to_i) if map['lastUpdatedAt']
        data.robot_software_suite = (Parsers::RobotSoftwareSuite.parse(map['robotSoftwareSuite']) unless map['robotSoftwareSuite'].nil?)
        data.simulation_software_suite = (Parsers::SimulationSoftwareSuite.parse(map['simulationSoftwareSuite']) unless map['simulationSoftwareSuite'].nil?)
        return data
      end
    end

    # Operation Parser for ListSimulationJobBatches
    class ListSimulationJobBatches
      def self.parse(http_resp)
        data = Types::ListSimulationJobBatchesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.simulation_job_batch_summaries = (Parsers::SimulationJobBatchSummaries.parse(map['simulationJobBatchSummaries']) unless map['simulationJobBatchSummaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class SimulationJobBatchSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::SimulationJobBatchSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class SimulationJobBatchSummary
      def self.parse(map)
        data = Types::SimulationJobBatchSummary.new
        data.arn = map['arn']
        data.last_updated_at = Time.at(map['lastUpdatedAt'].to_i) if map['lastUpdatedAt']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.status = map['status']
        data.failed_request_count = map['failedRequestCount']
        data.pending_request_count = map['pendingRequestCount']
        data.created_request_count = map['createdRequestCount']
        return data
      end
    end

    # Operation Parser for ListSimulationJobs
    class ListSimulationJobs
      def self.parse(http_resp)
        data = Types::ListSimulationJobsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.simulation_job_summaries = (Parsers::SimulationJobSummaries.parse(map['simulationJobSummaries']) unless map['simulationJobSummaries'].nil?)
        data.next_token = map['nextToken']
        data
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

    # Operation Parser for ListWorldExportJobs
    class ListWorldExportJobs
      def self.parse(http_resp)
        data = Types::ListWorldExportJobsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.world_export_job_summaries = (Parsers::WorldExportJobSummaries.parse(map['worldExportJobSummaries']) unless map['worldExportJobSummaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class WorldExportJobSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::WorldExportJobSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class WorldExportJobSummary
      def self.parse(map)
        data = Types::WorldExportJobSummary.new
        data.arn = map['arn']
        data.status = map['status']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.worlds = (Parsers::Arns.parse(map['worlds']) unless map['worlds'].nil?)
        data.output_location = (Parsers::OutputLocation.parse(map['outputLocation']) unless map['outputLocation'].nil?)
        return data
      end
    end

    # Operation Parser for ListWorldGenerationJobs
    class ListWorldGenerationJobs
      def self.parse(http_resp)
        data = Types::ListWorldGenerationJobsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.world_generation_job_summaries = (Parsers::WorldGenerationJobSummaries.parse(map['worldGenerationJobSummaries']) unless map['worldGenerationJobSummaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class WorldGenerationJobSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::WorldGenerationJobSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class WorldGenerationJobSummary
      def self.parse(map)
        data = Types::WorldGenerationJobSummary.new
        data.arn = map['arn']
        data.template = map['template']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.status = map['status']
        data.world_count = (Parsers::WorldCount.parse(map['worldCount']) unless map['worldCount'].nil?)
        data.succeeded_world_count = map['succeededWorldCount']
        data.failed_world_count = map['failedWorldCount']
        return data
      end
    end

    # Operation Parser for ListWorldTemplates
    class ListWorldTemplates
      def self.parse(http_resp)
        data = Types::ListWorldTemplatesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.template_summaries = (Parsers::TemplateSummaries.parse(map['templateSummaries']) unless map['templateSummaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class TemplateSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::TemplateSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class TemplateSummary
      def self.parse(map)
        data = Types::TemplateSummary.new
        data.arn = map['arn']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.last_updated_at = Time.at(map['lastUpdatedAt'].to_i) if map['lastUpdatedAt']
        data.name = map['name']
        data.version = map['version']
        return data
      end
    end

    # Operation Parser for ListWorlds
    class ListWorlds
      def self.parse(http_resp)
        data = Types::ListWorldsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.world_summaries = (Parsers::WorldSummaries.parse(map['worldSummaries']) unless map['worldSummaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class WorldSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::WorldSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class WorldSummary
      def self.parse(map)
        data = Types::WorldSummary.new
        data.arn = map['arn']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.generation_job = map['generationJob']
        data.template = map['template']
        return data
      end
    end

    # Operation Parser for RegisterRobot
    class RegisterRobot
      def self.parse(http_resp)
        data = Types::RegisterRobotOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.fleet = map['fleet']
        data.robot = map['robot']
        data
      end
    end

    # Operation Parser for RestartSimulationJob
    class RestartSimulationJob
      def self.parse(http_resp)
        data = Types::RestartSimulationJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for StartSimulationJobBatch
    class StartSimulationJobBatch
      def self.parse(http_resp)
        data = Types::StartSimulationJobBatchOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.status = map['status']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.client_request_token = map['clientRequestToken']
        data.batch_policy = (Parsers::BatchPolicy.parse(map['batchPolicy']) unless map['batchPolicy'].nil?)
        data.failure_code = map['failureCode']
        data.failure_reason = map['failureReason']
        data.failed_requests = (Parsers::FailedCreateSimulationJobRequests.parse(map['failedRequests']) unless map['failedRequests'].nil?)
        data.pending_requests = (Parsers::CreateSimulationJobRequests.parse(map['pendingRequests']) unless map['pendingRequests'].nil?)
        data.created_requests = (Parsers::SimulationJobSummaries.parse(map['createdRequests']) unless map['createdRequests'].nil?)
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for SyncDeploymentJob
    class SyncDeploymentJob
      def self.parse(http_resp)
        data = Types::SyncDeploymentJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.fleet = map['fleet']
        data.status = map['status']
        data.deployment_config = (Parsers::DeploymentConfig.parse(map['deploymentConfig']) unless map['deploymentConfig'].nil?)
        data.deployment_application_configs = (Parsers::DeploymentApplicationConfigs.parse(map['deploymentApplicationConfigs']) unless map['deploymentApplicationConfigs'].nil?)
        data.failure_reason = map['failureReason']
        data.failure_code = map['failureCode']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
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

    # Operation Parser for UpdateRobotApplication
    class UpdateRobotApplication
      def self.parse(http_resp)
        data = Types::UpdateRobotApplicationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.name = map['name']
        data.version = map['version']
        data.sources = (Parsers::Sources.parse(map['sources']) unless map['sources'].nil?)
        data.robot_software_suite = (Parsers::RobotSoftwareSuite.parse(map['robotSoftwareSuite']) unless map['robotSoftwareSuite'].nil?)
        data.last_updated_at = Time.at(map['lastUpdatedAt'].to_i) if map['lastUpdatedAt']
        data.revision_id = map['revisionId']
        data.environment = (Parsers::Environment.parse(map['environment']) unless map['environment'].nil?)
        data
      end
    end

    # Operation Parser for UpdateSimulationApplication
    class UpdateSimulationApplication
      def self.parse(http_resp)
        data = Types::UpdateSimulationApplicationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.name = map['name']
        data.version = map['version']
        data.sources = (Parsers::Sources.parse(map['sources']) unless map['sources'].nil?)
        data.simulation_software_suite = (Parsers::SimulationSoftwareSuite.parse(map['simulationSoftwareSuite']) unless map['simulationSoftwareSuite'].nil?)
        data.robot_software_suite = (Parsers::RobotSoftwareSuite.parse(map['robotSoftwareSuite']) unless map['robotSoftwareSuite'].nil?)
        data.rendering_engine = (Parsers::RenderingEngine.parse(map['renderingEngine']) unless map['renderingEngine'].nil?)
        data.last_updated_at = Time.at(map['lastUpdatedAt'].to_i) if map['lastUpdatedAt']
        data.revision_id = map['revisionId']
        data.environment = (Parsers::Environment.parse(map['environment']) unless map['environment'].nil?)
        data
      end
    end

    # Operation Parser for UpdateWorldTemplate
    class UpdateWorldTemplate
      def self.parse(http_resp)
        data = Types::UpdateWorldTemplateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.name = map['name']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.last_updated_at = Time.at(map['lastUpdatedAt'].to_i) if map['lastUpdatedAt']
        data
      end
    end
  end
end
