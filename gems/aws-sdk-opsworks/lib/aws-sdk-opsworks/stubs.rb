# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::OpsWorks
  module Stubs

    # Operation Stubber for AssignInstance
    class AssignInstance
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AssignVolume
    class AssignVolume
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AssociateElasticIp
    class AssociateElasticIp
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AttachElasticLoadBalancer
    class AttachElasticLoadBalancer
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CloneStack
    class CloneStack
      def self.default(visited=[])
        {
          stack_id: 'stack_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['StackId'] = stub[:stack_id] unless stub[:stack_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateApp
    class CreateApp
      def self.default(visited=[])
        {
          app_id: 'app_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AppId'] = stub[:app_id] unless stub[:app_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateDeployment
    class CreateDeployment
      def self.default(visited=[])
        {
          deployment_id: 'deployment_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DeploymentId'] = stub[:deployment_id] unless stub[:deployment_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateInstance
    class CreateInstance
      def self.default(visited=[])
        {
          instance_id: 'instance_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['InstanceId'] = stub[:instance_id] unless stub[:instance_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateLayer
    class CreateLayer
      def self.default(visited=[])
        {
          layer_id: 'layer_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['LayerId'] = stub[:layer_id] unless stub[:layer_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateStack
    class CreateStack
      def self.default(visited=[])
        {
          stack_id: 'stack_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['StackId'] = stub[:stack_id] unless stub[:stack_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateUserProfile
    class CreateUserProfile
      def self.default(visited=[])
        {
          iam_user_arn: 'iam_user_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['IamUserArn'] = stub[:iam_user_arn] unless stub[:iam_user_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteApp
    class DeleteApp
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteInstance
    class DeleteInstance
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteLayer
    class DeleteLayer
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteStack
    class DeleteStack
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteUserProfile
    class DeleteUserProfile
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeregisterEcsCluster
    class DeregisterEcsCluster
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeregisterElasticIp
    class DeregisterElasticIp
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeregisterInstance
    class DeregisterInstance
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeregisterRdsDbInstance
    class DeregisterRdsDbInstance
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeregisterVolume
    class DeregisterVolume
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeAgentVersions
    class DescribeAgentVersions
      def self.default(visited=[])
        {
          agent_versions: AgentVersions.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AgentVersions'] = AgentVersions.stub(stub[:agent_versions]) unless stub[:agent_versions].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AgentVersions
    class AgentVersions
      def self.default(visited=[])
        return nil if visited.include?('AgentVersions')
        visited = visited + ['AgentVersions']
        [
          AgentVersion.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AgentVersion.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AgentVersion
    class AgentVersion
      def self.default(visited=[])
        return nil if visited.include?('AgentVersion')
        visited = visited + ['AgentVersion']
        {
          version: 'version',
          configuration_manager: StackConfigurationManager.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AgentVersion.new
        data = {}
        data['Version'] = stub[:version] unless stub[:version].nil?
        data['ConfigurationManager'] = StackConfigurationManager.stub(stub[:configuration_manager]) unless stub[:configuration_manager].nil?
        data
      end
    end

    # Structure Stubber for StackConfigurationManager
    class StackConfigurationManager
      def self.default(visited=[])
        return nil if visited.include?('StackConfigurationManager')
        visited = visited + ['StackConfigurationManager']
        {
          name: 'name',
          version: 'version',
        }
      end

      def self.stub(stub)
        stub ||= Types::StackConfigurationManager.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data
      end
    end

    # Operation Stubber for DescribeApps
    class DescribeApps
      def self.default(visited=[])
        {
          apps: Apps.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Apps'] = Apps.stub(stub[:apps]) unless stub[:apps].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Apps
    class Apps
      def self.default(visited=[])
        return nil if visited.include?('Apps')
        visited = visited + ['Apps']
        [
          App.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << App.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for App
    class App
      def self.default(visited=[])
        return nil if visited.include?('App')
        visited = visited + ['App']
        {
          app_id: 'app_id',
          stack_id: 'stack_id',
          shortname: 'shortname',
          name: 'name',
          description: 'description',
          data_sources: DataSources.default(visited),
          type: 'type',
          app_source: Source.default(visited),
          domains: Strings.default(visited),
          enable_ssl: false,
          ssl_configuration: SslConfiguration.default(visited),
          attributes: AppAttributes.default(visited),
          created_at: 'created_at',
          environment: EnvironmentVariables.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::App.new
        data = {}
        data['AppId'] = stub[:app_id] unless stub[:app_id].nil?
        data['StackId'] = stub[:stack_id] unless stub[:stack_id].nil?
        data['Shortname'] = stub[:shortname] unless stub[:shortname].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['DataSources'] = DataSources.stub(stub[:data_sources]) unless stub[:data_sources].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['AppSource'] = Source.stub(stub[:app_source]) unless stub[:app_source].nil?
        data['Domains'] = Strings.stub(stub[:domains]) unless stub[:domains].nil?
        data['EnableSsl'] = stub[:enable_ssl] unless stub[:enable_ssl].nil?
        data['SslConfiguration'] = SslConfiguration.stub(stub[:ssl_configuration]) unless stub[:ssl_configuration].nil?
        data['Attributes'] = AppAttributes.stub(stub[:attributes]) unless stub[:attributes].nil?
        data['CreatedAt'] = stub[:created_at] unless stub[:created_at].nil?
        data['Environment'] = EnvironmentVariables.stub(stub[:environment]) unless stub[:environment].nil?
        data
      end
    end

    # List Stubber for EnvironmentVariables
    class EnvironmentVariables
      def self.default(visited=[])
        return nil if visited.include?('EnvironmentVariables')
        visited = visited + ['EnvironmentVariables']
        [
          EnvironmentVariable.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EnvironmentVariable.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EnvironmentVariable
    class EnvironmentVariable
      def self.default(visited=[])
        return nil if visited.include?('EnvironmentVariable')
        visited = visited + ['EnvironmentVariable']
        {
          key: 'key',
          value: 'value',
          secure: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::EnvironmentVariable.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data['Secure'] = stub[:secure] unless stub[:secure].nil?
        data
      end
    end

    # Map Stubber for AppAttributes
    class AppAttributes
      def self.default(visited=[])
        return nil if visited.include?('AppAttributes')
        visited = visited + ['AppAttributes']
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

    # Structure Stubber for SslConfiguration
    class SslConfiguration
      def self.default(visited=[])
        return nil if visited.include?('SslConfiguration')
        visited = visited + ['SslConfiguration']
        {
          certificate: 'certificate',
          private_key: 'private_key',
          chain: 'chain',
        }
      end

      def self.stub(stub)
        stub ||= Types::SslConfiguration.new
        data = {}
        data['Certificate'] = stub[:certificate] unless stub[:certificate].nil?
        data['PrivateKey'] = stub[:private_key] unless stub[:private_key].nil?
        data['Chain'] = stub[:chain] unless stub[:chain].nil?
        data
      end
    end

    # List Stubber for Strings
    class Strings
      def self.default(visited=[])
        return nil if visited.include?('Strings')
        visited = visited + ['Strings']
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

    # Structure Stubber for Source
    class Source
      def self.default(visited=[])
        return nil if visited.include?('Source')
        visited = visited + ['Source']
        {
          type: 'type',
          url: 'url',
          username: 'username',
          password: 'password',
          ssh_key: 'ssh_key',
          revision: 'revision',
        }
      end

      def self.stub(stub)
        stub ||= Types::Source.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Url'] = stub[:url] unless stub[:url].nil?
        data['Username'] = stub[:username] unless stub[:username].nil?
        data['Password'] = stub[:password] unless stub[:password].nil?
        data['SshKey'] = stub[:ssh_key] unless stub[:ssh_key].nil?
        data['Revision'] = stub[:revision] unless stub[:revision].nil?
        data
      end
    end

    # List Stubber for DataSources
    class DataSources
      def self.default(visited=[])
        return nil if visited.include?('DataSources')
        visited = visited + ['DataSources']
        [
          DataSource.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DataSource.stub(element) unless element.nil?
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
          type: 'type',
          arn: 'arn',
          database_name: 'database_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::DataSource.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['DatabaseName'] = stub[:database_name] unless stub[:database_name].nil?
        data
      end
    end

    # Operation Stubber for DescribeCommands
    class DescribeCommands
      def self.default(visited=[])
        {
          commands: Commands.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Commands'] = Commands.stub(stub[:commands]) unless stub[:commands].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Commands
    class Commands
      def self.default(visited=[])
        return nil if visited.include?('Commands')
        visited = visited + ['Commands']
        [
          Command.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Command.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Command
    class Command
      def self.default(visited=[])
        return nil if visited.include?('Command')
        visited = visited + ['Command']
        {
          command_id: 'command_id',
          instance_id: 'instance_id',
          deployment_id: 'deployment_id',
          created_at: 'created_at',
          acknowledged_at: 'acknowledged_at',
          completed_at: 'completed_at',
          status: 'status',
          exit_code: 1,
          log_url: 'log_url',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::Command.new
        data = {}
        data['CommandId'] = stub[:command_id] unless stub[:command_id].nil?
        data['InstanceId'] = stub[:instance_id] unless stub[:instance_id].nil?
        data['DeploymentId'] = stub[:deployment_id] unless stub[:deployment_id].nil?
        data['CreatedAt'] = stub[:created_at] unless stub[:created_at].nil?
        data['AcknowledgedAt'] = stub[:acknowledged_at] unless stub[:acknowledged_at].nil?
        data['CompletedAt'] = stub[:completed_at] unless stub[:completed_at].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['ExitCode'] = stub[:exit_code] unless stub[:exit_code].nil?
        data['LogUrl'] = stub[:log_url] unless stub[:log_url].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Operation Stubber for DescribeDeployments
    class DescribeDeployments
      def self.default(visited=[])
        {
          deployments: Deployments.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Deployments'] = Deployments.stub(stub[:deployments]) unless stub[:deployments].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Deployments
    class Deployments
      def self.default(visited=[])
        return nil if visited.include?('Deployments')
        visited = visited + ['Deployments']
        [
          Deployment.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Deployment.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Deployment
    class Deployment
      def self.default(visited=[])
        return nil if visited.include?('Deployment')
        visited = visited + ['Deployment']
        {
          deployment_id: 'deployment_id',
          stack_id: 'stack_id',
          app_id: 'app_id',
          created_at: 'created_at',
          completed_at: 'completed_at',
          duration: 1,
          iam_user_arn: 'iam_user_arn',
          comment: 'comment',
          command: DeploymentCommand.default(visited),
          status: 'status',
          custom_json: 'custom_json',
          instance_ids: Strings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Deployment.new
        data = {}
        data['DeploymentId'] = stub[:deployment_id] unless stub[:deployment_id].nil?
        data['StackId'] = stub[:stack_id] unless stub[:stack_id].nil?
        data['AppId'] = stub[:app_id] unless stub[:app_id].nil?
        data['CreatedAt'] = stub[:created_at] unless stub[:created_at].nil?
        data['CompletedAt'] = stub[:completed_at] unless stub[:completed_at].nil?
        data['Duration'] = stub[:duration] unless stub[:duration].nil?
        data['IamUserArn'] = stub[:iam_user_arn] unless stub[:iam_user_arn].nil?
        data['Comment'] = stub[:comment] unless stub[:comment].nil?
        data['Command'] = DeploymentCommand.stub(stub[:command]) unless stub[:command].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['CustomJson'] = stub[:custom_json] unless stub[:custom_json].nil?
        data['InstanceIds'] = Strings.stub(stub[:instance_ids]) unless stub[:instance_ids].nil?
        data
      end
    end

    # Structure Stubber for DeploymentCommand
    class DeploymentCommand
      def self.default(visited=[])
        return nil if visited.include?('DeploymentCommand')
        visited = visited + ['DeploymentCommand']
        {
          name: 'name',
          args: DeploymentCommandArgs.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DeploymentCommand.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Args'] = DeploymentCommandArgs.stub(stub[:args]) unless stub[:args].nil?
        data
      end
    end

    # Map Stubber for DeploymentCommandArgs
    class DeploymentCommandArgs
      def self.default(visited=[])
        return nil if visited.include?('DeploymentCommandArgs')
        visited = visited + ['DeploymentCommandArgs']
        {
          test_key: Strings.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Strings.stub(value) unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeEcsClusters
    class DescribeEcsClusters
      def self.default(visited=[])
        {
          ecs_clusters: EcsClusters.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['EcsClusters'] = EcsClusters.stub(stub[:ecs_clusters]) unless stub[:ecs_clusters].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for EcsClusters
    class EcsClusters
      def self.default(visited=[])
        return nil if visited.include?('EcsClusters')
        visited = visited + ['EcsClusters']
        [
          EcsCluster.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EcsCluster.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EcsCluster
    class EcsCluster
      def self.default(visited=[])
        return nil if visited.include?('EcsCluster')
        visited = visited + ['EcsCluster']
        {
          ecs_cluster_arn: 'ecs_cluster_arn',
          ecs_cluster_name: 'ecs_cluster_name',
          stack_id: 'stack_id',
          registered_at: 'registered_at',
        }
      end

      def self.stub(stub)
        stub ||= Types::EcsCluster.new
        data = {}
        data['EcsClusterArn'] = stub[:ecs_cluster_arn] unless stub[:ecs_cluster_arn].nil?
        data['EcsClusterName'] = stub[:ecs_cluster_name] unless stub[:ecs_cluster_name].nil?
        data['StackId'] = stub[:stack_id] unless stub[:stack_id].nil?
        data['RegisteredAt'] = stub[:registered_at] unless stub[:registered_at].nil?
        data
      end
    end

    # Operation Stubber for DescribeElasticIps
    class DescribeElasticIps
      def self.default(visited=[])
        {
          elastic_ips: ElasticIps.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ElasticIps'] = ElasticIps.stub(stub[:elastic_ips]) unless stub[:elastic_ips].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ElasticIps
    class ElasticIps
      def self.default(visited=[])
        return nil if visited.include?('ElasticIps')
        visited = visited + ['ElasticIps']
        [
          ElasticIp.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ElasticIp.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ElasticIp
    class ElasticIp
      def self.default(visited=[])
        return nil if visited.include?('ElasticIp')
        visited = visited + ['ElasticIp']
        {
          ip: 'ip',
          name: 'name',
          domain: 'domain',
          region: 'region',
          instance_id: 'instance_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::ElasticIp.new
        data = {}
        data['Ip'] = stub[:ip] unless stub[:ip].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Domain'] = stub[:domain] unless stub[:domain].nil?
        data['Region'] = stub[:region] unless stub[:region].nil?
        data['InstanceId'] = stub[:instance_id] unless stub[:instance_id].nil?
        data
      end
    end

    # Operation Stubber for DescribeElasticLoadBalancers
    class DescribeElasticLoadBalancers
      def self.default(visited=[])
        {
          elastic_load_balancers: ElasticLoadBalancers.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ElasticLoadBalancers'] = ElasticLoadBalancers.stub(stub[:elastic_load_balancers]) unless stub[:elastic_load_balancers].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ElasticLoadBalancers
    class ElasticLoadBalancers
      def self.default(visited=[])
        return nil if visited.include?('ElasticLoadBalancers')
        visited = visited + ['ElasticLoadBalancers']
        [
          ElasticLoadBalancer.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ElasticLoadBalancer.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ElasticLoadBalancer
    class ElasticLoadBalancer
      def self.default(visited=[])
        return nil if visited.include?('ElasticLoadBalancer')
        visited = visited + ['ElasticLoadBalancer']
        {
          elastic_load_balancer_name: 'elastic_load_balancer_name',
          region: 'region',
          dns_name: 'dns_name',
          stack_id: 'stack_id',
          layer_id: 'layer_id',
          vpc_id: 'vpc_id',
          availability_zones: Strings.default(visited),
          subnet_ids: Strings.default(visited),
          ec2_instance_ids: Strings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ElasticLoadBalancer.new
        data = {}
        data['ElasticLoadBalancerName'] = stub[:elastic_load_balancer_name] unless stub[:elastic_load_balancer_name].nil?
        data['Region'] = stub[:region] unless stub[:region].nil?
        data['DnsName'] = stub[:dns_name] unless stub[:dns_name].nil?
        data['StackId'] = stub[:stack_id] unless stub[:stack_id].nil?
        data['LayerId'] = stub[:layer_id] unless stub[:layer_id].nil?
        data['VpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data['AvailabilityZones'] = Strings.stub(stub[:availability_zones]) unless stub[:availability_zones].nil?
        data['SubnetIds'] = Strings.stub(stub[:subnet_ids]) unless stub[:subnet_ids].nil?
        data['Ec2InstanceIds'] = Strings.stub(stub[:ec2_instance_ids]) unless stub[:ec2_instance_ids].nil?
        data
      end
    end

    # Operation Stubber for DescribeInstances
    class DescribeInstances
      def self.default(visited=[])
        {
          instances: Instances.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Instances'] = Instances.stub(stub[:instances]) unless stub[:instances].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Instances
    class Instances
      def self.default(visited=[])
        return nil if visited.include?('Instances')
        visited = visited + ['Instances']
        [
          Instance.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Instance.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Instance
    class Instance
      def self.default(visited=[])
        return nil if visited.include?('Instance')
        visited = visited + ['Instance']
        {
          agent_version: 'agent_version',
          ami_id: 'ami_id',
          architecture: 'architecture',
          arn: 'arn',
          auto_scaling_type: 'auto_scaling_type',
          availability_zone: 'availability_zone',
          block_device_mappings: BlockDeviceMappings.default(visited),
          created_at: 'created_at',
          ebs_optimized: false,
          ec2_instance_id: 'ec2_instance_id',
          ecs_cluster_arn: 'ecs_cluster_arn',
          ecs_container_instance_arn: 'ecs_container_instance_arn',
          elastic_ip: 'elastic_ip',
          hostname: 'hostname',
          infrastructure_class: 'infrastructure_class',
          install_updates_on_boot: false,
          instance_id: 'instance_id',
          instance_profile_arn: 'instance_profile_arn',
          instance_type: 'instance_type',
          last_service_error_id: 'last_service_error_id',
          layer_ids: Strings.default(visited),
          os: 'os',
          platform: 'platform',
          private_dns: 'private_dns',
          private_ip: 'private_ip',
          public_dns: 'public_dns',
          public_ip: 'public_ip',
          registered_by: 'registered_by',
          reported_agent_version: 'reported_agent_version',
          reported_os: ReportedOs.default(visited),
          root_device_type: 'root_device_type',
          root_device_volume_id: 'root_device_volume_id',
          security_group_ids: Strings.default(visited),
          ssh_host_dsa_key_fingerprint: 'ssh_host_dsa_key_fingerprint',
          ssh_host_rsa_key_fingerprint: 'ssh_host_rsa_key_fingerprint',
          ssh_key_name: 'ssh_key_name',
          stack_id: 'stack_id',
          status: 'status',
          subnet_id: 'subnet_id',
          tenancy: 'tenancy',
          virtualization_type: 'virtualization_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::Instance.new
        data = {}
        data['AgentVersion'] = stub[:agent_version] unless stub[:agent_version].nil?
        data['AmiId'] = stub[:ami_id] unless stub[:ami_id].nil?
        data['Architecture'] = stub[:architecture] unless stub[:architecture].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['AutoScalingType'] = stub[:auto_scaling_type] unless stub[:auto_scaling_type].nil?
        data['AvailabilityZone'] = stub[:availability_zone] unless stub[:availability_zone].nil?
        data['BlockDeviceMappings'] = BlockDeviceMappings.stub(stub[:block_device_mappings]) unless stub[:block_device_mappings].nil?
        data['CreatedAt'] = stub[:created_at] unless stub[:created_at].nil?
        data['EbsOptimized'] = stub[:ebs_optimized] unless stub[:ebs_optimized].nil?
        data['Ec2InstanceId'] = stub[:ec2_instance_id] unless stub[:ec2_instance_id].nil?
        data['EcsClusterArn'] = stub[:ecs_cluster_arn] unless stub[:ecs_cluster_arn].nil?
        data['EcsContainerInstanceArn'] = stub[:ecs_container_instance_arn] unless stub[:ecs_container_instance_arn].nil?
        data['ElasticIp'] = stub[:elastic_ip] unless stub[:elastic_ip].nil?
        data['Hostname'] = stub[:hostname] unless stub[:hostname].nil?
        data['InfrastructureClass'] = stub[:infrastructure_class] unless stub[:infrastructure_class].nil?
        data['InstallUpdatesOnBoot'] = stub[:install_updates_on_boot] unless stub[:install_updates_on_boot].nil?
        data['InstanceId'] = stub[:instance_id] unless stub[:instance_id].nil?
        data['InstanceProfileArn'] = stub[:instance_profile_arn] unless stub[:instance_profile_arn].nil?
        data['InstanceType'] = stub[:instance_type] unless stub[:instance_type].nil?
        data['LastServiceErrorId'] = stub[:last_service_error_id] unless stub[:last_service_error_id].nil?
        data['LayerIds'] = Strings.stub(stub[:layer_ids]) unless stub[:layer_ids].nil?
        data['Os'] = stub[:os] unless stub[:os].nil?
        data['Platform'] = stub[:platform] unless stub[:platform].nil?
        data['PrivateDns'] = stub[:private_dns] unless stub[:private_dns].nil?
        data['PrivateIp'] = stub[:private_ip] unless stub[:private_ip].nil?
        data['PublicDns'] = stub[:public_dns] unless stub[:public_dns].nil?
        data['PublicIp'] = stub[:public_ip] unless stub[:public_ip].nil?
        data['RegisteredBy'] = stub[:registered_by] unless stub[:registered_by].nil?
        data['ReportedAgentVersion'] = stub[:reported_agent_version] unless stub[:reported_agent_version].nil?
        data['ReportedOs'] = ReportedOs.stub(stub[:reported_os]) unless stub[:reported_os].nil?
        data['RootDeviceType'] = stub[:root_device_type] unless stub[:root_device_type].nil?
        data['RootDeviceVolumeId'] = stub[:root_device_volume_id] unless stub[:root_device_volume_id].nil?
        data['SecurityGroupIds'] = Strings.stub(stub[:security_group_ids]) unless stub[:security_group_ids].nil?
        data['SshHostDsaKeyFingerprint'] = stub[:ssh_host_dsa_key_fingerprint] unless stub[:ssh_host_dsa_key_fingerprint].nil?
        data['SshHostRsaKeyFingerprint'] = stub[:ssh_host_rsa_key_fingerprint] unless stub[:ssh_host_rsa_key_fingerprint].nil?
        data['SshKeyName'] = stub[:ssh_key_name] unless stub[:ssh_key_name].nil?
        data['StackId'] = stub[:stack_id] unless stub[:stack_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['SubnetId'] = stub[:subnet_id] unless stub[:subnet_id].nil?
        data['Tenancy'] = stub[:tenancy] unless stub[:tenancy].nil?
        data['VirtualizationType'] = stub[:virtualization_type] unless stub[:virtualization_type].nil?
        data
      end
    end

    # Structure Stubber for ReportedOs
    class ReportedOs
      def self.default(visited=[])
        return nil if visited.include?('ReportedOs')
        visited = visited + ['ReportedOs']
        {
          family: 'family',
          name: 'name',
          version: 'version',
        }
      end

      def self.stub(stub)
        stub ||= Types::ReportedOs.new
        data = {}
        data['Family'] = stub[:family] unless stub[:family].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data
      end
    end

    # List Stubber for BlockDeviceMappings
    class BlockDeviceMappings
      def self.default(visited=[])
        return nil if visited.include?('BlockDeviceMappings')
        visited = visited + ['BlockDeviceMappings']
        [
          BlockDeviceMapping.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BlockDeviceMapping.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BlockDeviceMapping
    class BlockDeviceMapping
      def self.default(visited=[])
        return nil if visited.include?('BlockDeviceMapping')
        visited = visited + ['BlockDeviceMapping']
        {
          device_name: 'device_name',
          no_device: 'no_device',
          virtual_name: 'virtual_name',
          ebs: EbsBlockDevice.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BlockDeviceMapping.new
        data = {}
        data['DeviceName'] = stub[:device_name] unless stub[:device_name].nil?
        data['NoDevice'] = stub[:no_device] unless stub[:no_device].nil?
        data['VirtualName'] = stub[:virtual_name] unless stub[:virtual_name].nil?
        data['Ebs'] = EbsBlockDevice.stub(stub[:ebs]) unless stub[:ebs].nil?
        data
      end
    end

    # Structure Stubber for EbsBlockDevice
    class EbsBlockDevice
      def self.default(visited=[])
        return nil if visited.include?('EbsBlockDevice')
        visited = visited + ['EbsBlockDevice']
        {
          snapshot_id: 'snapshot_id',
          iops: 1,
          volume_size: 1,
          volume_type: 'volume_type',
          delete_on_termination: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::EbsBlockDevice.new
        data = {}
        data['SnapshotId'] = stub[:snapshot_id] unless stub[:snapshot_id].nil?
        data['Iops'] = stub[:iops] unless stub[:iops].nil?
        data['VolumeSize'] = stub[:volume_size] unless stub[:volume_size].nil?
        data['VolumeType'] = stub[:volume_type] unless stub[:volume_type].nil?
        data['DeleteOnTermination'] = stub[:delete_on_termination] unless stub[:delete_on_termination].nil?
        data
      end
    end

    # Operation Stubber for DescribeLayers
    class DescribeLayers
      def self.default(visited=[])
        {
          layers: Layers.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Layers'] = Layers.stub(stub[:layers]) unless stub[:layers].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Layers
    class Layers
      def self.default(visited=[])
        return nil if visited.include?('Layers')
        visited = visited + ['Layers']
        [
          Layer.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Layer.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Layer
    class Layer
      def self.default(visited=[])
        return nil if visited.include?('Layer')
        visited = visited + ['Layer']
        {
          arn: 'arn',
          stack_id: 'stack_id',
          layer_id: 'layer_id',
          type: 'type',
          name: 'name',
          shortname: 'shortname',
          attributes: LayerAttributes.default(visited),
          cloud_watch_logs_configuration: CloudWatchLogsConfiguration.default(visited),
          custom_instance_profile_arn: 'custom_instance_profile_arn',
          custom_json: 'custom_json',
          custom_security_group_ids: Strings.default(visited),
          default_security_group_names: Strings.default(visited),
          packages: Strings.default(visited),
          volume_configurations: VolumeConfigurations.default(visited),
          enable_auto_healing: false,
          auto_assign_elastic_ips: false,
          auto_assign_public_ips: false,
          default_recipes: Recipes.default(visited),
          custom_recipes: Recipes.default(visited),
          created_at: 'created_at',
          install_updates_on_boot: false,
          use_ebs_optimized_instances: false,
          lifecycle_event_configuration: LifecycleEventConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Layer.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['StackId'] = stub[:stack_id] unless stub[:stack_id].nil?
        data['LayerId'] = stub[:layer_id] unless stub[:layer_id].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Shortname'] = stub[:shortname] unless stub[:shortname].nil?
        data['Attributes'] = LayerAttributes.stub(stub[:attributes]) unless stub[:attributes].nil?
        data['CloudWatchLogsConfiguration'] = CloudWatchLogsConfiguration.stub(stub[:cloud_watch_logs_configuration]) unless stub[:cloud_watch_logs_configuration].nil?
        data['CustomInstanceProfileArn'] = stub[:custom_instance_profile_arn] unless stub[:custom_instance_profile_arn].nil?
        data['CustomJson'] = stub[:custom_json] unless stub[:custom_json].nil?
        data['CustomSecurityGroupIds'] = Strings.stub(stub[:custom_security_group_ids]) unless stub[:custom_security_group_ids].nil?
        data['DefaultSecurityGroupNames'] = Strings.stub(stub[:default_security_group_names]) unless stub[:default_security_group_names].nil?
        data['Packages'] = Strings.stub(stub[:packages]) unless stub[:packages].nil?
        data['VolumeConfigurations'] = VolumeConfigurations.stub(stub[:volume_configurations]) unless stub[:volume_configurations].nil?
        data['EnableAutoHealing'] = stub[:enable_auto_healing] unless stub[:enable_auto_healing].nil?
        data['AutoAssignElasticIps'] = stub[:auto_assign_elastic_ips] unless stub[:auto_assign_elastic_ips].nil?
        data['AutoAssignPublicIps'] = stub[:auto_assign_public_ips] unless stub[:auto_assign_public_ips].nil?
        data['DefaultRecipes'] = Recipes.stub(stub[:default_recipes]) unless stub[:default_recipes].nil?
        data['CustomRecipes'] = Recipes.stub(stub[:custom_recipes]) unless stub[:custom_recipes].nil?
        data['CreatedAt'] = stub[:created_at] unless stub[:created_at].nil?
        data['InstallUpdatesOnBoot'] = stub[:install_updates_on_boot] unless stub[:install_updates_on_boot].nil?
        data['UseEbsOptimizedInstances'] = stub[:use_ebs_optimized_instances] unless stub[:use_ebs_optimized_instances].nil?
        data['LifecycleEventConfiguration'] = LifecycleEventConfiguration.stub(stub[:lifecycle_event_configuration]) unless stub[:lifecycle_event_configuration].nil?
        data
      end
    end

    # Structure Stubber for LifecycleEventConfiguration
    class LifecycleEventConfiguration
      def self.default(visited=[])
        return nil if visited.include?('LifecycleEventConfiguration')
        visited = visited + ['LifecycleEventConfiguration']
        {
          shutdown: ShutdownEventConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LifecycleEventConfiguration.new
        data = {}
        data['Shutdown'] = ShutdownEventConfiguration.stub(stub[:shutdown]) unless stub[:shutdown].nil?
        data
      end
    end

    # Structure Stubber for ShutdownEventConfiguration
    class ShutdownEventConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ShutdownEventConfiguration')
        visited = visited + ['ShutdownEventConfiguration']
        {
          execution_timeout: 1,
          delay_until_elb_connections_drained: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::ShutdownEventConfiguration.new
        data = {}
        data['ExecutionTimeout'] = stub[:execution_timeout] unless stub[:execution_timeout].nil?
        data['DelayUntilElbConnectionsDrained'] = stub[:delay_until_elb_connections_drained] unless stub[:delay_until_elb_connections_drained].nil?
        data
      end
    end

    # Structure Stubber for Recipes
    class Recipes
      def self.default(visited=[])
        return nil if visited.include?('Recipes')
        visited = visited + ['Recipes']
        {
          setup: Strings.default(visited),
          configure: Strings.default(visited),
          deploy: Strings.default(visited),
          undeploy: Strings.default(visited),
          shutdown: Strings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Recipes.new
        data = {}
        data['Setup'] = Strings.stub(stub[:setup]) unless stub[:setup].nil?
        data['Configure'] = Strings.stub(stub[:configure]) unless stub[:configure].nil?
        data['Deploy'] = Strings.stub(stub[:deploy]) unless stub[:deploy].nil?
        data['Undeploy'] = Strings.stub(stub[:undeploy]) unless stub[:undeploy].nil?
        data['Shutdown'] = Strings.stub(stub[:shutdown]) unless stub[:shutdown].nil?
        data
      end
    end

    # List Stubber for VolumeConfigurations
    class VolumeConfigurations
      def self.default(visited=[])
        return nil if visited.include?('VolumeConfigurations')
        visited = visited + ['VolumeConfigurations']
        [
          VolumeConfiguration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << VolumeConfiguration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for VolumeConfiguration
    class VolumeConfiguration
      def self.default(visited=[])
        return nil if visited.include?('VolumeConfiguration')
        visited = visited + ['VolumeConfiguration']
        {
          mount_point: 'mount_point',
          raid_level: 1,
          number_of_disks: 1,
          size: 1,
          volume_type: 'volume_type',
          iops: 1,
          encrypted: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::VolumeConfiguration.new
        data = {}
        data['MountPoint'] = stub[:mount_point] unless stub[:mount_point].nil?
        data['RaidLevel'] = stub[:raid_level] unless stub[:raid_level].nil?
        data['NumberOfDisks'] = stub[:number_of_disks] unless stub[:number_of_disks].nil?
        data['Size'] = stub[:size] unless stub[:size].nil?
        data['VolumeType'] = stub[:volume_type] unless stub[:volume_type].nil?
        data['Iops'] = stub[:iops] unless stub[:iops].nil?
        data['Encrypted'] = stub[:encrypted] unless stub[:encrypted].nil?
        data
      end
    end

    # Structure Stubber for CloudWatchLogsConfiguration
    class CloudWatchLogsConfiguration
      def self.default(visited=[])
        return nil if visited.include?('CloudWatchLogsConfiguration')
        visited = visited + ['CloudWatchLogsConfiguration']
        {
          enabled: false,
          log_streams: CloudWatchLogsLogStreams.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CloudWatchLogsConfiguration.new
        data = {}
        data['Enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['LogStreams'] = CloudWatchLogsLogStreams.stub(stub[:log_streams]) unless stub[:log_streams].nil?
        data
      end
    end

    # List Stubber for CloudWatchLogsLogStreams
    class CloudWatchLogsLogStreams
      def self.default(visited=[])
        return nil if visited.include?('CloudWatchLogsLogStreams')
        visited = visited + ['CloudWatchLogsLogStreams']
        [
          CloudWatchLogsLogStream.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CloudWatchLogsLogStream.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CloudWatchLogsLogStream
    class CloudWatchLogsLogStream
      def self.default(visited=[])
        return nil if visited.include?('CloudWatchLogsLogStream')
        visited = visited + ['CloudWatchLogsLogStream']
        {
          log_group_name: 'log_group_name',
          datetime_format: 'datetime_format',
          time_zone: 'time_zone',
          file: 'file',
          file_fingerprint_lines: 'file_fingerprint_lines',
          multi_line_start_pattern: 'multi_line_start_pattern',
          initial_position: 'initial_position',
          encoding: 'encoding',
          buffer_duration: 1,
          batch_count: 1,
          batch_size: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::CloudWatchLogsLogStream.new
        data = {}
        data['LogGroupName'] = stub[:log_group_name] unless stub[:log_group_name].nil?
        data['DatetimeFormat'] = stub[:datetime_format] unless stub[:datetime_format].nil?
        data['TimeZone'] = stub[:time_zone] unless stub[:time_zone].nil?
        data['File'] = stub[:file] unless stub[:file].nil?
        data['FileFingerprintLines'] = stub[:file_fingerprint_lines] unless stub[:file_fingerprint_lines].nil?
        data['MultiLineStartPattern'] = stub[:multi_line_start_pattern] unless stub[:multi_line_start_pattern].nil?
        data['InitialPosition'] = stub[:initial_position] unless stub[:initial_position].nil?
        data['Encoding'] = stub[:encoding] unless stub[:encoding].nil?
        data['BufferDuration'] = stub[:buffer_duration] unless stub[:buffer_duration].nil?
        data['BatchCount'] = stub[:batch_count] unless stub[:batch_count].nil?
        data['BatchSize'] = stub[:batch_size] unless stub[:batch_size].nil?
        data
      end
    end

    # Map Stubber for LayerAttributes
    class LayerAttributes
      def self.default(visited=[])
        return nil if visited.include?('LayerAttributes')
        visited = visited + ['LayerAttributes']
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

    # Operation Stubber for DescribeLoadBasedAutoScaling
    class DescribeLoadBasedAutoScaling
      def self.default(visited=[])
        {
          load_based_auto_scaling_configurations: LoadBasedAutoScalingConfigurations.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['LoadBasedAutoScalingConfigurations'] = LoadBasedAutoScalingConfigurations.stub(stub[:load_based_auto_scaling_configurations]) unless stub[:load_based_auto_scaling_configurations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for LoadBasedAutoScalingConfigurations
    class LoadBasedAutoScalingConfigurations
      def self.default(visited=[])
        return nil if visited.include?('LoadBasedAutoScalingConfigurations')
        visited = visited + ['LoadBasedAutoScalingConfigurations']
        [
          LoadBasedAutoScalingConfiguration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << LoadBasedAutoScalingConfiguration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LoadBasedAutoScalingConfiguration
    class LoadBasedAutoScalingConfiguration
      def self.default(visited=[])
        return nil if visited.include?('LoadBasedAutoScalingConfiguration')
        visited = visited + ['LoadBasedAutoScalingConfiguration']
        {
          layer_id: 'layer_id',
          enable: false,
          up_scaling: AutoScalingThresholds.default(visited),
          down_scaling: AutoScalingThresholds.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LoadBasedAutoScalingConfiguration.new
        data = {}
        data['LayerId'] = stub[:layer_id] unless stub[:layer_id].nil?
        data['Enable'] = stub[:enable] unless stub[:enable].nil?
        data['UpScaling'] = AutoScalingThresholds.stub(stub[:up_scaling]) unless stub[:up_scaling].nil?
        data['DownScaling'] = AutoScalingThresholds.stub(stub[:down_scaling]) unless stub[:down_scaling].nil?
        data
      end
    end

    # Structure Stubber for AutoScalingThresholds
    class AutoScalingThresholds
      def self.default(visited=[])
        return nil if visited.include?('AutoScalingThresholds')
        visited = visited + ['AutoScalingThresholds']
        {
          instance_count: 1,
          thresholds_wait_time: 1,
          ignore_metrics_time: 1,
          cpu_threshold: 1.0,
          memory_threshold: 1.0,
          load_threshold: 1.0,
          alarms: Strings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AutoScalingThresholds.new
        data = {}
        data['InstanceCount'] = stub[:instance_count] unless stub[:instance_count].nil?
        data['ThresholdsWaitTime'] = stub[:thresholds_wait_time] unless stub[:thresholds_wait_time].nil?
        data['IgnoreMetricsTime'] = stub[:ignore_metrics_time] unless stub[:ignore_metrics_time].nil?
        data['CpuThreshold'] = Hearth::NumberHelper.serialize(stub[:cpu_threshold])
        data['MemoryThreshold'] = Hearth::NumberHelper.serialize(stub[:memory_threshold])
        data['LoadThreshold'] = Hearth::NumberHelper.serialize(stub[:load_threshold])
        data['Alarms'] = Strings.stub(stub[:alarms]) unless stub[:alarms].nil?
        data
      end
    end

    # Operation Stubber for DescribeMyUserProfile
    class DescribeMyUserProfile
      def self.default(visited=[])
        {
          user_profile: SelfUserProfile.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['UserProfile'] = SelfUserProfile.stub(stub[:user_profile]) unless stub[:user_profile].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for SelfUserProfile
    class SelfUserProfile
      def self.default(visited=[])
        return nil if visited.include?('SelfUserProfile')
        visited = visited + ['SelfUserProfile']
        {
          iam_user_arn: 'iam_user_arn',
          name: 'name',
          ssh_username: 'ssh_username',
          ssh_public_key: 'ssh_public_key',
        }
      end

      def self.stub(stub)
        stub ||= Types::SelfUserProfile.new
        data = {}
        data['IamUserArn'] = stub[:iam_user_arn] unless stub[:iam_user_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['SshUsername'] = stub[:ssh_username] unless stub[:ssh_username].nil?
        data['SshPublicKey'] = stub[:ssh_public_key] unless stub[:ssh_public_key].nil?
        data
      end
    end

    # Operation Stubber for DescribeOperatingSystems
    class DescribeOperatingSystems
      def self.default(visited=[])
        {
          operating_systems: OperatingSystems.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['OperatingSystems'] = OperatingSystems.stub(stub[:operating_systems]) unless stub[:operating_systems].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for OperatingSystems
    class OperatingSystems
      def self.default(visited=[])
        return nil if visited.include?('OperatingSystems')
        visited = visited + ['OperatingSystems']
        [
          OperatingSystem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << OperatingSystem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for OperatingSystem
    class OperatingSystem
      def self.default(visited=[])
        return nil if visited.include?('OperatingSystem')
        visited = visited + ['OperatingSystem']
        {
          name: 'name',
          id: 'id',
          type: 'type',
          configuration_managers: OperatingSystemConfigurationManagers.default(visited),
          reported_name: 'reported_name',
          reported_version: 'reported_version',
          supported: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::OperatingSystem.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['ConfigurationManagers'] = OperatingSystemConfigurationManagers.stub(stub[:configuration_managers]) unless stub[:configuration_managers].nil?
        data['ReportedName'] = stub[:reported_name] unless stub[:reported_name].nil?
        data['ReportedVersion'] = stub[:reported_version] unless stub[:reported_version].nil?
        data['Supported'] = stub[:supported] unless stub[:supported].nil?
        data
      end
    end

    # List Stubber for OperatingSystemConfigurationManagers
    class OperatingSystemConfigurationManagers
      def self.default(visited=[])
        return nil if visited.include?('OperatingSystemConfigurationManagers')
        visited = visited + ['OperatingSystemConfigurationManagers']
        [
          OperatingSystemConfigurationManager.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << OperatingSystemConfigurationManager.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for OperatingSystemConfigurationManager
    class OperatingSystemConfigurationManager
      def self.default(visited=[])
        return nil if visited.include?('OperatingSystemConfigurationManager')
        visited = visited + ['OperatingSystemConfigurationManager']
        {
          name: 'name',
          version: 'version',
        }
      end

      def self.stub(stub)
        stub ||= Types::OperatingSystemConfigurationManager.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data
      end
    end

    # Operation Stubber for DescribePermissions
    class DescribePermissions
      def self.default(visited=[])
        {
          permissions: Permissions.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Permissions'] = Permissions.stub(stub[:permissions]) unless stub[:permissions].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Permissions
    class Permissions
      def self.default(visited=[])
        return nil if visited.include?('Permissions')
        visited = visited + ['Permissions']
        [
          Permission.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Permission.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Permission
    class Permission
      def self.default(visited=[])
        return nil if visited.include?('Permission')
        visited = visited + ['Permission']
        {
          stack_id: 'stack_id',
          iam_user_arn: 'iam_user_arn',
          allow_ssh: false,
          allow_sudo: false,
          level: 'level',
        }
      end

      def self.stub(stub)
        stub ||= Types::Permission.new
        data = {}
        data['StackId'] = stub[:stack_id] unless stub[:stack_id].nil?
        data['IamUserArn'] = stub[:iam_user_arn] unless stub[:iam_user_arn].nil?
        data['AllowSsh'] = stub[:allow_ssh] unless stub[:allow_ssh].nil?
        data['AllowSudo'] = stub[:allow_sudo] unless stub[:allow_sudo].nil?
        data['Level'] = stub[:level] unless stub[:level].nil?
        data
      end
    end

    # Operation Stubber for DescribeRaidArrays
    class DescribeRaidArrays
      def self.default(visited=[])
        {
          raid_arrays: RaidArrays.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RaidArrays'] = RaidArrays.stub(stub[:raid_arrays]) unless stub[:raid_arrays].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for RaidArrays
    class RaidArrays
      def self.default(visited=[])
        return nil if visited.include?('RaidArrays')
        visited = visited + ['RaidArrays']
        [
          RaidArray.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RaidArray.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RaidArray
    class RaidArray
      def self.default(visited=[])
        return nil if visited.include?('RaidArray')
        visited = visited + ['RaidArray']
        {
          raid_array_id: 'raid_array_id',
          instance_id: 'instance_id',
          name: 'name',
          raid_level: 1,
          number_of_disks: 1,
          size: 1,
          device: 'device',
          mount_point: 'mount_point',
          availability_zone: 'availability_zone',
          created_at: 'created_at',
          stack_id: 'stack_id',
          volume_type: 'volume_type',
          iops: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::RaidArray.new
        data = {}
        data['RaidArrayId'] = stub[:raid_array_id] unless stub[:raid_array_id].nil?
        data['InstanceId'] = stub[:instance_id] unless stub[:instance_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['RaidLevel'] = stub[:raid_level] unless stub[:raid_level].nil?
        data['NumberOfDisks'] = stub[:number_of_disks] unless stub[:number_of_disks].nil?
        data['Size'] = stub[:size] unless stub[:size].nil?
        data['Device'] = stub[:device] unless stub[:device].nil?
        data['MountPoint'] = stub[:mount_point] unless stub[:mount_point].nil?
        data['AvailabilityZone'] = stub[:availability_zone] unless stub[:availability_zone].nil?
        data['CreatedAt'] = stub[:created_at] unless stub[:created_at].nil?
        data['StackId'] = stub[:stack_id] unless stub[:stack_id].nil?
        data['VolumeType'] = stub[:volume_type] unless stub[:volume_type].nil?
        data['Iops'] = stub[:iops] unless stub[:iops].nil?
        data
      end
    end

    # Operation Stubber for DescribeRdsDbInstances
    class DescribeRdsDbInstances
      def self.default(visited=[])
        {
          rds_db_instances: RdsDbInstances.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RdsDbInstances'] = RdsDbInstances.stub(stub[:rds_db_instances]) unless stub[:rds_db_instances].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for RdsDbInstances
    class RdsDbInstances
      def self.default(visited=[])
        return nil if visited.include?('RdsDbInstances')
        visited = visited + ['RdsDbInstances']
        [
          RdsDbInstance.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RdsDbInstance.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RdsDbInstance
    class RdsDbInstance
      def self.default(visited=[])
        return nil if visited.include?('RdsDbInstance')
        visited = visited + ['RdsDbInstance']
        {
          rds_db_instance_arn: 'rds_db_instance_arn',
          db_instance_identifier: 'db_instance_identifier',
          db_user: 'db_user',
          db_password: 'db_password',
          region: 'region',
          address: 'address',
          engine: 'engine',
          stack_id: 'stack_id',
          missing_on_rds: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::RdsDbInstance.new
        data = {}
        data['RdsDbInstanceArn'] = stub[:rds_db_instance_arn] unless stub[:rds_db_instance_arn].nil?
        data['DbInstanceIdentifier'] = stub[:db_instance_identifier] unless stub[:db_instance_identifier].nil?
        data['DbUser'] = stub[:db_user] unless stub[:db_user].nil?
        data['DbPassword'] = stub[:db_password] unless stub[:db_password].nil?
        data['Region'] = stub[:region] unless stub[:region].nil?
        data['Address'] = stub[:address] unless stub[:address].nil?
        data['Engine'] = stub[:engine] unless stub[:engine].nil?
        data['StackId'] = stub[:stack_id] unless stub[:stack_id].nil?
        data['MissingOnRds'] = stub[:missing_on_rds] unless stub[:missing_on_rds].nil?
        data
      end
    end

    # Operation Stubber for DescribeServiceErrors
    class DescribeServiceErrors
      def self.default(visited=[])
        {
          service_errors: ServiceErrors.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ServiceErrors'] = ServiceErrors.stub(stub[:service_errors]) unless stub[:service_errors].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ServiceErrors
    class ServiceErrors
      def self.default(visited=[])
        return nil if visited.include?('ServiceErrors')
        visited = visited + ['ServiceErrors']
        [
          ServiceError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ServiceError.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ServiceError
    class ServiceError
      def self.default(visited=[])
        return nil if visited.include?('ServiceError')
        visited = visited + ['ServiceError']
        {
          service_error_id: 'service_error_id',
          stack_id: 'stack_id',
          instance_id: 'instance_id',
          type: 'type',
          message: 'message',
          created_at: 'created_at',
        }
      end

      def self.stub(stub)
        stub ||= Types::ServiceError.new
        data = {}
        data['ServiceErrorId'] = stub[:service_error_id] unless stub[:service_error_id].nil?
        data['StackId'] = stub[:stack_id] unless stub[:stack_id].nil?
        data['InstanceId'] = stub[:instance_id] unless stub[:instance_id].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['CreatedAt'] = stub[:created_at] unless stub[:created_at].nil?
        data
      end
    end

    # Operation Stubber for DescribeStackProvisioningParameters
    class DescribeStackProvisioningParameters
      def self.default(visited=[])
        {
          agent_installer_url: 'agent_installer_url',
          parameters: Parameters.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AgentInstallerUrl'] = stub[:agent_installer_url] unless stub[:agent_installer_url].nil?
        data['Parameters'] = Parameters.stub(stub[:parameters]) unless stub[:parameters].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Map Stubber for Parameters
    class Parameters
      def self.default(visited=[])
        return nil if visited.include?('Parameters')
        visited = visited + ['Parameters']
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

    # Operation Stubber for DescribeStackSummary
    class DescribeStackSummary
      def self.default(visited=[])
        {
          stack_summary: StackSummary.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['StackSummary'] = StackSummary.stub(stub[:stack_summary]) unless stub[:stack_summary].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for StackSummary
    class StackSummary
      def self.default(visited=[])
        return nil if visited.include?('StackSummary')
        visited = visited + ['StackSummary']
        {
          stack_id: 'stack_id',
          name: 'name',
          arn: 'arn',
          layers_count: 1,
          apps_count: 1,
          instances_count: InstancesCount.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::StackSummary.new
        data = {}
        data['StackId'] = stub[:stack_id] unless stub[:stack_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['LayersCount'] = stub[:layers_count] unless stub[:layers_count].nil?
        data['AppsCount'] = stub[:apps_count] unless stub[:apps_count].nil?
        data['InstancesCount'] = InstancesCount.stub(stub[:instances_count]) unless stub[:instances_count].nil?
        data
      end
    end

    # Structure Stubber for InstancesCount
    class InstancesCount
      def self.default(visited=[])
        return nil if visited.include?('InstancesCount')
        visited = visited + ['InstancesCount']
        {
          assigning: 1,
          booting: 1,
          connection_lost: 1,
          deregistering: 1,
          online: 1,
          pending: 1,
          rebooting: 1,
          registered: 1,
          registering: 1,
          requested: 1,
          running_setup: 1,
          setup_failed: 1,
          shutting_down: 1,
          start_failed: 1,
          stop_failed: 1,
          stopped: 1,
          stopping: 1,
          terminated: 1,
          terminating: 1,
          unassigning: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::InstancesCount.new
        data = {}
        data['Assigning'] = stub[:assigning] unless stub[:assigning].nil?
        data['Booting'] = stub[:booting] unless stub[:booting].nil?
        data['ConnectionLost'] = stub[:connection_lost] unless stub[:connection_lost].nil?
        data['Deregistering'] = stub[:deregistering] unless stub[:deregistering].nil?
        data['Online'] = stub[:online] unless stub[:online].nil?
        data['Pending'] = stub[:pending] unless stub[:pending].nil?
        data['Rebooting'] = stub[:rebooting] unless stub[:rebooting].nil?
        data['Registered'] = stub[:registered] unless stub[:registered].nil?
        data['Registering'] = stub[:registering] unless stub[:registering].nil?
        data['Requested'] = stub[:requested] unless stub[:requested].nil?
        data['RunningSetup'] = stub[:running_setup] unless stub[:running_setup].nil?
        data['SetupFailed'] = stub[:setup_failed] unless stub[:setup_failed].nil?
        data['ShuttingDown'] = stub[:shutting_down] unless stub[:shutting_down].nil?
        data['StartFailed'] = stub[:start_failed] unless stub[:start_failed].nil?
        data['StopFailed'] = stub[:stop_failed] unless stub[:stop_failed].nil?
        data['Stopped'] = stub[:stopped] unless stub[:stopped].nil?
        data['Stopping'] = stub[:stopping] unless stub[:stopping].nil?
        data['Terminated'] = stub[:terminated] unless stub[:terminated].nil?
        data['Terminating'] = stub[:terminating] unless stub[:terminating].nil?
        data['Unassigning'] = stub[:unassigning] unless stub[:unassigning].nil?
        data
      end
    end

    # Operation Stubber for DescribeStacks
    class DescribeStacks
      def self.default(visited=[])
        {
          stacks: Stacks.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Stacks'] = Stacks.stub(stub[:stacks]) unless stub[:stacks].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Stacks
    class Stacks
      def self.default(visited=[])
        return nil if visited.include?('Stacks')
        visited = visited + ['Stacks']
        [
          Stack.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stack.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Stack
    class Stack
      def self.default(visited=[])
        return nil if visited.include?('Stack')
        visited = visited + ['Stack']
        {
          stack_id: 'stack_id',
          name: 'name',
          arn: 'arn',
          region: 'region',
          vpc_id: 'vpc_id',
          attributes: StackAttributes.default(visited),
          service_role_arn: 'service_role_arn',
          default_instance_profile_arn: 'default_instance_profile_arn',
          default_os: 'default_os',
          hostname_theme: 'hostname_theme',
          default_availability_zone: 'default_availability_zone',
          default_subnet_id: 'default_subnet_id',
          custom_json: 'custom_json',
          configuration_manager: StackConfigurationManager.default(visited),
          chef_configuration: ChefConfiguration.default(visited),
          use_custom_cookbooks: false,
          use_opsworks_security_groups: false,
          custom_cookbooks_source: Source.default(visited),
          default_ssh_key_name: 'default_ssh_key_name',
          created_at: 'created_at',
          default_root_device_type: 'default_root_device_type',
          agent_version: 'agent_version',
        }
      end

      def self.stub(stub)
        stub ||= Types::Stack.new
        data = {}
        data['StackId'] = stub[:stack_id] unless stub[:stack_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Region'] = stub[:region] unless stub[:region].nil?
        data['VpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data['Attributes'] = StackAttributes.stub(stub[:attributes]) unless stub[:attributes].nil?
        data['ServiceRoleArn'] = stub[:service_role_arn] unless stub[:service_role_arn].nil?
        data['DefaultInstanceProfileArn'] = stub[:default_instance_profile_arn] unless stub[:default_instance_profile_arn].nil?
        data['DefaultOs'] = stub[:default_os] unless stub[:default_os].nil?
        data['HostnameTheme'] = stub[:hostname_theme] unless stub[:hostname_theme].nil?
        data['DefaultAvailabilityZone'] = stub[:default_availability_zone] unless stub[:default_availability_zone].nil?
        data['DefaultSubnetId'] = stub[:default_subnet_id] unless stub[:default_subnet_id].nil?
        data['CustomJson'] = stub[:custom_json] unless stub[:custom_json].nil?
        data['ConfigurationManager'] = StackConfigurationManager.stub(stub[:configuration_manager]) unless stub[:configuration_manager].nil?
        data['ChefConfiguration'] = ChefConfiguration.stub(stub[:chef_configuration]) unless stub[:chef_configuration].nil?
        data['UseCustomCookbooks'] = stub[:use_custom_cookbooks] unless stub[:use_custom_cookbooks].nil?
        data['UseOpsworksSecurityGroups'] = stub[:use_opsworks_security_groups] unless stub[:use_opsworks_security_groups].nil?
        data['CustomCookbooksSource'] = Source.stub(stub[:custom_cookbooks_source]) unless stub[:custom_cookbooks_source].nil?
        data['DefaultSshKeyName'] = stub[:default_ssh_key_name] unless stub[:default_ssh_key_name].nil?
        data['CreatedAt'] = stub[:created_at] unless stub[:created_at].nil?
        data['DefaultRootDeviceType'] = stub[:default_root_device_type] unless stub[:default_root_device_type].nil?
        data['AgentVersion'] = stub[:agent_version] unless stub[:agent_version].nil?
        data
      end
    end

    # Structure Stubber for ChefConfiguration
    class ChefConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ChefConfiguration')
        visited = visited + ['ChefConfiguration']
        {
          manage_berkshelf: false,
          berkshelf_version: 'berkshelf_version',
        }
      end

      def self.stub(stub)
        stub ||= Types::ChefConfiguration.new
        data = {}
        data['ManageBerkshelf'] = stub[:manage_berkshelf] unless stub[:manage_berkshelf].nil?
        data['BerkshelfVersion'] = stub[:berkshelf_version] unless stub[:berkshelf_version].nil?
        data
      end
    end

    # Map Stubber for StackAttributes
    class StackAttributes
      def self.default(visited=[])
        return nil if visited.include?('StackAttributes')
        visited = visited + ['StackAttributes']
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

    # Operation Stubber for DescribeTimeBasedAutoScaling
    class DescribeTimeBasedAutoScaling
      def self.default(visited=[])
        {
          time_based_auto_scaling_configurations: TimeBasedAutoScalingConfigurations.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TimeBasedAutoScalingConfigurations'] = TimeBasedAutoScalingConfigurations.stub(stub[:time_based_auto_scaling_configurations]) unless stub[:time_based_auto_scaling_configurations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TimeBasedAutoScalingConfigurations
    class TimeBasedAutoScalingConfigurations
      def self.default(visited=[])
        return nil if visited.include?('TimeBasedAutoScalingConfigurations')
        visited = visited + ['TimeBasedAutoScalingConfigurations']
        [
          TimeBasedAutoScalingConfiguration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << TimeBasedAutoScalingConfiguration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TimeBasedAutoScalingConfiguration
    class TimeBasedAutoScalingConfiguration
      def self.default(visited=[])
        return nil if visited.include?('TimeBasedAutoScalingConfiguration')
        visited = visited + ['TimeBasedAutoScalingConfiguration']
        {
          instance_id: 'instance_id',
          auto_scaling_schedule: WeeklyAutoScalingSchedule.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TimeBasedAutoScalingConfiguration.new
        data = {}
        data['InstanceId'] = stub[:instance_id] unless stub[:instance_id].nil?
        data['AutoScalingSchedule'] = WeeklyAutoScalingSchedule.stub(stub[:auto_scaling_schedule]) unless stub[:auto_scaling_schedule].nil?
        data
      end
    end

    # Structure Stubber for WeeklyAutoScalingSchedule
    class WeeklyAutoScalingSchedule
      def self.default(visited=[])
        return nil if visited.include?('WeeklyAutoScalingSchedule')
        visited = visited + ['WeeklyAutoScalingSchedule']
        {
          monday: DailyAutoScalingSchedule.default(visited),
          tuesday: DailyAutoScalingSchedule.default(visited),
          wednesday: DailyAutoScalingSchedule.default(visited),
          thursday: DailyAutoScalingSchedule.default(visited),
          friday: DailyAutoScalingSchedule.default(visited),
          saturday: DailyAutoScalingSchedule.default(visited),
          sunday: DailyAutoScalingSchedule.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::WeeklyAutoScalingSchedule.new
        data = {}
        data['Monday'] = DailyAutoScalingSchedule.stub(stub[:monday]) unless stub[:monday].nil?
        data['Tuesday'] = DailyAutoScalingSchedule.stub(stub[:tuesday]) unless stub[:tuesday].nil?
        data['Wednesday'] = DailyAutoScalingSchedule.stub(stub[:wednesday]) unless stub[:wednesday].nil?
        data['Thursday'] = DailyAutoScalingSchedule.stub(stub[:thursday]) unless stub[:thursday].nil?
        data['Friday'] = DailyAutoScalingSchedule.stub(stub[:friday]) unless stub[:friday].nil?
        data['Saturday'] = DailyAutoScalingSchedule.stub(stub[:saturday]) unless stub[:saturday].nil?
        data['Sunday'] = DailyAutoScalingSchedule.stub(stub[:sunday]) unless stub[:sunday].nil?
        data
      end
    end

    # Map Stubber for DailyAutoScalingSchedule
    class DailyAutoScalingSchedule
      def self.default(visited=[])
        return nil if visited.include?('DailyAutoScalingSchedule')
        visited = visited + ['DailyAutoScalingSchedule']
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

    # Operation Stubber for DescribeUserProfiles
    class DescribeUserProfiles
      def self.default(visited=[])
        {
          user_profiles: UserProfiles.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['UserProfiles'] = UserProfiles.stub(stub[:user_profiles]) unless stub[:user_profiles].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for UserProfiles
    class UserProfiles
      def self.default(visited=[])
        return nil if visited.include?('UserProfiles')
        visited = visited + ['UserProfiles']
        [
          UserProfile.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << UserProfile.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for UserProfile
    class UserProfile
      def self.default(visited=[])
        return nil if visited.include?('UserProfile')
        visited = visited + ['UserProfile']
        {
          iam_user_arn: 'iam_user_arn',
          name: 'name',
          ssh_username: 'ssh_username',
          ssh_public_key: 'ssh_public_key',
          allow_self_management: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::UserProfile.new
        data = {}
        data['IamUserArn'] = stub[:iam_user_arn] unless stub[:iam_user_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['SshUsername'] = stub[:ssh_username] unless stub[:ssh_username].nil?
        data['SshPublicKey'] = stub[:ssh_public_key] unless stub[:ssh_public_key].nil?
        data['AllowSelfManagement'] = stub[:allow_self_management] unless stub[:allow_self_management].nil?
        data
      end
    end

    # Operation Stubber for DescribeVolumes
    class DescribeVolumes
      def self.default(visited=[])
        {
          volumes: Volumes.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Volumes'] = Volumes.stub(stub[:volumes]) unless stub[:volumes].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Volumes
    class Volumes
      def self.default(visited=[])
        return nil if visited.include?('Volumes')
        visited = visited + ['Volumes']
        [
          Volume.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Volume.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Volume
    class Volume
      def self.default(visited=[])
        return nil if visited.include?('Volume')
        visited = visited + ['Volume']
        {
          volume_id: 'volume_id',
          ec2_volume_id: 'ec2_volume_id',
          name: 'name',
          raid_array_id: 'raid_array_id',
          instance_id: 'instance_id',
          status: 'status',
          size: 1,
          device: 'device',
          mount_point: 'mount_point',
          region: 'region',
          availability_zone: 'availability_zone',
          volume_type: 'volume_type',
          iops: 1,
          encrypted: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::Volume.new
        data = {}
        data['VolumeId'] = stub[:volume_id] unless stub[:volume_id].nil?
        data['Ec2VolumeId'] = stub[:ec2_volume_id] unless stub[:ec2_volume_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['RaidArrayId'] = stub[:raid_array_id] unless stub[:raid_array_id].nil?
        data['InstanceId'] = stub[:instance_id] unless stub[:instance_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Size'] = stub[:size] unless stub[:size].nil?
        data['Device'] = stub[:device] unless stub[:device].nil?
        data['MountPoint'] = stub[:mount_point] unless stub[:mount_point].nil?
        data['Region'] = stub[:region] unless stub[:region].nil?
        data['AvailabilityZone'] = stub[:availability_zone] unless stub[:availability_zone].nil?
        data['VolumeType'] = stub[:volume_type] unless stub[:volume_type].nil?
        data['Iops'] = stub[:iops] unless stub[:iops].nil?
        data['Encrypted'] = stub[:encrypted] unless stub[:encrypted].nil?
        data
      end
    end

    # Operation Stubber for DetachElasticLoadBalancer
    class DetachElasticLoadBalancer
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisassociateElasticIp
    class DisassociateElasticIp
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetHostnameSuggestion
    class GetHostnameSuggestion
      def self.default(visited=[])
        {
          layer_id: 'layer_id',
          hostname: 'hostname',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['LayerId'] = stub[:layer_id] unless stub[:layer_id].nil?
        data['Hostname'] = stub[:hostname] unless stub[:hostname].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GrantAccess
    class GrantAccess
      def self.default(visited=[])
        {
          temporary_credential: TemporaryCredential.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TemporaryCredential'] = TemporaryCredential.stub(stub[:temporary_credential]) unless stub[:temporary_credential].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for TemporaryCredential
    class TemporaryCredential
      def self.default(visited=[])
        return nil if visited.include?('TemporaryCredential')
        visited = visited + ['TemporaryCredential']
        {
          username: 'username',
          password: 'password',
          valid_for_in_minutes: 1,
          instance_id: 'instance_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::TemporaryCredential.new
        data = {}
        data['Username'] = stub[:username] unless stub[:username].nil?
        data['Password'] = stub[:password] unless stub[:password].nil?
        data['ValidForInMinutes'] = stub[:valid_for_in_minutes] unless stub[:valid_for_in_minutes].nil?
        data['InstanceId'] = stub[:instance_id] unless stub[:instance_id].nil?
        data
      end
    end

    # Operation Stubber for ListTags
    class ListTags
      def self.default(visited=[])
        {
          tags: Tags.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Map Stubber for Tags
    class Tags
      def self.default(visited=[])
        return nil if visited.include?('Tags')
        visited = visited + ['Tags']
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

    # Operation Stubber for RebootInstance
    class RebootInstance
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RegisterEcsCluster
    class RegisterEcsCluster
      def self.default(visited=[])
        {
          ecs_cluster_arn: 'ecs_cluster_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['EcsClusterArn'] = stub[:ecs_cluster_arn] unless stub[:ecs_cluster_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RegisterElasticIp
    class RegisterElasticIp
      def self.default(visited=[])
        {
          elastic_ip: 'elastic_ip',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ElasticIp'] = stub[:elastic_ip] unless stub[:elastic_ip].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RegisterInstance
    class RegisterInstance
      def self.default(visited=[])
        {
          instance_id: 'instance_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['InstanceId'] = stub[:instance_id] unless stub[:instance_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RegisterRdsDbInstance
    class RegisterRdsDbInstance
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RegisterVolume
    class RegisterVolume
      def self.default(visited=[])
        {
          volume_id: 'volume_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['VolumeId'] = stub[:volume_id] unless stub[:volume_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for SetLoadBasedAutoScaling
    class SetLoadBasedAutoScaling
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for SetPermission
    class SetPermission
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for SetTimeBasedAutoScaling
    class SetTimeBasedAutoScaling
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartInstance
    class StartInstance
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartStack
    class StartStack
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopInstance
    class StopInstance
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopStack
    class StopStack
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UnassignInstance
    class UnassignInstance
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UnassignVolume
    class UnassignVolume
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateApp
    class UpdateApp
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateElasticIp
    class UpdateElasticIp
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateInstance
    class UpdateInstance
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateLayer
    class UpdateLayer
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateMyUserProfile
    class UpdateMyUserProfile
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateRdsDbInstance
    class UpdateRdsDbInstance
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateStack
    class UpdateStack
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateUserProfile
    class UpdateUserProfile
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateVolume
    class UpdateVolume
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
