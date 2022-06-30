# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::RoboMaker
  module Stubs

    # Operation Stubber for BatchDeleteWorlds
    class BatchDeleteWorlds
      def self.default(visited=[])
        {
          unprocessed_worlds: Stubs::Arns.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['unprocessedWorlds'] = Stubs::Arns.stub(stub[:unprocessed_worlds]) unless stub[:unprocessed_worlds].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for Arns
    class Arns
      def self.default(visited=[])
        return nil if visited.include?('Arns')
        visited = visited + ['Arns']
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

    # Operation Stubber for BatchDescribeSimulationJob
    class BatchDescribeSimulationJob
      def self.default(visited=[])
        {
          jobs: Stubs::SimulationJobs.default(visited),
          unprocessed_jobs: Stubs::Arns.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['jobs'] = Stubs::SimulationJobs.stub(stub[:jobs]) unless stub[:jobs].nil?
        data['unprocessedJobs'] = Stubs::Arns.stub(stub[:unprocessed_jobs]) unless stub[:unprocessed_jobs].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for SimulationJobs
    class SimulationJobs
      def self.default(visited=[])
        return nil if visited.include?('SimulationJobs')
        visited = visited + ['SimulationJobs']
        [
          Stubs::SimulationJob.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SimulationJob.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SimulationJob
    class SimulationJob
      def self.default(visited=[])
        return nil if visited.include?('SimulationJob')
        visited = visited + ['SimulationJob']
        {
          arn: 'arn',
          name: 'name',
          status: 'status',
          last_started_at: Time.now,
          last_updated_at: Time.now,
          failure_behavior: 'failure_behavior',
          failure_code: 'failure_code',
          failure_reason: 'failure_reason',
          client_request_token: 'client_request_token',
          output_location: Stubs::OutputLocation.default(visited),
          logging_config: Stubs::LoggingConfig.default(visited),
          max_job_duration_in_seconds: 1,
          simulation_time_millis: 1,
          iam_role: 'iam_role',
          robot_applications: Stubs::RobotApplicationConfigs.default(visited),
          simulation_applications: Stubs::SimulationApplicationConfigs.default(visited),
          data_sources: Stubs::DataSources.default(visited),
          tags: Stubs::TagMap.default(visited),
          vpc_config: Stubs::VPCConfigResponse.default(visited),
          network_interface: Stubs::NetworkInterface.default(visited),
          compute: Stubs::ComputeResponse.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SimulationJob.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['lastStartedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_started_at]).to_i unless stub[:last_started_at].nil?
        data['lastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data['failureBehavior'] = stub[:failure_behavior] unless stub[:failure_behavior].nil?
        data['failureCode'] = stub[:failure_code] unless stub[:failure_code].nil?
        data['failureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['clientRequestToken'] = stub[:client_request_token] unless stub[:client_request_token].nil?
        data['outputLocation'] = Stubs::OutputLocation.stub(stub[:output_location]) unless stub[:output_location].nil?
        data['loggingConfig'] = Stubs::LoggingConfig.stub(stub[:logging_config]) unless stub[:logging_config].nil?
        data['maxJobDurationInSeconds'] = stub[:max_job_duration_in_seconds] unless stub[:max_job_duration_in_seconds].nil?
        data['simulationTimeMillis'] = stub[:simulation_time_millis] unless stub[:simulation_time_millis].nil?
        data['iamRole'] = stub[:iam_role] unless stub[:iam_role].nil?
        data['robotApplications'] = Stubs::RobotApplicationConfigs.stub(stub[:robot_applications]) unless stub[:robot_applications].nil?
        data['simulationApplications'] = Stubs::SimulationApplicationConfigs.stub(stub[:simulation_applications]) unless stub[:simulation_applications].nil?
        data['dataSources'] = Stubs::DataSources.stub(stub[:data_sources]) unless stub[:data_sources].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['vpcConfig'] = Stubs::VPCConfigResponse.stub(stub[:vpc_config]) unless stub[:vpc_config].nil?
        data['networkInterface'] = Stubs::NetworkInterface.stub(stub[:network_interface]) unless stub[:network_interface].nil?
        data['compute'] = Stubs::ComputeResponse.stub(stub[:compute]) unless stub[:compute].nil?
        data
      end
    end

    # Structure Stubber for ComputeResponse
    class ComputeResponse
      def self.default(visited=[])
        return nil if visited.include?('ComputeResponse')
        visited = visited + ['ComputeResponse']
        {
          simulation_unit_limit: 1,
          compute_type: 'compute_type',
          gpu_unit_limit: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ComputeResponse.new
        data = {}
        data['simulationUnitLimit'] = stub[:simulation_unit_limit] unless stub[:simulation_unit_limit].nil?
        data['computeType'] = stub[:compute_type] unless stub[:compute_type].nil?
        data['gpuUnitLimit'] = stub[:gpu_unit_limit] unless stub[:gpu_unit_limit].nil?
        data
      end
    end

    # Structure Stubber for NetworkInterface
    class NetworkInterface
      def self.default(visited=[])
        return nil if visited.include?('NetworkInterface')
        visited = visited + ['NetworkInterface']
        {
          network_interface_id: 'network_interface_id',
          private_ip_address: 'private_ip_address',
          public_ip_address: 'public_ip_address',
        }
      end

      def self.stub(stub)
        stub ||= Types::NetworkInterface.new
        data = {}
        data['networkInterfaceId'] = stub[:network_interface_id] unless stub[:network_interface_id].nil?
        data['privateIpAddress'] = stub[:private_ip_address] unless stub[:private_ip_address].nil?
        data['publicIpAddress'] = stub[:public_ip_address] unless stub[:public_ip_address].nil?
        data
      end
    end

    # Structure Stubber for VPCConfigResponse
    class VPCConfigResponse
      def self.default(visited=[])
        return nil if visited.include?('VPCConfigResponse')
        visited = visited + ['VPCConfigResponse']
        {
          subnets: Stubs::Subnets.default(visited),
          security_groups: Stubs::SecurityGroups.default(visited),
          vpc_id: 'vpc_id',
          assign_public_ip: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::VPCConfigResponse.new
        data = {}
        data['subnets'] = Stubs::Subnets.stub(stub[:subnets]) unless stub[:subnets].nil?
        data['securityGroups'] = Stubs::SecurityGroups.stub(stub[:security_groups]) unless stub[:security_groups].nil?
        data['vpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data['assignPublicIp'] = stub[:assign_public_ip] unless stub[:assign_public_ip].nil?
        data
      end
    end

    # List Stubber for SecurityGroups
    class SecurityGroups
      def self.default(visited=[])
        return nil if visited.include?('SecurityGroups')
        visited = visited + ['SecurityGroups']
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

    # List Stubber for Subnets
    class Subnets
      def self.default(visited=[])
        return nil if visited.include?('Subnets')
        visited = visited + ['Subnets']
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

    # List Stubber for DataSources
    class DataSources
      def self.default(visited=[])
        return nil if visited.include?('DataSources')
        visited = visited + ['DataSources']
        [
          Stubs::DataSource.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DataSource.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DataSource
    class DataSource
      def self.default(visited=[])
        return nil if visited.include?('DataSource')
        visited = visited + ['DataSource']
        {
          name: 'name',
          s3_bucket: 's3_bucket',
          s3_keys: Stubs::S3KeyOutputs.default(visited),
          type: 'type',
          destination: 'destination',
        }
      end

      def self.stub(stub)
        stub ||= Types::DataSource.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['s3Bucket'] = stub[:s3_bucket] unless stub[:s3_bucket].nil?
        data['s3Keys'] = Stubs::S3KeyOutputs.stub(stub[:s3_keys]) unless stub[:s3_keys].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['destination'] = stub[:destination] unless stub[:destination].nil?
        data
      end
    end

    # List Stubber for S3KeyOutputs
    class S3KeyOutputs
      def self.default(visited=[])
        return nil if visited.include?('S3KeyOutputs')
        visited = visited + ['S3KeyOutputs']
        [
          Stubs::S3KeyOutput.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::S3KeyOutput.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for S3KeyOutput
    class S3KeyOutput
      def self.default(visited=[])
        return nil if visited.include?('S3KeyOutput')
        visited = visited + ['S3KeyOutput']
        {
          s3_key: 's3_key',
          etag: 'etag',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3KeyOutput.new
        data = {}
        data['s3Key'] = stub[:s3_key] unless stub[:s3_key].nil?
        data['etag'] = stub[:etag] unless stub[:etag].nil?
        data
      end
    end

    # List Stubber for SimulationApplicationConfigs
    class SimulationApplicationConfigs
      def self.default(visited=[])
        return nil if visited.include?('SimulationApplicationConfigs')
        visited = visited + ['SimulationApplicationConfigs']
        [
          Stubs::SimulationApplicationConfig.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SimulationApplicationConfig.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SimulationApplicationConfig
    class SimulationApplicationConfig
      def self.default(visited=[])
        return nil if visited.include?('SimulationApplicationConfig')
        visited = visited + ['SimulationApplicationConfig']
        {
          application: 'application',
          application_version: 'application_version',
          launch_config: Stubs::LaunchConfig.default(visited),
          upload_configurations: Stubs::UploadConfigurations.default(visited),
          world_configs: Stubs::WorldConfigs.default(visited),
          use_default_upload_configurations: false,
          tools: Stubs::Tools.default(visited),
          use_default_tools: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::SimulationApplicationConfig.new
        data = {}
        data['application'] = stub[:application] unless stub[:application].nil?
        data['applicationVersion'] = stub[:application_version] unless stub[:application_version].nil?
        data['launchConfig'] = Stubs::LaunchConfig.stub(stub[:launch_config]) unless stub[:launch_config].nil?
        data['uploadConfigurations'] = Stubs::UploadConfigurations.stub(stub[:upload_configurations]) unless stub[:upload_configurations].nil?
        data['worldConfigs'] = Stubs::WorldConfigs.stub(stub[:world_configs]) unless stub[:world_configs].nil?
        data['useDefaultUploadConfigurations'] = stub[:use_default_upload_configurations] unless stub[:use_default_upload_configurations].nil?
        data['tools'] = Stubs::Tools.stub(stub[:tools]) unless stub[:tools].nil?
        data['useDefaultTools'] = stub[:use_default_tools] unless stub[:use_default_tools].nil?
        data
      end
    end

    # List Stubber for Tools
    class Tools
      def self.default(visited=[])
        return nil if visited.include?('Tools')
        visited = visited + ['Tools']
        [
          Stubs::Tool.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Tool.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Tool
    class Tool
      def self.default(visited=[])
        return nil if visited.include?('Tool')
        visited = visited + ['Tool']
        {
          stream_ui: false,
          name: 'name',
          command: 'command',
          stream_output_to_cloud_watch: false,
          exit_behavior: 'exit_behavior',
        }
      end

      def self.stub(stub)
        stub ||= Types::Tool.new
        data = {}
        data['streamUI'] = stub[:stream_ui] unless stub[:stream_ui].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['command'] = stub[:command] unless stub[:command].nil?
        data['streamOutputToCloudWatch'] = stub[:stream_output_to_cloud_watch] unless stub[:stream_output_to_cloud_watch].nil?
        data['exitBehavior'] = stub[:exit_behavior] unless stub[:exit_behavior].nil?
        data
      end
    end

    # List Stubber for WorldConfigs
    class WorldConfigs
      def self.default(visited=[])
        return nil if visited.include?('WorldConfigs')
        visited = visited + ['WorldConfigs']
        [
          Stubs::WorldConfig.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::WorldConfig.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for WorldConfig
    class WorldConfig
      def self.default(visited=[])
        return nil if visited.include?('WorldConfig')
        visited = visited + ['WorldConfig']
        {
          world: 'world',
        }
      end

      def self.stub(stub)
        stub ||= Types::WorldConfig.new
        data = {}
        data['world'] = stub[:world] unless stub[:world].nil?
        data
      end
    end

    # List Stubber for UploadConfigurations
    class UploadConfigurations
      def self.default(visited=[])
        return nil if visited.include?('UploadConfigurations')
        visited = visited + ['UploadConfigurations']
        [
          Stubs::UploadConfiguration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::UploadConfiguration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for UploadConfiguration
    class UploadConfiguration
      def self.default(visited=[])
        return nil if visited.include?('UploadConfiguration')
        visited = visited + ['UploadConfiguration']
        {
          name: 'name',
          path: 'path',
          upload_behavior: 'upload_behavior',
        }
      end

      def self.stub(stub)
        stub ||= Types::UploadConfiguration.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['path'] = stub[:path] unless stub[:path].nil?
        data['uploadBehavior'] = stub[:upload_behavior] unless stub[:upload_behavior].nil?
        data
      end
    end

    # Structure Stubber for LaunchConfig
    class LaunchConfig
      def self.default(visited=[])
        return nil if visited.include?('LaunchConfig')
        visited = visited + ['LaunchConfig']
        {
          package_name: 'package_name',
          launch_file: 'launch_file',
          environment_variables: Stubs::EnvironmentVariableMap.default(visited),
          port_forwarding_config: Stubs::PortForwardingConfig.default(visited),
          stream_ui: false,
          command: Stubs::CommandList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LaunchConfig.new
        data = {}
        data['packageName'] = stub[:package_name] unless stub[:package_name].nil?
        data['launchFile'] = stub[:launch_file] unless stub[:launch_file].nil?
        data['environmentVariables'] = Stubs::EnvironmentVariableMap.stub(stub[:environment_variables]) unless stub[:environment_variables].nil?
        data['portForwardingConfig'] = Stubs::PortForwardingConfig.stub(stub[:port_forwarding_config]) unless stub[:port_forwarding_config].nil?
        data['streamUI'] = stub[:stream_ui] unless stub[:stream_ui].nil?
        data['command'] = Stubs::CommandList.stub(stub[:command]) unless stub[:command].nil?
        data
      end
    end

    # List Stubber for CommandList
    class CommandList
      def self.default(visited=[])
        return nil if visited.include?('CommandList')
        visited = visited + ['CommandList']
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

    # Structure Stubber for PortForwardingConfig
    class PortForwardingConfig
      def self.default(visited=[])
        return nil if visited.include?('PortForwardingConfig')
        visited = visited + ['PortForwardingConfig']
        {
          port_mappings: Stubs::PortMappingList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PortForwardingConfig.new
        data = {}
        data['portMappings'] = Stubs::PortMappingList.stub(stub[:port_mappings]) unless stub[:port_mappings].nil?
        data
      end
    end

    # List Stubber for PortMappingList
    class PortMappingList
      def self.default(visited=[])
        return nil if visited.include?('PortMappingList')
        visited = visited + ['PortMappingList']
        [
          Stubs::PortMapping.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PortMapping.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PortMapping
    class PortMapping
      def self.default(visited=[])
        return nil if visited.include?('PortMapping')
        visited = visited + ['PortMapping']
        {
          job_port: 1,
          application_port: 1,
          enable_on_public_ip: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::PortMapping.new
        data = {}
        data['jobPort'] = stub[:job_port] unless stub[:job_port].nil?
        data['applicationPort'] = stub[:application_port] unless stub[:application_port].nil?
        data['enableOnPublicIp'] = stub[:enable_on_public_ip] unless stub[:enable_on_public_ip].nil?
        data
      end
    end

    # Map Stubber for EnvironmentVariableMap
    class EnvironmentVariableMap
      def self.default(visited=[])
        return nil if visited.include?('EnvironmentVariableMap')
        visited = visited + ['EnvironmentVariableMap']
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

    # List Stubber for RobotApplicationConfigs
    class RobotApplicationConfigs
      def self.default(visited=[])
        return nil if visited.include?('RobotApplicationConfigs')
        visited = visited + ['RobotApplicationConfigs']
        [
          Stubs::RobotApplicationConfig.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RobotApplicationConfig.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RobotApplicationConfig
    class RobotApplicationConfig
      def self.default(visited=[])
        return nil if visited.include?('RobotApplicationConfig')
        visited = visited + ['RobotApplicationConfig']
        {
          application: 'application',
          application_version: 'application_version',
          launch_config: Stubs::LaunchConfig.default(visited),
          upload_configurations: Stubs::UploadConfigurations.default(visited),
          use_default_upload_configurations: false,
          tools: Stubs::Tools.default(visited),
          use_default_tools: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::RobotApplicationConfig.new
        data = {}
        data['application'] = stub[:application] unless stub[:application].nil?
        data['applicationVersion'] = stub[:application_version] unless stub[:application_version].nil?
        data['launchConfig'] = Stubs::LaunchConfig.stub(stub[:launch_config]) unless stub[:launch_config].nil?
        data['uploadConfigurations'] = Stubs::UploadConfigurations.stub(stub[:upload_configurations]) unless stub[:upload_configurations].nil?
        data['useDefaultUploadConfigurations'] = stub[:use_default_upload_configurations] unless stub[:use_default_upload_configurations].nil?
        data['tools'] = Stubs::Tools.stub(stub[:tools]) unless stub[:tools].nil?
        data['useDefaultTools'] = stub[:use_default_tools] unless stub[:use_default_tools].nil?
        data
      end
    end

    # Structure Stubber for LoggingConfig
    class LoggingConfig
      def self.default(visited=[])
        return nil if visited.include?('LoggingConfig')
        visited = visited + ['LoggingConfig']
        {
          record_all_ros_topics: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::LoggingConfig.new
        data = {}
        data['recordAllRosTopics'] = stub[:record_all_ros_topics] unless stub[:record_all_ros_topics].nil?
        data
      end
    end

    # Structure Stubber for OutputLocation
    class OutputLocation
      def self.default(visited=[])
        return nil if visited.include?('OutputLocation')
        visited = visited + ['OutputLocation']
        {
          s3_bucket: 's3_bucket',
          s3_prefix: 's3_prefix',
        }
      end

      def self.stub(stub)
        stub ||= Types::OutputLocation.new
        data = {}
        data['s3Bucket'] = stub[:s3_bucket] unless stub[:s3_bucket].nil?
        data['s3Prefix'] = stub[:s3_prefix] unless stub[:s3_prefix].nil?
        data
      end
    end

    # Operation Stubber for CancelDeploymentJob
    class CancelDeploymentJob
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for CancelSimulationJob
    class CancelSimulationJob
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for CancelSimulationJobBatch
    class CancelSimulationJobBatch
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for CancelWorldExportJob
    class CancelWorldExportJob
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for CancelWorldGenerationJob
    class CancelWorldGenerationJob
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateDeploymentJob
    class CreateDeploymentJob
      def self.default(visited=[])
        {
          arn: 'arn',
          fleet: 'fleet',
          status: 'status',
          deployment_application_configs: Stubs::DeploymentApplicationConfigs.default(visited),
          failure_reason: 'failure_reason',
          failure_code: 'failure_code',
          created_at: Time.now,
          deployment_config: Stubs::DeploymentConfig.default(visited),
          tags: Stubs::TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['fleet'] = stub[:fleet] unless stub[:fleet].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['deploymentApplicationConfigs'] = Stubs::DeploymentApplicationConfigs.stub(stub[:deployment_application_configs]) unless stub[:deployment_application_configs].nil?
        data['failureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['failureCode'] = stub[:failure_code] unless stub[:failure_code].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['deploymentConfig'] = Stubs::DeploymentConfig.stub(stub[:deployment_config]) unless stub[:deployment_config].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for DeploymentConfig
    class DeploymentConfig
      def self.default(visited=[])
        return nil if visited.include?('DeploymentConfig')
        visited = visited + ['DeploymentConfig']
        {
          concurrent_deployment_percentage: 1,
          failure_threshold_percentage: 1,
          robot_deployment_timeout_in_seconds: 1,
          download_condition_file: Stubs::S3Object.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DeploymentConfig.new
        data = {}
        data['concurrentDeploymentPercentage'] = stub[:concurrent_deployment_percentage] unless stub[:concurrent_deployment_percentage].nil?
        data['failureThresholdPercentage'] = stub[:failure_threshold_percentage] unless stub[:failure_threshold_percentage].nil?
        data['robotDeploymentTimeoutInSeconds'] = stub[:robot_deployment_timeout_in_seconds] unless stub[:robot_deployment_timeout_in_seconds].nil?
        data['downloadConditionFile'] = Stubs::S3Object.stub(stub[:download_condition_file]) unless stub[:download_condition_file].nil?
        data
      end
    end

    # Structure Stubber for S3Object
    class S3Object
      def self.default(visited=[])
        return nil if visited.include?('S3Object')
        visited = visited + ['S3Object']
        {
          bucket: 'bucket',
          key: 'key',
          etag: 'etag',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3Object.new
        data = {}
        data['bucket'] = stub[:bucket] unless stub[:bucket].nil?
        data['key'] = stub[:key] unless stub[:key].nil?
        data['etag'] = stub[:etag] unless stub[:etag].nil?
        data
      end
    end

    # List Stubber for DeploymentApplicationConfigs
    class DeploymentApplicationConfigs
      def self.default(visited=[])
        return nil if visited.include?('DeploymentApplicationConfigs')
        visited = visited + ['DeploymentApplicationConfigs']
        [
          Stubs::DeploymentApplicationConfig.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DeploymentApplicationConfig.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DeploymentApplicationConfig
    class DeploymentApplicationConfig
      def self.default(visited=[])
        return nil if visited.include?('DeploymentApplicationConfig')
        visited = visited + ['DeploymentApplicationConfig']
        {
          application: 'application',
          application_version: 'application_version',
          launch_config: Stubs::DeploymentLaunchConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DeploymentApplicationConfig.new
        data = {}
        data['application'] = stub[:application] unless stub[:application].nil?
        data['applicationVersion'] = stub[:application_version] unless stub[:application_version].nil?
        data['launchConfig'] = Stubs::DeploymentLaunchConfig.stub(stub[:launch_config]) unless stub[:launch_config].nil?
        data
      end
    end

    # Structure Stubber for DeploymentLaunchConfig
    class DeploymentLaunchConfig
      def self.default(visited=[])
        return nil if visited.include?('DeploymentLaunchConfig')
        visited = visited + ['DeploymentLaunchConfig']
        {
          package_name: 'package_name',
          pre_launch_file: 'pre_launch_file',
          launch_file: 'launch_file',
          post_launch_file: 'post_launch_file',
          environment_variables: Stubs::EnvironmentVariableMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DeploymentLaunchConfig.new
        data = {}
        data['packageName'] = stub[:package_name] unless stub[:package_name].nil?
        data['preLaunchFile'] = stub[:pre_launch_file] unless stub[:pre_launch_file].nil?
        data['launchFile'] = stub[:launch_file] unless stub[:launch_file].nil?
        data['postLaunchFile'] = stub[:post_launch_file] unless stub[:post_launch_file].nil?
        data['environmentVariables'] = Stubs::EnvironmentVariableMap.stub(stub[:environment_variables]) unless stub[:environment_variables].nil?
        data
      end
    end

    # Operation Stubber for CreateFleet
    class CreateFleet
      def self.default(visited=[])
        {
          arn: 'arn',
          name: 'name',
          created_at: Time.now,
          tags: Stubs::TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateRobot
    class CreateRobot
      def self.default(visited=[])
        {
          arn: 'arn',
          name: 'name',
          created_at: Time.now,
          greengrass_group_id: 'greengrass_group_id',
          architecture: 'architecture',
          tags: Stubs::TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['greengrassGroupId'] = stub[:greengrass_group_id] unless stub[:greengrass_group_id].nil?
        data['architecture'] = stub[:architecture] unless stub[:architecture].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateRobotApplication
    class CreateRobotApplication
      def self.default(visited=[])
        {
          arn: 'arn',
          name: 'name',
          version: 'version',
          sources: Stubs::Sources.default(visited),
          robot_software_suite: Stubs::RobotSoftwareSuite.default(visited),
          last_updated_at: Time.now,
          revision_id: 'revision_id',
          tags: Stubs::TagMap.default(visited),
          environment: Stubs::Environment.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['sources'] = Stubs::Sources.stub(stub[:sources]) unless stub[:sources].nil?
        data['robotSoftwareSuite'] = Stubs::RobotSoftwareSuite.stub(stub[:robot_software_suite]) unless stub[:robot_software_suite].nil?
        data['lastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data['revisionId'] = stub[:revision_id] unless stub[:revision_id].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['environment'] = Stubs::Environment.stub(stub[:environment]) unless stub[:environment].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Environment
    class Environment
      def self.default(visited=[])
        return nil if visited.include?('Environment')
        visited = visited + ['Environment']
        {
          uri: 'uri',
        }
      end

      def self.stub(stub)
        stub ||= Types::Environment.new
        data = {}
        data['uri'] = stub[:uri] unless stub[:uri].nil?
        data
      end
    end

    # Structure Stubber for RobotSoftwareSuite
    class RobotSoftwareSuite
      def self.default(visited=[])
        return nil if visited.include?('RobotSoftwareSuite')
        visited = visited + ['RobotSoftwareSuite']
        {
          name: 'name',
          version: 'version',
        }
      end

      def self.stub(stub)
        stub ||= Types::RobotSoftwareSuite.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data
      end
    end

    # List Stubber for Sources
    class Sources
      def self.default(visited=[])
        return nil if visited.include?('Sources')
        visited = visited + ['Sources']
        [
          Stubs::Source.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Source.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Source
    class Source
      def self.default(visited=[])
        return nil if visited.include?('Source')
        visited = visited + ['Source']
        {
          s3_bucket: 's3_bucket',
          s3_key: 's3_key',
          etag: 'etag',
          architecture: 'architecture',
        }
      end

      def self.stub(stub)
        stub ||= Types::Source.new
        data = {}
        data['s3Bucket'] = stub[:s3_bucket] unless stub[:s3_bucket].nil?
        data['s3Key'] = stub[:s3_key] unless stub[:s3_key].nil?
        data['etag'] = stub[:etag] unless stub[:etag].nil?
        data['architecture'] = stub[:architecture] unless stub[:architecture].nil?
        data
      end
    end

    # Operation Stubber for CreateRobotApplicationVersion
    class CreateRobotApplicationVersion
      def self.default(visited=[])
        {
          arn: 'arn',
          name: 'name',
          version: 'version',
          sources: Stubs::Sources.default(visited),
          robot_software_suite: Stubs::RobotSoftwareSuite.default(visited),
          last_updated_at: Time.now,
          revision_id: 'revision_id',
          environment: Stubs::Environment.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['sources'] = Stubs::Sources.stub(stub[:sources]) unless stub[:sources].nil?
        data['robotSoftwareSuite'] = Stubs::RobotSoftwareSuite.stub(stub[:robot_software_suite]) unless stub[:robot_software_suite].nil?
        data['lastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data['revisionId'] = stub[:revision_id] unless stub[:revision_id].nil?
        data['environment'] = Stubs::Environment.stub(stub[:environment]) unless stub[:environment].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateSimulationApplication
    class CreateSimulationApplication
      def self.default(visited=[])
        {
          arn: 'arn',
          name: 'name',
          version: 'version',
          sources: Stubs::Sources.default(visited),
          simulation_software_suite: Stubs::SimulationSoftwareSuite.default(visited),
          robot_software_suite: Stubs::RobotSoftwareSuite.default(visited),
          rendering_engine: Stubs::RenderingEngine.default(visited),
          last_updated_at: Time.now,
          revision_id: 'revision_id',
          tags: Stubs::TagMap.default(visited),
          environment: Stubs::Environment.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['sources'] = Stubs::Sources.stub(stub[:sources]) unless stub[:sources].nil?
        data['simulationSoftwareSuite'] = Stubs::SimulationSoftwareSuite.stub(stub[:simulation_software_suite]) unless stub[:simulation_software_suite].nil?
        data['robotSoftwareSuite'] = Stubs::RobotSoftwareSuite.stub(stub[:robot_software_suite]) unless stub[:robot_software_suite].nil?
        data['renderingEngine'] = Stubs::RenderingEngine.stub(stub[:rendering_engine]) unless stub[:rendering_engine].nil?
        data['lastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data['revisionId'] = stub[:revision_id] unless stub[:revision_id].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['environment'] = Stubs::Environment.stub(stub[:environment]) unless stub[:environment].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for RenderingEngine
    class RenderingEngine
      def self.default(visited=[])
        return nil if visited.include?('RenderingEngine')
        visited = visited + ['RenderingEngine']
        {
          name: 'name',
          version: 'version',
        }
      end

      def self.stub(stub)
        stub ||= Types::RenderingEngine.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data
      end
    end

    # Structure Stubber for SimulationSoftwareSuite
    class SimulationSoftwareSuite
      def self.default(visited=[])
        return nil if visited.include?('SimulationSoftwareSuite')
        visited = visited + ['SimulationSoftwareSuite']
        {
          name: 'name',
          version: 'version',
        }
      end

      def self.stub(stub)
        stub ||= Types::SimulationSoftwareSuite.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data
      end
    end

    # Operation Stubber for CreateSimulationApplicationVersion
    class CreateSimulationApplicationVersion
      def self.default(visited=[])
        {
          arn: 'arn',
          name: 'name',
          version: 'version',
          sources: Stubs::Sources.default(visited),
          simulation_software_suite: Stubs::SimulationSoftwareSuite.default(visited),
          robot_software_suite: Stubs::RobotSoftwareSuite.default(visited),
          rendering_engine: Stubs::RenderingEngine.default(visited),
          last_updated_at: Time.now,
          revision_id: 'revision_id',
          environment: Stubs::Environment.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['sources'] = Stubs::Sources.stub(stub[:sources]) unless stub[:sources].nil?
        data['simulationSoftwareSuite'] = Stubs::SimulationSoftwareSuite.stub(stub[:simulation_software_suite]) unless stub[:simulation_software_suite].nil?
        data['robotSoftwareSuite'] = Stubs::RobotSoftwareSuite.stub(stub[:robot_software_suite]) unless stub[:robot_software_suite].nil?
        data['renderingEngine'] = Stubs::RenderingEngine.stub(stub[:rendering_engine]) unless stub[:rendering_engine].nil?
        data['lastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data['revisionId'] = stub[:revision_id] unless stub[:revision_id].nil?
        data['environment'] = Stubs::Environment.stub(stub[:environment]) unless stub[:environment].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateSimulationJob
    class CreateSimulationJob
      def self.default(visited=[])
        {
          arn: 'arn',
          status: 'status',
          last_started_at: Time.now,
          last_updated_at: Time.now,
          failure_behavior: 'failure_behavior',
          failure_code: 'failure_code',
          client_request_token: 'client_request_token',
          output_location: Stubs::OutputLocation.default(visited),
          logging_config: Stubs::LoggingConfig.default(visited),
          max_job_duration_in_seconds: 1,
          simulation_time_millis: 1,
          iam_role: 'iam_role',
          robot_applications: Stubs::RobotApplicationConfigs.default(visited),
          simulation_applications: Stubs::SimulationApplicationConfigs.default(visited),
          data_sources: Stubs::DataSources.default(visited),
          tags: Stubs::TagMap.default(visited),
          vpc_config: Stubs::VPCConfigResponse.default(visited),
          compute: Stubs::ComputeResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['lastStartedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_started_at]).to_i unless stub[:last_started_at].nil?
        data['lastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data['failureBehavior'] = stub[:failure_behavior] unless stub[:failure_behavior].nil?
        data['failureCode'] = stub[:failure_code] unless stub[:failure_code].nil?
        data['clientRequestToken'] = stub[:client_request_token] unless stub[:client_request_token].nil?
        data['outputLocation'] = Stubs::OutputLocation.stub(stub[:output_location]) unless stub[:output_location].nil?
        data['loggingConfig'] = Stubs::LoggingConfig.stub(stub[:logging_config]) unless stub[:logging_config].nil?
        data['maxJobDurationInSeconds'] = stub[:max_job_duration_in_seconds] unless stub[:max_job_duration_in_seconds].nil?
        data['simulationTimeMillis'] = stub[:simulation_time_millis] unless stub[:simulation_time_millis].nil?
        data['iamRole'] = stub[:iam_role] unless stub[:iam_role].nil?
        data['robotApplications'] = Stubs::RobotApplicationConfigs.stub(stub[:robot_applications]) unless stub[:robot_applications].nil?
        data['simulationApplications'] = Stubs::SimulationApplicationConfigs.stub(stub[:simulation_applications]) unless stub[:simulation_applications].nil?
        data['dataSources'] = Stubs::DataSources.stub(stub[:data_sources]) unless stub[:data_sources].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['vpcConfig'] = Stubs::VPCConfigResponse.stub(stub[:vpc_config]) unless stub[:vpc_config].nil?
        data['compute'] = Stubs::ComputeResponse.stub(stub[:compute]) unless stub[:compute].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateWorldExportJob
    class CreateWorldExportJob
      def self.default(visited=[])
        {
          arn: 'arn',
          status: 'status',
          created_at: Time.now,
          failure_code: 'failure_code',
          client_request_token: 'client_request_token',
          output_location: Stubs::OutputLocation.default(visited),
          iam_role: 'iam_role',
          tags: Stubs::TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['failureCode'] = stub[:failure_code] unless stub[:failure_code].nil?
        data['clientRequestToken'] = stub[:client_request_token] unless stub[:client_request_token].nil?
        data['outputLocation'] = Stubs::OutputLocation.stub(stub[:output_location]) unless stub[:output_location].nil?
        data['iamRole'] = stub[:iam_role] unless stub[:iam_role].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateWorldGenerationJob
    class CreateWorldGenerationJob
      def self.default(visited=[])
        {
          arn: 'arn',
          status: 'status',
          created_at: Time.now,
          failure_code: 'failure_code',
          client_request_token: 'client_request_token',
          template: 'template',
          world_count: Stubs::WorldCount.default(visited),
          tags: Stubs::TagMap.default(visited),
          world_tags: Stubs::TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['failureCode'] = stub[:failure_code] unless stub[:failure_code].nil?
        data['clientRequestToken'] = stub[:client_request_token] unless stub[:client_request_token].nil?
        data['template'] = stub[:template] unless stub[:template].nil?
        data['worldCount'] = Stubs::WorldCount.stub(stub[:world_count]) unless stub[:world_count].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['worldTags'] = Stubs::TagMap.stub(stub[:world_tags]) unless stub[:world_tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for WorldCount
    class WorldCount
      def self.default(visited=[])
        return nil if visited.include?('WorldCount')
        visited = visited + ['WorldCount']
        {
          floorplan_count: 1,
          interior_count_per_floorplan: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::WorldCount.new
        data = {}
        data['floorplanCount'] = stub[:floorplan_count] unless stub[:floorplan_count].nil?
        data['interiorCountPerFloorplan'] = stub[:interior_count_per_floorplan] unless stub[:interior_count_per_floorplan].nil?
        data
      end
    end

    # Operation Stubber for CreateWorldTemplate
    class CreateWorldTemplate
      def self.default(visited=[])
        {
          arn: 'arn',
          client_request_token: 'client_request_token',
          created_at: Time.now,
          name: 'name',
          tags: Stubs::TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['clientRequestToken'] = stub[:client_request_token] unless stub[:client_request_token].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteFleet
    class DeleteFleet
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteRobot
    class DeleteRobot
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteRobotApplication
    class DeleteRobotApplication
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteSimulationApplication
    class DeleteSimulationApplication
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteWorldTemplate
    class DeleteWorldTemplate
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeregisterRobot
    class DeregisterRobot
      def self.default(visited=[])
        {
          fleet: 'fleet',
          robot: 'robot',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['fleet'] = stub[:fleet] unless stub[:fleet].nil?
        data['robot'] = stub[:robot] unless stub[:robot].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeDeploymentJob
    class DescribeDeploymentJob
      def self.default(visited=[])
        {
          arn: 'arn',
          fleet: 'fleet',
          status: 'status',
          deployment_config: Stubs::DeploymentConfig.default(visited),
          deployment_application_configs: Stubs::DeploymentApplicationConfigs.default(visited),
          failure_reason: 'failure_reason',
          failure_code: 'failure_code',
          created_at: Time.now,
          robot_deployment_summary: Stubs::RobotDeploymentSummary.default(visited),
          tags: Stubs::TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['fleet'] = stub[:fleet] unless stub[:fleet].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['deploymentConfig'] = Stubs::DeploymentConfig.stub(stub[:deployment_config]) unless stub[:deployment_config].nil?
        data['deploymentApplicationConfigs'] = Stubs::DeploymentApplicationConfigs.stub(stub[:deployment_application_configs]) unless stub[:deployment_application_configs].nil?
        data['failureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['failureCode'] = stub[:failure_code] unless stub[:failure_code].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['robotDeploymentSummary'] = Stubs::RobotDeploymentSummary.stub(stub[:robot_deployment_summary]) unless stub[:robot_deployment_summary].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for RobotDeploymentSummary
    class RobotDeploymentSummary
      def self.default(visited=[])
        return nil if visited.include?('RobotDeploymentSummary')
        visited = visited + ['RobotDeploymentSummary']
        [
          Stubs::RobotDeployment.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RobotDeployment.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RobotDeployment
    class RobotDeployment
      def self.default(visited=[])
        return nil if visited.include?('RobotDeployment')
        visited = visited + ['RobotDeployment']
        {
          arn: 'arn',
          deployment_start_time: Time.now,
          deployment_finish_time: Time.now,
          status: 'status',
          progress_detail: Stubs::ProgressDetail.default(visited),
          failure_reason: 'failure_reason',
          failure_code: 'failure_code',
        }
      end

      def self.stub(stub)
        stub ||= Types::RobotDeployment.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['deploymentStartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:deployment_start_time]).to_i unless stub[:deployment_start_time].nil?
        data['deploymentFinishTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:deployment_finish_time]).to_i unless stub[:deployment_finish_time].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['progressDetail'] = Stubs::ProgressDetail.stub(stub[:progress_detail]) unless stub[:progress_detail].nil?
        data['failureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['failureCode'] = stub[:failure_code] unless stub[:failure_code].nil?
        data
      end
    end

    # Structure Stubber for ProgressDetail
    class ProgressDetail
      def self.default(visited=[])
        return nil if visited.include?('ProgressDetail')
        visited = visited + ['ProgressDetail']
        {
          current_progress: 'current_progress',
          percent_done: 1.0,
          estimated_time_remaining_seconds: 1,
          target_resource: 'target_resource',
        }
      end

      def self.stub(stub)
        stub ||= Types::ProgressDetail.new
        data = {}
        data['currentProgress'] = stub[:current_progress] unless stub[:current_progress].nil?
        data['percentDone'] = Hearth::NumberHelper.serialize(stub[:percent_done])
        data['estimatedTimeRemainingSeconds'] = stub[:estimated_time_remaining_seconds] unless stub[:estimated_time_remaining_seconds].nil?
        data['targetResource'] = stub[:target_resource] unless stub[:target_resource].nil?
        data
      end
    end

    # Operation Stubber for DescribeFleet
    class DescribeFleet
      def self.default(visited=[])
        {
          name: 'name',
          arn: 'arn',
          robots: Stubs::Robots.default(visited),
          created_at: Time.now,
          last_deployment_status: 'last_deployment_status',
          last_deployment_job: 'last_deployment_job',
          last_deployment_time: Time.now,
          tags: Stubs::TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['name'] = stub[:name] unless stub[:name].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['robots'] = Stubs::Robots.stub(stub[:robots]) unless stub[:robots].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['lastDeploymentStatus'] = stub[:last_deployment_status] unless stub[:last_deployment_status].nil?
        data['lastDeploymentJob'] = stub[:last_deployment_job] unless stub[:last_deployment_job].nil?
        data['lastDeploymentTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_deployment_time]).to_i unless stub[:last_deployment_time].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for Robots
    class Robots
      def self.default(visited=[])
        return nil if visited.include?('Robots')
        visited = visited + ['Robots']
        [
          Stubs::Robot.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Robot.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Robot
    class Robot
      def self.default(visited=[])
        return nil if visited.include?('Robot')
        visited = visited + ['Robot']
        {
          arn: 'arn',
          name: 'name',
          fleet_arn: 'fleet_arn',
          status: 'status',
          green_grass_group_id: 'green_grass_group_id',
          created_at: Time.now,
          architecture: 'architecture',
          last_deployment_job: 'last_deployment_job',
          last_deployment_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Robot.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['fleetArn'] = stub[:fleet_arn] unless stub[:fleet_arn].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['greenGrassGroupId'] = stub[:green_grass_group_id] unless stub[:green_grass_group_id].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['architecture'] = stub[:architecture] unless stub[:architecture].nil?
        data['lastDeploymentJob'] = stub[:last_deployment_job] unless stub[:last_deployment_job].nil?
        data['lastDeploymentTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_deployment_time]).to_i unless stub[:last_deployment_time].nil?
        data
      end
    end

    # Operation Stubber for DescribeRobot
    class DescribeRobot
      def self.default(visited=[])
        {
          arn: 'arn',
          name: 'name',
          fleet_arn: 'fleet_arn',
          status: 'status',
          greengrass_group_id: 'greengrass_group_id',
          created_at: Time.now,
          architecture: 'architecture',
          last_deployment_job: 'last_deployment_job',
          last_deployment_time: Time.now,
          tags: Stubs::TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['fleetArn'] = stub[:fleet_arn] unless stub[:fleet_arn].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['greengrassGroupId'] = stub[:greengrass_group_id] unless stub[:greengrass_group_id].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['architecture'] = stub[:architecture] unless stub[:architecture].nil?
        data['lastDeploymentJob'] = stub[:last_deployment_job] unless stub[:last_deployment_job].nil?
        data['lastDeploymentTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_deployment_time]).to_i unless stub[:last_deployment_time].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeRobotApplication
    class DescribeRobotApplication
      def self.default(visited=[])
        {
          arn: 'arn',
          name: 'name',
          version: 'version',
          sources: Stubs::Sources.default(visited),
          robot_software_suite: Stubs::RobotSoftwareSuite.default(visited),
          revision_id: 'revision_id',
          last_updated_at: Time.now,
          tags: Stubs::TagMap.default(visited),
          environment: Stubs::Environment.default(visited),
          image_digest: 'image_digest',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['sources'] = Stubs::Sources.stub(stub[:sources]) unless stub[:sources].nil?
        data['robotSoftwareSuite'] = Stubs::RobotSoftwareSuite.stub(stub[:robot_software_suite]) unless stub[:robot_software_suite].nil?
        data['revisionId'] = stub[:revision_id] unless stub[:revision_id].nil?
        data['lastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['environment'] = Stubs::Environment.stub(stub[:environment]) unless stub[:environment].nil?
        data['imageDigest'] = stub[:image_digest] unless stub[:image_digest].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeSimulationApplication
    class DescribeSimulationApplication
      def self.default(visited=[])
        {
          arn: 'arn',
          name: 'name',
          version: 'version',
          sources: Stubs::Sources.default(visited),
          simulation_software_suite: Stubs::SimulationSoftwareSuite.default(visited),
          robot_software_suite: Stubs::RobotSoftwareSuite.default(visited),
          rendering_engine: Stubs::RenderingEngine.default(visited),
          revision_id: 'revision_id',
          last_updated_at: Time.now,
          tags: Stubs::TagMap.default(visited),
          environment: Stubs::Environment.default(visited),
          image_digest: 'image_digest',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['sources'] = Stubs::Sources.stub(stub[:sources]) unless stub[:sources].nil?
        data['simulationSoftwareSuite'] = Stubs::SimulationSoftwareSuite.stub(stub[:simulation_software_suite]) unless stub[:simulation_software_suite].nil?
        data['robotSoftwareSuite'] = Stubs::RobotSoftwareSuite.stub(stub[:robot_software_suite]) unless stub[:robot_software_suite].nil?
        data['renderingEngine'] = Stubs::RenderingEngine.stub(stub[:rendering_engine]) unless stub[:rendering_engine].nil?
        data['revisionId'] = stub[:revision_id] unless stub[:revision_id].nil?
        data['lastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['environment'] = Stubs::Environment.stub(stub[:environment]) unless stub[:environment].nil?
        data['imageDigest'] = stub[:image_digest] unless stub[:image_digest].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeSimulationJob
    class DescribeSimulationJob
      def self.default(visited=[])
        {
          arn: 'arn',
          name: 'name',
          status: 'status',
          last_started_at: Time.now,
          last_updated_at: Time.now,
          failure_behavior: 'failure_behavior',
          failure_code: 'failure_code',
          failure_reason: 'failure_reason',
          client_request_token: 'client_request_token',
          output_location: Stubs::OutputLocation.default(visited),
          logging_config: Stubs::LoggingConfig.default(visited),
          max_job_duration_in_seconds: 1,
          simulation_time_millis: 1,
          iam_role: 'iam_role',
          robot_applications: Stubs::RobotApplicationConfigs.default(visited),
          simulation_applications: Stubs::SimulationApplicationConfigs.default(visited),
          data_sources: Stubs::DataSources.default(visited),
          tags: Stubs::TagMap.default(visited),
          vpc_config: Stubs::VPCConfigResponse.default(visited),
          network_interface: Stubs::NetworkInterface.default(visited),
          compute: Stubs::ComputeResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['lastStartedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_started_at]).to_i unless stub[:last_started_at].nil?
        data['lastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data['failureBehavior'] = stub[:failure_behavior] unless stub[:failure_behavior].nil?
        data['failureCode'] = stub[:failure_code] unless stub[:failure_code].nil?
        data['failureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['clientRequestToken'] = stub[:client_request_token] unless stub[:client_request_token].nil?
        data['outputLocation'] = Stubs::OutputLocation.stub(stub[:output_location]) unless stub[:output_location].nil?
        data['loggingConfig'] = Stubs::LoggingConfig.stub(stub[:logging_config]) unless stub[:logging_config].nil?
        data['maxJobDurationInSeconds'] = stub[:max_job_duration_in_seconds] unless stub[:max_job_duration_in_seconds].nil?
        data['simulationTimeMillis'] = stub[:simulation_time_millis] unless stub[:simulation_time_millis].nil?
        data['iamRole'] = stub[:iam_role] unless stub[:iam_role].nil?
        data['robotApplications'] = Stubs::RobotApplicationConfigs.stub(stub[:robot_applications]) unless stub[:robot_applications].nil?
        data['simulationApplications'] = Stubs::SimulationApplicationConfigs.stub(stub[:simulation_applications]) unless stub[:simulation_applications].nil?
        data['dataSources'] = Stubs::DataSources.stub(stub[:data_sources]) unless stub[:data_sources].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['vpcConfig'] = Stubs::VPCConfigResponse.stub(stub[:vpc_config]) unless stub[:vpc_config].nil?
        data['networkInterface'] = Stubs::NetworkInterface.stub(stub[:network_interface]) unless stub[:network_interface].nil?
        data['compute'] = Stubs::ComputeResponse.stub(stub[:compute]) unless stub[:compute].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeSimulationJobBatch
    class DescribeSimulationJobBatch
      def self.default(visited=[])
        {
          arn: 'arn',
          status: 'status',
          last_updated_at: Time.now,
          created_at: Time.now,
          client_request_token: 'client_request_token',
          batch_policy: Stubs::BatchPolicy.default(visited),
          failure_code: 'failure_code',
          failure_reason: 'failure_reason',
          failed_requests: Stubs::FailedCreateSimulationJobRequests.default(visited),
          pending_requests: Stubs::CreateSimulationJobRequests.default(visited),
          created_requests: Stubs::SimulationJobSummaries.default(visited),
          tags: Stubs::TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['lastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['clientRequestToken'] = stub[:client_request_token] unless stub[:client_request_token].nil?
        data['batchPolicy'] = Stubs::BatchPolicy.stub(stub[:batch_policy]) unless stub[:batch_policy].nil?
        data['failureCode'] = stub[:failure_code] unless stub[:failure_code].nil?
        data['failureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['failedRequests'] = Stubs::FailedCreateSimulationJobRequests.stub(stub[:failed_requests]) unless stub[:failed_requests].nil?
        data['pendingRequests'] = Stubs::CreateSimulationJobRequests.stub(stub[:pending_requests]) unless stub[:pending_requests].nil?
        data['createdRequests'] = Stubs::SimulationJobSummaries.stub(stub[:created_requests]) unless stub[:created_requests].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for SimulationJobSummaries
    class SimulationJobSummaries
      def self.default(visited=[])
        return nil if visited.include?('SimulationJobSummaries')
        visited = visited + ['SimulationJobSummaries']
        [
          Stubs::SimulationJobSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SimulationJobSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SimulationJobSummary
    class SimulationJobSummary
      def self.default(visited=[])
        return nil if visited.include?('SimulationJobSummary')
        visited = visited + ['SimulationJobSummary']
        {
          arn: 'arn',
          last_updated_at: Time.now,
          name: 'name',
          status: 'status',
          simulation_application_names: Stubs::SimulationApplicationNames.default(visited),
          robot_application_names: Stubs::RobotApplicationNames.default(visited),
          data_source_names: Stubs::DataSourceNames.default(visited),
          compute_type: 'compute_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::SimulationJobSummary.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['lastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['simulationApplicationNames'] = Stubs::SimulationApplicationNames.stub(stub[:simulation_application_names]) unless stub[:simulation_application_names].nil?
        data['robotApplicationNames'] = Stubs::RobotApplicationNames.stub(stub[:robot_application_names]) unless stub[:robot_application_names].nil?
        data['dataSourceNames'] = Stubs::DataSourceNames.stub(stub[:data_source_names]) unless stub[:data_source_names].nil?
        data['computeType'] = stub[:compute_type] unless stub[:compute_type].nil?
        data
      end
    end

    # List Stubber for DataSourceNames
    class DataSourceNames
      def self.default(visited=[])
        return nil if visited.include?('DataSourceNames')
        visited = visited + ['DataSourceNames']
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

    # List Stubber for RobotApplicationNames
    class RobotApplicationNames
      def self.default(visited=[])
        return nil if visited.include?('RobotApplicationNames')
        visited = visited + ['RobotApplicationNames']
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

    # List Stubber for SimulationApplicationNames
    class SimulationApplicationNames
      def self.default(visited=[])
        return nil if visited.include?('SimulationApplicationNames')
        visited = visited + ['SimulationApplicationNames']
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

    # List Stubber for CreateSimulationJobRequests
    class CreateSimulationJobRequests
      def self.default(visited=[])
        return nil if visited.include?('CreateSimulationJobRequests')
        visited = visited + ['CreateSimulationJobRequests']
        [
          Stubs::SimulationJobRequest.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SimulationJobRequest.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SimulationJobRequest
    class SimulationJobRequest
      def self.default(visited=[])
        return nil if visited.include?('SimulationJobRequest')
        visited = visited + ['SimulationJobRequest']
        {
          output_location: Stubs::OutputLocation.default(visited),
          logging_config: Stubs::LoggingConfig.default(visited),
          max_job_duration_in_seconds: 1,
          iam_role: 'iam_role',
          failure_behavior: 'failure_behavior',
          use_default_applications: false,
          robot_applications: Stubs::RobotApplicationConfigs.default(visited),
          simulation_applications: Stubs::SimulationApplicationConfigs.default(visited),
          data_sources: Stubs::DataSourceConfigs.default(visited),
          vpc_config: Stubs::VPCConfig.default(visited),
          compute: Stubs::Compute.default(visited),
          tags: Stubs::TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SimulationJobRequest.new
        data = {}
        data['outputLocation'] = Stubs::OutputLocation.stub(stub[:output_location]) unless stub[:output_location].nil?
        data['loggingConfig'] = Stubs::LoggingConfig.stub(stub[:logging_config]) unless stub[:logging_config].nil?
        data['maxJobDurationInSeconds'] = stub[:max_job_duration_in_seconds] unless stub[:max_job_duration_in_seconds].nil?
        data['iamRole'] = stub[:iam_role] unless stub[:iam_role].nil?
        data['failureBehavior'] = stub[:failure_behavior] unless stub[:failure_behavior].nil?
        data['useDefaultApplications'] = stub[:use_default_applications] unless stub[:use_default_applications].nil?
        data['robotApplications'] = Stubs::RobotApplicationConfigs.stub(stub[:robot_applications]) unless stub[:robot_applications].nil?
        data['simulationApplications'] = Stubs::SimulationApplicationConfigs.stub(stub[:simulation_applications]) unless stub[:simulation_applications].nil?
        data['dataSources'] = Stubs::DataSourceConfigs.stub(stub[:data_sources]) unless stub[:data_sources].nil?
        data['vpcConfig'] = Stubs::VPCConfig.stub(stub[:vpc_config]) unless stub[:vpc_config].nil?
        data['compute'] = Stubs::Compute.stub(stub[:compute]) unless stub[:compute].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Structure Stubber for Compute
    class Compute
      def self.default(visited=[])
        return nil if visited.include?('Compute')
        visited = visited + ['Compute']
        {
          simulation_unit_limit: 1,
          compute_type: 'compute_type',
          gpu_unit_limit: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Compute.new
        data = {}
        data['simulationUnitLimit'] = stub[:simulation_unit_limit] unless stub[:simulation_unit_limit].nil?
        data['computeType'] = stub[:compute_type] unless stub[:compute_type].nil?
        data['gpuUnitLimit'] = stub[:gpu_unit_limit] unless stub[:gpu_unit_limit].nil?
        data
      end
    end

    # Structure Stubber for VPCConfig
    class VPCConfig
      def self.default(visited=[])
        return nil if visited.include?('VPCConfig')
        visited = visited + ['VPCConfig']
        {
          subnets: Stubs::Subnets.default(visited),
          security_groups: Stubs::SecurityGroups.default(visited),
          assign_public_ip: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::VPCConfig.new
        data = {}
        data['subnets'] = Stubs::Subnets.stub(stub[:subnets]) unless stub[:subnets].nil?
        data['securityGroups'] = Stubs::SecurityGroups.stub(stub[:security_groups]) unless stub[:security_groups].nil?
        data['assignPublicIp'] = stub[:assign_public_ip] unless stub[:assign_public_ip].nil?
        data
      end
    end

    # List Stubber for DataSourceConfigs
    class DataSourceConfigs
      def self.default(visited=[])
        return nil if visited.include?('DataSourceConfigs')
        visited = visited + ['DataSourceConfigs']
        [
          Stubs::DataSourceConfig.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DataSourceConfig.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DataSourceConfig
    class DataSourceConfig
      def self.default(visited=[])
        return nil if visited.include?('DataSourceConfig')
        visited = visited + ['DataSourceConfig']
        {
          name: 'name',
          s3_bucket: 's3_bucket',
          s3_keys: Stubs::S3KeysOrPrefixes.default(visited),
          type: 'type',
          destination: 'destination',
        }
      end

      def self.stub(stub)
        stub ||= Types::DataSourceConfig.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['s3Bucket'] = stub[:s3_bucket] unless stub[:s3_bucket].nil?
        data['s3Keys'] = Stubs::S3KeysOrPrefixes.stub(stub[:s3_keys]) unless stub[:s3_keys].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['destination'] = stub[:destination] unless stub[:destination].nil?
        data
      end
    end

    # List Stubber for S3KeysOrPrefixes
    class S3KeysOrPrefixes
      def self.default(visited=[])
        return nil if visited.include?('S3KeysOrPrefixes')
        visited = visited + ['S3KeysOrPrefixes']
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

    # List Stubber for FailedCreateSimulationJobRequests
    class FailedCreateSimulationJobRequests
      def self.default(visited=[])
        return nil if visited.include?('FailedCreateSimulationJobRequests')
        visited = visited + ['FailedCreateSimulationJobRequests']
        [
          Stubs::FailedCreateSimulationJobRequest.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::FailedCreateSimulationJobRequest.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FailedCreateSimulationJobRequest
    class FailedCreateSimulationJobRequest
      def self.default(visited=[])
        return nil if visited.include?('FailedCreateSimulationJobRequest')
        visited = visited + ['FailedCreateSimulationJobRequest']
        {
          request: Stubs::SimulationJobRequest.default(visited),
          failure_reason: 'failure_reason',
          failure_code: 'failure_code',
          failed_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::FailedCreateSimulationJobRequest.new
        data = {}
        data['request'] = Stubs::SimulationJobRequest.stub(stub[:request]) unless stub[:request].nil?
        data['failureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['failureCode'] = stub[:failure_code] unless stub[:failure_code].nil?
        data['failedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:failed_at]).to_i unless stub[:failed_at].nil?
        data
      end
    end

    # Structure Stubber for BatchPolicy
    class BatchPolicy
      def self.default(visited=[])
        return nil if visited.include?('BatchPolicy')
        visited = visited + ['BatchPolicy']
        {
          timeout_in_seconds: 1,
          max_concurrency: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchPolicy.new
        data = {}
        data['timeoutInSeconds'] = stub[:timeout_in_seconds] unless stub[:timeout_in_seconds].nil?
        data['maxConcurrency'] = stub[:max_concurrency] unless stub[:max_concurrency].nil?
        data
      end
    end

    # Operation Stubber for DescribeWorld
    class DescribeWorld
      def self.default(visited=[])
        {
          arn: 'arn',
          generation_job: 'generation_job',
          template: 'template',
          created_at: Time.now,
          tags: Stubs::TagMap.default(visited),
          world_description_body: 'world_description_body',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['generationJob'] = stub[:generation_job] unless stub[:generation_job].nil?
        data['template'] = stub[:template] unless stub[:template].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['worldDescriptionBody'] = stub[:world_description_body] unless stub[:world_description_body].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeWorldExportJob
    class DescribeWorldExportJob
      def self.default(visited=[])
        {
          arn: 'arn',
          status: 'status',
          created_at: Time.now,
          failure_code: 'failure_code',
          failure_reason: 'failure_reason',
          client_request_token: 'client_request_token',
          worlds: Stubs::Arns.default(visited),
          output_location: Stubs::OutputLocation.default(visited),
          iam_role: 'iam_role',
          tags: Stubs::TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['failureCode'] = stub[:failure_code] unless stub[:failure_code].nil?
        data['failureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['clientRequestToken'] = stub[:client_request_token] unless stub[:client_request_token].nil?
        data['worlds'] = Stubs::Arns.stub(stub[:worlds]) unless stub[:worlds].nil?
        data['outputLocation'] = Stubs::OutputLocation.stub(stub[:output_location]) unless stub[:output_location].nil?
        data['iamRole'] = stub[:iam_role] unless stub[:iam_role].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeWorldGenerationJob
    class DescribeWorldGenerationJob
      def self.default(visited=[])
        {
          arn: 'arn',
          status: 'status',
          created_at: Time.now,
          failure_code: 'failure_code',
          failure_reason: 'failure_reason',
          client_request_token: 'client_request_token',
          template: 'template',
          world_count: Stubs::WorldCount.default(visited),
          finished_worlds_summary: Stubs::FinishedWorldsSummary.default(visited),
          tags: Stubs::TagMap.default(visited),
          world_tags: Stubs::TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['failureCode'] = stub[:failure_code] unless stub[:failure_code].nil?
        data['failureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['clientRequestToken'] = stub[:client_request_token] unless stub[:client_request_token].nil?
        data['template'] = stub[:template] unless stub[:template].nil?
        data['worldCount'] = Stubs::WorldCount.stub(stub[:world_count]) unless stub[:world_count].nil?
        data['finishedWorldsSummary'] = Stubs::FinishedWorldsSummary.stub(stub[:finished_worlds_summary]) unless stub[:finished_worlds_summary].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['worldTags'] = Stubs::TagMap.stub(stub[:world_tags]) unless stub[:world_tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for FinishedWorldsSummary
    class FinishedWorldsSummary
      def self.default(visited=[])
        return nil if visited.include?('FinishedWorldsSummary')
        visited = visited + ['FinishedWorldsSummary']
        {
          finished_count: 1,
          succeeded_worlds: Stubs::Arns.default(visited),
          failure_summary: Stubs::FailureSummary.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FinishedWorldsSummary.new
        data = {}
        data['finishedCount'] = stub[:finished_count] unless stub[:finished_count].nil?
        data['succeededWorlds'] = Stubs::Arns.stub(stub[:succeeded_worlds]) unless stub[:succeeded_worlds].nil?
        data['failureSummary'] = Stubs::FailureSummary.stub(stub[:failure_summary]) unless stub[:failure_summary].nil?
        data
      end
    end

    # Structure Stubber for FailureSummary
    class FailureSummary
      def self.default(visited=[])
        return nil if visited.include?('FailureSummary')
        visited = visited + ['FailureSummary']
        {
          total_failure_count: 1,
          failures: Stubs::WorldFailures.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FailureSummary.new
        data = {}
        data['totalFailureCount'] = stub[:total_failure_count] unless stub[:total_failure_count].nil?
        data['failures'] = Stubs::WorldFailures.stub(stub[:failures]) unless stub[:failures].nil?
        data
      end
    end

    # List Stubber for WorldFailures
    class WorldFailures
      def self.default(visited=[])
        return nil if visited.include?('WorldFailures')
        visited = visited + ['WorldFailures']
        [
          Stubs::WorldFailure.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::WorldFailure.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for WorldFailure
    class WorldFailure
      def self.default(visited=[])
        return nil if visited.include?('WorldFailure')
        visited = visited + ['WorldFailure']
        {
          failure_code: 'failure_code',
          sample_failure_reason: 'sample_failure_reason',
          failure_count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::WorldFailure.new
        data = {}
        data['failureCode'] = stub[:failure_code] unless stub[:failure_code].nil?
        data['sampleFailureReason'] = stub[:sample_failure_reason] unless stub[:sample_failure_reason].nil?
        data['failureCount'] = stub[:failure_count] unless stub[:failure_count].nil?
        data
      end
    end

    # Operation Stubber for DescribeWorldTemplate
    class DescribeWorldTemplate
      def self.default(visited=[])
        {
          arn: 'arn',
          client_request_token: 'client_request_token',
          name: 'name',
          created_at: Time.now,
          last_updated_at: Time.now,
          tags: Stubs::TagMap.default(visited),
          version: 'version',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['clientRequestToken'] = stub[:client_request_token] unless stub[:client_request_token].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['lastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetWorldTemplateBody
    class GetWorldTemplateBody
      def self.default(visited=[])
        {
          template_body: 'template_body',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['templateBody'] = stub[:template_body] unless stub[:template_body].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListDeploymentJobs
    class ListDeploymentJobs
      def self.default(visited=[])
        {
          deployment_jobs: Stubs::DeploymentJobs.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['deploymentJobs'] = Stubs::DeploymentJobs.stub(stub[:deployment_jobs]) unless stub[:deployment_jobs].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DeploymentJobs
    class DeploymentJobs
      def self.default(visited=[])
        return nil if visited.include?('DeploymentJobs')
        visited = visited + ['DeploymentJobs']
        [
          Stubs::DeploymentJob.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DeploymentJob.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DeploymentJob
    class DeploymentJob
      def self.default(visited=[])
        return nil if visited.include?('DeploymentJob')
        visited = visited + ['DeploymentJob']
        {
          arn: 'arn',
          fleet: 'fleet',
          status: 'status',
          deployment_application_configs: Stubs::DeploymentApplicationConfigs.default(visited),
          deployment_config: Stubs::DeploymentConfig.default(visited),
          failure_reason: 'failure_reason',
          failure_code: 'failure_code',
          created_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::DeploymentJob.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['fleet'] = stub[:fleet] unless stub[:fleet].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['deploymentApplicationConfigs'] = Stubs::DeploymentApplicationConfigs.stub(stub[:deployment_application_configs]) unless stub[:deployment_application_configs].nil?
        data['deploymentConfig'] = Stubs::DeploymentConfig.stub(stub[:deployment_config]) unless stub[:deployment_config].nil?
        data['failureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['failureCode'] = stub[:failure_code] unless stub[:failure_code].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data
      end
    end

    # Operation Stubber for ListFleets
    class ListFleets
      def self.default(visited=[])
        {
          fleet_details: Stubs::Fleets.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['fleetDetails'] = Stubs::Fleets.stub(stub[:fleet_details]) unless stub[:fleet_details].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for Fleets
    class Fleets
      def self.default(visited=[])
        return nil if visited.include?('Fleets')
        visited = visited + ['Fleets']
        [
          Stubs::Fleet.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Fleet.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Fleet
    class Fleet
      def self.default(visited=[])
        return nil if visited.include?('Fleet')
        visited = visited + ['Fleet']
        {
          name: 'name',
          arn: 'arn',
          created_at: Time.now,
          last_deployment_status: 'last_deployment_status',
          last_deployment_job: 'last_deployment_job',
          last_deployment_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Fleet.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['lastDeploymentStatus'] = stub[:last_deployment_status] unless stub[:last_deployment_status].nil?
        data['lastDeploymentJob'] = stub[:last_deployment_job] unless stub[:last_deployment_job].nil?
        data['lastDeploymentTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_deployment_time]).to_i unless stub[:last_deployment_time].nil?
        data
      end
    end

    # Operation Stubber for ListRobotApplications
    class ListRobotApplications
      def self.default(visited=[])
        {
          robot_application_summaries: Stubs::RobotApplicationSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['robotApplicationSummaries'] = Stubs::RobotApplicationSummaries.stub(stub[:robot_application_summaries]) unless stub[:robot_application_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for RobotApplicationSummaries
    class RobotApplicationSummaries
      def self.default(visited=[])
        return nil if visited.include?('RobotApplicationSummaries')
        visited = visited + ['RobotApplicationSummaries']
        [
          Stubs::RobotApplicationSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RobotApplicationSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RobotApplicationSummary
    class RobotApplicationSummary
      def self.default(visited=[])
        return nil if visited.include?('RobotApplicationSummary')
        visited = visited + ['RobotApplicationSummary']
        {
          name: 'name',
          arn: 'arn',
          version: 'version',
          last_updated_at: Time.now,
          robot_software_suite: Stubs::RobotSoftwareSuite.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RobotApplicationSummary.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['lastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data['robotSoftwareSuite'] = Stubs::RobotSoftwareSuite.stub(stub[:robot_software_suite]) unless stub[:robot_software_suite].nil?
        data
      end
    end

    # Operation Stubber for ListRobots
    class ListRobots
      def self.default(visited=[])
        {
          robots: Stubs::Robots.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['robots'] = Stubs::Robots.stub(stub[:robots]) unless stub[:robots].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListSimulationApplications
    class ListSimulationApplications
      def self.default(visited=[])
        {
          simulation_application_summaries: Stubs::SimulationApplicationSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['simulationApplicationSummaries'] = Stubs::SimulationApplicationSummaries.stub(stub[:simulation_application_summaries]) unless stub[:simulation_application_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for SimulationApplicationSummaries
    class SimulationApplicationSummaries
      def self.default(visited=[])
        return nil if visited.include?('SimulationApplicationSummaries')
        visited = visited + ['SimulationApplicationSummaries']
        [
          Stubs::SimulationApplicationSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SimulationApplicationSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SimulationApplicationSummary
    class SimulationApplicationSummary
      def self.default(visited=[])
        return nil if visited.include?('SimulationApplicationSummary')
        visited = visited + ['SimulationApplicationSummary']
        {
          name: 'name',
          arn: 'arn',
          version: 'version',
          last_updated_at: Time.now,
          robot_software_suite: Stubs::RobotSoftwareSuite.default(visited),
          simulation_software_suite: Stubs::SimulationSoftwareSuite.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SimulationApplicationSummary.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['lastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data['robotSoftwareSuite'] = Stubs::RobotSoftwareSuite.stub(stub[:robot_software_suite]) unless stub[:robot_software_suite].nil?
        data['simulationSoftwareSuite'] = Stubs::SimulationSoftwareSuite.stub(stub[:simulation_software_suite]) unless stub[:simulation_software_suite].nil?
        data
      end
    end

    # Operation Stubber for ListSimulationJobBatches
    class ListSimulationJobBatches
      def self.default(visited=[])
        {
          simulation_job_batch_summaries: Stubs::SimulationJobBatchSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['simulationJobBatchSummaries'] = Stubs::SimulationJobBatchSummaries.stub(stub[:simulation_job_batch_summaries]) unless stub[:simulation_job_batch_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for SimulationJobBatchSummaries
    class SimulationJobBatchSummaries
      def self.default(visited=[])
        return nil if visited.include?('SimulationJobBatchSummaries')
        visited = visited + ['SimulationJobBatchSummaries']
        [
          Stubs::SimulationJobBatchSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SimulationJobBatchSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SimulationJobBatchSummary
    class SimulationJobBatchSummary
      def self.default(visited=[])
        return nil if visited.include?('SimulationJobBatchSummary')
        visited = visited + ['SimulationJobBatchSummary']
        {
          arn: 'arn',
          last_updated_at: Time.now,
          created_at: Time.now,
          status: 'status',
          failed_request_count: 1,
          pending_request_count: 1,
          created_request_count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::SimulationJobBatchSummary.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['lastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['failedRequestCount'] = stub[:failed_request_count] unless stub[:failed_request_count].nil?
        data['pendingRequestCount'] = stub[:pending_request_count] unless stub[:pending_request_count].nil?
        data['createdRequestCount'] = stub[:created_request_count] unless stub[:created_request_count].nil?
        data
      end
    end

    # Operation Stubber for ListSimulationJobs
    class ListSimulationJobs
      def self.default(visited=[])
        {
          simulation_job_summaries: Stubs::SimulationJobSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['simulationJobSummaries'] = Stubs::SimulationJobSummaries.stub(stub[:simulation_job_summaries]) unless stub[:simulation_job_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListWorldExportJobs
    class ListWorldExportJobs
      def self.default(visited=[])
        {
          world_export_job_summaries: Stubs::WorldExportJobSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['worldExportJobSummaries'] = Stubs::WorldExportJobSummaries.stub(stub[:world_export_job_summaries]) unless stub[:world_export_job_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for WorldExportJobSummaries
    class WorldExportJobSummaries
      def self.default(visited=[])
        return nil if visited.include?('WorldExportJobSummaries')
        visited = visited + ['WorldExportJobSummaries']
        [
          Stubs::WorldExportJobSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::WorldExportJobSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for WorldExportJobSummary
    class WorldExportJobSummary
      def self.default(visited=[])
        return nil if visited.include?('WorldExportJobSummary')
        visited = visited + ['WorldExportJobSummary']
        {
          arn: 'arn',
          status: 'status',
          created_at: Time.now,
          worlds: Stubs::Arns.default(visited),
          output_location: Stubs::OutputLocation.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::WorldExportJobSummary.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['worlds'] = Stubs::Arns.stub(stub[:worlds]) unless stub[:worlds].nil?
        data['outputLocation'] = Stubs::OutputLocation.stub(stub[:output_location]) unless stub[:output_location].nil?
        data
      end
    end

    # Operation Stubber for ListWorldGenerationJobs
    class ListWorldGenerationJobs
      def self.default(visited=[])
        {
          world_generation_job_summaries: Stubs::WorldGenerationJobSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['worldGenerationJobSummaries'] = Stubs::WorldGenerationJobSummaries.stub(stub[:world_generation_job_summaries]) unless stub[:world_generation_job_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for WorldGenerationJobSummaries
    class WorldGenerationJobSummaries
      def self.default(visited=[])
        return nil if visited.include?('WorldGenerationJobSummaries')
        visited = visited + ['WorldGenerationJobSummaries']
        [
          Stubs::WorldGenerationJobSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::WorldGenerationJobSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for WorldGenerationJobSummary
    class WorldGenerationJobSummary
      def self.default(visited=[])
        return nil if visited.include?('WorldGenerationJobSummary')
        visited = visited + ['WorldGenerationJobSummary']
        {
          arn: 'arn',
          template: 'template',
          created_at: Time.now,
          status: 'status',
          world_count: Stubs::WorldCount.default(visited),
          succeeded_world_count: 1,
          failed_world_count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::WorldGenerationJobSummary.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['template'] = stub[:template] unless stub[:template].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['worldCount'] = Stubs::WorldCount.stub(stub[:world_count]) unless stub[:world_count].nil?
        data['succeededWorldCount'] = stub[:succeeded_world_count] unless stub[:succeeded_world_count].nil?
        data['failedWorldCount'] = stub[:failed_world_count] unless stub[:failed_world_count].nil?
        data
      end
    end

    # Operation Stubber for ListWorldTemplates
    class ListWorldTemplates
      def self.default(visited=[])
        {
          template_summaries: Stubs::TemplateSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['templateSummaries'] = Stubs::TemplateSummaries.stub(stub[:template_summaries]) unless stub[:template_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for TemplateSummaries
    class TemplateSummaries
      def self.default(visited=[])
        return nil if visited.include?('TemplateSummaries')
        visited = visited + ['TemplateSummaries']
        [
          Stubs::TemplateSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::TemplateSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TemplateSummary
    class TemplateSummary
      def self.default(visited=[])
        return nil if visited.include?('TemplateSummary')
        visited = visited + ['TemplateSummary']
        {
          arn: 'arn',
          created_at: Time.now,
          last_updated_at: Time.now,
          name: 'name',
          version: 'version',
        }
      end

      def self.stub(stub)
        stub ||= Types::TemplateSummary.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['lastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data
      end
    end

    # Operation Stubber for ListWorlds
    class ListWorlds
      def self.default(visited=[])
        {
          world_summaries: Stubs::WorldSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['worldSummaries'] = Stubs::WorldSummaries.stub(stub[:world_summaries]) unless stub[:world_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for WorldSummaries
    class WorldSummaries
      def self.default(visited=[])
        return nil if visited.include?('WorldSummaries')
        visited = visited + ['WorldSummaries']
        [
          Stubs::WorldSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::WorldSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for WorldSummary
    class WorldSummary
      def self.default(visited=[])
        return nil if visited.include?('WorldSummary')
        visited = visited + ['WorldSummary']
        {
          arn: 'arn',
          created_at: Time.now,
          generation_job: 'generation_job',
          template: 'template',
        }
      end

      def self.stub(stub)
        stub ||= Types::WorldSummary.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['generationJob'] = stub[:generation_job] unless stub[:generation_job].nil?
        data['template'] = stub[:template] unless stub[:template].nil?
        data
      end
    end

    # Operation Stubber for RegisterRobot
    class RegisterRobot
      def self.default(visited=[])
        {
          fleet: 'fleet',
          robot: 'robot',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['fleet'] = stub[:fleet] unless stub[:fleet].nil?
        data['robot'] = stub[:robot] unless stub[:robot].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for RestartSimulationJob
    class RestartSimulationJob
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartSimulationJobBatch
    class StartSimulationJobBatch
      def self.default(visited=[])
        {
          arn: 'arn',
          status: 'status',
          created_at: Time.now,
          client_request_token: 'client_request_token',
          batch_policy: Stubs::BatchPolicy.default(visited),
          failure_code: 'failure_code',
          failure_reason: 'failure_reason',
          failed_requests: Stubs::FailedCreateSimulationJobRequests.default(visited),
          pending_requests: Stubs::CreateSimulationJobRequests.default(visited),
          created_requests: Stubs::SimulationJobSummaries.default(visited),
          tags: Stubs::TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['clientRequestToken'] = stub[:client_request_token] unless stub[:client_request_token].nil?
        data['batchPolicy'] = Stubs::BatchPolicy.stub(stub[:batch_policy]) unless stub[:batch_policy].nil?
        data['failureCode'] = stub[:failure_code] unless stub[:failure_code].nil?
        data['failureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['failedRequests'] = Stubs::FailedCreateSimulationJobRequests.stub(stub[:failed_requests]) unless stub[:failed_requests].nil?
        data['pendingRequests'] = Stubs::CreateSimulationJobRequests.stub(stub[:pending_requests]) unless stub[:pending_requests].nil?
        data['createdRequests'] = Stubs::SimulationJobSummaries.stub(stub[:created_requests]) unless stub[:created_requests].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for SyncDeploymentJob
    class SyncDeploymentJob
      def self.default(visited=[])
        {
          arn: 'arn',
          fleet: 'fleet',
          status: 'status',
          deployment_config: Stubs::DeploymentConfig.default(visited),
          deployment_application_configs: Stubs::DeploymentApplicationConfigs.default(visited),
          failure_reason: 'failure_reason',
          failure_code: 'failure_code',
          created_at: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['fleet'] = stub[:fleet] unless stub[:fleet].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['deploymentConfig'] = Stubs::DeploymentConfig.stub(stub[:deployment_config]) unless stub[:deployment_config].nil?
        data['deploymentApplicationConfigs'] = Stubs::DeploymentApplicationConfigs.stub(stub[:deployment_application_configs]) unless stub[:deployment_application_configs].nil?
        data['failureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['failureCode'] = stub[:failure_code] unless stub[:failure_code].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
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

    # Operation Stubber for UpdateRobotApplication
    class UpdateRobotApplication
      def self.default(visited=[])
        {
          arn: 'arn',
          name: 'name',
          version: 'version',
          sources: Stubs::Sources.default(visited),
          robot_software_suite: Stubs::RobotSoftwareSuite.default(visited),
          last_updated_at: Time.now,
          revision_id: 'revision_id',
          environment: Stubs::Environment.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['sources'] = Stubs::Sources.stub(stub[:sources]) unless stub[:sources].nil?
        data['robotSoftwareSuite'] = Stubs::RobotSoftwareSuite.stub(stub[:robot_software_suite]) unless stub[:robot_software_suite].nil?
        data['lastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data['revisionId'] = stub[:revision_id] unless stub[:revision_id].nil?
        data['environment'] = Stubs::Environment.stub(stub[:environment]) unless stub[:environment].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateSimulationApplication
    class UpdateSimulationApplication
      def self.default(visited=[])
        {
          arn: 'arn',
          name: 'name',
          version: 'version',
          sources: Stubs::Sources.default(visited),
          simulation_software_suite: Stubs::SimulationSoftwareSuite.default(visited),
          robot_software_suite: Stubs::RobotSoftwareSuite.default(visited),
          rendering_engine: Stubs::RenderingEngine.default(visited),
          last_updated_at: Time.now,
          revision_id: 'revision_id',
          environment: Stubs::Environment.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['sources'] = Stubs::Sources.stub(stub[:sources]) unless stub[:sources].nil?
        data['simulationSoftwareSuite'] = Stubs::SimulationSoftwareSuite.stub(stub[:simulation_software_suite]) unless stub[:simulation_software_suite].nil?
        data['robotSoftwareSuite'] = Stubs::RobotSoftwareSuite.stub(stub[:robot_software_suite]) unless stub[:robot_software_suite].nil?
        data['renderingEngine'] = Stubs::RenderingEngine.stub(stub[:rendering_engine]) unless stub[:rendering_engine].nil?
        data['lastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data['revisionId'] = stub[:revision_id] unless stub[:revision_id].nil?
        data['environment'] = Stubs::Environment.stub(stub[:environment]) unless stub[:environment].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateWorldTemplate
    class UpdateWorldTemplate
      def self.default(visited=[])
        {
          arn: 'arn',
          name: 'name',
          created_at: Time.now,
          last_updated_at: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['lastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
