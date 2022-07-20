# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::OpenSearch
  module Builders

    # Operation Builder for AcceptInboundConnection
    class AcceptInboundConnection
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:connection_id].to_s.empty?
          raise ArgumentError, "HTTP label :connection_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2021-01-01/opensearch/cc/inboundConnection/%<ConnectionId>s/accept',
            ConnectionId: Hearth::HTTP.uri_escape(input[:connection_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for AddTags
    class AddTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/2021-01-01/tags')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ARN'] = input[:arn] unless input[:arn].nil?
        data['TagList'] = TagList.build(input[:tag_list]) unless input[:tag_list].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for AssociatePackage
    class AssociatePackage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:package_id].to_s.empty?
          raise ArgumentError, "HTTP label :package_id cannot be nil or empty."
        end
        if input[:domain_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2021-01-01/packages/associate/%<PackageID>s/%<DomainName>s',
            PackageID: Hearth::HTTP.uri_escape(input[:package_id].to_s),
            DomainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for CancelServiceSoftwareUpdate
    class CancelServiceSoftwareUpdate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/2021-01-01/opensearch/serviceSoftwareUpdate/cancel')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['DomainName'] = input[:domain_name] unless input[:domain_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateDomain
    class CreateDomain
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/2021-01-01/opensearch/domain')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['DomainName'] = input[:domain_name] unless input[:domain_name].nil?
        data['EngineVersion'] = input[:engine_version] unless input[:engine_version].nil?
        data['ClusterConfig'] = ClusterConfig.build(input[:cluster_config]) unless input[:cluster_config].nil?
        data['EBSOptions'] = EBSOptions.build(input[:ebs_options]) unless input[:ebs_options].nil?
        data['AccessPolicies'] = input[:access_policies] unless input[:access_policies].nil?
        data['SnapshotOptions'] = SnapshotOptions.build(input[:snapshot_options]) unless input[:snapshot_options].nil?
        data['VPCOptions'] = VPCOptions.build(input[:vpc_options]) unless input[:vpc_options].nil?
        data['CognitoOptions'] = CognitoOptions.build(input[:cognito_options]) unless input[:cognito_options].nil?
        data['EncryptionAtRestOptions'] = EncryptionAtRestOptions.build(input[:encryption_at_rest_options]) unless input[:encryption_at_rest_options].nil?
        data['NodeToNodeEncryptionOptions'] = NodeToNodeEncryptionOptions.build(input[:node_to_node_encryption_options]) unless input[:node_to_node_encryption_options].nil?
        data['AdvancedOptions'] = AdvancedOptions.build(input[:advanced_options]) unless input[:advanced_options].nil?
        data['LogPublishingOptions'] = LogPublishingOptions.build(input[:log_publishing_options]) unless input[:log_publishing_options].nil?
        data['DomainEndpointOptions'] = DomainEndpointOptions.build(input[:domain_endpoint_options]) unless input[:domain_endpoint_options].nil?
        data['AdvancedSecurityOptions'] = AdvancedSecurityOptionsInput.build(input[:advanced_security_options]) unless input[:advanced_security_options].nil?
        data['TagList'] = TagList.build(input[:tag_list]) unless input[:tag_list].nil?
        data['AutoTuneOptions'] = AutoTuneOptionsInput.build(input[:auto_tune_options]) unless input[:auto_tune_options].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for AutoTuneOptionsInput
    class AutoTuneOptionsInput
      def self.build(input)
        data = {}
        data['DesiredState'] = input[:desired_state] unless input[:desired_state].nil?
        data['MaintenanceSchedules'] = AutoTuneMaintenanceScheduleList.build(input[:maintenance_schedules]) unless input[:maintenance_schedules].nil?
        data
      end
    end

    # List Builder for AutoTuneMaintenanceScheduleList
    class AutoTuneMaintenanceScheduleList
      def self.build(input)
        data = []
        input.each do |element|
          data << AutoTuneMaintenanceSchedule.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AutoTuneMaintenanceSchedule
    class AutoTuneMaintenanceSchedule
      def self.build(input)
        data = {}
        data['StartAt'] = Hearth::TimeHelper.to_epoch_seconds(input[:start_at]).to_i unless input[:start_at].nil?
        data['Duration'] = Duration.build(input[:duration]) unless input[:duration].nil?
        data['CronExpressionForRecurrence'] = input[:cron_expression_for_recurrence] unless input[:cron_expression_for_recurrence].nil?
        data
      end
    end

    # Structure Builder for Duration
    class Duration
      def self.build(input)
        data = {}
        data['Value'] = input[:value] unless input[:value].nil?
        data['Unit'] = input[:unit] unless input[:unit].nil?
        data
      end
    end

    # Structure Builder for AdvancedSecurityOptionsInput
    class AdvancedSecurityOptionsInput
      def self.build(input)
        data = {}
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data['InternalUserDatabaseEnabled'] = input[:internal_user_database_enabled] unless input[:internal_user_database_enabled].nil?
        data['MasterUserOptions'] = MasterUserOptions.build(input[:master_user_options]) unless input[:master_user_options].nil?
        data['SAMLOptions'] = SAMLOptionsInput.build(input[:saml_options]) unless input[:saml_options].nil?
        data['AnonymousAuthEnabled'] = input[:anonymous_auth_enabled] unless input[:anonymous_auth_enabled].nil?
        data
      end
    end

    # Structure Builder for SAMLOptionsInput
    class SAMLOptionsInput
      def self.build(input)
        data = {}
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data['Idp'] = SAMLIdp.build(input[:idp]) unless input[:idp].nil?
        data['MasterUserName'] = input[:master_user_name] unless input[:master_user_name].nil?
        data['MasterBackendRole'] = input[:master_backend_role] unless input[:master_backend_role].nil?
        data['SubjectKey'] = input[:subject_key] unless input[:subject_key].nil?
        data['RolesKey'] = input[:roles_key] unless input[:roles_key].nil?
        data['SessionTimeoutMinutes'] = input[:session_timeout_minutes] unless input[:session_timeout_minutes].nil?
        data
      end
    end

    # Structure Builder for SAMLIdp
    class SAMLIdp
      def self.build(input)
        data = {}
        data['MetadataContent'] = input[:metadata_content] unless input[:metadata_content].nil?
        data['EntityId'] = input[:entity_id] unless input[:entity_id].nil?
        data
      end
    end

    # Structure Builder for MasterUserOptions
    class MasterUserOptions
      def self.build(input)
        data = {}
        data['MasterUserARN'] = input[:master_user_arn] unless input[:master_user_arn].nil?
        data['MasterUserName'] = input[:master_user_name] unless input[:master_user_name].nil?
        data['MasterUserPassword'] = input[:master_user_password] unless input[:master_user_password].nil?
        data
      end
    end

    # Structure Builder for DomainEndpointOptions
    class DomainEndpointOptions
      def self.build(input)
        data = {}
        data['EnforceHTTPS'] = input[:enforce_https] unless input[:enforce_https].nil?
        data['TLSSecurityPolicy'] = input[:tls_security_policy] unless input[:tls_security_policy].nil?
        data['CustomEndpointEnabled'] = input[:custom_endpoint_enabled] unless input[:custom_endpoint_enabled].nil?
        data['CustomEndpoint'] = input[:custom_endpoint] unless input[:custom_endpoint].nil?
        data['CustomEndpointCertificateArn'] = input[:custom_endpoint_certificate_arn] unless input[:custom_endpoint_certificate_arn].nil?
        data
      end
    end

    # Map Builder for LogPublishingOptions
    class LogPublishingOptions
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = LogPublishingOption.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for LogPublishingOption
    class LogPublishingOption
      def self.build(input)
        data = {}
        data['CloudWatchLogsLogGroupArn'] = input[:cloud_watch_logs_log_group_arn] unless input[:cloud_watch_logs_log_group_arn].nil?
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data
      end
    end

    # Map Builder for AdvancedOptions
    class AdvancedOptions
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for NodeToNodeEncryptionOptions
    class NodeToNodeEncryptionOptions
      def self.build(input)
        data = {}
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data
      end
    end

    # Structure Builder for EncryptionAtRestOptions
    class EncryptionAtRestOptions
      def self.build(input)
        data = {}
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data
      end
    end

    # Structure Builder for CognitoOptions
    class CognitoOptions
      def self.build(input)
        data = {}
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        data['IdentityPoolId'] = input[:identity_pool_id] unless input[:identity_pool_id].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data
      end
    end

    # Structure Builder for VPCOptions
    class VPCOptions
      def self.build(input)
        data = {}
        data['SubnetIds'] = StringList.build(input[:subnet_ids]) unless input[:subnet_ids].nil?
        data['SecurityGroupIds'] = StringList.build(input[:security_group_ids]) unless input[:security_group_ids].nil?
        data
      end
    end

    # List Builder for StringList
    class StringList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SnapshotOptions
    class SnapshotOptions
      def self.build(input)
        data = {}
        data['AutomatedSnapshotStartHour'] = input[:automated_snapshot_start_hour] unless input[:automated_snapshot_start_hour].nil?
        data
      end
    end

    # Structure Builder for EBSOptions
    class EBSOptions
      def self.build(input)
        data = {}
        data['EBSEnabled'] = input[:ebs_enabled] unless input[:ebs_enabled].nil?
        data['VolumeType'] = input[:volume_type] unless input[:volume_type].nil?
        data['VolumeSize'] = input[:volume_size] unless input[:volume_size].nil?
        data['Iops'] = input[:iops] unless input[:iops].nil?
        data
      end
    end

    # Structure Builder for ClusterConfig
    class ClusterConfig
      def self.build(input)
        data = {}
        data['InstanceType'] = input[:instance_type] unless input[:instance_type].nil?
        data['InstanceCount'] = input[:instance_count] unless input[:instance_count].nil?
        data['DedicatedMasterEnabled'] = input[:dedicated_master_enabled] unless input[:dedicated_master_enabled].nil?
        data['ZoneAwarenessEnabled'] = input[:zone_awareness_enabled] unless input[:zone_awareness_enabled].nil?
        data['ZoneAwarenessConfig'] = ZoneAwarenessConfig.build(input[:zone_awareness_config]) unless input[:zone_awareness_config].nil?
        data['DedicatedMasterType'] = input[:dedicated_master_type] unless input[:dedicated_master_type].nil?
        data['DedicatedMasterCount'] = input[:dedicated_master_count] unless input[:dedicated_master_count].nil?
        data['WarmEnabled'] = input[:warm_enabled] unless input[:warm_enabled].nil?
        data['WarmType'] = input[:warm_type] unless input[:warm_type].nil?
        data['WarmCount'] = input[:warm_count] unless input[:warm_count].nil?
        data['ColdStorageOptions'] = ColdStorageOptions.build(input[:cold_storage_options]) unless input[:cold_storage_options].nil?
        data
      end
    end

    # Structure Builder for ColdStorageOptions
    class ColdStorageOptions
      def self.build(input)
        data = {}
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data
      end
    end

    # Structure Builder for ZoneAwarenessConfig
    class ZoneAwarenessConfig
      def self.build(input)
        data = {}
        data['AvailabilityZoneCount'] = input[:availability_zone_count] unless input[:availability_zone_count].nil?
        data
      end
    end

    # Operation Builder for CreateOutboundConnection
    class CreateOutboundConnection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/2021-01-01/opensearch/cc/outboundConnection')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['LocalDomainInfo'] = DomainInformationContainer.build(input[:local_domain_info]) unless input[:local_domain_info].nil?
        data['RemoteDomainInfo'] = DomainInformationContainer.build(input[:remote_domain_info]) unless input[:remote_domain_info].nil?
        data['ConnectionAlias'] = input[:connection_alias] unless input[:connection_alias].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for DomainInformationContainer
    class DomainInformationContainer
      def self.build(input)
        data = {}
        data['AWSDomainInformation'] = AWSDomainInformation.build(input[:aws_domain_information]) unless input[:aws_domain_information].nil?
        data
      end
    end

    # Structure Builder for AWSDomainInformation
    class AWSDomainInformation
      def self.build(input)
        data = {}
        data['OwnerId'] = input[:owner_id] unless input[:owner_id].nil?
        data['DomainName'] = input[:domain_name] unless input[:domain_name].nil?
        data['Region'] = input[:region] unless input[:region].nil?
        data
      end
    end

    # Operation Builder for CreatePackage
    class CreatePackage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/2021-01-01/packages')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['PackageName'] = input[:package_name] unless input[:package_name].nil?
        data['PackageType'] = input[:package_type] unless input[:package_type].nil?
        data['PackageDescription'] = input[:package_description] unless input[:package_description].nil?
        data['PackageSource'] = PackageSource.build(input[:package_source]) unless input[:package_source].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for PackageSource
    class PackageSource
      def self.build(input)
        data = {}
        data['S3BucketName'] = input[:s3_bucket_name] unless input[:s3_bucket_name].nil?
        data['S3Key'] = input[:s3_key] unless input[:s3_key].nil?
        data
      end
    end

    # Operation Builder for DeleteDomain
    class DeleteDomain
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:domain_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2021-01-01/opensearch/domain/%<DomainName>s',
            DomainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteInboundConnection
    class DeleteInboundConnection
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:connection_id].to_s.empty?
          raise ArgumentError, "HTTP label :connection_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2021-01-01/opensearch/cc/inboundConnection/%<ConnectionId>s',
            ConnectionId: Hearth::HTTP.uri_escape(input[:connection_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteOutboundConnection
    class DeleteOutboundConnection
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:connection_id].to_s.empty?
          raise ArgumentError, "HTTP label :connection_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2021-01-01/opensearch/cc/outboundConnection/%<ConnectionId>s',
            ConnectionId: Hearth::HTTP.uri_escape(input[:connection_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeletePackage
    class DeletePackage
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:package_id].to_s.empty?
          raise ArgumentError, "HTTP label :package_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2021-01-01/packages/%<PackageID>s',
            PackageID: Hearth::HTTP.uri_escape(input[:package_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeDomain
    class DescribeDomain
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:domain_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2021-01-01/opensearch/domain/%<DomainName>s',
            DomainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeDomainAutoTunes
    class DescribeDomainAutoTunes
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:domain_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2021-01-01/opensearch/domain/%<DomainName>s/autoTunes',
            DomainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeDomainChangeProgress
    class DescribeDomainChangeProgress
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:domain_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2021-01-01/opensearch/domain/%<DomainName>s/progress',
            DomainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['changeid'] = input[:change_id].to_s unless input[:change_id].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeDomainConfig
    class DescribeDomainConfig
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:domain_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2021-01-01/opensearch/domain/%<DomainName>s/config',
            DomainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeDomains
    class DescribeDomains
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/2021-01-01/opensearch/domain-info')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['DomainNames'] = DomainNameList.build(input[:domain_names]) unless input[:domain_names].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for DomainNameList
    class DomainNameList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeInboundConnections
    class DescribeInboundConnections
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/2021-01-01/opensearch/cc/inboundConnection/search')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Filters'] = FilterList.build(input[:filters]) unless input[:filters].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for FilterList
    class FilterList
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
        data['Name'] = input[:name] unless input[:name].nil?
        data['Values'] = ValueStringList.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # List Builder for ValueStringList
    class ValueStringList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeInstanceTypeLimits
    class DescribeInstanceTypeLimits
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:instance_type].to_s.empty?
          raise ArgumentError, "HTTP label :instance_type cannot be nil or empty."
        end
        if input[:engine_version].to_s.empty?
          raise ArgumentError, "HTTP label :engine_version cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2021-01-01/opensearch/instanceTypeLimits/%<EngineVersion>s/%<InstanceType>s',
            InstanceType: Hearth::HTTP.uri_escape(input[:instance_type].to_s),
            EngineVersion: Hearth::HTTP.uri_escape(input[:engine_version].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['domainName'] = input[:domain_name].to_s unless input[:domain_name].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeOutboundConnections
    class DescribeOutboundConnections
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/2021-01-01/opensearch/cc/outboundConnection/search')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Filters'] = FilterList.build(input[:filters]) unless input[:filters].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribePackages
    class DescribePackages
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/2021-01-01/packages/describe')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Filters'] = DescribePackagesFilterList.build(input[:filters]) unless input[:filters].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for DescribePackagesFilterList
    class DescribePackagesFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << DescribePackagesFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DescribePackagesFilter
    class DescribePackagesFilter
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Value'] = DescribePackagesFilterValues.build(input[:value]) unless input[:value].nil?
        data
      end
    end

    # List Builder for DescribePackagesFilterValues
    class DescribePackagesFilterValues
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeReservedInstanceOfferings
    class DescribeReservedInstanceOfferings
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/2021-01-01/opensearch/reservedInstanceOfferings')
        params = Hearth::Query::ParamList.new
        params['offeringId'] = input[:reserved_instance_offering_id].to_s unless input[:reserved_instance_offering_id].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeReservedInstances
    class DescribeReservedInstances
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/2021-01-01/opensearch/reservedInstances')
        params = Hearth::Query::ParamList.new
        params['reservationId'] = input[:reserved_instance_id].to_s unless input[:reserved_instance_id].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DissociatePackage
    class DissociatePackage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:package_id].to_s.empty?
          raise ArgumentError, "HTTP label :package_id cannot be nil or empty."
        end
        if input[:domain_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2021-01-01/packages/dissociate/%<PackageID>s/%<DomainName>s',
            PackageID: Hearth::HTTP.uri_escape(input[:package_id].to_s),
            DomainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetCompatibleVersions
    class GetCompatibleVersions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/2021-01-01/opensearch/compatibleVersions')
        params = Hearth::Query::ParamList.new
        params['domainName'] = input[:domain_name].to_s unless input[:domain_name].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetPackageVersionHistory
    class GetPackageVersionHistory
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:package_id].to_s.empty?
          raise ArgumentError, "HTTP label :package_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2021-01-01/packages/%<PackageID>s/history',
            PackageID: Hearth::HTTP.uri_escape(input[:package_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetUpgradeHistory
    class GetUpgradeHistory
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:domain_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2021-01-01/opensearch/upgradeDomain/%<DomainName>s/history',
            DomainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetUpgradeStatus
    class GetUpgradeStatus
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:domain_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2021-01-01/opensearch/upgradeDomain/%<DomainName>s/status',
            DomainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListDomainNames
    class ListDomainNames
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/2021-01-01/domain')
        params = Hearth::Query::ParamList.new
        params['engineType'] = input[:engine_type].to_s unless input[:engine_type].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListDomainsForPackage
    class ListDomainsForPackage
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:package_id].to_s.empty?
          raise ArgumentError, "HTTP label :package_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2021-01-01/packages/%<PackageID>s/domains',
            PackageID: Hearth::HTTP.uri_escape(input[:package_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListInstanceTypeDetails
    class ListInstanceTypeDetails
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:engine_version].to_s.empty?
          raise ArgumentError, "HTTP label :engine_version cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2021-01-01/opensearch/instanceTypeDetails/%<EngineVersion>s',
            EngineVersion: Hearth::HTTP.uri_escape(input[:engine_version].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['domainName'] = input[:domain_name].to_s unless input[:domain_name].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListPackagesForDomain
    class ListPackagesForDomain
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:domain_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2021-01-01/domain/%<DomainName>s/packages',
            DomainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTags
    class ListTags
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/2021-01-01/tags')
        params = Hearth::Query::ParamList.new
        params['arn'] = input[:arn].to_s unless input[:arn].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListVersions
    class ListVersions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/2021-01-01/opensearch/versions')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for PurchaseReservedInstanceOffering
    class PurchaseReservedInstanceOffering
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/2021-01-01/opensearch/purchaseReservedInstanceOffering')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ReservedInstanceOfferingId'] = input[:reserved_instance_offering_id] unless input[:reserved_instance_offering_id].nil?
        data['ReservationName'] = input[:reservation_name] unless input[:reservation_name].nil?
        data['InstanceCount'] = input[:instance_count] unless input[:instance_count].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RejectInboundConnection
    class RejectInboundConnection
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:connection_id].to_s.empty?
          raise ArgumentError, "HTTP label :connection_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2021-01-01/opensearch/cc/inboundConnection/%<ConnectionId>s/reject',
            ConnectionId: Hearth::HTTP.uri_escape(input[:connection_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for RemoveTags
    class RemoveTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/2021-01-01/tags-removal')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ARN'] = input[:arn] unless input[:arn].nil?
        data['TagKeys'] = StringList.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartServiceSoftwareUpdate
    class StartServiceSoftwareUpdate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/2021-01-01/opensearch/serviceSoftwareUpdate/start')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['DomainName'] = input[:domain_name] unless input[:domain_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateDomainConfig
    class UpdateDomainConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:domain_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2021-01-01/opensearch/domain/%<DomainName>s/config',
            DomainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ClusterConfig'] = ClusterConfig.build(input[:cluster_config]) unless input[:cluster_config].nil?
        data['EBSOptions'] = EBSOptions.build(input[:ebs_options]) unless input[:ebs_options].nil?
        data['SnapshotOptions'] = SnapshotOptions.build(input[:snapshot_options]) unless input[:snapshot_options].nil?
        data['VPCOptions'] = VPCOptions.build(input[:vpc_options]) unless input[:vpc_options].nil?
        data['CognitoOptions'] = CognitoOptions.build(input[:cognito_options]) unless input[:cognito_options].nil?
        data['AdvancedOptions'] = AdvancedOptions.build(input[:advanced_options]) unless input[:advanced_options].nil?
        data['AccessPolicies'] = input[:access_policies] unless input[:access_policies].nil?
        data['LogPublishingOptions'] = LogPublishingOptions.build(input[:log_publishing_options]) unless input[:log_publishing_options].nil?
        data['EncryptionAtRestOptions'] = EncryptionAtRestOptions.build(input[:encryption_at_rest_options]) unless input[:encryption_at_rest_options].nil?
        data['DomainEndpointOptions'] = DomainEndpointOptions.build(input[:domain_endpoint_options]) unless input[:domain_endpoint_options].nil?
        data['NodeToNodeEncryptionOptions'] = NodeToNodeEncryptionOptions.build(input[:node_to_node_encryption_options]) unless input[:node_to_node_encryption_options].nil?
        data['AdvancedSecurityOptions'] = AdvancedSecurityOptionsInput.build(input[:advanced_security_options]) unless input[:advanced_security_options].nil?
        data['AutoTuneOptions'] = AutoTuneOptions.build(input[:auto_tune_options]) unless input[:auto_tune_options].nil?
        data['DryRun'] = input[:dry_run] unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for AutoTuneOptions
    class AutoTuneOptions
      def self.build(input)
        data = {}
        data['DesiredState'] = input[:desired_state] unless input[:desired_state].nil?
        data['RollbackOnDisable'] = input[:rollback_on_disable] unless input[:rollback_on_disable].nil?
        data['MaintenanceSchedules'] = AutoTuneMaintenanceScheduleList.build(input[:maintenance_schedules]) unless input[:maintenance_schedules].nil?
        data
      end
    end

    # Operation Builder for UpdatePackage
    class UpdatePackage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/2021-01-01/packages/update')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['PackageID'] = input[:package_id] unless input[:package_id].nil?
        data['PackageSource'] = PackageSource.build(input[:package_source]) unless input[:package_source].nil?
        data['PackageDescription'] = input[:package_description] unless input[:package_description].nil?
        data['CommitMessage'] = input[:commit_message] unless input[:commit_message].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpgradeDomain
    class UpgradeDomain
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/2021-01-01/opensearch/upgradeDomain')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['DomainName'] = input[:domain_name] unless input[:domain_name].nil?
        data['TargetVersion'] = input[:target_version] unless input[:target_version].nil?
        data['PerformCheckOnly'] = input[:perform_check_only] unless input[:perform_check_only].nil?
        data['AdvancedOptions'] = AdvancedOptions.build(input[:advanced_options]) unless input[:advanced_options].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
