# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Drs
  module Builders

    # Operation Builder for CreateExtendedSourceServer
    class CreateExtendedSourceServer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/CreateExtendedSourceServer')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['sourceServerArn'] = input[:source_server_arn] unless input[:source_server_arn].nil?
        data['tags'] = Builders::TagsMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for TagsMap
    class TagsMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for CreateReplicationConfigurationTemplate
    class CreateReplicationConfigurationTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/CreateReplicationConfigurationTemplate')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['stagingAreaSubnetId'] = input[:staging_area_subnet_id] unless input[:staging_area_subnet_id].nil?
        data['associateDefaultSecurityGroup'] = input[:associate_default_security_group] unless input[:associate_default_security_group].nil?
        data['replicationServersSecurityGroupsIDs'] = Builders::ReplicationServersSecurityGroupsIDs.build(input[:replication_servers_security_groups_i_ds]) unless input[:replication_servers_security_groups_i_ds].nil?
        data['replicationServerInstanceType'] = input[:replication_server_instance_type] unless input[:replication_server_instance_type].nil?
        data['useDedicatedReplicationServer'] = input[:use_dedicated_replication_server] unless input[:use_dedicated_replication_server].nil?
        data['defaultLargeStagingDiskType'] = input[:default_large_staging_disk_type] unless input[:default_large_staging_disk_type].nil?
        data['ebsEncryption'] = input[:ebs_encryption] unless input[:ebs_encryption].nil?
        data['ebsEncryptionKeyArn'] = input[:ebs_encryption_key_arn] unless input[:ebs_encryption_key_arn].nil?
        data['bandwidthThrottling'] = input[:bandwidth_throttling] unless input[:bandwidth_throttling].nil?
        data['dataPlaneRouting'] = input[:data_plane_routing] unless input[:data_plane_routing].nil?
        data['createPublicIP'] = input[:create_public_ip] unless input[:create_public_ip].nil?
        data['stagingAreaTags'] = Builders::TagsMap.build(input[:staging_area_tags]) unless input[:staging_area_tags].nil?
        data['pitPolicy'] = Builders::PITPolicy.build(input[:pit_policy]) unless input[:pit_policy].nil?
        data['tags'] = Builders::TagsMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for PITPolicy
    class PITPolicy
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::PITPolicyRule.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for PITPolicyRule
    class PITPolicyRule
      def self.build(input)
        data = {}
        data['ruleID'] = input[:rule_id] unless input[:rule_id].nil?
        data['units'] = input[:units] unless input[:units].nil?
        data['interval'] = input[:interval] unless input[:interval].nil?
        data['retentionDuration'] = input[:retention_duration] unless input[:retention_duration].nil?
        data['enabled'] = input[:enabled] unless input[:enabled].nil?
        data
      end
    end

    # List Builder for ReplicationServersSecurityGroupsIDs
    class ReplicationServersSecurityGroupsIDs
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DeleteJob
    class DeleteJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/DeleteJob')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['jobID'] = input[:job_id] unless input[:job_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteRecoveryInstance
    class DeleteRecoveryInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/DeleteRecoveryInstance')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['recoveryInstanceID'] = input[:recovery_instance_id] unless input[:recovery_instance_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteReplicationConfigurationTemplate
    class DeleteReplicationConfigurationTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/DeleteReplicationConfigurationTemplate')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['replicationConfigurationTemplateID'] = input[:replication_configuration_template_id] unless input[:replication_configuration_template_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteSourceServer
    class DeleteSourceServer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/DeleteSourceServer')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['sourceServerID'] = input[:source_server_id] unless input[:source_server_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeJobLogItems
    class DescribeJobLogItems
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/DescribeJobLogItems')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['jobID'] = input[:job_id] unless input[:job_id].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeJobs
    class DescribeJobs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/DescribeJobs')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['filters'] = Builders::DescribeJobsRequestFilters.build(input[:filters]) unless input[:filters].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for DescribeJobsRequestFilters
    class DescribeJobsRequestFilters
      def self.build(input)
        data = {}
        data['jobIDs'] = Builders::DescribeJobsRequestFiltersJobIDs.build(input[:job_i_ds]) unless input[:job_i_ds].nil?
        data['fromDate'] = input[:from_date] unless input[:from_date].nil?
        data['toDate'] = input[:to_date] unless input[:to_date].nil?
        data
      end
    end

    # List Builder for DescribeJobsRequestFiltersJobIDs
    class DescribeJobsRequestFiltersJobIDs
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeRecoveryInstances
    class DescribeRecoveryInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/DescribeRecoveryInstances')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['filters'] = Builders::DescribeRecoveryInstancesRequestFilters.build(input[:filters]) unless input[:filters].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for DescribeRecoveryInstancesRequestFilters
    class DescribeRecoveryInstancesRequestFilters
      def self.build(input)
        data = {}
        data['recoveryInstanceIDs'] = Builders::RecoveryInstanceIDs.build(input[:recovery_instance_i_ds]) unless input[:recovery_instance_i_ds].nil?
        data['sourceServerIDs'] = Builders::SourceServerIDs.build(input[:source_server_i_ds]) unless input[:source_server_i_ds].nil?
        data
      end
    end

    # List Builder for SourceServerIDs
    class SourceServerIDs
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for RecoveryInstanceIDs
    class RecoveryInstanceIDs
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeRecoverySnapshots
    class DescribeRecoverySnapshots
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/DescribeRecoverySnapshots')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['sourceServerID'] = input[:source_server_id] unless input[:source_server_id].nil?
        data['filters'] = Builders::DescribeRecoverySnapshotsRequestFilters.build(input[:filters]) unless input[:filters].nil?
        data['order'] = input[:order] unless input[:order].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for DescribeRecoverySnapshotsRequestFilters
    class DescribeRecoverySnapshotsRequestFilters
      def self.build(input)
        data = {}
        data['fromDateTime'] = input[:from_date_time] unless input[:from_date_time].nil?
        data['toDateTime'] = input[:to_date_time] unless input[:to_date_time].nil?
        data
      end
    end

    # Operation Builder for DescribeReplicationConfigurationTemplates
    class DescribeReplicationConfigurationTemplates
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/DescribeReplicationConfigurationTemplates')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['replicationConfigurationTemplateIDs'] = Builders::ReplicationConfigurationTemplateIDs.build(input[:replication_configuration_template_i_ds]) unless input[:replication_configuration_template_i_ds].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ReplicationConfigurationTemplateIDs
    class ReplicationConfigurationTemplateIDs
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeSourceServers
    class DescribeSourceServers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/DescribeSourceServers')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['filters'] = Builders::DescribeSourceServersRequestFilters.build(input[:filters]) unless input[:filters].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for DescribeSourceServersRequestFilters
    class DescribeSourceServersRequestFilters
      def self.build(input)
        data = {}
        data['sourceServerIDs'] = Builders::DescribeSourceServersRequestFiltersIDs.build(input[:source_server_i_ds]) unless input[:source_server_i_ds].nil?
        data['hardwareId'] = input[:hardware_id] unless input[:hardware_id].nil?
        data['stagingAccountIDs'] = Builders::AccountIDs.build(input[:staging_account_i_ds]) unless input[:staging_account_i_ds].nil?
        data
      end
    end

    # List Builder for AccountIDs
    class AccountIDs
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for DescribeSourceServersRequestFiltersIDs
    class DescribeSourceServersRequestFiltersIDs
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DisconnectRecoveryInstance
    class DisconnectRecoveryInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/DisconnectRecoveryInstance')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['recoveryInstanceID'] = input[:recovery_instance_id] unless input[:recovery_instance_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisconnectSourceServer
    class DisconnectSourceServer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/DisconnectSourceServer')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['sourceServerID'] = input[:source_server_id] unless input[:source_server_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetFailbackReplicationConfiguration
    class GetFailbackReplicationConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/GetFailbackReplicationConfiguration')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['recoveryInstanceID'] = input[:recovery_instance_id] unless input[:recovery_instance_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetLaunchConfiguration
    class GetLaunchConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/GetLaunchConfiguration')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['sourceServerID'] = input[:source_server_id] unless input[:source_server_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetReplicationConfiguration
    class GetReplicationConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/GetReplicationConfiguration')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['sourceServerID'] = input[:source_server_id] unless input[:source_server_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for InitializeService
    class InitializeService
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/InitializeService')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListExtensibleSourceServers
    class ListExtensibleSourceServers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/ListExtensibleSourceServers')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['stagingAccountID'] = input[:staging_account_id] unless input[:staging_account_id].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListStagingAccounts
    class ListStagingAccounts
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/ListStagingAccounts')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
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

    # Operation Builder for RetryDataReplication
    class RetryDataReplication
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/RetryDataReplication')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['sourceServerID'] = input[:source_server_id] unless input[:source_server_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartFailbackLaunch
    class StartFailbackLaunch
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/StartFailbackLaunch')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['recoveryInstanceIDs'] = Builders::StartFailbackRequestRecoveryInstanceIDs.build(input[:recovery_instance_i_ds]) unless input[:recovery_instance_i_ds].nil?
        data['tags'] = Builders::TagsMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for StartFailbackRequestRecoveryInstanceIDs
    class StartFailbackRequestRecoveryInstanceIDs
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for StartRecovery
    class StartRecovery
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/StartRecovery')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['sourceServers'] = Builders::StartRecoveryRequestSourceServers.build(input[:source_servers]) unless input[:source_servers].nil?
        data['isDrill'] = input[:is_drill] unless input[:is_drill].nil?
        data['tags'] = Builders::TagsMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for StartRecoveryRequestSourceServers
    class StartRecoveryRequestSourceServers
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::StartRecoveryRequestSourceServer.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for StartRecoveryRequestSourceServer
    class StartRecoveryRequestSourceServer
      def self.build(input)
        data = {}
        data['sourceServerID'] = input[:source_server_id] unless input[:source_server_id].nil?
        data['recoverySnapshotID'] = input[:recovery_snapshot_id] unless input[:recovery_snapshot_id].nil?
        data
      end
    end

    # Operation Builder for StopFailback
    class StopFailback
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/StopFailback')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['recoveryInstanceID'] = input[:recovery_instance_id] unless input[:recovery_instance_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
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
        data['tags'] = Builders::TagsMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TerminateRecoveryInstances
    class TerminateRecoveryInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/TerminateRecoveryInstances')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['recoveryInstanceIDs'] = Builders::RecoveryInstancesForTerminationRequest.build(input[:recovery_instance_i_ds]) unless input[:recovery_instance_i_ds].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for RecoveryInstancesForTerminationRequest
    class RecoveryInstancesForTerminationRequest
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
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

    # List Builder for TagKeys
    class TagKeys
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateFailbackReplicationConfiguration
    class UpdateFailbackReplicationConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/UpdateFailbackReplicationConfiguration')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['recoveryInstanceID'] = input[:recovery_instance_id] unless input[:recovery_instance_id].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['bandwidthThrottling'] = input[:bandwidth_throttling] unless input[:bandwidth_throttling].nil?
        data['usePrivateIP'] = input[:use_private_ip] unless input[:use_private_ip].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateLaunchConfiguration
    class UpdateLaunchConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/UpdateLaunchConfiguration')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['sourceServerID'] = input[:source_server_id] unless input[:source_server_id].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['launchDisposition'] = input[:launch_disposition] unless input[:launch_disposition].nil?
        data['targetInstanceTypeRightSizingMethod'] = input[:target_instance_type_right_sizing_method] unless input[:target_instance_type_right_sizing_method].nil?
        data['copyPrivateIp'] = input[:copy_private_ip] unless input[:copy_private_ip].nil?
        data['copyTags'] = input[:copy_tags] unless input[:copy_tags].nil?
        data['licensing'] = Builders::Licensing.build(input[:licensing]) unless input[:licensing].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for Licensing
    class Licensing
      def self.build(input)
        data = {}
        data['osByol'] = input[:os_byol] unless input[:os_byol].nil?
        data
      end
    end

    # Operation Builder for UpdateReplicationConfiguration
    class UpdateReplicationConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/UpdateReplicationConfiguration')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['sourceServerID'] = input[:source_server_id] unless input[:source_server_id].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['stagingAreaSubnetId'] = input[:staging_area_subnet_id] unless input[:staging_area_subnet_id].nil?
        data['associateDefaultSecurityGroup'] = input[:associate_default_security_group] unless input[:associate_default_security_group].nil?
        data['replicationServersSecurityGroupsIDs'] = Builders::ReplicationServersSecurityGroupsIDs.build(input[:replication_servers_security_groups_i_ds]) unless input[:replication_servers_security_groups_i_ds].nil?
        data['replicationServerInstanceType'] = input[:replication_server_instance_type] unless input[:replication_server_instance_type].nil?
        data['useDedicatedReplicationServer'] = input[:use_dedicated_replication_server] unless input[:use_dedicated_replication_server].nil?
        data['defaultLargeStagingDiskType'] = input[:default_large_staging_disk_type] unless input[:default_large_staging_disk_type].nil?
        data['replicatedDisks'] = Builders::ReplicationConfigurationReplicatedDisks.build(input[:replicated_disks]) unless input[:replicated_disks].nil?
        data['ebsEncryption'] = input[:ebs_encryption] unless input[:ebs_encryption].nil?
        data['ebsEncryptionKeyArn'] = input[:ebs_encryption_key_arn] unless input[:ebs_encryption_key_arn].nil?
        data['bandwidthThrottling'] = input[:bandwidth_throttling] unless input[:bandwidth_throttling].nil?
        data['dataPlaneRouting'] = input[:data_plane_routing] unless input[:data_plane_routing].nil?
        data['createPublicIP'] = input[:create_public_ip] unless input[:create_public_ip].nil?
        data['stagingAreaTags'] = Builders::TagsMap.build(input[:staging_area_tags]) unless input[:staging_area_tags].nil?
        data['pitPolicy'] = Builders::PITPolicy.build(input[:pit_policy]) unless input[:pit_policy].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ReplicationConfigurationReplicatedDisks
    class ReplicationConfigurationReplicatedDisks
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ReplicationConfigurationReplicatedDisk.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ReplicationConfigurationReplicatedDisk
    class ReplicationConfigurationReplicatedDisk
      def self.build(input)
        data = {}
        data['deviceName'] = input[:device_name] unless input[:device_name].nil?
        data['isBootDisk'] = input[:is_boot_disk] unless input[:is_boot_disk].nil?
        data['stagingDiskType'] = input[:staging_disk_type] unless input[:staging_disk_type].nil?
        data['iops'] = input[:iops] unless input[:iops].nil?
        data['throughput'] = input[:throughput] unless input[:throughput].nil?
        data
      end
    end

    # Operation Builder for UpdateReplicationConfigurationTemplate
    class UpdateReplicationConfigurationTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/UpdateReplicationConfigurationTemplate')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['replicationConfigurationTemplateID'] = input[:replication_configuration_template_id] unless input[:replication_configuration_template_id].nil?
        data['arn'] = input[:arn] unless input[:arn].nil?
        data['stagingAreaSubnetId'] = input[:staging_area_subnet_id] unless input[:staging_area_subnet_id].nil?
        data['associateDefaultSecurityGroup'] = input[:associate_default_security_group] unless input[:associate_default_security_group].nil?
        data['replicationServersSecurityGroupsIDs'] = Builders::ReplicationServersSecurityGroupsIDs.build(input[:replication_servers_security_groups_i_ds]) unless input[:replication_servers_security_groups_i_ds].nil?
        data['replicationServerInstanceType'] = input[:replication_server_instance_type] unless input[:replication_server_instance_type].nil?
        data['useDedicatedReplicationServer'] = input[:use_dedicated_replication_server] unless input[:use_dedicated_replication_server].nil?
        data['defaultLargeStagingDiskType'] = input[:default_large_staging_disk_type] unless input[:default_large_staging_disk_type].nil?
        data['ebsEncryption'] = input[:ebs_encryption] unless input[:ebs_encryption].nil?
        data['ebsEncryptionKeyArn'] = input[:ebs_encryption_key_arn] unless input[:ebs_encryption_key_arn].nil?
        data['bandwidthThrottling'] = input[:bandwidth_throttling] unless input[:bandwidth_throttling].nil?
        data['dataPlaneRouting'] = input[:data_plane_routing] unless input[:data_plane_routing].nil?
        data['createPublicIP'] = input[:create_public_ip] unless input[:create_public_ip].nil?
        data['stagingAreaTags'] = Builders::TagsMap.build(input[:staging_area_tags]) unless input[:staging_area_tags].nil?
        data['pitPolicy'] = Builders::PITPolicy.build(input[:pit_policy]) unless input[:pit_policy].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
