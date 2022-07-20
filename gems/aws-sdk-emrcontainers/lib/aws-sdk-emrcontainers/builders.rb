# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::EMRContainers
  module Builders

    # Operation Builder for CancelJobRun
    class CancelJobRun
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        if input[:virtual_cluster_id].to_s.empty?
          raise ArgumentError, "HTTP label :virtual_cluster_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/virtualclusters/%<virtualClusterId>s/jobruns/%<id>s',
            id: Hearth::HTTP.uri_escape(input[:id].to_s),
            virtualClusterId: Hearth::HTTP.uri_escape(input[:virtual_cluster_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for CreateManagedEndpoint
    class CreateManagedEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:virtual_cluster_id].to_s.empty?
          raise ArgumentError, "HTTP label :virtual_cluster_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/virtualclusters/%<virtualClusterId>s/endpoints',
            virtualClusterId: Hearth::HTTP.uri_escape(input[:virtual_cluster_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['type'] = input[:type] unless input[:type].nil?
        data['releaseLabel'] = input[:release_label] unless input[:release_label].nil?
        data['executionRoleArn'] = input[:execution_role_arn] unless input[:execution_role_arn].nil?
        data['certificateArn'] = input[:certificate_arn] unless input[:certificate_arn].nil?
        data['configurationOverrides'] = ConfigurationOverrides.build(input[:configuration_overrides]) unless input[:configuration_overrides].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
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

    # Structure Builder for ConfigurationOverrides
    class ConfigurationOverrides
      def self.build(input)
        data = {}
        data['applicationConfiguration'] = ConfigurationList.build(input[:application_configuration]) unless input[:application_configuration].nil?
        data['monitoringConfiguration'] = MonitoringConfiguration.build(input[:monitoring_configuration]) unless input[:monitoring_configuration].nil?
        data
      end
    end

    # Structure Builder for MonitoringConfiguration
    class MonitoringConfiguration
      def self.build(input)
        data = {}
        data['persistentAppUI'] = input[:persistent_app_ui] unless input[:persistent_app_ui].nil?
        data['cloudWatchMonitoringConfiguration'] = CloudWatchMonitoringConfiguration.build(input[:cloud_watch_monitoring_configuration]) unless input[:cloud_watch_monitoring_configuration].nil?
        data['s3MonitoringConfiguration'] = S3MonitoringConfiguration.build(input[:s3_monitoring_configuration]) unless input[:s3_monitoring_configuration].nil?
        data
      end
    end

    # Structure Builder for S3MonitoringConfiguration
    class S3MonitoringConfiguration
      def self.build(input)
        data = {}
        data['logUri'] = input[:log_uri] unless input[:log_uri].nil?
        data
      end
    end

    # Structure Builder for CloudWatchMonitoringConfiguration
    class CloudWatchMonitoringConfiguration
      def self.build(input)
        data = {}
        data['logGroupName'] = input[:log_group_name] unless input[:log_group_name].nil?
        data['logStreamNamePrefix'] = input[:log_stream_name_prefix] unless input[:log_stream_name_prefix].nil?
        data
      end
    end

    # List Builder for ConfigurationList
    class ConfigurationList
      def self.build(input)
        data = []
        input.each do |element|
          data << Configuration.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Configuration
    class Configuration
      def self.build(input)
        data = {}
        data['classification'] = input[:classification] unless input[:classification].nil?
        data['properties'] = SensitivePropertiesMap.build(input[:properties]) unless input[:properties].nil?
        data['configurations'] = ConfigurationList.build(input[:configurations]) unless input[:configurations].nil?
        data
      end
    end

    # Map Builder for SensitivePropertiesMap
    class SensitivePropertiesMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for CreateVirtualCluster
    class CreateVirtualCluster
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/virtualclusters')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['containerProvider'] = ContainerProvider.build(input[:container_provider]) unless input[:container_provider].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        data['tags'] = TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ContainerProvider
    class ContainerProvider
      def self.build(input)
        data = {}
        data['type'] = input[:type] unless input[:type].nil?
        data['id'] = input[:id] unless input[:id].nil?
        data['info'] = ContainerInfo.build(input[:info]) unless input[:info].nil?
        data
      end
    end

    # Structure Builder for ContainerInfo
    class ContainerInfo
      def self.build(input)
        data = {}
        case input
        when Types::ContainerInfo::EksInfo
          data['eksInfo'] = (EksInfo.build(input) unless input.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::ContainerInfo"
        end

        data
      end
    end

    # Structure Builder for EksInfo
    class EksInfo
      def self.build(input)
        data = {}
        data['namespace'] = input[:namespace] unless input[:namespace].nil?
        data
      end
    end

    # Operation Builder for DeleteManagedEndpoint
    class DeleteManagedEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        if input[:virtual_cluster_id].to_s.empty?
          raise ArgumentError, "HTTP label :virtual_cluster_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/virtualclusters/%<virtualClusterId>s/endpoints/%<id>s',
            id: Hearth::HTTP.uri_escape(input[:id].to_s),
            virtualClusterId: Hearth::HTTP.uri_escape(input[:virtual_cluster_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteVirtualCluster
    class DeleteVirtualCluster
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/virtualclusters/%<id>s',
            id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeJobRun
    class DescribeJobRun
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        if input[:virtual_cluster_id].to_s.empty?
          raise ArgumentError, "HTTP label :virtual_cluster_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/virtualclusters/%<virtualClusterId>s/jobruns/%<id>s',
            id: Hearth::HTTP.uri_escape(input[:id].to_s),
            virtualClusterId: Hearth::HTTP.uri_escape(input[:virtual_cluster_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeManagedEndpoint
    class DescribeManagedEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        if input[:virtual_cluster_id].to_s.empty?
          raise ArgumentError, "HTTP label :virtual_cluster_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/virtualclusters/%<virtualClusterId>s/endpoints/%<id>s',
            id: Hearth::HTTP.uri_escape(input[:id].to_s),
            virtualClusterId: Hearth::HTTP.uri_escape(input[:virtual_cluster_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeVirtualCluster
    class DescribeVirtualCluster
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/virtualclusters/%<id>s',
            id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListJobRuns
    class ListJobRuns
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:virtual_cluster_id].to_s.empty?
          raise ArgumentError, "HTTP label :virtual_cluster_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/virtualclusters/%<virtualClusterId>s/jobruns',
            virtualClusterId: Hearth::HTTP.uri_escape(input[:virtual_cluster_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['createdBefore'] = Hearth::TimeHelper.to_date_time(input[:created_before]) unless input[:created_before].nil?
        params['createdAfter'] = Hearth::TimeHelper.to_date_time(input[:created_after]) unless input[:created_after].nil?
        params['name'] = input[:name].to_s unless input[:name].nil?
        unless input[:states].nil? || input[:states].empty?
          params['states'] = input[:states].map do |value|
            value.to_s unless value.nil?
          end
        end
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # List Builder for JobRunStates
    class JobRunStates
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListManagedEndpoints
    class ListManagedEndpoints
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:virtual_cluster_id].to_s.empty?
          raise ArgumentError, "HTTP label :virtual_cluster_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/virtualclusters/%<virtualClusterId>s/endpoints',
            virtualClusterId: Hearth::HTTP.uri_escape(input[:virtual_cluster_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['createdBefore'] = Hearth::TimeHelper.to_date_time(input[:created_before]) unless input[:created_before].nil?
        params['createdAfter'] = Hearth::TimeHelper.to_date_time(input[:created_after]) unless input[:created_after].nil?
        unless input[:types].nil? || input[:types].empty?
          params['types'] = input[:types].map do |value|
            value.to_s unless value.nil?
          end
        end
        unless input[:states].nil? || input[:states].empty?
          params['states'] = input[:states].map do |value|
            value.to_s unless value.nil?
          end
        end
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # List Builder for EndpointStates
    class EndpointStates
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for EndpointTypes
    class EndpointTypes
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
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

    # Operation Builder for ListVirtualClusters
    class ListVirtualClusters
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/virtualclusters')
        params = Hearth::Query::ParamList.new
        params['containerProviderId'] = input[:container_provider_id].to_s unless input[:container_provider_id].nil?
        params['containerProviderType'] = input[:container_provider_type].to_s unless input[:container_provider_type].nil?
        params['createdAfter'] = Hearth::TimeHelper.to_date_time(input[:created_after]) unless input[:created_after].nil?
        params['createdBefore'] = Hearth::TimeHelper.to_date_time(input[:created_before]) unless input[:created_before].nil?
        unless input[:states].nil? || input[:states].empty?
          params['states'] = input[:states].map do |value|
            value.to_s unless value.nil?
          end
        end
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # List Builder for VirtualClusterStates
    class VirtualClusterStates
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for StartJobRun
    class StartJobRun
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:virtual_cluster_id].to_s.empty?
          raise ArgumentError, "HTTP label :virtual_cluster_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/virtualclusters/%<virtualClusterId>s/jobruns',
            virtualClusterId: Hearth::HTTP.uri_escape(input[:virtual_cluster_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        data['executionRoleArn'] = input[:execution_role_arn] unless input[:execution_role_arn].nil?
        data['releaseLabel'] = input[:release_label] unless input[:release_label].nil?
        data['jobDriver'] = JobDriver.build(input[:job_driver]) unless input[:job_driver].nil?
        data['configurationOverrides'] = ConfigurationOverrides.build(input[:configuration_overrides]) unless input[:configuration_overrides].nil?
        data['tags'] = TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for JobDriver
    class JobDriver
      def self.build(input)
        data = {}
        data['sparkSubmitJobDriver'] = SparkSubmitJobDriver.build(input[:spark_submit_job_driver]) unless input[:spark_submit_job_driver].nil?
        data
      end
    end

    # Structure Builder for SparkSubmitJobDriver
    class SparkSubmitJobDriver
      def self.build(input)
        data = {}
        data['entryPoint'] = input[:entry_point] unless input[:entry_point].nil?
        data['entryPointArguments'] = EntryPointArguments.build(input[:entry_point_arguments]) unless input[:entry_point_arguments].nil?
        data['sparkSubmitParameters'] = input[:spark_submit_parameters] unless input[:spark_submit_parameters].nil?
        data
      end
    end

    # List Builder for EntryPointArguments
    class EntryPointArguments
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
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
  end
end
