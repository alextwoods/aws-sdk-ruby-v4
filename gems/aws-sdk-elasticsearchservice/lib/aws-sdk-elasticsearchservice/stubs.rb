# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::ElasticsearchService
  module Stubs

    # Operation Stubber for AcceptInboundCrossClusterSearchConnection
    class AcceptInboundCrossClusterSearchConnection
      def self.default(visited=[])
        {
          cross_cluster_search_connection: InboundCrossClusterSearchConnection.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['CrossClusterSearchConnection'] = InboundCrossClusterSearchConnection.stub(stub[:cross_cluster_search_connection]) unless stub[:cross_cluster_search_connection].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for InboundCrossClusterSearchConnection
    class InboundCrossClusterSearchConnection
      def self.default(visited=[])
        return nil if visited.include?('InboundCrossClusterSearchConnection')
        visited = visited + ['InboundCrossClusterSearchConnection']
        {
          source_domain_info: DomainInformation.default(visited),
          destination_domain_info: DomainInformation.default(visited),
          cross_cluster_search_connection_id: 'cross_cluster_search_connection_id',
          connection_status: InboundCrossClusterSearchConnectionStatus.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InboundCrossClusterSearchConnection.new
        data = {}
        data['SourceDomainInfo'] = DomainInformation.stub(stub[:source_domain_info]) unless stub[:source_domain_info].nil?
        data['DestinationDomainInfo'] = DomainInformation.stub(stub[:destination_domain_info]) unless stub[:destination_domain_info].nil?
        data['CrossClusterSearchConnectionId'] = stub[:cross_cluster_search_connection_id] unless stub[:cross_cluster_search_connection_id].nil?
        data['ConnectionStatus'] = InboundCrossClusterSearchConnectionStatus.stub(stub[:connection_status]) unless stub[:connection_status].nil?
        data
      end
    end

    # Structure Stubber for InboundCrossClusterSearchConnectionStatus
    class InboundCrossClusterSearchConnectionStatus
      def self.default(visited=[])
        return nil if visited.include?('InboundCrossClusterSearchConnectionStatus')
        visited = visited + ['InboundCrossClusterSearchConnectionStatus']
        {
          status_code: 'status_code',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::InboundCrossClusterSearchConnectionStatus.new
        data = {}
        data['StatusCode'] = stub[:status_code] unless stub[:status_code].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Structure Stubber for DomainInformation
    class DomainInformation
      def self.default(visited=[])
        return nil if visited.include?('DomainInformation')
        visited = visited + ['DomainInformation']
        {
          owner_id: 'owner_id',
          domain_name: 'domain_name',
          region: 'region',
        }
      end

      def self.stub(stub)
        stub ||= Types::DomainInformation.new
        data = {}
        data['OwnerId'] = stub[:owner_id] unless stub[:owner_id].nil?
        data['DomainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['Region'] = stub[:region] unless stub[:region].nil?
        data
      end
    end

    # Operation Stubber for AddTags
    class AddTags
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for AssociatePackage
    class AssociatePackage
      def self.default(visited=[])
        {
          domain_package_details: DomainPackageDetails.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DomainPackageDetails'] = DomainPackageDetails.stub(stub[:domain_package_details]) unless stub[:domain_package_details].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for DomainPackageDetails
    class DomainPackageDetails
      def self.default(visited=[])
        return nil if visited.include?('DomainPackageDetails')
        visited = visited + ['DomainPackageDetails']
        {
          package_id: 'package_id',
          package_name: 'package_name',
          package_type: 'package_type',
          last_updated: Time.now,
          domain_name: 'domain_name',
          domain_package_status: 'domain_package_status',
          package_version: 'package_version',
          reference_path: 'reference_path',
          error_details: ErrorDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DomainPackageDetails.new
        data = {}
        data['PackageID'] = stub[:package_id] unless stub[:package_id].nil?
        data['PackageName'] = stub[:package_name] unless stub[:package_name].nil?
        data['PackageType'] = stub[:package_type] unless stub[:package_type].nil?
        data['LastUpdated'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated]).to_i unless stub[:last_updated].nil?
        data['DomainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['DomainPackageStatus'] = stub[:domain_package_status] unless stub[:domain_package_status].nil?
        data['PackageVersion'] = stub[:package_version] unless stub[:package_version].nil?
        data['ReferencePath'] = stub[:reference_path] unless stub[:reference_path].nil?
        data['ErrorDetails'] = ErrorDetails.stub(stub[:error_details]) unless stub[:error_details].nil?
        data
      end
    end

    # Structure Stubber for ErrorDetails
    class ErrorDetails
      def self.default(visited=[])
        return nil if visited.include?('ErrorDetails')
        visited = visited + ['ErrorDetails']
        {
          error_type: 'error_type',
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::ErrorDetails.new
        data = {}
        data['ErrorType'] = stub[:error_type] unless stub[:error_type].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # Operation Stubber for CancelElasticsearchServiceSoftwareUpdate
    class CancelElasticsearchServiceSoftwareUpdate
      def self.default(visited=[])
        {
          service_software_options: ServiceSoftwareOptions.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ServiceSoftwareOptions'] = ServiceSoftwareOptions.stub(stub[:service_software_options]) unless stub[:service_software_options].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ServiceSoftwareOptions
    class ServiceSoftwareOptions
      def self.default(visited=[])
        return nil if visited.include?('ServiceSoftwareOptions')
        visited = visited + ['ServiceSoftwareOptions']
        {
          current_version: 'current_version',
          new_version: 'new_version',
          update_available: false,
          cancellable: false,
          update_status: 'update_status',
          description: 'description',
          automated_update_date: Time.now,
          optional_deployment: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::ServiceSoftwareOptions.new
        data = {}
        data['CurrentVersion'] = stub[:current_version] unless stub[:current_version].nil?
        data['NewVersion'] = stub[:new_version] unless stub[:new_version].nil?
        data['UpdateAvailable'] = stub[:update_available] unless stub[:update_available].nil?
        data['Cancellable'] = stub[:cancellable] unless stub[:cancellable].nil?
        data['UpdateStatus'] = stub[:update_status] unless stub[:update_status].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['AutomatedUpdateDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:automated_update_date]).to_i unless stub[:automated_update_date].nil?
        data['OptionalDeployment'] = stub[:optional_deployment] unless stub[:optional_deployment].nil?
        data
      end
    end

    # Operation Stubber for CreateElasticsearchDomain
    class CreateElasticsearchDomain
      def self.default(visited=[])
        {
          domain_status: ElasticsearchDomainStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DomainStatus'] = ElasticsearchDomainStatus.stub(stub[:domain_status]) unless stub[:domain_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ElasticsearchDomainStatus
    class ElasticsearchDomainStatus
      def self.default(visited=[])
        return nil if visited.include?('ElasticsearchDomainStatus')
        visited = visited + ['ElasticsearchDomainStatus']
        {
          domain_id: 'domain_id',
          domain_name: 'domain_name',
          arn: 'arn',
          created: false,
          deleted: false,
          endpoint: 'endpoint',
          endpoints: EndpointsMap.default(visited),
          processing: false,
          upgrade_processing: false,
          elasticsearch_version: 'elasticsearch_version',
          elasticsearch_cluster_config: ElasticsearchClusterConfig.default(visited),
          ebs_options: EBSOptions.default(visited),
          access_policies: 'access_policies',
          snapshot_options: SnapshotOptions.default(visited),
          vpc_options: VPCDerivedInfo.default(visited),
          cognito_options: CognitoOptions.default(visited),
          encryption_at_rest_options: EncryptionAtRestOptions.default(visited),
          node_to_node_encryption_options: NodeToNodeEncryptionOptions.default(visited),
          advanced_options: AdvancedOptions.default(visited),
          log_publishing_options: LogPublishingOptions.default(visited),
          service_software_options: ServiceSoftwareOptions.default(visited),
          domain_endpoint_options: DomainEndpointOptions.default(visited),
          advanced_security_options: AdvancedSecurityOptions.default(visited),
          auto_tune_options: AutoTuneOptionsOutput.default(visited),
          change_progress_details: ChangeProgressDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ElasticsearchDomainStatus.new
        data = {}
        data['DomainId'] = stub[:domain_id] unless stub[:domain_id].nil?
        data['DomainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['ARN'] = stub[:arn] unless stub[:arn].nil?
        data['Created'] = stub[:created] unless stub[:created].nil?
        data['Deleted'] = stub[:deleted] unless stub[:deleted].nil?
        data['Endpoint'] = stub[:endpoint] unless stub[:endpoint].nil?
        data['Endpoints'] = EndpointsMap.stub(stub[:endpoints]) unless stub[:endpoints].nil?
        data['Processing'] = stub[:processing] unless stub[:processing].nil?
        data['UpgradeProcessing'] = stub[:upgrade_processing] unless stub[:upgrade_processing].nil?
        data['ElasticsearchVersion'] = stub[:elasticsearch_version] unless stub[:elasticsearch_version].nil?
        data['ElasticsearchClusterConfig'] = ElasticsearchClusterConfig.stub(stub[:elasticsearch_cluster_config]) unless stub[:elasticsearch_cluster_config].nil?
        data['EBSOptions'] = EBSOptions.stub(stub[:ebs_options]) unless stub[:ebs_options].nil?
        data['AccessPolicies'] = stub[:access_policies] unless stub[:access_policies].nil?
        data['SnapshotOptions'] = SnapshotOptions.stub(stub[:snapshot_options]) unless stub[:snapshot_options].nil?
        data['VPCOptions'] = VPCDerivedInfo.stub(stub[:vpc_options]) unless stub[:vpc_options].nil?
        data['CognitoOptions'] = CognitoOptions.stub(stub[:cognito_options]) unless stub[:cognito_options].nil?
        data['EncryptionAtRestOptions'] = EncryptionAtRestOptions.stub(stub[:encryption_at_rest_options]) unless stub[:encryption_at_rest_options].nil?
        data['NodeToNodeEncryptionOptions'] = NodeToNodeEncryptionOptions.stub(stub[:node_to_node_encryption_options]) unless stub[:node_to_node_encryption_options].nil?
        data['AdvancedOptions'] = AdvancedOptions.stub(stub[:advanced_options]) unless stub[:advanced_options].nil?
        data['LogPublishingOptions'] = LogPublishingOptions.stub(stub[:log_publishing_options]) unless stub[:log_publishing_options].nil?
        data['ServiceSoftwareOptions'] = ServiceSoftwareOptions.stub(stub[:service_software_options]) unless stub[:service_software_options].nil?
        data['DomainEndpointOptions'] = DomainEndpointOptions.stub(stub[:domain_endpoint_options]) unless stub[:domain_endpoint_options].nil?
        data['AdvancedSecurityOptions'] = AdvancedSecurityOptions.stub(stub[:advanced_security_options]) unless stub[:advanced_security_options].nil?
        data['AutoTuneOptions'] = AutoTuneOptionsOutput.stub(stub[:auto_tune_options]) unless stub[:auto_tune_options].nil?
        data['ChangeProgressDetails'] = ChangeProgressDetails.stub(stub[:change_progress_details]) unless stub[:change_progress_details].nil?
        data
      end
    end

    # Structure Stubber for ChangeProgressDetails
    class ChangeProgressDetails
      def self.default(visited=[])
        return nil if visited.include?('ChangeProgressDetails')
        visited = visited + ['ChangeProgressDetails']
        {
          change_id: 'change_id',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::ChangeProgressDetails.new
        data = {}
        data['ChangeId'] = stub[:change_id] unless stub[:change_id].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Structure Stubber for AutoTuneOptionsOutput
    class AutoTuneOptionsOutput
      def self.default(visited=[])
        return nil if visited.include?('AutoTuneOptionsOutput')
        visited = visited + ['AutoTuneOptionsOutput']
        {
          state: 'state',
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::AutoTuneOptionsOutput.new
        data = {}
        data['State'] = stub[:state] unless stub[:state].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # Structure Stubber for AdvancedSecurityOptions
    class AdvancedSecurityOptions
      def self.default(visited=[])
        return nil if visited.include?('AdvancedSecurityOptions')
        visited = visited + ['AdvancedSecurityOptions']
        {
          enabled: false,
          internal_user_database_enabled: false,
          saml_options: SAMLOptionsOutput.default(visited),
          anonymous_auth_disable_date: Time.now,
          anonymous_auth_enabled: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::AdvancedSecurityOptions.new
        data = {}
        data['Enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['InternalUserDatabaseEnabled'] = stub[:internal_user_database_enabled] unless stub[:internal_user_database_enabled].nil?
        data['SAMLOptions'] = SAMLOptionsOutput.stub(stub[:saml_options]) unless stub[:saml_options].nil?
        data['AnonymousAuthDisableDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:anonymous_auth_disable_date]).to_i unless stub[:anonymous_auth_disable_date].nil?
        data['AnonymousAuthEnabled'] = stub[:anonymous_auth_enabled] unless stub[:anonymous_auth_enabled].nil?
        data
      end
    end

    # Structure Stubber for SAMLOptionsOutput
    class SAMLOptionsOutput
      def self.default(visited=[])
        return nil if visited.include?('SAMLOptionsOutput')
        visited = visited + ['SAMLOptionsOutput']
        {
          enabled: false,
          idp: SAMLIdp.default(visited),
          subject_key: 'subject_key',
          roles_key: 'roles_key',
          session_timeout_minutes: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::SAMLOptionsOutput.new
        data = {}
        data['Enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['Idp'] = SAMLIdp.stub(stub[:idp]) unless stub[:idp].nil?
        data['SubjectKey'] = stub[:subject_key] unless stub[:subject_key].nil?
        data['RolesKey'] = stub[:roles_key] unless stub[:roles_key].nil?
        data['SessionTimeoutMinutes'] = stub[:session_timeout_minutes] unless stub[:session_timeout_minutes].nil?
        data
      end
    end

    # Structure Stubber for SAMLIdp
    class SAMLIdp
      def self.default(visited=[])
        return nil if visited.include?('SAMLIdp')
        visited = visited + ['SAMLIdp']
        {
          metadata_content: 'metadata_content',
          entity_id: 'entity_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::SAMLIdp.new
        data = {}
        data['MetadataContent'] = stub[:metadata_content] unless stub[:metadata_content].nil?
        data['EntityId'] = stub[:entity_id] unless stub[:entity_id].nil?
        data
      end
    end

    # Structure Stubber for DomainEndpointOptions
    class DomainEndpointOptions
      def self.default(visited=[])
        return nil if visited.include?('DomainEndpointOptions')
        visited = visited + ['DomainEndpointOptions']
        {
          enforce_https: false,
          tls_security_policy: 'tls_security_policy',
          custom_endpoint_enabled: false,
          custom_endpoint: 'custom_endpoint',
          custom_endpoint_certificate_arn: 'custom_endpoint_certificate_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::DomainEndpointOptions.new
        data = {}
        data['EnforceHTTPS'] = stub[:enforce_https] unless stub[:enforce_https].nil?
        data['TLSSecurityPolicy'] = stub[:tls_security_policy] unless stub[:tls_security_policy].nil?
        data['CustomEndpointEnabled'] = stub[:custom_endpoint_enabled] unless stub[:custom_endpoint_enabled].nil?
        data['CustomEndpoint'] = stub[:custom_endpoint] unless stub[:custom_endpoint].nil?
        data['CustomEndpointCertificateArn'] = stub[:custom_endpoint_certificate_arn] unless stub[:custom_endpoint_certificate_arn].nil?
        data
      end
    end

    # Map Stubber for LogPublishingOptions
    class LogPublishingOptions
      def self.default(visited=[])
        return nil if visited.include?('LogPublishingOptions')
        visited = visited + ['LogPublishingOptions']
        {
          test_key: LogPublishingOption.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = LogPublishingOption.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for LogPublishingOption
    class LogPublishingOption
      def self.default(visited=[])
        return nil if visited.include?('LogPublishingOption')
        visited = visited + ['LogPublishingOption']
        {
          cloud_watch_logs_log_group_arn: 'cloud_watch_logs_log_group_arn',
          enabled: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::LogPublishingOption.new
        data = {}
        data['CloudWatchLogsLogGroupArn'] = stub[:cloud_watch_logs_log_group_arn] unless stub[:cloud_watch_logs_log_group_arn].nil?
        data['Enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data
      end
    end

    # Map Stubber for AdvancedOptions
    class AdvancedOptions
      def self.default(visited=[])
        return nil if visited.include?('AdvancedOptions')
        visited = visited + ['AdvancedOptions']
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

    # Structure Stubber for NodeToNodeEncryptionOptions
    class NodeToNodeEncryptionOptions
      def self.default(visited=[])
        return nil if visited.include?('NodeToNodeEncryptionOptions')
        visited = visited + ['NodeToNodeEncryptionOptions']
        {
          enabled: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::NodeToNodeEncryptionOptions.new
        data = {}
        data['Enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data
      end
    end

    # Structure Stubber for EncryptionAtRestOptions
    class EncryptionAtRestOptions
      def self.default(visited=[])
        return nil if visited.include?('EncryptionAtRestOptions')
        visited = visited + ['EncryptionAtRestOptions']
        {
          enabled: false,
          kms_key_id: 'kms_key_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::EncryptionAtRestOptions.new
        data = {}
        data['Enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data
      end
    end

    # Structure Stubber for CognitoOptions
    class CognitoOptions
      def self.default(visited=[])
        return nil if visited.include?('CognitoOptions')
        visited = visited + ['CognitoOptions']
        {
          enabled: false,
          user_pool_id: 'user_pool_id',
          identity_pool_id: 'identity_pool_id',
          role_arn: 'role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::CognitoOptions.new
        data = {}
        data['Enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['UserPoolId'] = stub[:user_pool_id] unless stub[:user_pool_id].nil?
        data['IdentityPoolId'] = stub[:identity_pool_id] unless stub[:identity_pool_id].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data
      end
    end

    # Structure Stubber for VPCDerivedInfo
    class VPCDerivedInfo
      def self.default(visited=[])
        return nil if visited.include?('VPCDerivedInfo')
        visited = visited + ['VPCDerivedInfo']
        {
          vpc_id: 'vpc_id',
          subnet_ids: StringList.default(visited),
          availability_zones: StringList.default(visited),
          security_group_ids: StringList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VPCDerivedInfo.new
        data = {}
        data['VPCId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data['SubnetIds'] = StringList.stub(stub[:subnet_ids]) unless stub[:subnet_ids].nil?
        data['AvailabilityZones'] = StringList.stub(stub[:availability_zones]) unless stub[:availability_zones].nil?
        data['SecurityGroupIds'] = StringList.stub(stub[:security_group_ids]) unless stub[:security_group_ids].nil?
        data
      end
    end

    # List Stubber for StringList
    class StringList
      def self.default(visited=[])
        return nil if visited.include?('StringList')
        visited = visited + ['StringList']
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

    # Structure Stubber for SnapshotOptions
    class SnapshotOptions
      def self.default(visited=[])
        return nil if visited.include?('SnapshotOptions')
        visited = visited + ['SnapshotOptions']
        {
          automated_snapshot_start_hour: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::SnapshotOptions.new
        data = {}
        data['AutomatedSnapshotStartHour'] = stub[:automated_snapshot_start_hour] unless stub[:automated_snapshot_start_hour].nil?
        data
      end
    end

    # Structure Stubber for EBSOptions
    class EBSOptions
      def self.default(visited=[])
        return nil if visited.include?('EBSOptions')
        visited = visited + ['EBSOptions']
        {
          ebs_enabled: false,
          volume_type: 'volume_type',
          volume_size: 1,
          iops: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::EBSOptions.new
        data = {}
        data['EBSEnabled'] = stub[:ebs_enabled] unless stub[:ebs_enabled].nil?
        data['VolumeType'] = stub[:volume_type] unless stub[:volume_type].nil?
        data['VolumeSize'] = stub[:volume_size] unless stub[:volume_size].nil?
        data['Iops'] = stub[:iops] unless stub[:iops].nil?
        data
      end
    end

    # Structure Stubber for ElasticsearchClusterConfig
    class ElasticsearchClusterConfig
      def self.default(visited=[])
        return nil if visited.include?('ElasticsearchClusterConfig')
        visited = visited + ['ElasticsearchClusterConfig']
        {
          instance_type: 'instance_type',
          instance_count: 1,
          dedicated_master_enabled: false,
          zone_awareness_enabled: false,
          zone_awareness_config: ZoneAwarenessConfig.default(visited),
          dedicated_master_type: 'dedicated_master_type',
          dedicated_master_count: 1,
          warm_enabled: false,
          warm_type: 'warm_type',
          warm_count: 1,
          cold_storage_options: ColdStorageOptions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ElasticsearchClusterConfig.new
        data = {}
        data['InstanceType'] = stub[:instance_type] unless stub[:instance_type].nil?
        data['InstanceCount'] = stub[:instance_count] unless stub[:instance_count].nil?
        data['DedicatedMasterEnabled'] = stub[:dedicated_master_enabled] unless stub[:dedicated_master_enabled].nil?
        data['ZoneAwarenessEnabled'] = stub[:zone_awareness_enabled] unless stub[:zone_awareness_enabled].nil?
        data['ZoneAwarenessConfig'] = ZoneAwarenessConfig.stub(stub[:zone_awareness_config]) unless stub[:zone_awareness_config].nil?
        data['DedicatedMasterType'] = stub[:dedicated_master_type] unless stub[:dedicated_master_type].nil?
        data['DedicatedMasterCount'] = stub[:dedicated_master_count] unless stub[:dedicated_master_count].nil?
        data['WarmEnabled'] = stub[:warm_enabled] unless stub[:warm_enabled].nil?
        data['WarmType'] = stub[:warm_type] unless stub[:warm_type].nil?
        data['WarmCount'] = stub[:warm_count] unless stub[:warm_count].nil?
        data['ColdStorageOptions'] = ColdStorageOptions.stub(stub[:cold_storage_options]) unless stub[:cold_storage_options].nil?
        data
      end
    end

    # Structure Stubber for ColdStorageOptions
    class ColdStorageOptions
      def self.default(visited=[])
        return nil if visited.include?('ColdStorageOptions')
        visited = visited + ['ColdStorageOptions']
        {
          enabled: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::ColdStorageOptions.new
        data = {}
        data['Enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data
      end
    end

    # Structure Stubber for ZoneAwarenessConfig
    class ZoneAwarenessConfig
      def self.default(visited=[])
        return nil if visited.include?('ZoneAwarenessConfig')
        visited = visited + ['ZoneAwarenessConfig']
        {
          availability_zone_count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ZoneAwarenessConfig.new
        data = {}
        data['AvailabilityZoneCount'] = stub[:availability_zone_count] unless stub[:availability_zone_count].nil?
        data
      end
    end

    # Map Stubber for EndpointsMap
    class EndpointsMap
      def self.default(visited=[])
        return nil if visited.include?('EndpointsMap')
        visited = visited + ['EndpointsMap']
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

    # Operation Stubber for CreateOutboundCrossClusterSearchConnection
    class CreateOutboundCrossClusterSearchConnection
      def self.default(visited=[])
        {
          source_domain_info: DomainInformation.default(visited),
          destination_domain_info: DomainInformation.default(visited),
          connection_alias: 'connection_alias',
          connection_status: OutboundCrossClusterSearchConnectionStatus.default(visited),
          cross_cluster_search_connection_id: 'cross_cluster_search_connection_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['SourceDomainInfo'] = DomainInformation.stub(stub[:source_domain_info]) unless stub[:source_domain_info].nil?
        data['DestinationDomainInfo'] = DomainInformation.stub(stub[:destination_domain_info]) unless stub[:destination_domain_info].nil?
        data['ConnectionAlias'] = stub[:connection_alias] unless stub[:connection_alias].nil?
        data['ConnectionStatus'] = OutboundCrossClusterSearchConnectionStatus.stub(stub[:connection_status]) unless stub[:connection_status].nil?
        data['CrossClusterSearchConnectionId'] = stub[:cross_cluster_search_connection_id] unless stub[:cross_cluster_search_connection_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for OutboundCrossClusterSearchConnectionStatus
    class OutboundCrossClusterSearchConnectionStatus
      def self.default(visited=[])
        return nil if visited.include?('OutboundCrossClusterSearchConnectionStatus')
        visited = visited + ['OutboundCrossClusterSearchConnectionStatus']
        {
          status_code: 'status_code',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::OutboundCrossClusterSearchConnectionStatus.new
        data = {}
        data['StatusCode'] = stub[:status_code] unless stub[:status_code].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Operation Stubber for CreatePackage
    class CreatePackage
      def self.default(visited=[])
        {
          package_details: PackageDetails.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['PackageDetails'] = PackageDetails.stub(stub[:package_details]) unless stub[:package_details].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for PackageDetails
    class PackageDetails
      def self.default(visited=[])
        return nil if visited.include?('PackageDetails')
        visited = visited + ['PackageDetails']
        {
          package_id: 'package_id',
          package_name: 'package_name',
          package_type: 'package_type',
          package_description: 'package_description',
          package_status: 'package_status',
          created_at: Time.now,
          last_updated_at: Time.now,
          available_package_version: 'available_package_version',
          error_details: ErrorDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PackageDetails.new
        data = {}
        data['PackageID'] = stub[:package_id] unless stub[:package_id].nil?
        data['PackageName'] = stub[:package_name] unless stub[:package_name].nil?
        data['PackageType'] = stub[:package_type] unless stub[:package_type].nil?
        data['PackageDescription'] = stub[:package_description] unless stub[:package_description].nil?
        data['PackageStatus'] = stub[:package_status] unless stub[:package_status].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['LastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data['AvailablePackageVersion'] = stub[:available_package_version] unless stub[:available_package_version].nil?
        data['ErrorDetails'] = ErrorDetails.stub(stub[:error_details]) unless stub[:error_details].nil?
        data
      end
    end

    # Operation Stubber for DeleteElasticsearchDomain
    class DeleteElasticsearchDomain
      def self.default(visited=[])
        {
          domain_status: ElasticsearchDomainStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DomainStatus'] = ElasticsearchDomainStatus.stub(stub[:domain_status]) unless stub[:domain_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteElasticsearchServiceRole
    class DeleteElasticsearchServiceRole
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteInboundCrossClusterSearchConnection
    class DeleteInboundCrossClusterSearchConnection
      def self.default(visited=[])
        {
          cross_cluster_search_connection: InboundCrossClusterSearchConnection.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['CrossClusterSearchConnection'] = InboundCrossClusterSearchConnection.stub(stub[:cross_cluster_search_connection]) unless stub[:cross_cluster_search_connection].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteOutboundCrossClusterSearchConnection
    class DeleteOutboundCrossClusterSearchConnection
      def self.default(visited=[])
        {
          cross_cluster_search_connection: OutboundCrossClusterSearchConnection.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['CrossClusterSearchConnection'] = OutboundCrossClusterSearchConnection.stub(stub[:cross_cluster_search_connection]) unless stub[:cross_cluster_search_connection].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for OutboundCrossClusterSearchConnection
    class OutboundCrossClusterSearchConnection
      def self.default(visited=[])
        return nil if visited.include?('OutboundCrossClusterSearchConnection')
        visited = visited + ['OutboundCrossClusterSearchConnection']
        {
          source_domain_info: DomainInformation.default(visited),
          destination_domain_info: DomainInformation.default(visited),
          cross_cluster_search_connection_id: 'cross_cluster_search_connection_id',
          connection_alias: 'connection_alias',
          connection_status: OutboundCrossClusterSearchConnectionStatus.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::OutboundCrossClusterSearchConnection.new
        data = {}
        data['SourceDomainInfo'] = DomainInformation.stub(stub[:source_domain_info]) unless stub[:source_domain_info].nil?
        data['DestinationDomainInfo'] = DomainInformation.stub(stub[:destination_domain_info]) unless stub[:destination_domain_info].nil?
        data['CrossClusterSearchConnectionId'] = stub[:cross_cluster_search_connection_id] unless stub[:cross_cluster_search_connection_id].nil?
        data['ConnectionAlias'] = stub[:connection_alias] unless stub[:connection_alias].nil?
        data['ConnectionStatus'] = OutboundCrossClusterSearchConnectionStatus.stub(stub[:connection_status]) unless stub[:connection_status].nil?
        data
      end
    end

    # Operation Stubber for DeletePackage
    class DeletePackage
      def self.default(visited=[])
        {
          package_details: PackageDetails.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['PackageDetails'] = PackageDetails.stub(stub[:package_details]) unless stub[:package_details].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeDomainAutoTunes
    class DescribeDomainAutoTunes
      def self.default(visited=[])
        {
          auto_tunes: AutoTuneList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AutoTunes'] = AutoTuneList.stub(stub[:auto_tunes]) unless stub[:auto_tunes].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AutoTuneList
    class AutoTuneList
      def self.default(visited=[])
        return nil if visited.include?('AutoTuneList')
        visited = visited + ['AutoTuneList']
        [
          AutoTune.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AutoTune.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AutoTune
    class AutoTune
      def self.default(visited=[])
        return nil if visited.include?('AutoTune')
        visited = visited + ['AutoTune']
        {
          auto_tune_type: 'auto_tune_type',
          auto_tune_details: AutoTuneDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AutoTune.new
        data = {}
        data['AutoTuneType'] = stub[:auto_tune_type] unless stub[:auto_tune_type].nil?
        data['AutoTuneDetails'] = AutoTuneDetails.stub(stub[:auto_tune_details]) unless stub[:auto_tune_details].nil?
        data
      end
    end

    # Structure Stubber for AutoTuneDetails
    class AutoTuneDetails
      def self.default(visited=[])
        return nil if visited.include?('AutoTuneDetails')
        visited = visited + ['AutoTuneDetails']
        {
          scheduled_auto_tune_details: ScheduledAutoTuneDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AutoTuneDetails.new
        data = {}
        data['ScheduledAutoTuneDetails'] = ScheduledAutoTuneDetails.stub(stub[:scheduled_auto_tune_details]) unless stub[:scheduled_auto_tune_details].nil?
        data
      end
    end

    # Structure Stubber for ScheduledAutoTuneDetails
    class ScheduledAutoTuneDetails
      def self.default(visited=[])
        return nil if visited.include?('ScheduledAutoTuneDetails')
        visited = visited + ['ScheduledAutoTuneDetails']
        {
          date: Time.now,
          action_type: 'action_type',
          action: 'action',
          severity: 'severity',
        }
      end

      def self.stub(stub)
        stub ||= Types::ScheduledAutoTuneDetails.new
        data = {}
        data['Date'] = Hearth::TimeHelper.to_epoch_seconds(stub[:date]).to_i unless stub[:date].nil?
        data['ActionType'] = stub[:action_type] unless stub[:action_type].nil?
        data['Action'] = stub[:action] unless stub[:action].nil?
        data['Severity'] = stub[:severity] unless stub[:severity].nil?
        data
      end
    end

    # Operation Stubber for DescribeDomainChangeProgress
    class DescribeDomainChangeProgress
      def self.default(visited=[])
        {
          change_progress_status: ChangeProgressStatusDetails.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ChangeProgressStatus'] = ChangeProgressStatusDetails.stub(stub[:change_progress_status]) unless stub[:change_progress_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ChangeProgressStatusDetails
    class ChangeProgressStatusDetails
      def self.default(visited=[])
        return nil if visited.include?('ChangeProgressStatusDetails')
        visited = visited + ['ChangeProgressStatusDetails']
        {
          change_id: 'change_id',
          start_time: Time.now,
          status: 'status',
          pending_properties: StringList.default(visited),
          completed_properties: StringList.default(visited),
          total_number_of_stages: 1,
          change_progress_stages: ChangeProgressStageList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ChangeProgressStatusDetails.new
        data = {}
        data['ChangeId'] = stub[:change_id] unless stub[:change_id].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['PendingProperties'] = StringList.stub(stub[:pending_properties]) unless stub[:pending_properties].nil?
        data['CompletedProperties'] = StringList.stub(stub[:completed_properties]) unless stub[:completed_properties].nil?
        data['TotalNumberOfStages'] = stub[:total_number_of_stages] unless stub[:total_number_of_stages].nil?
        data['ChangeProgressStages'] = ChangeProgressStageList.stub(stub[:change_progress_stages]) unless stub[:change_progress_stages].nil?
        data
      end
    end

    # List Stubber for ChangeProgressStageList
    class ChangeProgressStageList
      def self.default(visited=[])
        return nil if visited.include?('ChangeProgressStageList')
        visited = visited + ['ChangeProgressStageList']
        [
          ChangeProgressStage.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ChangeProgressStage.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ChangeProgressStage
    class ChangeProgressStage
      def self.default(visited=[])
        return nil if visited.include?('ChangeProgressStage')
        visited = visited + ['ChangeProgressStage']
        {
          name: 'name',
          status: 'status',
          description: 'description',
          last_updated: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ChangeProgressStage.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['LastUpdated'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated]).to_i unless stub[:last_updated].nil?
        data
      end
    end

    # Operation Stubber for DescribeElasticsearchDomain
    class DescribeElasticsearchDomain
      def self.default(visited=[])
        {
          domain_status: ElasticsearchDomainStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DomainStatus'] = ElasticsearchDomainStatus.stub(stub[:domain_status]) unless stub[:domain_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeElasticsearchDomainConfig
    class DescribeElasticsearchDomainConfig
      def self.default(visited=[])
        {
          domain_config: ElasticsearchDomainConfig.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DomainConfig'] = ElasticsearchDomainConfig.stub(stub[:domain_config]) unless stub[:domain_config].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ElasticsearchDomainConfig
    class ElasticsearchDomainConfig
      def self.default(visited=[])
        return nil if visited.include?('ElasticsearchDomainConfig')
        visited = visited + ['ElasticsearchDomainConfig']
        {
          elasticsearch_version: ElasticsearchVersionStatus.default(visited),
          elasticsearch_cluster_config: ElasticsearchClusterConfigStatus.default(visited),
          ebs_options: EBSOptionsStatus.default(visited),
          access_policies: AccessPoliciesStatus.default(visited),
          snapshot_options: SnapshotOptionsStatus.default(visited),
          vpc_options: VPCDerivedInfoStatus.default(visited),
          cognito_options: CognitoOptionsStatus.default(visited),
          encryption_at_rest_options: EncryptionAtRestOptionsStatus.default(visited),
          node_to_node_encryption_options: NodeToNodeEncryptionOptionsStatus.default(visited),
          advanced_options: AdvancedOptionsStatus.default(visited),
          log_publishing_options: LogPublishingOptionsStatus.default(visited),
          domain_endpoint_options: DomainEndpointOptionsStatus.default(visited),
          advanced_security_options: AdvancedSecurityOptionsStatus.default(visited),
          auto_tune_options: AutoTuneOptionsStatus.default(visited),
          change_progress_details: ChangeProgressDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ElasticsearchDomainConfig.new
        data = {}
        data['ElasticsearchVersion'] = ElasticsearchVersionStatus.stub(stub[:elasticsearch_version]) unless stub[:elasticsearch_version].nil?
        data['ElasticsearchClusterConfig'] = ElasticsearchClusterConfigStatus.stub(stub[:elasticsearch_cluster_config]) unless stub[:elasticsearch_cluster_config].nil?
        data['EBSOptions'] = EBSOptionsStatus.stub(stub[:ebs_options]) unless stub[:ebs_options].nil?
        data['AccessPolicies'] = AccessPoliciesStatus.stub(stub[:access_policies]) unless stub[:access_policies].nil?
        data['SnapshotOptions'] = SnapshotOptionsStatus.stub(stub[:snapshot_options]) unless stub[:snapshot_options].nil?
        data['VPCOptions'] = VPCDerivedInfoStatus.stub(stub[:vpc_options]) unless stub[:vpc_options].nil?
        data['CognitoOptions'] = CognitoOptionsStatus.stub(stub[:cognito_options]) unless stub[:cognito_options].nil?
        data['EncryptionAtRestOptions'] = EncryptionAtRestOptionsStatus.stub(stub[:encryption_at_rest_options]) unless stub[:encryption_at_rest_options].nil?
        data['NodeToNodeEncryptionOptions'] = NodeToNodeEncryptionOptionsStatus.stub(stub[:node_to_node_encryption_options]) unless stub[:node_to_node_encryption_options].nil?
        data['AdvancedOptions'] = AdvancedOptionsStatus.stub(stub[:advanced_options]) unless stub[:advanced_options].nil?
        data['LogPublishingOptions'] = LogPublishingOptionsStatus.stub(stub[:log_publishing_options]) unless stub[:log_publishing_options].nil?
        data['DomainEndpointOptions'] = DomainEndpointOptionsStatus.stub(stub[:domain_endpoint_options]) unless stub[:domain_endpoint_options].nil?
        data['AdvancedSecurityOptions'] = AdvancedSecurityOptionsStatus.stub(stub[:advanced_security_options]) unless stub[:advanced_security_options].nil?
        data['AutoTuneOptions'] = AutoTuneOptionsStatus.stub(stub[:auto_tune_options]) unless stub[:auto_tune_options].nil?
        data['ChangeProgressDetails'] = ChangeProgressDetails.stub(stub[:change_progress_details]) unless stub[:change_progress_details].nil?
        data
      end
    end

    # Structure Stubber for AutoTuneOptionsStatus
    class AutoTuneOptionsStatus
      def self.default(visited=[])
        return nil if visited.include?('AutoTuneOptionsStatus')
        visited = visited + ['AutoTuneOptionsStatus']
        {
          options: AutoTuneOptions.default(visited),
          status: AutoTuneStatus.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AutoTuneOptionsStatus.new
        data = {}
        data['Options'] = AutoTuneOptions.stub(stub[:options]) unless stub[:options].nil?
        data['Status'] = AutoTuneStatus.stub(stub[:status]) unless stub[:status].nil?
        data
      end
    end

    # Structure Stubber for AutoTuneStatus
    class AutoTuneStatus
      def self.default(visited=[])
        return nil if visited.include?('AutoTuneStatus')
        visited = visited + ['AutoTuneStatus']
        {
          creation_date: Time.now,
          update_date: Time.now,
          update_version: 1,
          state: 'state',
          error_message: 'error_message',
          pending_deletion: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::AutoTuneStatus.new
        data = {}
        data['CreationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['UpdateDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:update_date]).to_i unless stub[:update_date].nil?
        data['UpdateVersion'] = stub[:update_version] unless stub[:update_version].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data['PendingDeletion'] = stub[:pending_deletion] unless stub[:pending_deletion].nil?
        data
      end
    end

    # Structure Stubber for AutoTuneOptions
    class AutoTuneOptions
      def self.default(visited=[])
        return nil if visited.include?('AutoTuneOptions')
        visited = visited + ['AutoTuneOptions']
        {
          desired_state: 'desired_state',
          rollback_on_disable: 'rollback_on_disable',
          maintenance_schedules: AutoTuneMaintenanceScheduleList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AutoTuneOptions.new
        data = {}
        data['DesiredState'] = stub[:desired_state] unless stub[:desired_state].nil?
        data['RollbackOnDisable'] = stub[:rollback_on_disable] unless stub[:rollback_on_disable].nil?
        data['MaintenanceSchedules'] = AutoTuneMaintenanceScheduleList.stub(stub[:maintenance_schedules]) unless stub[:maintenance_schedules].nil?
        data
      end
    end

    # List Stubber for AutoTuneMaintenanceScheduleList
    class AutoTuneMaintenanceScheduleList
      def self.default(visited=[])
        return nil if visited.include?('AutoTuneMaintenanceScheduleList')
        visited = visited + ['AutoTuneMaintenanceScheduleList']
        [
          AutoTuneMaintenanceSchedule.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AutoTuneMaintenanceSchedule.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AutoTuneMaintenanceSchedule
    class AutoTuneMaintenanceSchedule
      def self.default(visited=[])
        return nil if visited.include?('AutoTuneMaintenanceSchedule')
        visited = visited + ['AutoTuneMaintenanceSchedule']
        {
          start_at: Time.now,
          duration: Duration.default(visited),
          cron_expression_for_recurrence: 'cron_expression_for_recurrence',
        }
      end

      def self.stub(stub)
        stub ||= Types::AutoTuneMaintenanceSchedule.new
        data = {}
        data['StartAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_at]).to_i unless stub[:start_at].nil?
        data['Duration'] = Duration.stub(stub[:duration]) unless stub[:duration].nil?
        data['CronExpressionForRecurrence'] = stub[:cron_expression_for_recurrence] unless stub[:cron_expression_for_recurrence].nil?
        data
      end
    end

    # Structure Stubber for Duration
    class Duration
      def self.default(visited=[])
        return nil if visited.include?('Duration')
        visited = visited + ['Duration']
        {
          value: 1,
          unit: 'unit',
        }
      end

      def self.stub(stub)
        stub ||= Types::Duration.new
        data = {}
        data['Value'] = stub[:value] unless stub[:value].nil?
        data['Unit'] = stub[:unit] unless stub[:unit].nil?
        data
      end
    end

    # Structure Stubber for AdvancedSecurityOptionsStatus
    class AdvancedSecurityOptionsStatus
      def self.default(visited=[])
        return nil if visited.include?('AdvancedSecurityOptionsStatus')
        visited = visited + ['AdvancedSecurityOptionsStatus']
        {
          options: AdvancedSecurityOptions.default(visited),
          status: OptionStatus.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AdvancedSecurityOptionsStatus.new
        data = {}
        data['Options'] = AdvancedSecurityOptions.stub(stub[:options]) unless stub[:options].nil?
        data['Status'] = OptionStatus.stub(stub[:status]) unless stub[:status].nil?
        data
      end
    end

    # Structure Stubber for OptionStatus
    class OptionStatus
      def self.default(visited=[])
        return nil if visited.include?('OptionStatus')
        visited = visited + ['OptionStatus']
        {
          creation_date: Time.now,
          update_date: Time.now,
          update_version: 1,
          state: 'state',
          pending_deletion: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::OptionStatus.new
        data = {}
        data['CreationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['UpdateDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:update_date]).to_i unless stub[:update_date].nil?
        data['UpdateVersion'] = stub[:update_version] unless stub[:update_version].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['PendingDeletion'] = stub[:pending_deletion] unless stub[:pending_deletion].nil?
        data
      end
    end

    # Structure Stubber for DomainEndpointOptionsStatus
    class DomainEndpointOptionsStatus
      def self.default(visited=[])
        return nil if visited.include?('DomainEndpointOptionsStatus')
        visited = visited + ['DomainEndpointOptionsStatus']
        {
          options: DomainEndpointOptions.default(visited),
          status: OptionStatus.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DomainEndpointOptionsStatus.new
        data = {}
        data['Options'] = DomainEndpointOptions.stub(stub[:options]) unless stub[:options].nil?
        data['Status'] = OptionStatus.stub(stub[:status]) unless stub[:status].nil?
        data
      end
    end

    # Structure Stubber for LogPublishingOptionsStatus
    class LogPublishingOptionsStatus
      def self.default(visited=[])
        return nil if visited.include?('LogPublishingOptionsStatus')
        visited = visited + ['LogPublishingOptionsStatus']
        {
          options: LogPublishingOptions.default(visited),
          status: OptionStatus.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LogPublishingOptionsStatus.new
        data = {}
        data['Options'] = LogPublishingOptions.stub(stub[:options]) unless stub[:options].nil?
        data['Status'] = OptionStatus.stub(stub[:status]) unless stub[:status].nil?
        data
      end
    end

    # Structure Stubber for AdvancedOptionsStatus
    class AdvancedOptionsStatus
      def self.default(visited=[])
        return nil if visited.include?('AdvancedOptionsStatus')
        visited = visited + ['AdvancedOptionsStatus']
        {
          options: AdvancedOptions.default(visited),
          status: OptionStatus.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AdvancedOptionsStatus.new
        data = {}
        data['Options'] = AdvancedOptions.stub(stub[:options]) unless stub[:options].nil?
        data['Status'] = OptionStatus.stub(stub[:status]) unless stub[:status].nil?
        data
      end
    end

    # Structure Stubber for NodeToNodeEncryptionOptionsStatus
    class NodeToNodeEncryptionOptionsStatus
      def self.default(visited=[])
        return nil if visited.include?('NodeToNodeEncryptionOptionsStatus')
        visited = visited + ['NodeToNodeEncryptionOptionsStatus']
        {
          options: NodeToNodeEncryptionOptions.default(visited),
          status: OptionStatus.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::NodeToNodeEncryptionOptionsStatus.new
        data = {}
        data['Options'] = NodeToNodeEncryptionOptions.stub(stub[:options]) unless stub[:options].nil?
        data['Status'] = OptionStatus.stub(stub[:status]) unless stub[:status].nil?
        data
      end
    end

    # Structure Stubber for EncryptionAtRestOptionsStatus
    class EncryptionAtRestOptionsStatus
      def self.default(visited=[])
        return nil if visited.include?('EncryptionAtRestOptionsStatus')
        visited = visited + ['EncryptionAtRestOptionsStatus']
        {
          options: EncryptionAtRestOptions.default(visited),
          status: OptionStatus.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EncryptionAtRestOptionsStatus.new
        data = {}
        data['Options'] = EncryptionAtRestOptions.stub(stub[:options]) unless stub[:options].nil?
        data['Status'] = OptionStatus.stub(stub[:status]) unless stub[:status].nil?
        data
      end
    end

    # Structure Stubber for CognitoOptionsStatus
    class CognitoOptionsStatus
      def self.default(visited=[])
        return nil if visited.include?('CognitoOptionsStatus')
        visited = visited + ['CognitoOptionsStatus']
        {
          options: CognitoOptions.default(visited),
          status: OptionStatus.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CognitoOptionsStatus.new
        data = {}
        data['Options'] = CognitoOptions.stub(stub[:options]) unless stub[:options].nil?
        data['Status'] = OptionStatus.stub(stub[:status]) unless stub[:status].nil?
        data
      end
    end

    # Structure Stubber for VPCDerivedInfoStatus
    class VPCDerivedInfoStatus
      def self.default(visited=[])
        return nil if visited.include?('VPCDerivedInfoStatus')
        visited = visited + ['VPCDerivedInfoStatus']
        {
          options: VPCDerivedInfo.default(visited),
          status: OptionStatus.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VPCDerivedInfoStatus.new
        data = {}
        data['Options'] = VPCDerivedInfo.stub(stub[:options]) unless stub[:options].nil?
        data['Status'] = OptionStatus.stub(stub[:status]) unless stub[:status].nil?
        data
      end
    end

    # Structure Stubber for SnapshotOptionsStatus
    class SnapshotOptionsStatus
      def self.default(visited=[])
        return nil if visited.include?('SnapshotOptionsStatus')
        visited = visited + ['SnapshotOptionsStatus']
        {
          options: SnapshotOptions.default(visited),
          status: OptionStatus.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SnapshotOptionsStatus.new
        data = {}
        data['Options'] = SnapshotOptions.stub(stub[:options]) unless stub[:options].nil?
        data['Status'] = OptionStatus.stub(stub[:status]) unless stub[:status].nil?
        data
      end
    end

    # Structure Stubber for AccessPoliciesStatus
    class AccessPoliciesStatus
      def self.default(visited=[])
        return nil if visited.include?('AccessPoliciesStatus')
        visited = visited + ['AccessPoliciesStatus']
        {
          options: 'options',
          status: OptionStatus.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AccessPoliciesStatus.new
        data = {}
        data['Options'] = stub[:options] unless stub[:options].nil?
        data['Status'] = OptionStatus.stub(stub[:status]) unless stub[:status].nil?
        data
      end
    end

    # Structure Stubber for EBSOptionsStatus
    class EBSOptionsStatus
      def self.default(visited=[])
        return nil if visited.include?('EBSOptionsStatus')
        visited = visited + ['EBSOptionsStatus']
        {
          options: EBSOptions.default(visited),
          status: OptionStatus.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EBSOptionsStatus.new
        data = {}
        data['Options'] = EBSOptions.stub(stub[:options]) unless stub[:options].nil?
        data['Status'] = OptionStatus.stub(stub[:status]) unless stub[:status].nil?
        data
      end
    end

    # Structure Stubber for ElasticsearchClusterConfigStatus
    class ElasticsearchClusterConfigStatus
      def self.default(visited=[])
        return nil if visited.include?('ElasticsearchClusterConfigStatus')
        visited = visited + ['ElasticsearchClusterConfigStatus']
        {
          options: ElasticsearchClusterConfig.default(visited),
          status: OptionStatus.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ElasticsearchClusterConfigStatus.new
        data = {}
        data['Options'] = ElasticsearchClusterConfig.stub(stub[:options]) unless stub[:options].nil?
        data['Status'] = OptionStatus.stub(stub[:status]) unless stub[:status].nil?
        data
      end
    end

    # Structure Stubber for ElasticsearchVersionStatus
    class ElasticsearchVersionStatus
      def self.default(visited=[])
        return nil if visited.include?('ElasticsearchVersionStatus')
        visited = visited + ['ElasticsearchVersionStatus']
        {
          options: 'options',
          status: OptionStatus.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ElasticsearchVersionStatus.new
        data = {}
        data['Options'] = stub[:options] unless stub[:options].nil?
        data['Status'] = OptionStatus.stub(stub[:status]) unless stub[:status].nil?
        data
      end
    end

    # Operation Stubber for DescribeElasticsearchDomains
    class DescribeElasticsearchDomains
      def self.default(visited=[])
        {
          domain_status_list: ElasticsearchDomainStatusList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DomainStatusList'] = ElasticsearchDomainStatusList.stub(stub[:domain_status_list]) unless stub[:domain_status_list].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ElasticsearchDomainStatusList
    class ElasticsearchDomainStatusList
      def self.default(visited=[])
        return nil if visited.include?('ElasticsearchDomainStatusList')
        visited = visited + ['ElasticsearchDomainStatusList']
        [
          ElasticsearchDomainStatus.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ElasticsearchDomainStatus.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeElasticsearchInstanceTypeLimits
    class DescribeElasticsearchInstanceTypeLimits
      def self.default(visited=[])
        {
          limits_by_role: LimitsByRole.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['LimitsByRole'] = LimitsByRole.stub(stub[:limits_by_role]) unless stub[:limits_by_role].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for LimitsByRole
    class LimitsByRole
      def self.default(visited=[])
        return nil if visited.include?('LimitsByRole')
        visited = visited + ['LimitsByRole']
        {
          test_key: Limits.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Limits.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for Limits
    class Limits
      def self.default(visited=[])
        return nil if visited.include?('Limits')
        visited = visited + ['Limits']
        {
          storage_types: StorageTypeList.default(visited),
          instance_limits: InstanceLimits.default(visited),
          additional_limits: AdditionalLimitList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Limits.new
        data = {}
        data['StorageTypes'] = StorageTypeList.stub(stub[:storage_types]) unless stub[:storage_types].nil?
        data['InstanceLimits'] = InstanceLimits.stub(stub[:instance_limits]) unless stub[:instance_limits].nil?
        data['AdditionalLimits'] = AdditionalLimitList.stub(stub[:additional_limits]) unless stub[:additional_limits].nil?
        data
      end
    end

    # List Stubber for AdditionalLimitList
    class AdditionalLimitList
      def self.default(visited=[])
        return nil if visited.include?('AdditionalLimitList')
        visited = visited + ['AdditionalLimitList']
        [
          AdditionalLimit.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AdditionalLimit.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AdditionalLimit
    class AdditionalLimit
      def self.default(visited=[])
        return nil if visited.include?('AdditionalLimit')
        visited = visited + ['AdditionalLimit']
        {
          limit_name: 'limit_name',
          limit_values: LimitValueList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AdditionalLimit.new
        data = {}
        data['LimitName'] = stub[:limit_name] unless stub[:limit_name].nil?
        data['LimitValues'] = LimitValueList.stub(stub[:limit_values]) unless stub[:limit_values].nil?
        data
      end
    end

    # List Stubber for LimitValueList
    class LimitValueList
      def self.default(visited=[])
        return nil if visited.include?('LimitValueList')
        visited = visited + ['LimitValueList']
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

    # Structure Stubber for InstanceLimits
    class InstanceLimits
      def self.default(visited=[])
        return nil if visited.include?('InstanceLimits')
        visited = visited + ['InstanceLimits']
        {
          instance_count_limits: InstanceCountLimits.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InstanceLimits.new
        data = {}
        data['InstanceCountLimits'] = InstanceCountLimits.stub(stub[:instance_count_limits]) unless stub[:instance_count_limits].nil?
        data
      end
    end

    # Structure Stubber for InstanceCountLimits
    class InstanceCountLimits
      def self.default(visited=[])
        return nil if visited.include?('InstanceCountLimits')
        visited = visited + ['InstanceCountLimits']
        {
          minimum_instance_count: 1,
          maximum_instance_count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::InstanceCountLimits.new
        data = {}
        data['MinimumInstanceCount'] = stub[:minimum_instance_count] unless stub[:minimum_instance_count].nil?
        data['MaximumInstanceCount'] = stub[:maximum_instance_count] unless stub[:maximum_instance_count].nil?
        data
      end
    end

    # List Stubber for StorageTypeList
    class StorageTypeList
      def self.default(visited=[])
        return nil if visited.include?('StorageTypeList')
        visited = visited + ['StorageTypeList']
        [
          StorageType.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << StorageType.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for StorageType
    class StorageType
      def self.default(visited=[])
        return nil if visited.include?('StorageType')
        visited = visited + ['StorageType']
        {
          storage_type_name: 'storage_type_name',
          storage_sub_type_name: 'storage_sub_type_name',
          storage_type_limits: StorageTypeLimitList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::StorageType.new
        data = {}
        data['StorageTypeName'] = stub[:storage_type_name] unless stub[:storage_type_name].nil?
        data['StorageSubTypeName'] = stub[:storage_sub_type_name] unless stub[:storage_sub_type_name].nil?
        data['StorageTypeLimits'] = StorageTypeLimitList.stub(stub[:storage_type_limits]) unless stub[:storage_type_limits].nil?
        data
      end
    end

    # List Stubber for StorageTypeLimitList
    class StorageTypeLimitList
      def self.default(visited=[])
        return nil if visited.include?('StorageTypeLimitList')
        visited = visited + ['StorageTypeLimitList']
        [
          StorageTypeLimit.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << StorageTypeLimit.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for StorageTypeLimit
    class StorageTypeLimit
      def self.default(visited=[])
        return nil if visited.include?('StorageTypeLimit')
        visited = visited + ['StorageTypeLimit']
        {
          limit_name: 'limit_name',
          limit_values: LimitValueList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::StorageTypeLimit.new
        data = {}
        data['LimitName'] = stub[:limit_name] unless stub[:limit_name].nil?
        data['LimitValues'] = LimitValueList.stub(stub[:limit_values]) unless stub[:limit_values].nil?
        data
      end
    end

    # Operation Stubber for DescribeInboundCrossClusterSearchConnections
    class DescribeInboundCrossClusterSearchConnections
      def self.default(visited=[])
        {
          cross_cluster_search_connections: InboundCrossClusterSearchConnections.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['CrossClusterSearchConnections'] = InboundCrossClusterSearchConnections.stub(stub[:cross_cluster_search_connections]) unless stub[:cross_cluster_search_connections].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for InboundCrossClusterSearchConnections
    class InboundCrossClusterSearchConnections
      def self.default(visited=[])
        return nil if visited.include?('InboundCrossClusterSearchConnections')
        visited = visited + ['InboundCrossClusterSearchConnections']
        [
          InboundCrossClusterSearchConnection.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << InboundCrossClusterSearchConnection.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeOutboundCrossClusterSearchConnections
    class DescribeOutboundCrossClusterSearchConnections
      def self.default(visited=[])
        {
          cross_cluster_search_connections: OutboundCrossClusterSearchConnections.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['CrossClusterSearchConnections'] = OutboundCrossClusterSearchConnections.stub(stub[:cross_cluster_search_connections]) unless stub[:cross_cluster_search_connections].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for OutboundCrossClusterSearchConnections
    class OutboundCrossClusterSearchConnections
      def self.default(visited=[])
        return nil if visited.include?('OutboundCrossClusterSearchConnections')
        visited = visited + ['OutboundCrossClusterSearchConnections']
        [
          OutboundCrossClusterSearchConnection.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << OutboundCrossClusterSearchConnection.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribePackages
    class DescribePackages
      def self.default(visited=[])
        {
          package_details_list: PackageDetailsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['PackageDetailsList'] = PackageDetailsList.stub(stub[:package_details_list]) unless stub[:package_details_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for PackageDetailsList
    class PackageDetailsList
      def self.default(visited=[])
        return nil if visited.include?('PackageDetailsList')
        visited = visited + ['PackageDetailsList']
        [
          PackageDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << PackageDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeReservedElasticsearchInstanceOfferings
    class DescribeReservedElasticsearchInstanceOfferings
      def self.default(visited=[])
        {
          next_token: 'next_token',
          reserved_elasticsearch_instance_offerings: ReservedElasticsearchInstanceOfferingList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['ReservedElasticsearchInstanceOfferings'] = ReservedElasticsearchInstanceOfferingList.stub(stub[:reserved_elasticsearch_instance_offerings]) unless stub[:reserved_elasticsearch_instance_offerings].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ReservedElasticsearchInstanceOfferingList
    class ReservedElasticsearchInstanceOfferingList
      def self.default(visited=[])
        return nil if visited.include?('ReservedElasticsearchInstanceOfferingList')
        visited = visited + ['ReservedElasticsearchInstanceOfferingList']
        [
          ReservedElasticsearchInstanceOffering.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ReservedElasticsearchInstanceOffering.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ReservedElasticsearchInstanceOffering
    class ReservedElasticsearchInstanceOffering
      def self.default(visited=[])
        return nil if visited.include?('ReservedElasticsearchInstanceOffering')
        visited = visited + ['ReservedElasticsearchInstanceOffering']
        {
          reserved_elasticsearch_instance_offering_id: 'reserved_elasticsearch_instance_offering_id',
          elasticsearch_instance_type: 'elasticsearch_instance_type',
          duration: 1,
          fixed_price: 1.0,
          usage_price: 1.0,
          currency_code: 'currency_code',
          payment_option: 'payment_option',
          recurring_charges: RecurringChargeList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ReservedElasticsearchInstanceOffering.new
        data = {}
        data['ReservedElasticsearchInstanceOfferingId'] = stub[:reserved_elasticsearch_instance_offering_id] unless stub[:reserved_elasticsearch_instance_offering_id].nil?
        data['ElasticsearchInstanceType'] = stub[:elasticsearch_instance_type] unless stub[:elasticsearch_instance_type].nil?
        data['Duration'] = stub[:duration] unless stub[:duration].nil?
        data['FixedPrice'] = Hearth::NumberHelper.serialize(stub[:fixed_price])
        data['UsagePrice'] = Hearth::NumberHelper.serialize(stub[:usage_price])
        data['CurrencyCode'] = stub[:currency_code] unless stub[:currency_code].nil?
        data['PaymentOption'] = stub[:payment_option] unless stub[:payment_option].nil?
        data['RecurringCharges'] = RecurringChargeList.stub(stub[:recurring_charges]) unless stub[:recurring_charges].nil?
        data
      end
    end

    # List Stubber for RecurringChargeList
    class RecurringChargeList
      def self.default(visited=[])
        return nil if visited.include?('RecurringChargeList')
        visited = visited + ['RecurringChargeList']
        [
          RecurringCharge.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RecurringCharge.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RecurringCharge
    class RecurringCharge
      def self.default(visited=[])
        return nil if visited.include?('RecurringCharge')
        visited = visited + ['RecurringCharge']
        {
          recurring_charge_amount: 1.0,
          recurring_charge_frequency: 'recurring_charge_frequency',
        }
      end

      def self.stub(stub)
        stub ||= Types::RecurringCharge.new
        data = {}
        data['RecurringChargeAmount'] = Hearth::NumberHelper.serialize(stub[:recurring_charge_amount])
        data['RecurringChargeFrequency'] = stub[:recurring_charge_frequency] unless stub[:recurring_charge_frequency].nil?
        data
      end
    end

    # Operation Stubber for DescribeReservedElasticsearchInstances
    class DescribeReservedElasticsearchInstances
      def self.default(visited=[])
        {
          next_token: 'next_token',
          reserved_elasticsearch_instances: ReservedElasticsearchInstanceList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['ReservedElasticsearchInstances'] = ReservedElasticsearchInstanceList.stub(stub[:reserved_elasticsearch_instances]) unless stub[:reserved_elasticsearch_instances].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ReservedElasticsearchInstanceList
    class ReservedElasticsearchInstanceList
      def self.default(visited=[])
        return nil if visited.include?('ReservedElasticsearchInstanceList')
        visited = visited + ['ReservedElasticsearchInstanceList']
        [
          ReservedElasticsearchInstance.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ReservedElasticsearchInstance.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ReservedElasticsearchInstance
    class ReservedElasticsearchInstance
      def self.default(visited=[])
        return nil if visited.include?('ReservedElasticsearchInstance')
        visited = visited + ['ReservedElasticsearchInstance']
        {
          reservation_name: 'reservation_name',
          reserved_elasticsearch_instance_id: 'reserved_elasticsearch_instance_id',
          reserved_elasticsearch_instance_offering_id: 'reserved_elasticsearch_instance_offering_id',
          elasticsearch_instance_type: 'elasticsearch_instance_type',
          start_time: Time.now,
          duration: 1,
          fixed_price: 1.0,
          usage_price: 1.0,
          currency_code: 'currency_code',
          elasticsearch_instance_count: 1,
          state: 'state',
          payment_option: 'payment_option',
          recurring_charges: RecurringChargeList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ReservedElasticsearchInstance.new
        data = {}
        data['ReservationName'] = stub[:reservation_name] unless stub[:reservation_name].nil?
        data['ReservedElasticsearchInstanceId'] = stub[:reserved_elasticsearch_instance_id] unless stub[:reserved_elasticsearch_instance_id].nil?
        data['ReservedElasticsearchInstanceOfferingId'] = stub[:reserved_elasticsearch_instance_offering_id] unless stub[:reserved_elasticsearch_instance_offering_id].nil?
        data['ElasticsearchInstanceType'] = stub[:elasticsearch_instance_type] unless stub[:elasticsearch_instance_type].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['Duration'] = stub[:duration] unless stub[:duration].nil?
        data['FixedPrice'] = Hearth::NumberHelper.serialize(stub[:fixed_price])
        data['UsagePrice'] = Hearth::NumberHelper.serialize(stub[:usage_price])
        data['CurrencyCode'] = stub[:currency_code] unless stub[:currency_code].nil?
        data['ElasticsearchInstanceCount'] = stub[:elasticsearch_instance_count] unless stub[:elasticsearch_instance_count].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['PaymentOption'] = stub[:payment_option] unless stub[:payment_option].nil?
        data['RecurringCharges'] = RecurringChargeList.stub(stub[:recurring_charges]) unless stub[:recurring_charges].nil?
        data
      end
    end

    # Operation Stubber for DissociatePackage
    class DissociatePackage
      def self.default(visited=[])
        {
          domain_package_details: DomainPackageDetails.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DomainPackageDetails'] = DomainPackageDetails.stub(stub[:domain_package_details]) unless stub[:domain_package_details].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetCompatibleElasticsearchVersions
    class GetCompatibleElasticsearchVersions
      def self.default(visited=[])
        {
          compatible_elasticsearch_versions: CompatibleElasticsearchVersionsList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['CompatibleElasticsearchVersions'] = CompatibleElasticsearchVersionsList.stub(stub[:compatible_elasticsearch_versions]) unless stub[:compatible_elasticsearch_versions].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for CompatibleElasticsearchVersionsList
    class CompatibleElasticsearchVersionsList
      def self.default(visited=[])
        return nil if visited.include?('CompatibleElasticsearchVersionsList')
        visited = visited + ['CompatibleElasticsearchVersionsList']
        [
          CompatibleVersionsMap.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CompatibleVersionsMap.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CompatibleVersionsMap
    class CompatibleVersionsMap
      def self.default(visited=[])
        return nil if visited.include?('CompatibleVersionsMap')
        visited = visited + ['CompatibleVersionsMap']
        {
          source_version: 'source_version',
          target_versions: ElasticsearchVersionList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CompatibleVersionsMap.new
        data = {}
        data['SourceVersion'] = stub[:source_version] unless stub[:source_version].nil?
        data['TargetVersions'] = ElasticsearchVersionList.stub(stub[:target_versions]) unless stub[:target_versions].nil?
        data
      end
    end

    # List Stubber for ElasticsearchVersionList
    class ElasticsearchVersionList
      def self.default(visited=[])
        return nil if visited.include?('ElasticsearchVersionList')
        visited = visited + ['ElasticsearchVersionList']
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

    # Operation Stubber for GetPackageVersionHistory
    class GetPackageVersionHistory
      def self.default(visited=[])
        {
          package_id: 'package_id',
          package_version_history_list: PackageVersionHistoryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['PackageID'] = stub[:package_id] unless stub[:package_id].nil?
        data['PackageVersionHistoryList'] = PackageVersionHistoryList.stub(stub[:package_version_history_list]) unless stub[:package_version_history_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for PackageVersionHistoryList
    class PackageVersionHistoryList
      def self.default(visited=[])
        return nil if visited.include?('PackageVersionHistoryList')
        visited = visited + ['PackageVersionHistoryList']
        [
          PackageVersionHistory.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << PackageVersionHistory.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PackageVersionHistory
    class PackageVersionHistory
      def self.default(visited=[])
        return nil if visited.include?('PackageVersionHistory')
        visited = visited + ['PackageVersionHistory']
        {
          package_version: 'package_version',
          commit_message: 'commit_message',
          created_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::PackageVersionHistory.new
        data = {}
        data['PackageVersion'] = stub[:package_version] unless stub[:package_version].nil?
        data['CommitMessage'] = stub[:commit_message] unless stub[:commit_message].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data
      end
    end

    # Operation Stubber for GetUpgradeHistory
    class GetUpgradeHistory
      def self.default(visited=[])
        {
          upgrade_histories: UpgradeHistoryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['UpgradeHistories'] = UpgradeHistoryList.stub(stub[:upgrade_histories]) unless stub[:upgrade_histories].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for UpgradeHistoryList
    class UpgradeHistoryList
      def self.default(visited=[])
        return nil if visited.include?('UpgradeHistoryList')
        visited = visited + ['UpgradeHistoryList']
        [
          UpgradeHistory.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << UpgradeHistory.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for UpgradeHistory
    class UpgradeHistory
      def self.default(visited=[])
        return nil if visited.include?('UpgradeHistory')
        visited = visited + ['UpgradeHistory']
        {
          upgrade_name: 'upgrade_name',
          start_timestamp: Time.now,
          upgrade_status: 'upgrade_status',
          steps_list: UpgradeStepsList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::UpgradeHistory.new
        data = {}
        data['UpgradeName'] = stub[:upgrade_name] unless stub[:upgrade_name].nil?
        data['StartTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_timestamp]).to_i unless stub[:start_timestamp].nil?
        data['UpgradeStatus'] = stub[:upgrade_status] unless stub[:upgrade_status].nil?
        data['StepsList'] = UpgradeStepsList.stub(stub[:steps_list]) unless stub[:steps_list].nil?
        data
      end
    end

    # List Stubber for UpgradeStepsList
    class UpgradeStepsList
      def self.default(visited=[])
        return nil if visited.include?('UpgradeStepsList')
        visited = visited + ['UpgradeStepsList']
        [
          UpgradeStepItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << UpgradeStepItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for UpgradeStepItem
    class UpgradeStepItem
      def self.default(visited=[])
        return nil if visited.include?('UpgradeStepItem')
        visited = visited + ['UpgradeStepItem']
        {
          upgrade_step: 'upgrade_step',
          upgrade_step_status: 'upgrade_step_status',
          issues: Issues.default(visited),
          progress_percent: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::UpgradeStepItem.new
        data = {}
        data['UpgradeStep'] = stub[:upgrade_step] unless stub[:upgrade_step].nil?
        data['UpgradeStepStatus'] = stub[:upgrade_step_status] unless stub[:upgrade_step_status].nil?
        data['Issues'] = Issues.stub(stub[:issues]) unless stub[:issues].nil?
        data['ProgressPercent'] = Hearth::NumberHelper.serialize(stub[:progress_percent])
        data
      end
    end

    # List Stubber for Issues
    class Issues
      def self.default(visited=[])
        return nil if visited.include?('Issues')
        visited = visited + ['Issues']
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

    # Operation Stubber for GetUpgradeStatus
    class GetUpgradeStatus
      def self.default(visited=[])
        {
          upgrade_step: 'upgrade_step',
          step_status: 'step_status',
          upgrade_name: 'upgrade_name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['UpgradeStep'] = stub[:upgrade_step] unless stub[:upgrade_step].nil?
        data['StepStatus'] = stub[:step_status] unless stub[:step_status].nil?
        data['UpgradeName'] = stub[:upgrade_name] unless stub[:upgrade_name].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListDomainNames
    class ListDomainNames
      def self.default(visited=[])
        {
          domain_names: DomainInfoList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DomainNames'] = DomainInfoList.stub(stub[:domain_names]) unless stub[:domain_names].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DomainInfoList
    class DomainInfoList
      def self.default(visited=[])
        return nil if visited.include?('DomainInfoList')
        visited = visited + ['DomainInfoList']
        [
          DomainInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DomainInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DomainInfo
    class DomainInfo
      def self.default(visited=[])
        return nil if visited.include?('DomainInfo')
        visited = visited + ['DomainInfo']
        {
          domain_name: 'domain_name',
          engine_type: 'engine_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::DomainInfo.new
        data = {}
        data['DomainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['EngineType'] = stub[:engine_type] unless stub[:engine_type].nil?
        data
      end
    end

    # Operation Stubber for ListDomainsForPackage
    class ListDomainsForPackage
      def self.default(visited=[])
        {
          domain_package_details_list: DomainPackageDetailsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DomainPackageDetailsList'] = DomainPackageDetailsList.stub(stub[:domain_package_details_list]) unless stub[:domain_package_details_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DomainPackageDetailsList
    class DomainPackageDetailsList
      def self.default(visited=[])
        return nil if visited.include?('DomainPackageDetailsList')
        visited = visited + ['DomainPackageDetailsList']
        [
          DomainPackageDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DomainPackageDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListElasticsearchInstanceTypes
    class ListElasticsearchInstanceTypes
      def self.default(visited=[])
        {
          elasticsearch_instance_types: ElasticsearchInstanceTypeList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ElasticsearchInstanceTypes'] = ElasticsearchInstanceTypeList.stub(stub[:elasticsearch_instance_types]) unless stub[:elasticsearch_instance_types].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ElasticsearchInstanceTypeList
    class ElasticsearchInstanceTypeList
      def self.default(visited=[])
        return nil if visited.include?('ElasticsearchInstanceTypeList')
        visited = visited + ['ElasticsearchInstanceTypeList']
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

    # Operation Stubber for ListElasticsearchVersions
    class ListElasticsearchVersions
      def self.default(visited=[])
        {
          elasticsearch_versions: ElasticsearchVersionList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ElasticsearchVersions'] = ElasticsearchVersionList.stub(stub[:elasticsearch_versions]) unless stub[:elasticsearch_versions].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListPackagesForDomain
    class ListPackagesForDomain
      def self.default(visited=[])
        {
          domain_package_details_list: DomainPackageDetailsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DomainPackageDetailsList'] = DomainPackageDetailsList.stub(stub[:domain_package_details_list]) unless stub[:domain_package_details_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListTags
    class ListTags
      def self.default(visited=[])
        {
          tag_list: TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['TagList'] = TagList.stub(stub[:tag_list]) unless stub[:tag_list].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
        [
          Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Tag.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Tag
    class Tag
      def self.default(visited=[])
        return nil if visited.include?('Tag')
        visited = visited + ['Tag']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Tag.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for PurchaseReservedElasticsearchInstanceOffering
    class PurchaseReservedElasticsearchInstanceOffering
      def self.default(visited=[])
        {
          reserved_elasticsearch_instance_id: 'reserved_elasticsearch_instance_id',
          reservation_name: 'reservation_name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ReservedElasticsearchInstanceId'] = stub[:reserved_elasticsearch_instance_id] unless stub[:reserved_elasticsearch_instance_id].nil?
        data['ReservationName'] = stub[:reservation_name] unless stub[:reservation_name].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for RejectInboundCrossClusterSearchConnection
    class RejectInboundCrossClusterSearchConnection
      def self.default(visited=[])
        {
          cross_cluster_search_connection: InboundCrossClusterSearchConnection.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['CrossClusterSearchConnection'] = InboundCrossClusterSearchConnection.stub(stub[:cross_cluster_search_connection]) unless stub[:cross_cluster_search_connection].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for RemoveTags
    class RemoveTags
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartElasticsearchServiceSoftwareUpdate
    class StartElasticsearchServiceSoftwareUpdate
      def self.default(visited=[])
        {
          service_software_options: ServiceSoftwareOptions.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ServiceSoftwareOptions'] = ServiceSoftwareOptions.stub(stub[:service_software_options]) unless stub[:service_software_options].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateElasticsearchDomainConfig
    class UpdateElasticsearchDomainConfig
      def self.default(visited=[])
        {
          domain_config: ElasticsearchDomainConfig.default(visited),
          dry_run_results: DryRunResults.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DomainConfig'] = ElasticsearchDomainConfig.stub(stub[:domain_config]) unless stub[:domain_config].nil?
        data['DryRunResults'] = DryRunResults.stub(stub[:dry_run_results]) unless stub[:dry_run_results].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for DryRunResults
    class DryRunResults
      def self.default(visited=[])
        return nil if visited.include?('DryRunResults')
        visited = visited + ['DryRunResults']
        {
          deployment_type: 'deployment_type',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::DryRunResults.new
        data = {}
        data['DeploymentType'] = stub[:deployment_type] unless stub[:deployment_type].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Operation Stubber for UpdatePackage
    class UpdatePackage
      def self.default(visited=[])
        {
          package_details: PackageDetails.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['PackageDetails'] = PackageDetails.stub(stub[:package_details]) unless stub[:package_details].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpgradeElasticsearchDomain
    class UpgradeElasticsearchDomain
      def self.default(visited=[])
        {
          domain_name: 'domain_name',
          target_version: 'target_version',
          perform_check_only: false,
          change_progress_details: ChangeProgressDetails.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DomainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['TargetVersion'] = stub[:target_version] unless stub[:target_version].nil?
        data['PerformCheckOnly'] = stub[:perform_check_only] unless stub[:perform_check_only].nil?
        data['ChangeProgressDetails'] = ChangeProgressDetails.stub(stub[:change_progress_details]) unless stub[:change_progress_details].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
