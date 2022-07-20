# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::RoboMaker
  module Builders

    # Operation Builder for BatchDeleteWorlds
    class BatchDeleteWorlds
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/batchDeleteWorlds')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['worlds'] = Arns.build(input[:worlds]) unless input[:worlds].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for Arns
    class Arns
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for BatchDescribeSimulationJob
    class BatchDescribeSimulationJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/batchDescribeSimulationJob')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['jobs'] = Arns.build(input[:jobs]) unless input[:jobs].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CancelDeploymentJob
    class CancelDeploymentJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/cancelDeploymentJob')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['job'] = input[:job] unless input[:job].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CancelSimulationJob
    class CancelSimulationJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/cancelSimulationJob')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['job'] = input[:job] unless input[:job].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CancelSimulationJobBatch
    class CancelSimulationJobBatch
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/cancelSimulationJobBatch')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['batch'] = input[:batch] unless input[:batch].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CancelWorldExportJob
    class CancelWorldExportJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/cancelWorldExportJob')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['job'] = input[:job] unless input[:job].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CancelWorldGenerationJob
    class CancelWorldGenerationJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/cancelWorldGenerationJob')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['job'] = input[:job] unless input[:job].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateDeploymentJob
    class CreateDeploymentJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/createDeploymentJob')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['deploymentConfig'] = DeploymentConfig.build(input[:deployment_config]) unless input[:deployment_config].nil?
        data['clientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['fleet'] = input[:fleet] unless input[:fleet].nil?
        data['deploymentApplicationConfigs'] = DeploymentApplicationConfigs.build(input[:deployment_application_configs]) unless input[:deployment_application_configs].nil?
        data['tags'] = TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
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

    # List Builder for DeploymentApplicationConfigs
    class DeploymentApplicationConfigs
      def self.build(input)
        data = []
        input.each do |element|
          data << DeploymentApplicationConfig.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DeploymentApplicationConfig
    class DeploymentApplicationConfig
      def self.build(input)
        data = {}
        data['application'] = input[:application] unless input[:application].nil?
        data['applicationVersion'] = input[:application_version] unless input[:application_version].nil?
        data['launchConfig'] = DeploymentLaunchConfig.build(input[:launch_config]) unless input[:launch_config].nil?
        data
      end
    end

    # Structure Builder for DeploymentLaunchConfig
    class DeploymentLaunchConfig
      def self.build(input)
        data = {}
        data['packageName'] = input[:package_name] unless input[:package_name].nil?
        data['preLaunchFile'] = input[:pre_launch_file] unless input[:pre_launch_file].nil?
        data['launchFile'] = input[:launch_file] unless input[:launch_file].nil?
        data['postLaunchFile'] = input[:post_launch_file] unless input[:post_launch_file].nil?
        data['environmentVariables'] = EnvironmentVariableMap.build(input[:environment_variables]) unless input[:environment_variables].nil?
        data
      end
    end

    # Map Builder for EnvironmentVariableMap
    class EnvironmentVariableMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for DeploymentConfig
    class DeploymentConfig
      def self.build(input)
        data = {}
        data['concurrentDeploymentPercentage'] = input[:concurrent_deployment_percentage] unless input[:concurrent_deployment_percentage].nil?
        data['failureThresholdPercentage'] = input[:failure_threshold_percentage] unless input[:failure_threshold_percentage].nil?
        data['robotDeploymentTimeoutInSeconds'] = input[:robot_deployment_timeout_in_seconds] unless input[:robot_deployment_timeout_in_seconds].nil?
        data['downloadConditionFile'] = S3Object.build(input[:download_condition_file]) unless input[:download_condition_file].nil?
        data
      end
    end

    # Structure Builder for S3Object
    class S3Object
      def self.build(input)
        data = {}
        data['bucket'] = input[:bucket] unless input[:bucket].nil?
        data['key'] = input[:key] unless input[:key].nil?
        data['etag'] = input[:etag] unless input[:etag].nil?
        data
      end
    end

    # Operation Builder for CreateFleet
    class CreateFleet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/createFleet')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['tags'] = TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateRobot
    class CreateRobot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/createRobot')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['architecture'] = input[:architecture] unless input[:architecture].nil?
        data['greengrassGroupId'] = input[:greengrass_group_id] unless input[:greengrass_group_id].nil?
        data['tags'] = TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateRobotApplication
    class CreateRobotApplication
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/createRobotApplication')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['sources'] = SourceConfigs.build(input[:sources]) unless input[:sources].nil?
        data['robotSoftwareSuite'] = RobotSoftwareSuite.build(input[:robot_software_suite]) unless input[:robot_software_suite].nil?
        data['tags'] = TagMap.build(input[:tags]) unless input[:tags].nil?
        data['environment'] = Environment.build(input[:environment]) unless input[:environment].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for Environment
    class Environment
      def self.build(input)
        data = {}
        data['uri'] = input[:uri] unless input[:uri].nil?
        data
      end
    end

    # Structure Builder for RobotSoftwareSuite
    class RobotSoftwareSuite
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['version'] = input[:version] unless input[:version].nil?
        data
      end
    end

    # List Builder for SourceConfigs
    class SourceConfigs
      def self.build(input)
        data = []
        input.each do |element|
          data << SourceConfig.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SourceConfig
    class SourceConfig
      def self.build(input)
        data = {}
        data['s3Bucket'] = input[:s3_bucket] unless input[:s3_bucket].nil?
        data['s3Key'] = input[:s3_key] unless input[:s3_key].nil?
        data['architecture'] = input[:architecture] unless input[:architecture].nil?
        data
      end
    end

    # Operation Builder for CreateRobotApplicationVersion
    class CreateRobotApplicationVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/createRobotApplicationVersion')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['application'] = input[:application] unless input[:application].nil?
        data['currentRevisionId'] = input[:current_revision_id] unless input[:current_revision_id].nil?
        data['s3Etags'] = S3Etags.build(input[:s3_etags]) unless input[:s3_etags].nil?
        data['imageDigest'] = input[:image_digest] unless input[:image_digest].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for S3Etags
    class S3Etags
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateSimulationApplication
    class CreateSimulationApplication
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/createSimulationApplication')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['sources'] = SourceConfigs.build(input[:sources]) unless input[:sources].nil?
        data['simulationSoftwareSuite'] = SimulationSoftwareSuite.build(input[:simulation_software_suite]) unless input[:simulation_software_suite].nil?
        data['robotSoftwareSuite'] = RobotSoftwareSuite.build(input[:robot_software_suite]) unless input[:robot_software_suite].nil?
        data['renderingEngine'] = RenderingEngine.build(input[:rendering_engine]) unless input[:rendering_engine].nil?
        data['tags'] = TagMap.build(input[:tags]) unless input[:tags].nil?
        data['environment'] = Environment.build(input[:environment]) unless input[:environment].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for RenderingEngine
    class RenderingEngine
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['version'] = input[:version] unless input[:version].nil?
        data
      end
    end

    # Structure Builder for SimulationSoftwareSuite
    class SimulationSoftwareSuite
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['version'] = input[:version] unless input[:version].nil?
        data
      end
    end

    # Operation Builder for CreateSimulationApplicationVersion
    class CreateSimulationApplicationVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/createSimulationApplicationVersion')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['application'] = input[:application] unless input[:application].nil?
        data['currentRevisionId'] = input[:current_revision_id] unless input[:current_revision_id].nil?
        data['s3Etags'] = S3Etags.build(input[:s3_etags]) unless input[:s3_etags].nil?
        data['imageDigest'] = input[:image_digest] unless input[:image_digest].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateSimulationJob
    class CreateSimulationJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/createSimulationJob')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['clientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['outputLocation'] = OutputLocation.build(input[:output_location]) unless input[:output_location].nil?
        data['loggingConfig'] = LoggingConfig.build(input[:logging_config]) unless input[:logging_config].nil?
        data['maxJobDurationInSeconds'] = input[:max_job_duration_in_seconds] unless input[:max_job_duration_in_seconds].nil?
        data['iamRole'] = input[:iam_role] unless input[:iam_role].nil?
        data['failureBehavior'] = input[:failure_behavior] unless input[:failure_behavior].nil?
        data['robotApplications'] = RobotApplicationConfigs.build(input[:robot_applications]) unless input[:robot_applications].nil?
        data['simulationApplications'] = SimulationApplicationConfigs.build(input[:simulation_applications]) unless input[:simulation_applications].nil?
        data['dataSources'] = DataSourceConfigs.build(input[:data_sources]) unless input[:data_sources].nil?
        data['tags'] = TagMap.build(input[:tags]) unless input[:tags].nil?
        data['vpcConfig'] = VPCConfig.build(input[:vpc_config]) unless input[:vpc_config].nil?
        data['compute'] = Compute.build(input[:compute]) unless input[:compute].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for Compute
    class Compute
      def self.build(input)
        data = {}
        data['simulationUnitLimit'] = input[:simulation_unit_limit] unless input[:simulation_unit_limit].nil?
        data['computeType'] = input[:compute_type] unless input[:compute_type].nil?
        data['gpuUnitLimit'] = input[:gpu_unit_limit] unless input[:gpu_unit_limit].nil?
        data
      end
    end

    # Structure Builder for VPCConfig
    class VPCConfig
      def self.build(input)
        data = {}
        data['subnets'] = Subnets.build(input[:subnets]) unless input[:subnets].nil?
        data['securityGroups'] = SecurityGroups.build(input[:security_groups]) unless input[:security_groups].nil?
        data['assignPublicIp'] = input[:assign_public_ip] unless input[:assign_public_ip].nil?
        data
      end
    end

    # List Builder for SecurityGroups
    class SecurityGroups
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for Subnets
    class Subnets
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for DataSourceConfigs
    class DataSourceConfigs
      def self.build(input)
        data = []
        input.each do |element|
          data << DataSourceConfig.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DataSourceConfig
    class DataSourceConfig
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['s3Bucket'] = input[:s3_bucket] unless input[:s3_bucket].nil?
        data['s3Keys'] = S3KeysOrPrefixes.build(input[:s3_keys]) unless input[:s3_keys].nil?
        data['type'] = input[:type] unless input[:type].nil?
        data['destination'] = input[:destination] unless input[:destination].nil?
        data
      end
    end

    # List Builder for S3KeysOrPrefixes
    class S3KeysOrPrefixes
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for SimulationApplicationConfigs
    class SimulationApplicationConfigs
      def self.build(input)
        data = []
        input.each do |element|
          data << SimulationApplicationConfig.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SimulationApplicationConfig
    class SimulationApplicationConfig
      def self.build(input)
        data = {}
        data['application'] = input[:application] unless input[:application].nil?
        data['applicationVersion'] = input[:application_version] unless input[:application_version].nil?
        data['launchConfig'] = LaunchConfig.build(input[:launch_config]) unless input[:launch_config].nil?
        data['uploadConfigurations'] = UploadConfigurations.build(input[:upload_configurations]) unless input[:upload_configurations].nil?
        data['worldConfigs'] = WorldConfigs.build(input[:world_configs]) unless input[:world_configs].nil?
        data['useDefaultUploadConfigurations'] = input[:use_default_upload_configurations] unless input[:use_default_upload_configurations].nil?
        data['tools'] = Tools.build(input[:tools]) unless input[:tools].nil?
        data['useDefaultTools'] = input[:use_default_tools] unless input[:use_default_tools].nil?
        data
      end
    end

    # List Builder for Tools
    class Tools
      def self.build(input)
        data = []
        input.each do |element|
          data << Tool.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tool
    class Tool
      def self.build(input)
        data = {}
        data['streamUI'] = input[:stream_ui] unless input[:stream_ui].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['command'] = input[:command] unless input[:command].nil?
        data['streamOutputToCloudWatch'] = input[:stream_output_to_cloud_watch] unless input[:stream_output_to_cloud_watch].nil?
        data['exitBehavior'] = input[:exit_behavior] unless input[:exit_behavior].nil?
        data
      end
    end

    # List Builder for WorldConfigs
    class WorldConfigs
      def self.build(input)
        data = []
        input.each do |element|
          data << WorldConfig.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for WorldConfig
    class WorldConfig
      def self.build(input)
        data = {}
        data['world'] = input[:world] unless input[:world].nil?
        data
      end
    end

    # List Builder for UploadConfigurations
    class UploadConfigurations
      def self.build(input)
        data = []
        input.each do |element|
          data << UploadConfiguration.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for UploadConfiguration
    class UploadConfiguration
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['path'] = input[:path] unless input[:path].nil?
        data['uploadBehavior'] = input[:upload_behavior] unless input[:upload_behavior].nil?
        data
      end
    end

    # Structure Builder for LaunchConfig
    class LaunchConfig
      def self.build(input)
        data = {}
        data['packageName'] = input[:package_name] unless input[:package_name].nil?
        data['launchFile'] = input[:launch_file] unless input[:launch_file].nil?
        data['environmentVariables'] = EnvironmentVariableMap.build(input[:environment_variables]) unless input[:environment_variables].nil?
        data['portForwardingConfig'] = PortForwardingConfig.build(input[:port_forwarding_config]) unless input[:port_forwarding_config].nil?
        data['streamUI'] = input[:stream_ui] unless input[:stream_ui].nil?
        data['command'] = CommandList.build(input[:command]) unless input[:command].nil?
        data
      end
    end

    # List Builder for CommandList
    class CommandList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for PortForwardingConfig
    class PortForwardingConfig
      def self.build(input)
        data = {}
        data['portMappings'] = PortMappingList.build(input[:port_mappings]) unless input[:port_mappings].nil?
        data
      end
    end

    # List Builder for PortMappingList
    class PortMappingList
      def self.build(input)
        data = []
        input.each do |element|
          data << PortMapping.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for PortMapping
    class PortMapping
      def self.build(input)
        data = {}
        data['jobPort'] = input[:job_port] unless input[:job_port].nil?
        data['applicationPort'] = input[:application_port] unless input[:application_port].nil?
        data['enableOnPublicIp'] = input[:enable_on_public_ip] unless input[:enable_on_public_ip].nil?
        data
      end
    end

    # List Builder for RobotApplicationConfigs
    class RobotApplicationConfigs
      def self.build(input)
        data = []
        input.each do |element|
          data << RobotApplicationConfig.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for RobotApplicationConfig
    class RobotApplicationConfig
      def self.build(input)
        data = {}
        data['application'] = input[:application] unless input[:application].nil?
        data['applicationVersion'] = input[:application_version] unless input[:application_version].nil?
        data['launchConfig'] = LaunchConfig.build(input[:launch_config]) unless input[:launch_config].nil?
        data['uploadConfigurations'] = UploadConfigurations.build(input[:upload_configurations]) unless input[:upload_configurations].nil?
        data['useDefaultUploadConfigurations'] = input[:use_default_upload_configurations] unless input[:use_default_upload_configurations].nil?
        data['tools'] = Tools.build(input[:tools]) unless input[:tools].nil?
        data['useDefaultTools'] = input[:use_default_tools] unless input[:use_default_tools].nil?
        data
      end
    end

    # Structure Builder for LoggingConfig
    class LoggingConfig
      def self.build(input)
        data = {}
        data['recordAllRosTopics'] = input[:record_all_ros_topics] unless input[:record_all_ros_topics].nil?
        data
      end
    end

    # Structure Builder for OutputLocation
    class OutputLocation
      def self.build(input)
        data = {}
        data['s3Bucket'] = input[:s3_bucket] unless input[:s3_bucket].nil?
        data['s3Prefix'] = input[:s3_prefix] unless input[:s3_prefix].nil?
        data
      end
    end

    # Operation Builder for CreateWorldExportJob
    class CreateWorldExportJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/createWorldExportJob')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['clientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['worlds'] = Arns.build(input[:worlds]) unless input[:worlds].nil?
        data['outputLocation'] = OutputLocation.build(input[:output_location]) unless input[:output_location].nil?
        data['iamRole'] = input[:iam_role] unless input[:iam_role].nil?
        data['tags'] = TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateWorldGenerationJob
    class CreateWorldGenerationJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/createWorldGenerationJob')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['clientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['template'] = input[:template] unless input[:template].nil?
        data['worldCount'] = WorldCount.build(input[:world_count]) unless input[:world_count].nil?
        data['tags'] = TagMap.build(input[:tags]) unless input[:tags].nil?
        data['worldTags'] = TagMap.build(input[:world_tags]) unless input[:world_tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for WorldCount
    class WorldCount
      def self.build(input)
        data = {}
        data['floorplanCount'] = input[:floorplan_count] unless input[:floorplan_count].nil?
        data['interiorCountPerFloorplan'] = input[:interior_count_per_floorplan] unless input[:interior_count_per_floorplan].nil?
        data
      end
    end

    # Operation Builder for CreateWorldTemplate
    class CreateWorldTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/createWorldTemplate')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['clientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['templateBody'] = input[:template_body] unless input[:template_body].nil?
        data['templateLocation'] = TemplateLocation.build(input[:template_location]) unless input[:template_location].nil?
        data['tags'] = TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for TemplateLocation
    class TemplateLocation
      def self.build(input)
        data = {}
        data['s3Bucket'] = input[:s3_bucket] unless input[:s3_bucket].nil?
        data['s3Key'] = input[:s3_key] unless input[:s3_key].nil?
        data
      end
    end

    # Operation Builder for DeleteFleet
    class DeleteFleet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/deleteFleet')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['fleet'] = input[:fleet] unless input[:fleet].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteRobot
    class DeleteRobot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/deleteRobot')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['robot'] = input[:robot] unless input[:robot].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteRobotApplication
    class DeleteRobotApplication
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/deleteRobotApplication')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['application'] = input[:application] unless input[:application].nil?
        data['applicationVersion'] = input[:application_version] unless input[:application_version].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteSimulationApplication
    class DeleteSimulationApplication
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/deleteSimulationApplication')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['application'] = input[:application] unless input[:application].nil?
        data['applicationVersion'] = input[:application_version] unless input[:application_version].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteWorldTemplate
    class DeleteWorldTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/deleteWorldTemplate')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['template'] = input[:template] unless input[:template].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeregisterRobot
    class DeregisterRobot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/deregisterRobot')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['fleet'] = input[:fleet] unless input[:fleet].nil?
        data['robot'] = input[:robot] unless input[:robot].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeDeploymentJob
    class DescribeDeploymentJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/describeDeploymentJob')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['job'] = input[:job] unless input[:job].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeFleet
    class DescribeFleet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/describeFleet')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['fleet'] = input[:fleet] unless input[:fleet].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeRobot
    class DescribeRobot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/describeRobot')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['robot'] = input[:robot] unless input[:robot].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeRobotApplication
    class DescribeRobotApplication
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/describeRobotApplication')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['application'] = input[:application] unless input[:application].nil?
        data['applicationVersion'] = input[:application_version] unless input[:application_version].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeSimulationApplication
    class DescribeSimulationApplication
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/describeSimulationApplication')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['application'] = input[:application] unless input[:application].nil?
        data['applicationVersion'] = input[:application_version] unless input[:application_version].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeSimulationJob
    class DescribeSimulationJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/describeSimulationJob')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['job'] = input[:job] unless input[:job].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeSimulationJobBatch
    class DescribeSimulationJobBatch
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/describeSimulationJobBatch')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['batch'] = input[:batch] unless input[:batch].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeWorld
    class DescribeWorld
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/describeWorld')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['world'] = input[:world] unless input[:world].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeWorldExportJob
    class DescribeWorldExportJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/describeWorldExportJob')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['job'] = input[:job] unless input[:job].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeWorldGenerationJob
    class DescribeWorldGenerationJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/describeWorldGenerationJob')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['job'] = input[:job] unless input[:job].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeWorldTemplate
    class DescribeWorldTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/describeWorldTemplate')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['template'] = input[:template] unless input[:template].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetWorldTemplateBody
    class GetWorldTemplateBody
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/getWorldTemplateBody')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['template'] = input[:template] unless input[:template].nil?
        data['generationJob'] = input[:generation_job] unless input[:generation_job].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListDeploymentJobs
    class ListDeploymentJobs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/listDeploymentJobs')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['filters'] = Filters.build(input[:filters]) unless input[:filters].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for Filters
    class Filters
      def self.build(input)
        data = []
        input.each do |element|
          data << Filter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Filter
    class Filter
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['values'] = FilterValues.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # List Builder for FilterValues
    class FilterValues
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListFleets
    class ListFleets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/listFleets')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['filters'] = Filters.build(input[:filters]) unless input[:filters].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListRobotApplications
    class ListRobotApplications
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/listRobotApplications')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['versionQualifier'] = input[:version_qualifier] unless input[:version_qualifier].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['filters'] = Filters.build(input[:filters]) unless input[:filters].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListRobots
    class ListRobots
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/listRobots')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['filters'] = Filters.build(input[:filters]) unless input[:filters].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListSimulationApplications
    class ListSimulationApplications
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/listSimulationApplications')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['versionQualifier'] = input[:version_qualifier] unless input[:version_qualifier].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['filters'] = Filters.build(input[:filters]) unless input[:filters].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListSimulationJobBatches
    class ListSimulationJobBatches
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/listSimulationJobBatches')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['filters'] = Filters.build(input[:filters]) unless input[:filters].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListSimulationJobs
    class ListSimulationJobs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/listSimulationJobs')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['filters'] = Filters.build(input[:filters]) unless input[:filters].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
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
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListWorldExportJobs
    class ListWorldExportJobs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/listWorldExportJobs')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['filters'] = Filters.build(input[:filters]) unless input[:filters].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListWorldGenerationJobs
    class ListWorldGenerationJobs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/listWorldGenerationJobs')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['filters'] = Filters.build(input[:filters]) unless input[:filters].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListWorldTemplates
    class ListWorldTemplates
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/listWorldTemplates')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListWorlds
    class ListWorlds
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/listWorlds')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['filters'] = Filters.build(input[:filters]) unless input[:filters].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RegisterRobot
    class RegisterRobot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/registerRobot')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['fleet'] = input[:fleet] unless input[:fleet].nil?
        data['robot'] = input[:robot] unless input[:robot].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RestartSimulationJob
    class RestartSimulationJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/restartSimulationJob')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['job'] = input[:job] unless input[:job].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartSimulationJobBatch
    class StartSimulationJobBatch
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/startSimulationJobBatch')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['clientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['batchPolicy'] = BatchPolicy.build(input[:batch_policy]) unless input[:batch_policy].nil?
        data['createSimulationJobRequests'] = CreateSimulationJobRequests.build(input[:create_simulation_job_requests]) unless input[:create_simulation_job_requests].nil?
        data['tags'] = TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for CreateSimulationJobRequests
    class CreateSimulationJobRequests
      def self.build(input)
        data = []
        input.each do |element|
          data << SimulationJobRequest.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SimulationJobRequest
    class SimulationJobRequest
      def self.build(input)
        data = {}
        data['outputLocation'] = OutputLocation.build(input[:output_location]) unless input[:output_location].nil?
        data['loggingConfig'] = LoggingConfig.build(input[:logging_config]) unless input[:logging_config].nil?
        data['maxJobDurationInSeconds'] = input[:max_job_duration_in_seconds] unless input[:max_job_duration_in_seconds].nil?
        data['iamRole'] = input[:iam_role] unless input[:iam_role].nil?
        data['failureBehavior'] = input[:failure_behavior] unless input[:failure_behavior].nil?
        data['useDefaultApplications'] = input[:use_default_applications] unless input[:use_default_applications].nil?
        data['robotApplications'] = RobotApplicationConfigs.build(input[:robot_applications]) unless input[:robot_applications].nil?
        data['simulationApplications'] = SimulationApplicationConfigs.build(input[:simulation_applications]) unless input[:simulation_applications].nil?
        data['dataSources'] = DataSourceConfigs.build(input[:data_sources]) unless input[:data_sources].nil?
        data['vpcConfig'] = VPCConfig.build(input[:vpc_config]) unless input[:vpc_config].nil?
        data['compute'] = Compute.build(input[:compute]) unless input[:compute].nil?
        data['tags'] = TagMap.build(input[:tags]) unless input[:tags].nil?
        data
      end
    end

    # Structure Builder for BatchPolicy
    class BatchPolicy
      def self.build(input)
        data = {}
        data['timeoutInSeconds'] = input[:timeout_in_seconds] unless input[:timeout_in_seconds].nil?
        data['maxConcurrency'] = input[:max_concurrency] unless input[:max_concurrency].nil?
        data
      end
    end

    # Operation Builder for SyncDeploymentJob
    class SyncDeploymentJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/syncDeploymentJob')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['clientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['fleet'] = input[:fleet] unless input[:fleet].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
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
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['tags'] = TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
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
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
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

    # Operation Builder for UpdateRobotApplication
    class UpdateRobotApplication
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/updateRobotApplication')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['application'] = input[:application] unless input[:application].nil?
        data['sources'] = SourceConfigs.build(input[:sources]) unless input[:sources].nil?
        data['robotSoftwareSuite'] = RobotSoftwareSuite.build(input[:robot_software_suite]) unless input[:robot_software_suite].nil?
        data['currentRevisionId'] = input[:current_revision_id] unless input[:current_revision_id].nil?
        data['environment'] = Environment.build(input[:environment]) unless input[:environment].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateSimulationApplication
    class UpdateSimulationApplication
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/updateSimulationApplication')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['application'] = input[:application] unless input[:application].nil?
        data['sources'] = SourceConfigs.build(input[:sources]) unless input[:sources].nil?
        data['simulationSoftwareSuite'] = SimulationSoftwareSuite.build(input[:simulation_software_suite]) unless input[:simulation_software_suite].nil?
        data['robotSoftwareSuite'] = RobotSoftwareSuite.build(input[:robot_software_suite]) unless input[:robot_software_suite].nil?
        data['renderingEngine'] = RenderingEngine.build(input[:rendering_engine]) unless input[:rendering_engine].nil?
        data['currentRevisionId'] = input[:current_revision_id] unless input[:current_revision_id].nil?
        data['environment'] = Environment.build(input[:environment]) unless input[:environment].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateWorldTemplate
    class UpdateWorldTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/updateWorldTemplate')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['template'] = input[:template] unless input[:template].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['templateBody'] = input[:template_body] unless input[:template_body].nil?
        data['templateLocation'] = TemplateLocation.build(input[:template_location]) unless input[:template_location].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
