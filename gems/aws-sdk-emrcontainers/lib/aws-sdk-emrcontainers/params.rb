# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::EMRContainers
  module Params

    module CancelJobRunInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelJobRunInput, context: context)
        type = Types::CancelJobRunInput.new
        type.id = params[:id]
        type.virtual_cluster_id = params[:virtual_cluster_id]
        type
      end
    end

    module CancelJobRunOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelJobRunOutput, context: context)
        type = Types::CancelJobRunOutput.new
        type.id = params[:id]
        type.virtual_cluster_id = params[:virtual_cluster_id]
        type
      end
    end

    module Certificate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Certificate, context: context)
        type = Types::Certificate.new
        type.certificate_arn = params[:certificate_arn]
        type.certificate_data = params[:certificate_data]
        type
      end
    end

    module CloudWatchMonitoringConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloudWatchMonitoringConfiguration, context: context)
        type = Types::CloudWatchMonitoringConfiguration.new
        type.log_group_name = params[:log_group_name]
        type.log_stream_name_prefix = params[:log_stream_name_prefix]
        type
      end
    end

    module Configuration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Configuration, context: context)
        type = Types::Configuration.new
        type.classification = params[:classification]
        type.properties = SensitivePropertiesMap.build(params[:properties], context: "#{context}[:properties]") unless params[:properties].nil?
        type.configurations = ConfigurationList.build(params[:configurations], context: "#{context}[:configurations]") unless params[:configurations].nil?
        type
      end
    end

    module ConfigurationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Configuration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConfigurationOverrides
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfigurationOverrides, context: context)
        type = Types::ConfigurationOverrides.new
        type.application_configuration = ConfigurationList.build(params[:application_configuration], context: "#{context}[:application_configuration]") unless params[:application_configuration].nil?
        type.monitoring_configuration = MonitoringConfiguration.build(params[:monitoring_configuration], context: "#{context}[:monitoring_configuration]") unless params[:monitoring_configuration].nil?
        type
      end
    end

    module ContainerInfo
      def self.build(params, context: '')
        return params if params.is_a?(Types::ContainerInfo)
        Hearth::Validator.validate!(params, ::Hash, Types::ContainerInfo, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :eks_info
          Types::ContainerInfo::EksInfo.new(
            (EksInfo.build(params[:eks_info], context: "#{context}[:eks_info]") unless params[:eks_info].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :eks_info set"
        end
      end
    end

    module ContainerProvider
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContainerProvider, context: context)
        type = Types::ContainerProvider.new
        type.type = params[:type]
        type.id = params[:id]
        type.info = ContainerInfo.build(params[:info], context: "#{context}[:info]") unless params[:info].nil?
        type
      end
    end

    module CreateManagedEndpointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateManagedEndpointInput, context: context)
        type = Types::CreateManagedEndpointInput.new
        type.name = params[:name]
        type.virtual_cluster_id = params[:virtual_cluster_id]
        type.type = params[:type]
        type.release_label = params[:release_label]
        type.execution_role_arn = params[:execution_role_arn]
        type.certificate_arn = params[:certificate_arn]
        type.configuration_overrides = ConfigurationOverrides.build(params[:configuration_overrides], context: "#{context}[:configuration_overrides]") unless params[:configuration_overrides].nil?
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateManagedEndpointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateManagedEndpointOutput, context: context)
        type = Types::CreateManagedEndpointOutput.new
        type.id = params[:id]
        type.name = params[:name]
        type.arn = params[:arn]
        type.virtual_cluster_id = params[:virtual_cluster_id]
        type
      end
    end

    module CreateVirtualClusterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateVirtualClusterInput, context: context)
        type = Types::CreateVirtualClusterInput.new
        type.name = params[:name]
        type.container_provider = ContainerProvider.build(params[:container_provider], context: "#{context}[:container_provider]") unless params[:container_provider].nil?
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateVirtualClusterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateVirtualClusterOutput, context: context)
        type = Types::CreateVirtualClusterOutput.new
        type.id = params[:id]
        type.name = params[:name]
        type.arn = params[:arn]
        type
      end
    end

    module DeleteManagedEndpointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteManagedEndpointInput, context: context)
        type = Types::DeleteManagedEndpointInput.new
        type.id = params[:id]
        type.virtual_cluster_id = params[:virtual_cluster_id]
        type
      end
    end

    module DeleteManagedEndpointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteManagedEndpointOutput, context: context)
        type = Types::DeleteManagedEndpointOutput.new
        type.id = params[:id]
        type.virtual_cluster_id = params[:virtual_cluster_id]
        type
      end
    end

    module DeleteVirtualClusterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVirtualClusterInput, context: context)
        type = Types::DeleteVirtualClusterInput.new
        type.id = params[:id]
        type
      end
    end

    module DeleteVirtualClusterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVirtualClusterOutput, context: context)
        type = Types::DeleteVirtualClusterOutput.new
        type.id = params[:id]
        type
      end
    end

    module DescribeJobRunInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeJobRunInput, context: context)
        type = Types::DescribeJobRunInput.new
        type.id = params[:id]
        type.virtual_cluster_id = params[:virtual_cluster_id]
        type
      end
    end

    module DescribeJobRunOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeJobRunOutput, context: context)
        type = Types::DescribeJobRunOutput.new
        type.job_run = JobRun.build(params[:job_run], context: "#{context}[:job_run]") unless params[:job_run].nil?
        type
      end
    end

    module DescribeManagedEndpointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeManagedEndpointInput, context: context)
        type = Types::DescribeManagedEndpointInput.new
        type.id = params[:id]
        type.virtual_cluster_id = params[:virtual_cluster_id]
        type
      end
    end

    module DescribeManagedEndpointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeManagedEndpointOutput, context: context)
        type = Types::DescribeManagedEndpointOutput.new
        type.endpoint = Endpoint.build(params[:endpoint], context: "#{context}[:endpoint]") unless params[:endpoint].nil?
        type
      end
    end

    module DescribeVirtualClusterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeVirtualClusterInput, context: context)
        type = Types::DescribeVirtualClusterInput.new
        type.id = params[:id]
        type
      end
    end

    module DescribeVirtualClusterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeVirtualClusterOutput, context: context)
        type = Types::DescribeVirtualClusterOutput.new
        type.virtual_cluster = VirtualCluster.build(params[:virtual_cluster], context: "#{context}[:virtual_cluster]") unless params[:virtual_cluster].nil?
        type
      end
    end

    module EksInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EksInfo, context: context)
        type = Types::EksInfo.new
        type.namespace = params[:namespace]
        type
      end
    end

    module Endpoint
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Endpoint, context: context)
        type = Types::Endpoint.new
        type.id = params[:id]
        type.name = params[:name]
        type.arn = params[:arn]
        type.virtual_cluster_id = params[:virtual_cluster_id]
        type.type = params[:type]
        type.state = params[:state]
        type.release_label = params[:release_label]
        type.execution_role_arn = params[:execution_role_arn]
        type.certificate_arn = params[:certificate_arn]
        type.certificate_authority = Certificate.build(params[:certificate_authority], context: "#{context}[:certificate_authority]") unless params[:certificate_authority].nil?
        type.configuration_overrides = ConfigurationOverrides.build(params[:configuration_overrides], context: "#{context}[:configuration_overrides]") unless params[:configuration_overrides].nil?
        type.server_url = params[:server_url]
        type.created_at = params[:created_at]
        type.security_group = params[:security_group]
        type.subnet_ids = SubnetIds.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.state_details = params[:state_details]
        type.failure_reason = params[:failure_reason]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module EndpointStates
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module EndpointTypes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Endpoints
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Endpoint.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EntryPointArguments
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module InternalServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        type.message = params[:message]
        type
      end
    end

    module JobDriver
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobDriver, context: context)
        type = Types::JobDriver.new
        type.spark_submit_job_driver = SparkSubmitJobDriver.build(params[:spark_submit_job_driver], context: "#{context}[:spark_submit_job_driver]") unless params[:spark_submit_job_driver].nil?
        type
      end
    end

    module JobRun
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobRun, context: context)
        type = Types::JobRun.new
        type.id = params[:id]
        type.name = params[:name]
        type.virtual_cluster_id = params[:virtual_cluster_id]
        type.arn = params[:arn]
        type.state = params[:state]
        type.client_token = params[:client_token]
        type.execution_role_arn = params[:execution_role_arn]
        type.release_label = params[:release_label]
        type.configuration_overrides = ConfigurationOverrides.build(params[:configuration_overrides], context: "#{context}[:configuration_overrides]") unless params[:configuration_overrides].nil?
        type.job_driver = JobDriver.build(params[:job_driver], context: "#{context}[:job_driver]") unless params[:job_driver].nil?
        type.created_at = params[:created_at]
        type.created_by = params[:created_by]
        type.finished_at = params[:finished_at]
        type.state_details = params[:state_details]
        type.failure_reason = params[:failure_reason]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module JobRunStates
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module JobRuns
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << JobRun.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListJobRunsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListJobRunsInput, context: context)
        type = Types::ListJobRunsInput.new
        type.virtual_cluster_id = params[:virtual_cluster_id]
        type.created_before = params[:created_before]
        type.created_after = params[:created_after]
        type.name = params[:name]
        type.states = JobRunStates.build(params[:states], context: "#{context}[:states]") unless params[:states].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListJobRunsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListJobRunsOutput, context: context)
        type = Types::ListJobRunsOutput.new
        type.job_runs = JobRuns.build(params[:job_runs], context: "#{context}[:job_runs]") unless params[:job_runs].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListManagedEndpointsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListManagedEndpointsInput, context: context)
        type = Types::ListManagedEndpointsInput.new
        type.virtual_cluster_id = params[:virtual_cluster_id]
        type.created_before = params[:created_before]
        type.created_after = params[:created_after]
        type.types = EndpointTypes.build(params[:types], context: "#{context}[:types]") unless params[:types].nil?
        type.states = EndpointStates.build(params[:states], context: "#{context}[:states]") unless params[:states].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListManagedEndpointsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListManagedEndpointsOutput, context: context)
        type = Types::ListManagedEndpointsOutput.new
        type.endpoints = Endpoints.build(params[:endpoints], context: "#{context}[:endpoints]") unless params[:endpoints].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ListVirtualClustersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListVirtualClustersInput, context: context)
        type = Types::ListVirtualClustersInput.new
        type.container_provider_id = params[:container_provider_id]
        type.container_provider_type = params[:container_provider_type]
        type.created_after = params[:created_after]
        type.created_before = params[:created_before]
        type.states = VirtualClusterStates.build(params[:states], context: "#{context}[:states]") unless params[:states].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListVirtualClustersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListVirtualClustersOutput, context: context)
        type = Types::ListVirtualClustersOutput.new
        type.virtual_clusters = VirtualClusters.build(params[:virtual_clusters], context: "#{context}[:virtual_clusters]") unless params[:virtual_clusters].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module MonitoringConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MonitoringConfiguration, context: context)
        type = Types::MonitoringConfiguration.new
        type.persistent_app_ui = params[:persistent_app_ui]
        type.cloud_watch_monitoring_configuration = CloudWatchMonitoringConfiguration.build(params[:cloud_watch_monitoring_configuration], context: "#{context}[:cloud_watch_monitoring_configuration]") unless params[:cloud_watch_monitoring_configuration].nil?
        type.s3_monitoring_configuration = S3MonitoringConfiguration.build(params[:s3_monitoring_configuration], context: "#{context}[:s3_monitoring_configuration]") unless params[:s3_monitoring_configuration].nil?
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module S3MonitoringConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3MonitoringConfiguration, context: context)
        type = Types::S3MonitoringConfiguration.new
        type.log_uri = params[:log_uri]
        type
      end
    end

    module SensitivePropertiesMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module SparkSubmitJobDriver
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SparkSubmitJobDriver, context: context)
        type = Types::SparkSubmitJobDriver.new
        type.entry_point = params[:entry_point]
        type.entry_point_arguments = EntryPointArguments.build(params[:entry_point_arguments], context: "#{context}[:entry_point_arguments]") unless params[:entry_point_arguments].nil?
        type.spark_submit_parameters = params[:spark_submit_parameters]
        type
      end
    end

    module StartJobRunInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartJobRunInput, context: context)
        type = Types::StartJobRunInput.new
        type.name = params[:name]
        type.virtual_cluster_id = params[:virtual_cluster_id]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.execution_role_arn = params[:execution_role_arn]
        type.release_label = params[:release_label]
        type.job_driver = JobDriver.build(params[:job_driver], context: "#{context}[:job_driver]") unless params[:job_driver].nil?
        type.configuration_overrides = ConfigurationOverrides.build(params[:configuration_overrides], context: "#{context}[:configuration_overrides]") unless params[:configuration_overrides].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module StartJobRunOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartJobRunOutput, context: context)
        type = Types::StartJobRunOutput.new
        type.id = params[:id]
        type.name = params[:name]
        type.arn = params[:arn]
        type.virtual_cluster_id = params[:virtual_cluster_id]
        type
      end
    end

    module SubnetIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type
      end
    end

    module VirtualCluster
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VirtualCluster, context: context)
        type = Types::VirtualCluster.new
        type.id = params[:id]
        type.name = params[:name]
        type.arn = params[:arn]
        type.state = params[:state]
        type.container_provider = ContainerProvider.build(params[:container_provider], context: "#{context}[:container_provider]") unless params[:container_provider].nil?
        type.created_at = params[:created_at]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module VirtualClusterStates
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module VirtualClusters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << VirtualCluster.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
