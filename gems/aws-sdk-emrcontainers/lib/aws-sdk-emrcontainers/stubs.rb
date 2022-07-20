# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::EMRContainers
  module Stubs

    # Operation Stubber for CancelJobRun
    class CancelJobRun
      def self.default(visited=[])
        {
          id: 'id',
          virtual_cluster_id: 'virtual_cluster_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['id'] = stub[:id] unless stub[:id].nil?
        data['virtualClusterId'] = stub[:virtual_cluster_id] unless stub[:virtual_cluster_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateManagedEndpoint
    class CreateManagedEndpoint
      def self.default(visited=[])
        {
          id: 'id',
          name: 'name',
          arn: 'arn',
          virtual_cluster_id: 'virtual_cluster_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['virtualClusterId'] = stub[:virtual_cluster_id] unless stub[:virtual_cluster_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateVirtualCluster
    class CreateVirtualCluster
      def self.default(visited=[])
        {
          id: 'id',
          name: 'name',
          arn: 'arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteManagedEndpoint
    class DeleteManagedEndpoint
      def self.default(visited=[])
        {
          id: 'id',
          virtual_cluster_id: 'virtual_cluster_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['id'] = stub[:id] unless stub[:id].nil?
        data['virtualClusterId'] = stub[:virtual_cluster_id] unless stub[:virtual_cluster_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteVirtualCluster
    class DeleteVirtualCluster
      def self.default(visited=[])
        {
          id: 'id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['id'] = stub[:id] unless stub[:id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeJobRun
    class DescribeJobRun
      def self.default(visited=[])
        {
          job_run: JobRun.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['jobRun'] = JobRun.stub(stub[:job_run]) unless stub[:job_run].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for JobRun
    class JobRun
      def self.default(visited=[])
        return nil if visited.include?('JobRun')
        visited = visited + ['JobRun']
        {
          id: 'id',
          name: 'name',
          virtual_cluster_id: 'virtual_cluster_id',
          arn: 'arn',
          state: 'state',
          client_token: 'client_token',
          execution_role_arn: 'execution_role_arn',
          release_label: 'release_label',
          configuration_overrides: ConfigurationOverrides.default(visited),
          job_driver: JobDriver.default(visited),
          created_at: Time.now,
          created_by: 'created_by',
          finished_at: Time.now,
          state_details: 'state_details',
          failure_reason: 'failure_reason',
          tags: TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::JobRun.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['virtualClusterId'] = stub[:virtual_cluster_id] unless stub[:virtual_cluster_id].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data['clientToken'] = stub[:client_token] unless stub[:client_token].nil?
        data['executionRoleArn'] = stub[:execution_role_arn] unless stub[:execution_role_arn].nil?
        data['releaseLabel'] = stub[:release_label] unless stub[:release_label].nil?
        data['configurationOverrides'] = ConfigurationOverrides.stub(stub[:configuration_overrides]) unless stub[:configuration_overrides].nil?
        data['jobDriver'] = JobDriver.stub(stub[:job_driver]) unless stub[:job_driver].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['createdBy'] = stub[:created_by] unless stub[:created_by].nil?
        data['finishedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:finished_at]).to_i unless stub[:finished_at].nil?
        data['stateDetails'] = stub[:state_details] unless stub[:state_details].nil?
        data['failureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
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

    # Structure Stubber for JobDriver
    class JobDriver
      def self.default(visited=[])
        return nil if visited.include?('JobDriver')
        visited = visited + ['JobDriver']
        {
          spark_submit_job_driver: SparkSubmitJobDriver.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::JobDriver.new
        data = {}
        data['sparkSubmitJobDriver'] = SparkSubmitJobDriver.stub(stub[:spark_submit_job_driver]) unless stub[:spark_submit_job_driver].nil?
        data
      end
    end

    # Structure Stubber for SparkSubmitJobDriver
    class SparkSubmitJobDriver
      def self.default(visited=[])
        return nil if visited.include?('SparkSubmitJobDriver')
        visited = visited + ['SparkSubmitJobDriver']
        {
          entry_point: 'entry_point',
          entry_point_arguments: EntryPointArguments.default(visited),
          spark_submit_parameters: 'spark_submit_parameters',
        }
      end

      def self.stub(stub)
        stub ||= Types::SparkSubmitJobDriver.new
        data = {}
        data['entryPoint'] = stub[:entry_point] unless stub[:entry_point].nil?
        data['entryPointArguments'] = EntryPointArguments.stub(stub[:entry_point_arguments]) unless stub[:entry_point_arguments].nil?
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
        data['applicationConfiguration'] = ConfigurationList.stub(stub[:application_configuration]) unless stub[:application_configuration].nil?
        data['monitoringConfiguration'] = MonitoringConfiguration.stub(stub[:monitoring_configuration]) unless stub[:monitoring_configuration].nil?
        data
      end
    end

    # Structure Stubber for MonitoringConfiguration
    class MonitoringConfiguration
      def self.default(visited=[])
        return nil if visited.include?('MonitoringConfiguration')
        visited = visited + ['MonitoringConfiguration']
        {
          persistent_app_ui: 'persistent_app_ui',
          cloud_watch_monitoring_configuration: CloudWatchMonitoringConfiguration.default(visited),
          s3_monitoring_configuration: S3MonitoringConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MonitoringConfiguration.new
        data = {}
        data['persistentAppUI'] = stub[:persistent_app_ui] unless stub[:persistent_app_ui].nil?
        data['cloudWatchMonitoringConfiguration'] = CloudWatchMonitoringConfiguration.stub(stub[:cloud_watch_monitoring_configuration]) unless stub[:cloud_watch_monitoring_configuration].nil?
        data['s3MonitoringConfiguration'] = S3MonitoringConfiguration.stub(stub[:s3_monitoring_configuration]) unless stub[:s3_monitoring_configuration].nil?
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
        }
      end

      def self.stub(stub)
        stub ||= Types::S3MonitoringConfiguration.new
        data = {}
        data['logUri'] = stub[:log_uri] unless stub[:log_uri].nil?
        data
      end
    end

    # Structure Stubber for CloudWatchMonitoringConfiguration
    class CloudWatchMonitoringConfiguration
      def self.default(visited=[])
        return nil if visited.include?('CloudWatchMonitoringConfiguration')
        visited = visited + ['CloudWatchMonitoringConfiguration']
        {
          log_group_name: 'log_group_name',
          log_stream_name_prefix: 'log_stream_name_prefix',
        }
      end

      def self.stub(stub)
        stub ||= Types::CloudWatchMonitoringConfiguration.new
        data = {}
        data['logGroupName'] = stub[:log_group_name] unless stub[:log_group_name].nil?
        data['logStreamNamePrefix'] = stub[:log_stream_name_prefix] unless stub[:log_stream_name_prefix].nil?
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
          data << Configuration.stub(element) unless element.nil?
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
        data['properties'] = SensitivePropertiesMap.stub(stub[:properties]) unless stub[:properties].nil?
        data['configurations'] = ConfigurationList.stub(stub[:configurations]) unless stub[:configurations].nil?
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

    # Operation Stubber for DescribeManagedEndpoint
    class DescribeManagedEndpoint
      def self.default(visited=[])
        {
          endpoint: Endpoint.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['endpoint'] = Endpoint.stub(stub[:endpoint]) unless stub[:endpoint].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Endpoint
    class Endpoint
      def self.default(visited=[])
        return nil if visited.include?('Endpoint')
        visited = visited + ['Endpoint']
        {
          id: 'id',
          name: 'name',
          arn: 'arn',
          virtual_cluster_id: 'virtual_cluster_id',
          type: 'type',
          state: 'state',
          release_label: 'release_label',
          execution_role_arn: 'execution_role_arn',
          certificate_arn: 'certificate_arn',
          certificate_authority: Certificate.default(visited),
          configuration_overrides: ConfigurationOverrides.default(visited),
          server_url: 'server_url',
          created_at: Time.now,
          security_group: 'security_group',
          subnet_ids: SubnetIds.default(visited),
          state_details: 'state_details',
          failure_reason: 'failure_reason',
          tags: TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Endpoint.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['virtualClusterId'] = stub[:virtual_cluster_id] unless stub[:virtual_cluster_id].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data['releaseLabel'] = stub[:release_label] unless stub[:release_label].nil?
        data['executionRoleArn'] = stub[:execution_role_arn] unless stub[:execution_role_arn].nil?
        data['certificateArn'] = stub[:certificate_arn] unless stub[:certificate_arn].nil?
        data['certificateAuthority'] = Certificate.stub(stub[:certificate_authority]) unless stub[:certificate_authority].nil?
        data['configurationOverrides'] = ConfigurationOverrides.stub(stub[:configuration_overrides]) unless stub[:configuration_overrides].nil?
        data['serverUrl'] = stub[:server_url] unless stub[:server_url].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['securityGroup'] = stub[:security_group] unless stub[:security_group].nil?
        data['subnetIds'] = SubnetIds.stub(stub[:subnet_ids]) unless stub[:subnet_ids].nil?
        data['stateDetails'] = stub[:state_details] unless stub[:state_details].nil?
        data['failureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
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

    # Structure Stubber for Certificate
    class Certificate
      def self.default(visited=[])
        return nil if visited.include?('Certificate')
        visited = visited + ['Certificate']
        {
          certificate_arn: 'certificate_arn',
          certificate_data: 'certificate_data',
        }
      end

      def self.stub(stub)
        stub ||= Types::Certificate.new
        data = {}
        data['certificateArn'] = stub[:certificate_arn] unless stub[:certificate_arn].nil?
        data['certificateData'] = stub[:certificate_data] unless stub[:certificate_data].nil?
        data
      end
    end

    # Operation Stubber for DescribeVirtualCluster
    class DescribeVirtualCluster
      def self.default(visited=[])
        {
          virtual_cluster: VirtualCluster.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['virtualCluster'] = VirtualCluster.stub(stub[:virtual_cluster]) unless stub[:virtual_cluster].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for VirtualCluster
    class VirtualCluster
      def self.default(visited=[])
        return nil if visited.include?('VirtualCluster')
        visited = visited + ['VirtualCluster']
        {
          id: 'id',
          name: 'name',
          arn: 'arn',
          state: 'state',
          container_provider: ContainerProvider.default(visited),
          created_at: Time.now,
          tags: TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualCluster.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data['containerProvider'] = ContainerProvider.stub(stub[:container_provider]) unless stub[:container_provider].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Structure Stubber for ContainerProvider
    class ContainerProvider
      def self.default(visited=[])
        return nil if visited.include?('ContainerProvider')
        visited = visited + ['ContainerProvider']
        {
          type: 'type',
          id: 'id',
          info: ContainerInfo.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ContainerProvider.new
        data = {}
        data['type'] = stub[:type] unless stub[:type].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['info'] = ContainerInfo.stub(stub[:info]) unless stub[:info].nil?
        data
      end
    end

    # Union Stubber for ContainerInfo
    class ContainerInfo
      def self.default(visited=[])
        return nil if visited.include?('ContainerInfo')
        visited = visited + ['ContainerInfo']
        {
          eks_info: EksInfo.default(visited),
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::ContainerInfo::EksInfo
          data['eksInfo'] = (EksInfo.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::ContainerInfo"
        end

        data
      end
    end

    # Structure Stubber for EksInfo
    class EksInfo
      def self.default(visited=[])
        return nil if visited.include?('EksInfo')
        visited = visited + ['EksInfo']
        {
          namespace: 'namespace',
        }
      end

      def self.stub(stub)
        stub ||= Types::EksInfo.new
        data = {}
        data['namespace'] = stub[:namespace] unless stub[:namespace].nil?
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
        data['jobRuns'] = JobRuns.stub(stub[:job_runs]) unless stub[:job_runs].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for JobRuns
    class JobRuns
      def self.default(visited=[])
        return nil if visited.include?('JobRuns')
        visited = visited + ['JobRuns']
        [
          JobRun.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << JobRun.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListManagedEndpoints
    class ListManagedEndpoints
      def self.default(visited=[])
        {
          endpoints: Endpoints.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['endpoints'] = Endpoints.stub(stub[:endpoints]) unless stub[:endpoints].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for Endpoints
    class Endpoints
      def self.default(visited=[])
        return nil if visited.include?('Endpoints')
        visited = visited + ['Endpoints']
        [
          Endpoint.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Endpoint.stub(element) unless element.nil?
        end
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
        data['tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListVirtualClusters
    class ListVirtualClusters
      def self.default(visited=[])
        {
          virtual_clusters: VirtualClusters.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['virtualClusters'] = VirtualClusters.stub(stub[:virtual_clusters]) unless stub[:virtual_clusters].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for VirtualClusters
    class VirtualClusters
      def self.default(visited=[])
        return nil if visited.include?('VirtualClusters')
        visited = visited + ['VirtualClusters']
        [
          VirtualCluster.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << VirtualCluster.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for StartJobRun
    class StartJobRun
      def self.default(visited=[])
        {
          id: 'id',
          name: 'name',
          arn: 'arn',
          virtual_cluster_id: 'virtual_cluster_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['virtualClusterId'] = stub[:virtual_cluster_id] unless stub[:virtual_cluster_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
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
  end
end
