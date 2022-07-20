# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::EMRContainers
  module Parsers

    # Operation Parser for CancelJobRun
    class CancelJobRun
      def self.parse(http_resp)
        data = Types::CancelJobRunOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.id = map['id']
        data.virtual_cluster_id = map['virtualClusterId']
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

    # Operation Parser for CreateManagedEndpoint
    class CreateManagedEndpoint
      def self.parse(http_resp)
        data = Types::CreateManagedEndpointOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.id = map['id']
        data.name = map['name']
        data.arn = map['arn']
        data.virtual_cluster_id = map['virtualClusterId']
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

    # Operation Parser for CreateVirtualCluster
    class CreateVirtualCluster
      def self.parse(http_resp)
        data = Types::CreateVirtualClusterOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.id = map['id']
        data.name = map['name']
        data.arn = map['arn']
        data
      end
    end

    # Operation Parser for DeleteManagedEndpoint
    class DeleteManagedEndpoint
      def self.parse(http_resp)
        data = Types::DeleteManagedEndpointOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.id = map['id']
        data.virtual_cluster_id = map['virtualClusterId']
        data
      end
    end

    # Operation Parser for DeleteVirtualCluster
    class DeleteVirtualCluster
      def self.parse(http_resp)
        data = Types::DeleteVirtualClusterOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.id = map['id']
        data
      end
    end

    # Operation Parser for DescribeJobRun
    class DescribeJobRun
      def self.parse(http_resp)
        data = Types::DescribeJobRunOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.job_run = (JobRun.parse(map['jobRun']) unless map['jobRun'].nil?)
        data
      end
    end

    class JobRun
      def self.parse(map)
        data = Types::JobRun.new
        data.id = map['id']
        data.name = map['name']
        data.virtual_cluster_id = map['virtualClusterId']
        data.arn = map['arn']
        data.state = map['state']
        data.client_token = map['clientToken']
        data.execution_role_arn = map['executionRoleArn']
        data.release_label = map['releaseLabel']
        data.configuration_overrides = (ConfigurationOverrides.parse(map['configurationOverrides']) unless map['configurationOverrides'].nil?)
        data.job_driver = (JobDriver.parse(map['jobDriver']) unless map['jobDriver'].nil?)
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.created_by = map['createdBy']
        data.finished_at = Time.at(map['finishedAt'].to_i) if map['finishedAt']
        data.state_details = map['stateDetails']
        data.failure_reason = map['failureReason']
        data.tags = (TagMap.parse(map['tags']) unless map['tags'].nil?)
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

    class JobDriver
      def self.parse(map)
        data = Types::JobDriver.new
        data.spark_submit_job_driver = (SparkSubmitJobDriver.parse(map['sparkSubmitJobDriver']) unless map['sparkSubmitJobDriver'].nil?)
        return data
      end
    end

    class SparkSubmitJobDriver
      def self.parse(map)
        data = Types::SparkSubmitJobDriver.new
        data.entry_point = map['entryPoint']
        data.entry_point_arguments = (EntryPointArguments.parse(map['entryPointArguments']) unless map['entryPointArguments'].nil?)
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
        data.application_configuration = (ConfigurationList.parse(map['applicationConfiguration']) unless map['applicationConfiguration'].nil?)
        data.monitoring_configuration = (MonitoringConfiguration.parse(map['monitoringConfiguration']) unless map['monitoringConfiguration'].nil?)
        return data
      end
    end

    class MonitoringConfiguration
      def self.parse(map)
        data = Types::MonitoringConfiguration.new
        data.persistent_app_ui = map['persistentAppUI']
        data.cloud_watch_monitoring_configuration = (CloudWatchMonitoringConfiguration.parse(map['cloudWatchMonitoringConfiguration']) unless map['cloudWatchMonitoringConfiguration'].nil?)
        data.s3_monitoring_configuration = (S3MonitoringConfiguration.parse(map['s3MonitoringConfiguration']) unless map['s3MonitoringConfiguration'].nil?)
        return data
      end
    end

    class S3MonitoringConfiguration
      def self.parse(map)
        data = Types::S3MonitoringConfiguration.new
        data.log_uri = map['logUri']
        return data
      end
    end

    class CloudWatchMonitoringConfiguration
      def self.parse(map)
        data = Types::CloudWatchMonitoringConfiguration.new
        data.log_group_name = map['logGroupName']
        data.log_stream_name_prefix = map['logStreamNamePrefix']
        return data
      end
    end

    class ConfigurationList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Configuration.parse(value) unless value.nil?
        end
        data
      end
    end

    class Configuration
      def self.parse(map)
        data = Types::Configuration.new
        data.classification = map['classification']
        data.properties = (SensitivePropertiesMap.parse(map['properties']) unless map['properties'].nil?)
        data.configurations = (ConfigurationList.parse(map['configurations']) unless map['configurations'].nil?)
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

    # Operation Parser for DescribeManagedEndpoint
    class DescribeManagedEndpoint
      def self.parse(http_resp)
        data = Types::DescribeManagedEndpointOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.endpoint = (Endpoint.parse(map['endpoint']) unless map['endpoint'].nil?)
        data
      end
    end

    class Endpoint
      def self.parse(map)
        data = Types::Endpoint.new
        data.id = map['id']
        data.name = map['name']
        data.arn = map['arn']
        data.virtual_cluster_id = map['virtualClusterId']
        data.type = map['type']
        data.state = map['state']
        data.release_label = map['releaseLabel']
        data.execution_role_arn = map['executionRoleArn']
        data.certificate_arn = map['certificateArn']
        data.certificate_authority = (Certificate.parse(map['certificateAuthority']) unless map['certificateAuthority'].nil?)
        data.configuration_overrides = (ConfigurationOverrides.parse(map['configurationOverrides']) unless map['configurationOverrides'].nil?)
        data.server_url = map['serverUrl']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.security_group = map['securityGroup']
        data.subnet_ids = (SubnetIds.parse(map['subnetIds']) unless map['subnetIds'].nil?)
        data.state_details = map['stateDetails']
        data.failure_reason = map['failureReason']
        data.tags = (TagMap.parse(map['tags']) unless map['tags'].nil?)
        return data
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

    class Certificate
      def self.parse(map)
        data = Types::Certificate.new
        data.certificate_arn = map['certificateArn']
        data.certificate_data = map['certificateData']
        return data
      end
    end

    # Operation Parser for DescribeVirtualCluster
    class DescribeVirtualCluster
      def self.parse(http_resp)
        data = Types::DescribeVirtualClusterOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.virtual_cluster = (VirtualCluster.parse(map['virtualCluster']) unless map['virtualCluster'].nil?)
        data
      end
    end

    class VirtualCluster
      def self.parse(map)
        data = Types::VirtualCluster.new
        data.id = map['id']
        data.name = map['name']
        data.arn = map['arn']
        data.state = map['state']
        data.container_provider = (ContainerProvider.parse(map['containerProvider']) unless map['containerProvider'].nil?)
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.tags = (TagMap.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    class ContainerProvider
      def self.parse(map)
        data = Types::ContainerProvider.new
        data.type = map['type']
        data.id = map['id']
        data.info = (ContainerInfo.parse(map['info']) unless map['info'].nil?)
        return data
      end
    end

    class ContainerInfo
      def self.parse(map)
        key, value = map.flatten
        case key
        when 'eksInfo'
          value = (EksInfo.parse(value) unless value.nil?)
          Types::ContainerInfo::EksInfo.new(value) if value
        else
          Types::ContainerInfo::Unknown.new({name: key, value: value})
        end
      end
    end

    class EksInfo
      def self.parse(map)
        data = Types::EksInfo.new
        data.namespace = map['namespace']
        return data
      end
    end

    # Operation Parser for ListJobRuns
    class ListJobRuns
      def self.parse(http_resp)
        data = Types::ListJobRunsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.job_runs = (JobRuns.parse(map['jobRuns']) unless map['jobRuns'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class JobRuns
      def self.parse(list)
        data = []
        list.map do |value|
          data << JobRun.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListManagedEndpoints
    class ListManagedEndpoints
      def self.parse(http_resp)
        data = Types::ListManagedEndpointsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.endpoints = (Endpoints.parse(map['endpoints']) unless map['endpoints'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class Endpoints
      def self.parse(list)
        data = []
        list.map do |value|
          data << Endpoint.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (TagMap.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for ListVirtualClusters
    class ListVirtualClusters
      def self.parse(http_resp)
        data = Types::ListVirtualClustersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.virtual_clusters = (VirtualClusters.parse(map['virtualClusters']) unless map['virtualClusters'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class VirtualClusters
      def self.parse(list)
        data = []
        list.map do |value|
          data << VirtualCluster.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for StartJobRun
    class StartJobRun
      def self.parse(http_resp)
        data = Types::StartJobRunOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.id = map['id']
        data.name = map['name']
        data.arn = map['arn']
        data.virtual_cluster_id = map['virtualClusterId']
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
  end
end
