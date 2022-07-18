# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::EMRServerless
  module Builders

    # Operation Builder for CancelJobRun
    class CancelJobRun
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        if input[:job_run_id].to_s.empty?
          raise ArgumentError, "HTTP label :job_run_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<applicationId>s/jobruns/%<jobRunId>s',
            applicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s),
            jobRunId: Hearth::HTTP.uri_escape(input[:job_run_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for CreateApplication
    class CreateApplication
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/applications')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['releaseLabel'] = input[:release_label] unless input[:release_label].nil?
        data['type'] = input[:type] unless input[:type].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        data['initialCapacity'] = Builders::InitialCapacityConfigMap.build(input[:initial_capacity]) unless input[:initial_capacity].nil?
        data['maximumCapacity'] = Builders::MaximumAllowedResources.build(input[:maximum_capacity]) unless input[:maximum_capacity].nil?
        data['tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        data['autoStartConfiguration'] = Builders::AutoStartConfig.build(input[:auto_start_configuration]) unless input[:auto_start_configuration].nil?
        data['autoStopConfiguration'] = Builders::AutoStopConfig.build(input[:auto_stop_configuration]) unless input[:auto_stop_configuration].nil?
        data['networkConfiguration'] = Builders::NetworkConfiguration.build(input[:network_configuration]) unless input[:network_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for NetworkConfiguration
    class NetworkConfiguration
      def self.build(input)
        data = {}
        data['subnetIds'] = Builders::SubnetIds.build(input[:subnet_ids]) unless input[:subnet_ids].nil?
        data['securityGroupIds'] = Builders::SecurityGroupIds.build(input[:security_group_ids]) unless input[:security_group_ids].nil?
        data
      end
    end

    # List Builder for SecurityGroupIds
    class SecurityGroupIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for SubnetIds
    class SubnetIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AutoStopConfig
    class AutoStopConfig
      def self.build(input)
        data = {}
        data['enabled'] = input[:enabled] unless input[:enabled].nil?
        data['idleTimeoutMinutes'] = input[:idle_timeout_minutes] unless input[:idle_timeout_minutes].nil?
        data
      end
    end

    # Structure Builder for AutoStartConfig
    class AutoStartConfig
      def self.build(input)
        data = {}
        data['enabled'] = input[:enabled] unless input[:enabled].nil?
        data
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

    # Structure Builder for MaximumAllowedResources
    class MaximumAllowedResources
      def self.build(input)
        data = {}
        data['cpu'] = input[:cpu] unless input[:cpu].nil?
        data['memory'] = input[:memory] unless input[:memory].nil?
        data['disk'] = input[:disk] unless input[:disk].nil?
        data
      end
    end

    # Map Builder for InitialCapacityConfigMap
    class InitialCapacityConfigMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::InitialCapacityConfig.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for InitialCapacityConfig
    class InitialCapacityConfig
      def self.build(input)
        data = {}
        data['workerCount'] = input[:worker_count] unless input[:worker_count].nil?
        data['workerConfiguration'] = Builders::WorkerResourceConfig.build(input[:worker_configuration]) unless input[:worker_configuration].nil?
        data
      end
    end

    # Structure Builder for WorkerResourceConfig
    class WorkerResourceConfig
      def self.build(input)
        data = {}
        data['cpu'] = input[:cpu] unless input[:cpu].nil?
        data['memory'] = input[:memory] unless input[:memory].nil?
        data['disk'] = input[:disk] unless input[:disk].nil?
        data
      end
    end

    # Operation Builder for DeleteApplication
    class DeleteApplication
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<applicationId>s',
            applicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetApplication
    class GetApplication
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<applicationId>s',
            applicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetJobRun
    class GetJobRun
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        if input[:job_run_id].to_s.empty?
          raise ArgumentError, "HTTP label :job_run_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<applicationId>s/jobruns/%<jobRunId>s',
            applicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s),
            jobRunId: Hearth::HTTP.uri_escape(input[:job_run_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListApplications
    class ListApplications
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/applications')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        unless input[:states].nil? || input[:states].empty?
          params['states'] = input[:states].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
      end
    end

    # List Builder for ApplicationStateSet
    class ApplicationStateSet
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListJobRuns
    class ListJobRuns
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<applicationId>s/jobruns',
            applicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['createdAtAfter'] = Hearth::TimeHelper.to_date_time(input[:created_at_after]) unless input[:created_at_after].nil?
        params['createdAtBefore'] = Hearth::TimeHelper.to_date_time(input[:created_at_before]) unless input[:created_at_before].nil?
        unless input[:states].nil? || input[:states].empty?
          params['states'] = input[:states].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
      end
    end

    # List Builder for JobRunStateSet
    class JobRunStateSet
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

    # Operation Builder for StartApplication
    class StartApplication
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<applicationId>s/start',
            applicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for StartJobRun
    class StartJobRun
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<applicationId>s/jobruns',
            applicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        data['executionRoleArn'] = input[:execution_role_arn] unless input[:execution_role_arn].nil?
        data['jobDriver'] = Builders::JobDriver.build(input[:job_driver]) unless input[:job_driver].nil?
        data['configurationOverrides'] = Builders::ConfigurationOverrides.build(input[:configuration_overrides]) unless input[:configuration_overrides].nil?
        data['tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        data['executionTimeoutMinutes'] = input[:execution_timeout_minutes] unless input[:execution_timeout_minutes].nil?
        data['name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ConfigurationOverrides
    class ConfigurationOverrides
      def self.build(input)
        data = {}
        data['applicationConfiguration'] = Builders::ConfigurationList.build(input[:application_configuration]) unless input[:application_configuration].nil?
        data['monitoringConfiguration'] = Builders::MonitoringConfiguration.build(input[:monitoring_configuration]) unless input[:monitoring_configuration].nil?
        data
      end
    end

    # Structure Builder for MonitoringConfiguration
    class MonitoringConfiguration
      def self.build(input)
        data = {}
        data['s3MonitoringConfiguration'] = Builders::S3MonitoringConfiguration.build(input[:s3_monitoring_configuration]) unless input[:s3_monitoring_configuration].nil?
        data['managedPersistenceMonitoringConfiguration'] = Builders::ManagedPersistenceMonitoringConfiguration.build(input[:managed_persistence_monitoring_configuration]) unless input[:managed_persistence_monitoring_configuration].nil?
        data
      end
    end

    # Structure Builder for ManagedPersistenceMonitoringConfiguration
    class ManagedPersistenceMonitoringConfiguration
      def self.build(input)
        data = {}
        data['enabled'] = input[:enabled] unless input[:enabled].nil?
        data['encryptionKeyArn'] = input[:encryption_key_arn] unless input[:encryption_key_arn].nil?
        data
      end
    end

    # Structure Builder for S3MonitoringConfiguration
    class S3MonitoringConfiguration
      def self.build(input)
        data = {}
        data['logUri'] = input[:log_uri] unless input[:log_uri].nil?
        data['encryptionKeyArn'] = input[:encryption_key_arn] unless input[:encryption_key_arn].nil?
        data
      end
    end

    # List Builder for ConfigurationList
    class ConfigurationList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Configuration.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Configuration
    class Configuration
      def self.build(input)
        data = {}
        data['classification'] = input[:classification] unless input[:classification].nil?
        data['properties'] = Builders::SensitivePropertiesMap.build(input[:properties]) unless input[:properties].nil?
        data['configurations'] = Builders::ConfigurationList.build(input[:configurations]) unless input[:configurations].nil?
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

    # Structure Builder for JobDriver
    class JobDriver
      def self.build(input)
        data = {}
        case input
        when Types::JobDriver::SparkSubmit
          data['sparkSubmit'] = (Builders::SparkSubmit.build(input) unless input.nil?)
        when Types::JobDriver::Hive
          data['hive'] = (Builders::Hive.build(input) unless input.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::JobDriver"
        end

        data
      end
    end

    # Structure Builder for Hive
    class Hive
      def self.build(input)
        data = {}
        data['query'] = input[:query] unless input[:query].nil?
        data['initQueryFile'] = input[:init_query_file] unless input[:init_query_file].nil?
        data['parameters'] = input[:parameters] unless input[:parameters].nil?
        data
      end
    end

    # Structure Builder for SparkSubmit
    class SparkSubmit
      def self.build(input)
        data = {}
        data['entryPoint'] = input[:entry_point] unless input[:entry_point].nil?
        data['entryPointArguments'] = Builders::EntryPointArguments.build(input[:entry_point_arguments]) unless input[:entry_point_arguments].nil?
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

    # Operation Builder for StopApplication
    class StopApplication
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<applicationId>s/stop',
            applicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
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
        data['tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
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

    # Operation Builder for UpdateApplication
    class UpdateApplication
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<applicationId>s',
            applicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        data['initialCapacity'] = Builders::InitialCapacityConfigMap.build(input[:initial_capacity]) unless input[:initial_capacity].nil?
        data['maximumCapacity'] = Builders::MaximumAllowedResources.build(input[:maximum_capacity]) unless input[:maximum_capacity].nil?
        data['autoStartConfiguration'] = Builders::AutoStartConfig.build(input[:auto_start_configuration]) unless input[:auto_start_configuration].nil?
        data['autoStopConfiguration'] = Builders::AutoStopConfig.build(input[:auto_stop_configuration]) unless input[:auto_stop_configuration].nil?
        data['networkConfiguration'] = Builders::NetworkConfiguration.build(input[:network_configuration]) unless input[:network_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
