# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::OpenSearch
  module Stubs

    # Operation Stubber for AcceptInboundConnection
    class AcceptInboundConnection
      def self.default(visited=[])
        {
          connection: InboundConnection.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Connection'] = Stubs::InboundConnection.stub(stub[:connection]) unless stub[:connection].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for InboundConnection
    class InboundConnection
      def self.default(visited=[])
        return nil if visited.include?('InboundConnection')
        visited = visited + ['InboundConnection']
        {
          local_domain_info: DomainInformationContainer.default(visited),
          remote_domain_info: DomainInformationContainer.default(visited),
          connection_id: 'connection_id',
          connection_status: InboundConnectionStatus.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InboundConnection.new
        data = {}
        data['LocalDomainInfo'] = Stubs::DomainInformationContainer.stub(stub[:local_domain_info]) unless stub[:local_domain_info].nil?
        data['RemoteDomainInfo'] = Stubs::DomainInformationContainer.stub(stub[:remote_domain_info]) unless stub[:remote_domain_info].nil?
        data['ConnectionId'] = stub[:connection_id] unless stub[:connection_id].nil?
        data['ConnectionStatus'] = Stubs::InboundConnectionStatus.stub(stub[:connection_status]) unless stub[:connection_status].nil?
        data
      end
    end

    # Structure Stubber for InboundConnectionStatus
    class InboundConnectionStatus
      def self.default(visited=[])
        return nil if visited.include?('InboundConnectionStatus')
        visited = visited + ['InboundConnectionStatus']
        {
          status_code: 'status_code',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::InboundConnectionStatus.new
        data = {}
        data['StatusCode'] = stub[:status_code] unless stub[:status_code].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Structure Stubber for DomainInformationContainer
    class DomainInformationContainer
      def self.default(visited=[])
        return nil if visited.include?('DomainInformationContainer')
        visited = visited + ['DomainInformationContainer']
        {
          aws_domain_information: AWSDomainInformation.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DomainInformationContainer.new
        data = {}
        data['AWSDomainInformation'] = Stubs::AWSDomainInformation.stub(stub[:aws_domain_information]) unless stub[:aws_domain_information].nil?
        data
      end
    end

    # Structure Stubber for AWSDomainInformation
    class AWSDomainInformation
      def self.default(visited=[])
        return nil if visited.include?('AWSDomainInformation')
        visited = visited + ['AWSDomainInformation']
        {
          owner_id: 'owner_id',
          domain_name: 'domain_name',
          region: 'region',
        }
      end

      def self.stub(stub)
        stub ||= Types::AWSDomainInformation.new
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
        data['DomainPackageDetails'] = Stubs::DomainPackageDetails.stub(stub[:domain_package_details]) unless stub[:domain_package_details].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        data['ErrorDetails'] = Stubs::ErrorDetails.stub(stub[:error_details]) unless stub[:error_details].nil?
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

    # Operation Stubber for CancelServiceSoftwareUpdate
    class CancelServiceSoftwareUpdate
      def self.default(visited=[])
        {
          service_software_options: ServiceSoftwareOptions.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ServiceSoftwareOptions'] = Stubs::ServiceSoftwareOptions.stub(stub[:service_software_options]) unless stub[:service_software_options].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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

    # Operation Stubber for CreateDomain
    class CreateDomain
      def self.default(visited=[])
        {
          domain_status: DomainStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DomainStatus'] = Stubs::DomainStatus.stub(stub[:domain_status]) unless stub[:domain_status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for DomainStatus
    class DomainStatus
      def self.default(visited=[])
        return nil if visited.include?('DomainStatus')
        visited = visited + ['DomainStatus']
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
          engine_version: 'engine_version',
          cluster_config: ClusterConfig.default(visited),
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
        stub ||= Types::DomainStatus.new
        data = {}
        data['DomainId'] = stub[:domain_id] unless stub[:domain_id].nil?
        data['DomainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['ARN'] = stub[:arn] unless stub[:arn].nil?
        data['Created'] = stub[:created] unless stub[:created].nil?
        data['Deleted'] = stub[:deleted] unless stub[:deleted].nil?
        data['Endpoint'] = stub[:endpoint] unless stub[:endpoint].nil?
        data['Endpoints'] = Stubs::EndpointsMap.stub(stub[:endpoints]) unless stub[:endpoints].nil?
        data['Processing'] = stub[:processing] unless stub[:processing].nil?
        data['UpgradeProcessing'] = stub[:upgrade_processing] unless stub[:upgrade_processing].nil?
        data['EngineVersion'] = stub[:engine_version] unless stub[:engine_version].nil?
        data['ClusterConfig'] = Stubs::ClusterConfig.stub(stub[:cluster_config]) unless stub[:cluster_config].nil?
        data['EBSOptions'] = Stubs::EBSOptions.stub(stub[:ebs_options]) unless stub[:ebs_options].nil?
        data['AccessPolicies'] = stub[:access_policies] unless stub[:access_policies].nil?
        data['SnapshotOptions'] = Stubs::SnapshotOptions.stub(stub[:snapshot_options]) unless stub[:snapshot_options].nil?
        data['VPCOptions'] = Stubs::VPCDerivedInfo.stub(stub[:vpc_options]) unless stub[:vpc_options].nil?
        data['CognitoOptions'] = Stubs::CognitoOptions.stub(stub[:cognito_options]) unless stub[:cognito_options].nil?
        data['EncryptionAtRestOptions'] = Stubs::EncryptionAtRestOptions.stub(stub[:encryption_at_rest_options]) unless stub[:encryption_at_rest_options].nil?
        data['NodeToNodeEncryptionOptions'] = Stubs::NodeToNodeEncryptionOptions.stub(stub[:node_to_node_encryption_options]) unless stub[:node_to_node_encryption_options].nil?
        data['AdvancedOptions'] = Stubs::AdvancedOptions.stub(stub[:advanced_options]) unless stub[:advanced_options].nil?
        data['LogPublishingOptions'] = Stubs::LogPublishingOptions.stub(stub[:log_publishing_options]) unless stub[:log_publishing_options].nil?
        data['ServiceSoftwareOptions'] = Stubs::ServiceSoftwareOptions.stub(stub[:service_software_options]) unless stub[:service_software_options].nil?
        data['DomainEndpointOptions'] = Stubs::DomainEndpointOptions.stub(stub[:domain_endpoint_options]) unless stub[:domain_endpoint_options].nil?
        data['AdvancedSecurityOptions'] = Stubs::AdvancedSecurityOptions.stub(stub[:advanced_security_options]) unless stub[:advanced_security_options].nil?
        data['AutoTuneOptions'] = Stubs::AutoTuneOptionsOutput.stub(stub[:auto_tune_options]) unless stub[:auto_tune_options].nil?
        data['ChangeProgressDetails'] = Stubs::ChangeProgressDetails.stub(stub[:change_progress_details]) unless stub[:change_progress_details].nil?
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
        data['SAMLOptions'] = Stubs::SAMLOptionsOutput.stub(stub[:saml_options]) unless stub[:saml_options].nil?
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
        data['Idp'] = Stubs::SAMLIdp.stub(stub[:idp]) unless stub[:idp].nil?
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
          data[key] = Stubs::LogPublishingOption.stub(value) unless value.nil?
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
        data['SubnetIds'] = Stubs::StringList.stub(stub[:subnet_ids]) unless stub[:subnet_ids].nil?
        data['AvailabilityZones'] = Stubs::StringList.stub(stub[:availability_zones]) unless stub[:availability_zones].nil?
        data['SecurityGroupIds'] = Stubs::StringList.stub(stub[:security_group_ids]) unless stub[:security_group_ids].nil?
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

    # Structure Stubber for ClusterConfig
    class ClusterConfig
      def self.default(visited=[])
        return nil if visited.include?('ClusterConfig')
        visited = visited + ['ClusterConfig']
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
        stub ||= Types::ClusterConfig.new
        data = {}
        data['InstanceType'] = stub[:instance_type] unless stub[:instance_type].nil?
        data['InstanceCount'] = stub[:instance_count] unless stub[:instance_count].nil?
        data['DedicatedMasterEnabled'] = stub[:dedicated_master_enabled] unless stub[:dedicated_master_enabled].nil?
        data['ZoneAwarenessEnabled'] = stub[:zone_awareness_enabled] unless stub[:zone_awareness_enabled].nil?
        data['ZoneAwarenessConfig'] = Stubs::ZoneAwarenessConfig.stub(stub[:zone_awareness_config]) unless stub[:zone_awareness_config].nil?
        data['DedicatedMasterType'] = stub[:dedicated_master_type] unless stub[:dedicated_master_type].nil?
        data['DedicatedMasterCount'] = stub[:dedicated_master_count] unless stub[:dedicated_master_count].nil?
        data['WarmEnabled'] = stub[:warm_enabled] unless stub[:warm_enabled].nil?
        data['WarmType'] = stub[:warm_type] unless stub[:warm_type].nil?
        data['WarmCount'] = stub[:warm_count] unless stub[:warm_count].nil?
        data['ColdStorageOptions'] = Stubs::ColdStorageOptions.stub(stub[:cold_storage_options]) unless stub[:cold_storage_options].nil?
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

    # Operation Stubber for CreateOutboundConnection
    class CreateOutboundConnection
      def self.default(visited=[])
        {
          local_domain_info: DomainInformationContainer.default(visited),
          remote_domain_info: DomainInformationContainer.default(visited),
          connection_alias: 'connection_alias',
          connection_status: OutboundConnectionStatus.default(visited),
          connection_id: 'connection_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['LocalDomainInfo'] = Stubs::DomainInformationContainer.stub(stub[:local_domain_info]) unless stub[:local_domain_info].nil?
        data['RemoteDomainInfo'] = Stubs::DomainInformationContainer.stub(stub[:remote_domain_info]) unless stub[:remote_domain_info].nil?
        data['ConnectionAlias'] = stub[:connection_alias] unless stub[:connection_alias].nil?
        data['ConnectionStatus'] = Stubs::OutboundConnectionStatus.stub(stub[:connection_status]) unless stub[:connection_status].nil?
        data['ConnectionId'] = stub[:connection_id] unless stub[:connection_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for OutboundConnectionStatus
    class OutboundConnectionStatus
      def self.default(visited=[])
        return nil if visited.include?('OutboundConnectionStatus')
        visited = visited + ['OutboundConnectionStatus']
        {
          status_code: 'status_code',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::OutboundConnectionStatus.new
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
        data['PackageDetails'] = Stubs::PackageDetails.stub(stub[:package_details]) unless stub[:package_details].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        data['ErrorDetails'] = Stubs::ErrorDetails.stub(stub[:error_details]) unless stub[:error_details].nil?
        data
      end
    end

    # Operation Stubber for DeleteDomain
    class DeleteDomain
      def self.default(visited=[])
        {
          domain_status: DomainStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DomainStatus'] = Stubs::DomainStatus.stub(stub[:domain_status]) unless stub[:domain_status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteInboundConnection
    class DeleteInboundConnection
      def self.default(visited=[])
        {
          connection: InboundConnection.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Connection'] = Stubs::InboundConnection.stub(stub[:connection]) unless stub[:connection].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteOutboundConnection
    class DeleteOutboundConnection
      def self.default(visited=[])
        {
          connection: OutboundConnection.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Connection'] = Stubs::OutboundConnection.stub(stub[:connection]) unless stub[:connection].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for OutboundConnection
    class OutboundConnection
      def self.default(visited=[])
        return nil if visited.include?('OutboundConnection')
        visited = visited + ['OutboundConnection']
        {
          local_domain_info: DomainInformationContainer.default(visited),
          remote_domain_info: DomainInformationContainer.default(visited),
          connection_id: 'connection_id',
          connection_alias: 'connection_alias',
          connection_status: OutboundConnectionStatus.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::OutboundConnection.new
        data = {}
        data['LocalDomainInfo'] = Stubs::DomainInformationContainer.stub(stub[:local_domain_info]) unless stub[:local_domain_info].nil?
        data['RemoteDomainInfo'] = Stubs::DomainInformationContainer.stub(stub[:remote_domain_info]) unless stub[:remote_domain_info].nil?
        data['ConnectionId'] = stub[:connection_id] unless stub[:connection_id].nil?
        data['ConnectionAlias'] = stub[:connection_alias] unless stub[:connection_alias].nil?
        data['ConnectionStatus'] = Stubs::OutboundConnectionStatus.stub(stub[:connection_status]) unless stub[:connection_status].nil?
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
        data['PackageDetails'] = Stubs::PackageDetails.stub(stub[:package_details]) unless stub[:package_details].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeDomain
    class DescribeDomain
      def self.default(visited=[])
        {
          domain_status: DomainStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DomainStatus'] = Stubs::DomainStatus.stub(stub[:domain_status]) unless stub[:domain_status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        data['AutoTunes'] = Stubs::AutoTuneList.stub(stub[:auto_tunes]) unless stub[:auto_tunes].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
          data << Stubs::AutoTune.stub(element) unless element.nil?
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
        data['AutoTuneDetails'] = Stubs::AutoTuneDetails.stub(stub[:auto_tune_details]) unless stub[:auto_tune_details].nil?
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
        data['ScheduledAutoTuneDetails'] = Stubs::ScheduledAutoTuneDetails.stub(stub[:scheduled_auto_tune_details]) unless stub[:scheduled_auto_tune_details].nil?
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
        data['ChangeProgressStatus'] = Stubs::ChangeProgressStatusDetails.stub(stub[:change_progress_status]) unless stub[:change_progress_status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        data['PendingProperties'] = Stubs::StringList.stub(stub[:pending_properties]) unless stub[:pending_properties].nil?
        data['CompletedProperties'] = Stubs::StringList.stub(stub[:completed_properties]) unless stub[:completed_properties].nil?
        data['TotalNumberOfStages'] = stub[:total_number_of_stages] unless stub[:total_number_of_stages].nil?
        data['ChangeProgressStages'] = Stubs::ChangeProgressStageList.stub(stub[:change_progress_stages]) unless stub[:change_progress_stages].nil?
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
          data << Stubs::ChangeProgressStage.stub(element) unless element.nil?
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

    # Operation Stubber for DescribeDomainConfig
    class DescribeDomainConfig
      def self.default(visited=[])
        {
          domain_config: DomainConfig.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DomainConfig'] = Stubs::DomainConfig.stub(stub[:domain_config]) unless stub[:domain_config].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for DomainConfig
    class DomainConfig
      def self.default(visited=[])
        return nil if visited.include?('DomainConfig')
        visited = visited + ['DomainConfig']
        {
          engine_version: VersionStatus.default(visited),
          cluster_config: ClusterConfigStatus.default(visited),
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
        stub ||= Types::DomainConfig.new
        data = {}
        data['EngineVersion'] = Stubs::VersionStatus.stub(stub[:engine_version]) unless stub[:engine_version].nil?
        data['ClusterConfig'] = Stubs::ClusterConfigStatus.stub(stub[:cluster_config]) unless stub[:cluster_config].nil?
        data['EBSOptions'] = Stubs::EBSOptionsStatus.stub(stub[:ebs_options]) unless stub[:ebs_options].nil?
        data['AccessPolicies'] = Stubs::AccessPoliciesStatus.stub(stub[:access_policies]) unless stub[:access_policies].nil?
        data['SnapshotOptions'] = Stubs::SnapshotOptionsStatus.stub(stub[:snapshot_options]) unless stub[:snapshot_options].nil?
        data['VPCOptions'] = Stubs::VPCDerivedInfoStatus.stub(stub[:vpc_options]) unless stub[:vpc_options].nil?
        data['CognitoOptions'] = Stubs::CognitoOptionsStatus.stub(stub[:cognito_options]) unless stub[:cognito_options].nil?
        data['EncryptionAtRestOptions'] = Stubs::EncryptionAtRestOptionsStatus.stub(stub[:encryption_at_rest_options]) unless stub[:encryption_at_rest_options].nil?
        data['NodeToNodeEncryptionOptions'] = Stubs::NodeToNodeEncryptionOptionsStatus.stub(stub[:node_to_node_encryption_options]) unless stub[:node_to_node_encryption_options].nil?
        data['AdvancedOptions'] = Stubs::AdvancedOptionsStatus.stub(stub[:advanced_options]) unless stub[:advanced_options].nil?
        data['LogPublishingOptions'] = Stubs::LogPublishingOptionsStatus.stub(stub[:log_publishing_options]) unless stub[:log_publishing_options].nil?
        data['DomainEndpointOptions'] = Stubs::DomainEndpointOptionsStatus.stub(stub[:domain_endpoint_options]) unless stub[:domain_endpoint_options].nil?
        data['AdvancedSecurityOptions'] = Stubs::AdvancedSecurityOptionsStatus.stub(stub[:advanced_security_options]) unless stub[:advanced_security_options].nil?
        data['AutoTuneOptions'] = Stubs::AutoTuneOptionsStatus.stub(stub[:auto_tune_options]) unless stub[:auto_tune_options].nil?
        data['ChangeProgressDetails'] = Stubs::ChangeProgressDetails.stub(stub[:change_progress_details]) unless stub[:change_progress_details].nil?
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
        data['Options'] = Stubs::AutoTuneOptions.stub(stub[:options]) unless stub[:options].nil?
        data['Status'] = Stubs::AutoTuneStatus.stub(stub[:status]) unless stub[:status].nil?
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
        data['MaintenanceSchedules'] = Stubs::AutoTuneMaintenanceScheduleList.stub(stub[:maintenance_schedules]) unless stub[:maintenance_schedules].nil?
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
          data << Stubs::AutoTuneMaintenanceSchedule.stub(element) unless element.nil?
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
        data['Duration'] = Stubs::Duration.stub(stub[:duration]) unless stub[:duration].nil?
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
        data['Options'] = Stubs::AdvancedSecurityOptions.stub(stub[:options]) unless stub[:options].nil?
        data['Status'] = Stubs::OptionStatus.stub(stub[:status]) unless stub[:status].nil?
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
        data['Options'] = Stubs::DomainEndpointOptions.stub(stub[:options]) unless stub[:options].nil?
        data['Status'] = Stubs::OptionStatus.stub(stub[:status]) unless stub[:status].nil?
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
        data['Options'] = Stubs::LogPublishingOptions.stub(stub[:options]) unless stub[:options].nil?
        data['Status'] = Stubs::OptionStatus.stub(stub[:status]) unless stub[:status].nil?
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
        data['Options'] = Stubs::AdvancedOptions.stub(stub[:options]) unless stub[:options].nil?
        data['Status'] = Stubs::OptionStatus.stub(stub[:status]) unless stub[:status].nil?
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
        data['Options'] = Stubs::NodeToNodeEncryptionOptions.stub(stub[:options]) unless stub[:options].nil?
        data['Status'] = Stubs::OptionStatus.stub(stub[:status]) unless stub[:status].nil?
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
        data['Options'] = Stubs::EncryptionAtRestOptions.stub(stub[:options]) unless stub[:options].nil?
        data['Status'] = Stubs::OptionStatus.stub(stub[:status]) unless stub[:status].nil?
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
        data['Options'] = Stubs::CognitoOptions.stub(stub[:options]) unless stub[:options].nil?
        data['Status'] = Stubs::OptionStatus.stub(stub[:status]) unless stub[:status].nil?
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
        data['Options'] = Stubs::VPCDerivedInfo.stub(stub[:options]) unless stub[:options].nil?
        data['Status'] = Stubs::OptionStatus.stub(stub[:status]) unless stub[:status].nil?
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
        data['Options'] = Stubs::SnapshotOptions.stub(stub[:options]) unless stub[:options].nil?
        data['Status'] = Stubs::OptionStatus.stub(stub[:status]) unless stub[:status].nil?
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
        data['Status'] = Stubs::OptionStatus.stub(stub[:status]) unless stub[:status].nil?
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
        data['Options'] = Stubs::EBSOptions.stub(stub[:options]) unless stub[:options].nil?
        data['Status'] = Stubs::OptionStatus.stub(stub[:status]) unless stub[:status].nil?
        data
      end
    end

    # Structure Stubber for ClusterConfigStatus
    class ClusterConfigStatus
      def self.default(visited=[])
        return nil if visited.include?('ClusterConfigStatus')
        visited = visited + ['ClusterConfigStatus']
        {
          options: ClusterConfig.default(visited),
          status: OptionStatus.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ClusterConfigStatus.new
        data = {}
        data['Options'] = Stubs::ClusterConfig.stub(stub[:options]) unless stub[:options].nil?
        data['Status'] = Stubs::OptionStatus.stub(stub[:status]) unless stub[:status].nil?
        data
      end
    end

    # Structure Stubber for VersionStatus
    class VersionStatus
      def self.default(visited=[])
        return nil if visited.include?('VersionStatus')
        visited = visited + ['VersionStatus']
        {
          options: 'options',
          status: OptionStatus.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VersionStatus.new
        data = {}
        data['Options'] = stub[:options] unless stub[:options].nil?
        data['Status'] = Stubs::OptionStatus.stub(stub[:status]) unless stub[:status].nil?
        data
      end
    end

    # Operation Stubber for DescribeDomains
    class DescribeDomains
      def self.default(visited=[])
        {
          domain_status_list: DomainStatusList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DomainStatusList'] = Stubs::DomainStatusList.stub(stub[:domain_status_list]) unless stub[:domain_status_list].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DomainStatusList
    class DomainStatusList
      def self.default(visited=[])
        return nil if visited.include?('DomainStatusList')
        visited = visited + ['DomainStatusList']
        [
          DomainStatus.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DomainStatus.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeInboundConnections
    class DescribeInboundConnections
      def self.default(visited=[])
        {
          connections: InboundConnections.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Connections'] = Stubs::InboundConnections.stub(stub[:connections]) unless stub[:connections].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for InboundConnections
    class InboundConnections
      def self.default(visited=[])
        return nil if visited.include?('InboundConnections')
        visited = visited + ['InboundConnections']
        [
          InboundConnection.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::InboundConnection.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeInstanceTypeLimits
    class DescribeInstanceTypeLimits
      def self.default(visited=[])
        {
          limits_by_role: LimitsByRole.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['LimitsByRole'] = Stubs::LimitsByRole.stub(stub[:limits_by_role]) unless stub[:limits_by_role].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
          data[key] = Stubs::Limits.stub(value) unless value.nil?
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
        data['StorageTypes'] = Stubs::StorageTypeList.stub(stub[:storage_types]) unless stub[:storage_types].nil?
        data['InstanceLimits'] = Stubs::InstanceLimits.stub(stub[:instance_limits]) unless stub[:instance_limits].nil?
        data['AdditionalLimits'] = Stubs::AdditionalLimitList.stub(stub[:additional_limits]) unless stub[:additional_limits].nil?
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
          data << Stubs::AdditionalLimit.stub(element) unless element.nil?
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
        data['LimitValues'] = Stubs::LimitValueList.stub(stub[:limit_values]) unless stub[:limit_values].nil?
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
        data['InstanceCountLimits'] = Stubs::InstanceCountLimits.stub(stub[:instance_count_limits]) unless stub[:instance_count_limits].nil?
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
          data << Stubs::StorageType.stub(element) unless element.nil?
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
        data['StorageTypeLimits'] = Stubs::StorageTypeLimitList.stub(stub[:storage_type_limits]) unless stub[:storage_type_limits].nil?
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
          data << Stubs::StorageTypeLimit.stub(element) unless element.nil?
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
        data['LimitValues'] = Stubs::LimitValueList.stub(stub[:limit_values]) unless stub[:limit_values].nil?
        data
      end
    end

    # Operation Stubber for DescribeOutboundConnections
    class DescribeOutboundConnections
      def self.default(visited=[])
        {
          connections: OutboundConnections.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Connections'] = Stubs::OutboundConnections.stub(stub[:connections]) unless stub[:connections].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for OutboundConnections
    class OutboundConnections
      def self.default(visited=[])
        return nil if visited.include?('OutboundConnections')
        visited = visited + ['OutboundConnections']
        [
          OutboundConnection.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::OutboundConnection.stub(element) unless element.nil?
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
        data['PackageDetailsList'] = Stubs::PackageDetailsList.stub(stub[:package_details_list]) unless stub[:package_details_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
          data << Stubs::PackageDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeReservedInstanceOfferings
    class DescribeReservedInstanceOfferings
      def self.default(visited=[])
        {
          next_token: 'next_token',
          reserved_instance_offerings: ReservedInstanceOfferingList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['ReservedInstanceOfferings'] = Stubs::ReservedInstanceOfferingList.stub(stub[:reserved_instance_offerings]) unless stub[:reserved_instance_offerings].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ReservedInstanceOfferingList
    class ReservedInstanceOfferingList
      def self.default(visited=[])
        return nil if visited.include?('ReservedInstanceOfferingList')
        visited = visited + ['ReservedInstanceOfferingList']
        [
          ReservedInstanceOffering.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ReservedInstanceOffering.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ReservedInstanceOffering
    class ReservedInstanceOffering
      def self.default(visited=[])
        return nil if visited.include?('ReservedInstanceOffering')
        visited = visited + ['ReservedInstanceOffering']
        {
          reserved_instance_offering_id: 'reserved_instance_offering_id',
          instance_type: 'instance_type',
          duration: 1,
          fixed_price: 1.0,
          usage_price: 1.0,
          currency_code: 'currency_code',
          payment_option: 'payment_option',
          recurring_charges: RecurringChargeList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ReservedInstanceOffering.new
        data = {}
        data['ReservedInstanceOfferingId'] = stub[:reserved_instance_offering_id] unless stub[:reserved_instance_offering_id].nil?
        data['InstanceType'] = stub[:instance_type] unless stub[:instance_type].nil?
        data['Duration'] = stub[:duration] unless stub[:duration].nil?
        data['FixedPrice'] = Hearth::NumberHelper.serialize(stub[:fixed_price])
        data['UsagePrice'] = Hearth::NumberHelper.serialize(stub[:usage_price])
        data['CurrencyCode'] = stub[:currency_code] unless stub[:currency_code].nil?
        data['PaymentOption'] = stub[:payment_option] unless stub[:payment_option].nil?
        data['RecurringCharges'] = Stubs::RecurringChargeList.stub(stub[:recurring_charges]) unless stub[:recurring_charges].nil?
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
          data << Stubs::RecurringCharge.stub(element) unless element.nil?
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

    # Operation Stubber for DescribeReservedInstances
    class DescribeReservedInstances
      def self.default(visited=[])
        {
          next_token: 'next_token',
          reserved_instances: ReservedInstanceList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['ReservedInstances'] = Stubs::ReservedInstanceList.stub(stub[:reserved_instances]) unless stub[:reserved_instances].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ReservedInstanceList
    class ReservedInstanceList
      def self.default(visited=[])
        return nil if visited.include?('ReservedInstanceList')
        visited = visited + ['ReservedInstanceList']
        [
          ReservedInstance.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ReservedInstance.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ReservedInstance
    class ReservedInstance
      def self.default(visited=[])
        return nil if visited.include?('ReservedInstance')
        visited = visited + ['ReservedInstance']
        {
          reservation_name: 'reservation_name',
          reserved_instance_id: 'reserved_instance_id',
          billing_subscription_id: 1,
          reserved_instance_offering_id: 'reserved_instance_offering_id',
          instance_type: 'instance_type',
          start_time: Time.now,
          duration: 1,
          fixed_price: 1.0,
          usage_price: 1.0,
          currency_code: 'currency_code',
          instance_count: 1,
          state: 'state',
          payment_option: 'payment_option',
          recurring_charges: RecurringChargeList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ReservedInstance.new
        data = {}
        data['ReservationName'] = stub[:reservation_name] unless stub[:reservation_name].nil?
        data['ReservedInstanceId'] = stub[:reserved_instance_id] unless stub[:reserved_instance_id].nil?
        data['BillingSubscriptionId'] = stub[:billing_subscription_id] unless stub[:billing_subscription_id].nil?
        data['ReservedInstanceOfferingId'] = stub[:reserved_instance_offering_id] unless stub[:reserved_instance_offering_id].nil?
        data['InstanceType'] = stub[:instance_type] unless stub[:instance_type].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['Duration'] = stub[:duration] unless stub[:duration].nil?
        data['FixedPrice'] = Hearth::NumberHelper.serialize(stub[:fixed_price])
        data['UsagePrice'] = Hearth::NumberHelper.serialize(stub[:usage_price])
        data['CurrencyCode'] = stub[:currency_code] unless stub[:currency_code].nil?
        data['InstanceCount'] = stub[:instance_count] unless stub[:instance_count].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['PaymentOption'] = stub[:payment_option] unless stub[:payment_option].nil?
        data['RecurringCharges'] = Stubs::RecurringChargeList.stub(stub[:recurring_charges]) unless stub[:recurring_charges].nil?
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
        data['DomainPackageDetails'] = Stubs::DomainPackageDetails.stub(stub[:domain_package_details]) unless stub[:domain_package_details].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetCompatibleVersions
    class GetCompatibleVersions
      def self.default(visited=[])
        {
          compatible_versions: CompatibleVersionsList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['CompatibleVersions'] = Stubs::CompatibleVersionsList.stub(stub[:compatible_versions]) unless stub[:compatible_versions].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for CompatibleVersionsList
    class CompatibleVersionsList
      def self.default(visited=[])
        return nil if visited.include?('CompatibleVersionsList')
        visited = visited + ['CompatibleVersionsList']
        [
          CompatibleVersionsMap.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::CompatibleVersionsMap.stub(element) unless element.nil?
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
          target_versions: VersionList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CompatibleVersionsMap.new
        data = {}
        data['SourceVersion'] = stub[:source_version] unless stub[:source_version].nil?
        data['TargetVersions'] = Stubs::VersionList.stub(stub[:target_versions]) unless stub[:target_versions].nil?
        data
      end
    end

    # List Stubber for VersionList
    class VersionList
      def self.default(visited=[])
        return nil if visited.include?('VersionList')
        visited = visited + ['VersionList']
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
        data['PackageVersionHistoryList'] = Stubs::PackageVersionHistoryList.stub(stub[:package_version_history_list]) unless stub[:package_version_history_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
          data << Stubs::PackageVersionHistory.stub(element) unless element.nil?
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
        data['UpgradeHistories'] = Stubs::UpgradeHistoryList.stub(stub[:upgrade_histories]) unless stub[:upgrade_histories].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
          data << Stubs::UpgradeHistory.stub(element) unless element.nil?
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
        data['StepsList'] = Stubs::UpgradeStepsList.stub(stub[:steps_list]) unless stub[:steps_list].nil?
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
          data << Stubs::UpgradeStepItem.stub(element) unless element.nil?
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
        data['Issues'] = Stubs::Issues.stub(stub[:issues]) unless stub[:issues].nil?
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
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        data['DomainNames'] = Stubs::DomainInfoList.stub(stub[:domain_names]) unless stub[:domain_names].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
          data << Stubs::DomainInfo.stub(element) unless element.nil?
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
        data['DomainPackageDetailsList'] = Stubs::DomainPackageDetailsList.stub(stub[:domain_package_details_list]) unless stub[:domain_package_details_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
          data << Stubs::DomainPackageDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListInstanceTypeDetails
    class ListInstanceTypeDetails
      def self.default(visited=[])
        {
          instance_type_details: InstanceTypeDetailsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['InstanceTypeDetails'] = Stubs::InstanceTypeDetailsList.stub(stub[:instance_type_details]) unless stub[:instance_type_details].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for InstanceTypeDetailsList
    class InstanceTypeDetailsList
      def self.default(visited=[])
        return nil if visited.include?('InstanceTypeDetailsList')
        visited = visited + ['InstanceTypeDetailsList']
        [
          InstanceTypeDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::InstanceTypeDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InstanceTypeDetails
    class InstanceTypeDetails
      def self.default(visited=[])
        return nil if visited.include?('InstanceTypeDetails')
        visited = visited + ['InstanceTypeDetails']
        {
          instance_type: 'instance_type',
          encryption_enabled: false,
          cognito_enabled: false,
          app_logs_enabled: false,
          advanced_security_enabled: false,
          warm_enabled: false,
          instance_role: InstanceRoleList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InstanceTypeDetails.new
        data = {}
        data['InstanceType'] = stub[:instance_type] unless stub[:instance_type].nil?
        data['EncryptionEnabled'] = stub[:encryption_enabled] unless stub[:encryption_enabled].nil?
        data['CognitoEnabled'] = stub[:cognito_enabled] unless stub[:cognito_enabled].nil?
        data['AppLogsEnabled'] = stub[:app_logs_enabled] unless stub[:app_logs_enabled].nil?
        data['AdvancedSecurityEnabled'] = stub[:advanced_security_enabled] unless stub[:advanced_security_enabled].nil?
        data['WarmEnabled'] = stub[:warm_enabled] unless stub[:warm_enabled].nil?
        data['InstanceRole'] = Stubs::InstanceRoleList.stub(stub[:instance_role]) unless stub[:instance_role].nil?
        data
      end
    end

    # List Stubber for InstanceRoleList
    class InstanceRoleList
      def self.default(visited=[])
        return nil if visited.include?('InstanceRoleList')
        visited = visited + ['InstanceRoleList']
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
        data['DomainPackageDetailsList'] = Stubs::DomainPackageDetailsList.stub(stub[:domain_package_details_list]) unless stub[:domain_package_details_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        data['TagList'] = Stubs::TagList.stub(stub[:tag_list]) unless stub[:tag_list].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
          data << Stubs::Tag.stub(element) unless element.nil?
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

    # Operation Stubber for ListVersions
    class ListVersions
      def self.default(visited=[])
        {
          versions: VersionList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Versions'] = Stubs::VersionList.stub(stub[:versions]) unless stub[:versions].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for PurchaseReservedInstanceOffering
    class PurchaseReservedInstanceOffering
      def self.default(visited=[])
        {
          reserved_instance_id: 'reserved_instance_id',
          reservation_name: 'reservation_name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ReservedInstanceId'] = stub[:reserved_instance_id] unless stub[:reserved_instance_id].nil?
        data['ReservationName'] = stub[:reservation_name] unless stub[:reservation_name].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for RejectInboundConnection
    class RejectInboundConnection
      def self.default(visited=[])
        {
          connection: InboundConnection.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Connection'] = Stubs::InboundConnection.stub(stub[:connection]) unless stub[:connection].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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

    # Operation Stubber for StartServiceSoftwareUpdate
    class StartServiceSoftwareUpdate
      def self.default(visited=[])
        {
          service_software_options: ServiceSoftwareOptions.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ServiceSoftwareOptions'] = Stubs::ServiceSoftwareOptions.stub(stub[:service_software_options]) unless stub[:service_software_options].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateDomainConfig
    class UpdateDomainConfig
      def self.default(visited=[])
        {
          domain_config: DomainConfig.default(visited),
          dry_run_results: DryRunResults.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DomainConfig'] = Stubs::DomainConfig.stub(stub[:domain_config]) unless stub[:domain_config].nil?
        data['DryRunResults'] = Stubs::DryRunResults.stub(stub[:dry_run_results]) unless stub[:dry_run_results].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        data['PackageDetails'] = Stubs::PackageDetails.stub(stub[:package_details]) unless stub[:package_details].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpgradeDomain
    class UpgradeDomain
      def self.default(visited=[])
        {
          upgrade_id: 'upgrade_id',
          domain_name: 'domain_name',
          target_version: 'target_version',
          perform_check_only: false,
          advanced_options: AdvancedOptions.default(visited),
          change_progress_details: ChangeProgressDetails.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['UpgradeId'] = stub[:upgrade_id] unless stub[:upgrade_id].nil?
        data['DomainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['TargetVersion'] = stub[:target_version] unless stub[:target_version].nil?
        data['PerformCheckOnly'] = stub[:perform_check_only] unless stub[:perform_check_only].nil?
        data['AdvancedOptions'] = Stubs::AdvancedOptions.stub(stub[:advanced_options]) unless stub[:advanced_options].nil?
        data['ChangeProgressDetails'] = Stubs::ChangeProgressDetails.stub(stub[:change_progress_details]) unless stub[:change_progress_details].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
