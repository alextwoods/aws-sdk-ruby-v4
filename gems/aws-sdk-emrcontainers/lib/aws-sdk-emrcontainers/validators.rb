# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::EMRContainers
  module Validators

    class CancelJobRunInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelJobRunInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:virtual_cluster_id], ::String, context: "#{context}[:virtual_cluster_id]")
      end
    end

    class CancelJobRunOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelJobRunOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:virtual_cluster_id], ::String, context: "#{context}[:virtual_cluster_id]")
      end
    end

    class Certificate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Certificate, context: context)
        Hearth::Validator.validate!(input[:certificate_arn], ::String, context: "#{context}[:certificate_arn]")
        Hearth::Validator.validate!(input[:certificate_data], ::String, context: "#{context}[:certificate_data]")
      end
    end

    class CloudWatchMonitoringConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudWatchMonitoringConfiguration, context: context)
        Hearth::Validator.validate!(input[:log_group_name], ::String, context: "#{context}[:log_group_name]")
        Hearth::Validator.validate!(input[:log_stream_name_prefix], ::String, context: "#{context}[:log_stream_name_prefix]")
      end
    end

    class Configuration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Configuration, context: context)
        Hearth::Validator.validate!(input[:classification], ::String, context: "#{context}[:classification]")
        Validators::SensitivePropertiesMap.validate!(input[:properties], context: "#{context}[:properties]") unless input[:properties].nil?
        Validators::ConfigurationList.validate!(input[:configurations], context: "#{context}[:configurations]") unless input[:configurations].nil?
      end
    end

    class ConfigurationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Configuration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConfigurationOverrides
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfigurationOverrides, context: context)
        Validators::ConfigurationList.validate!(input[:application_configuration], context: "#{context}[:application_configuration]") unless input[:application_configuration].nil?
        Validators::MonitoringConfiguration.validate!(input[:monitoring_configuration], context: "#{context}[:monitoring_configuration]") unless input[:monitoring_configuration].nil?
      end
    end

    class ContainerInfo
      def self.validate!(input, context:)
        case input
        when Types::ContainerInfo::EksInfo
          Validators::EksInfo.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::ContainerInfo, got #{input.class}."
        end
      end

      class EksInfo
        def self.validate!(input, context:)
          Validators::EksInfo.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class ContainerProvider
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContainerProvider, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Validators::ContainerInfo.validate!(input[:info], context: "#{context}[:info]") unless input[:info].nil?
      end
    end

    class CreateManagedEndpointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateManagedEndpointInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:virtual_cluster_id], ::String, context: "#{context}[:virtual_cluster_id]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:release_label], ::String, context: "#{context}[:release_label]")
        Hearth::Validator.validate!(input[:execution_role_arn], ::String, context: "#{context}[:execution_role_arn]")
        Hearth::Validator.validate!(input[:certificate_arn], ::String, context: "#{context}[:certificate_arn]")
        Validators::ConfigurationOverrides.validate!(input[:configuration_overrides], context: "#{context}[:configuration_overrides]") unless input[:configuration_overrides].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateManagedEndpointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateManagedEndpointOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:virtual_cluster_id], ::String, context: "#{context}[:virtual_cluster_id]")
      end
    end

    class CreateVirtualClusterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateVirtualClusterInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::ContainerProvider.validate!(input[:container_provider], context: "#{context}[:container_provider]") unless input[:container_provider].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateVirtualClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateVirtualClusterOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class DeleteManagedEndpointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteManagedEndpointInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:virtual_cluster_id], ::String, context: "#{context}[:virtual_cluster_id]")
      end
    end

    class DeleteManagedEndpointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteManagedEndpointOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:virtual_cluster_id], ::String, context: "#{context}[:virtual_cluster_id]")
      end
    end

    class DeleteVirtualClusterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVirtualClusterInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DeleteVirtualClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVirtualClusterOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DescribeJobRunInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeJobRunInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:virtual_cluster_id], ::String, context: "#{context}[:virtual_cluster_id]")
      end
    end

    class DescribeJobRunOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeJobRunOutput, context: context)
        Validators::JobRun.validate!(input[:job_run], context: "#{context}[:job_run]") unless input[:job_run].nil?
      end
    end

    class DescribeManagedEndpointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeManagedEndpointInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:virtual_cluster_id], ::String, context: "#{context}[:virtual_cluster_id]")
      end
    end

    class DescribeManagedEndpointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeManagedEndpointOutput, context: context)
        Validators::Endpoint.validate!(input[:endpoint], context: "#{context}[:endpoint]") unless input[:endpoint].nil?
      end
    end

    class DescribeVirtualClusterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeVirtualClusterInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DescribeVirtualClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeVirtualClusterOutput, context: context)
        Validators::VirtualCluster.validate!(input[:virtual_cluster], context: "#{context}[:virtual_cluster]") unless input[:virtual_cluster].nil?
      end
    end

    class EksInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EksInfo, context: context)
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
      end
    end

    class Endpoint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Endpoint, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:virtual_cluster_id], ::String, context: "#{context}[:virtual_cluster_id]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:release_label], ::String, context: "#{context}[:release_label]")
        Hearth::Validator.validate!(input[:execution_role_arn], ::String, context: "#{context}[:execution_role_arn]")
        Hearth::Validator.validate!(input[:certificate_arn], ::String, context: "#{context}[:certificate_arn]")
        Validators::Certificate.validate!(input[:certificate_authority], context: "#{context}[:certificate_authority]") unless input[:certificate_authority].nil?
        Validators::ConfigurationOverrides.validate!(input[:configuration_overrides], context: "#{context}[:configuration_overrides]") unless input[:configuration_overrides].nil?
        Hearth::Validator.validate!(input[:server_url], ::String, context: "#{context}[:server_url]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:security_group], ::String, context: "#{context}[:security_group]")
        Validators::SubnetIds.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        Hearth::Validator.validate!(input[:state_details], ::String, context: "#{context}[:state_details]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class EndpointStates
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class EndpointTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Endpoints
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Endpoint.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EntryPointArguments
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class JobDriver
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobDriver, context: context)
        Validators::SparkSubmitJobDriver.validate!(input[:spark_submit_job_driver], context: "#{context}[:spark_submit_job_driver]") unless input[:spark_submit_job_driver].nil?
      end
    end

    class JobRun
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobRun, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:virtual_cluster_id], ::String, context: "#{context}[:virtual_cluster_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:execution_role_arn], ::String, context: "#{context}[:execution_role_arn]")
        Hearth::Validator.validate!(input[:release_label], ::String, context: "#{context}[:release_label]")
        Validators::ConfigurationOverrides.validate!(input[:configuration_overrides], context: "#{context}[:configuration_overrides]") unless input[:configuration_overrides].nil?
        Validators::JobDriver.validate!(input[:job_driver], context: "#{context}[:job_driver]") unless input[:job_driver].nil?
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:created_by], ::String, context: "#{context}[:created_by]")
        Hearth::Validator.validate!(input[:finished_at], ::Time, context: "#{context}[:finished_at]")
        Hearth::Validator.validate!(input[:state_details], ::String, context: "#{context}[:state_details]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class JobRunStates
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class JobRuns
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::JobRun.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListJobRunsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListJobRunsInput, context: context)
        Hearth::Validator.validate!(input[:virtual_cluster_id], ::String, context: "#{context}[:virtual_cluster_id]")
        Hearth::Validator.validate!(input[:created_before], ::Time, context: "#{context}[:created_before]")
        Hearth::Validator.validate!(input[:created_after], ::Time, context: "#{context}[:created_after]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::JobRunStates.validate!(input[:states], context: "#{context}[:states]") unless input[:states].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListJobRunsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListJobRunsOutput, context: context)
        Validators::JobRuns.validate!(input[:job_runs], context: "#{context}[:job_runs]") unless input[:job_runs].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListManagedEndpointsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListManagedEndpointsInput, context: context)
        Hearth::Validator.validate!(input[:virtual_cluster_id], ::String, context: "#{context}[:virtual_cluster_id]")
        Hearth::Validator.validate!(input[:created_before], ::Time, context: "#{context}[:created_before]")
        Hearth::Validator.validate!(input[:created_after], ::Time, context: "#{context}[:created_after]")
        Validators::EndpointTypes.validate!(input[:types], context: "#{context}[:types]") unless input[:types].nil?
        Validators::EndpointStates.validate!(input[:states], context: "#{context}[:states]") unless input[:states].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListManagedEndpointsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListManagedEndpointsOutput, context: context)
        Validators::Endpoints.validate!(input[:endpoints], context: "#{context}[:endpoints]") unless input[:endpoints].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ListVirtualClustersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListVirtualClustersInput, context: context)
        Hearth::Validator.validate!(input[:container_provider_id], ::String, context: "#{context}[:container_provider_id]")
        Hearth::Validator.validate!(input[:container_provider_type], ::String, context: "#{context}[:container_provider_type]")
        Hearth::Validator.validate!(input[:created_after], ::Time, context: "#{context}[:created_after]")
        Hearth::Validator.validate!(input[:created_before], ::Time, context: "#{context}[:created_before]")
        Validators::VirtualClusterStates.validate!(input[:states], context: "#{context}[:states]") unless input[:states].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListVirtualClustersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListVirtualClustersOutput, context: context)
        Validators::VirtualClusters.validate!(input[:virtual_clusters], context: "#{context}[:virtual_clusters]") unless input[:virtual_clusters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class MonitoringConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MonitoringConfiguration, context: context)
        Hearth::Validator.validate!(input[:persistent_app_ui], ::String, context: "#{context}[:persistent_app_ui]")
        Validators::CloudWatchMonitoringConfiguration.validate!(input[:cloud_watch_monitoring_configuration], context: "#{context}[:cloud_watch_monitoring_configuration]") unless input[:cloud_watch_monitoring_configuration].nil?
        Validators::S3MonitoringConfiguration.validate!(input[:s3_monitoring_configuration], context: "#{context}[:s3_monitoring_configuration]") unless input[:s3_monitoring_configuration].nil?
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class S3MonitoringConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3MonitoringConfiguration, context: context)
        Hearth::Validator.validate!(input[:log_uri], ::String, context: "#{context}[:log_uri]")
      end
    end

    class SensitivePropertiesMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class SparkSubmitJobDriver
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SparkSubmitJobDriver, context: context)
        Hearth::Validator.validate!(input[:entry_point], ::String, context: "#{context}[:entry_point]")
        Validators::EntryPointArguments.validate!(input[:entry_point_arguments], context: "#{context}[:entry_point_arguments]") unless input[:entry_point_arguments].nil?
        Hearth::Validator.validate!(input[:spark_submit_parameters], ::String, context: "#{context}[:spark_submit_parameters]")
      end
    end

    class StartJobRunInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartJobRunInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:virtual_cluster_id], ::String, context: "#{context}[:virtual_cluster_id]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:execution_role_arn], ::String, context: "#{context}[:execution_role_arn]")
        Hearth::Validator.validate!(input[:release_label], ::String, context: "#{context}[:release_label]")
        Validators::JobDriver.validate!(input[:job_driver], context: "#{context}[:job_driver]") unless input[:job_driver].nil?
        Validators::ConfigurationOverrides.validate!(input[:configuration_overrides], context: "#{context}[:configuration_overrides]") unless input[:configuration_overrides].nil?
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class StartJobRunOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartJobRunOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:virtual_cluster_id], ::String, context: "#{context}[:virtual_cluster_id]")
      end
    end

    class SubnetIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class VirtualCluster
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VirtualCluster, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Validators::ContainerProvider.validate!(input[:container_provider], context: "#{context}[:container_provider]") unless input[:container_provider].nil?
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class VirtualClusterStates
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class VirtualClusters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::VirtualCluster.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
