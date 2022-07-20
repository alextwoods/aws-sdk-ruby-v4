# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ElasticsearchService
  module Parsers

    # Operation Parser for AcceptInboundCrossClusterSearchConnection
    class AcceptInboundCrossClusterSearchConnection
      def self.parse(http_resp)
        data = Types::AcceptInboundCrossClusterSearchConnectionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.cross_cluster_search_connection = (InboundCrossClusterSearchConnection.parse(map['CrossClusterSearchConnection']) unless map['CrossClusterSearchConnection'].nil?)
        data
      end
    end

    class InboundCrossClusterSearchConnection
      def self.parse(map)
        data = Types::InboundCrossClusterSearchConnection.new
        data.source_domain_info = (DomainInformation.parse(map['SourceDomainInfo']) unless map['SourceDomainInfo'].nil?)
        data.destination_domain_info = (DomainInformation.parse(map['DestinationDomainInfo']) unless map['DestinationDomainInfo'].nil?)
        data.cross_cluster_search_connection_id = map['CrossClusterSearchConnectionId']
        data.connection_status = (InboundCrossClusterSearchConnectionStatus.parse(map['ConnectionStatus']) unless map['ConnectionStatus'].nil?)
        return data
      end
    end

    class InboundCrossClusterSearchConnectionStatus
      def self.parse(map)
        data = Types::InboundCrossClusterSearchConnectionStatus.new
        data.status_code = map['StatusCode']
        data.message = map['Message']
        return data
      end
    end

    class DomainInformation
      def self.parse(map)
        data = Types::DomainInformation.new
        data.owner_id = map['OwnerId']
        data.domain_name = map['DomainName']
        data.region = map['Region']
        return data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
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

    # Error Parser for DisabledOperationException
    class DisabledOperationException
      def self.parse(http_resp)
        data = Types::DisabledOperationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for AddTags
    class AddTags
      def self.parse(http_resp)
        data = Types::AddTagsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for BaseException
    class BaseException
      def self.parse(http_resp)
        data = Types::BaseException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InternalException
    class InternalException
      def self.parse(http_resp)
        data = Types::InternalException.new
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

    # Operation Parser for AssociatePackage
    class AssociatePackage
      def self.parse(http_resp)
        data = Types::AssociatePackageOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.domain_package_details = (DomainPackageDetails.parse(map['DomainPackageDetails']) unless map['DomainPackageDetails'].nil?)
        data
      end
    end

    class DomainPackageDetails
      def self.parse(map)
        data = Types::DomainPackageDetails.new
        data.package_id = map['PackageID']
        data.package_name = map['PackageName']
        data.package_type = map['PackageType']
        data.last_updated = Time.at(map['LastUpdated'].to_i) if map['LastUpdated']
        data.domain_name = map['DomainName']
        data.domain_package_status = map['DomainPackageStatus']
        data.package_version = map['PackageVersion']
        data.reference_path = map['ReferencePath']
        data.error_details = (ErrorDetails.parse(map['ErrorDetails']) unless map['ErrorDetails'].nil?)
        return data
      end
    end

    class ErrorDetails
      def self.parse(map)
        data = Types::ErrorDetails.new
        data.error_type = map['ErrorType']
        data.error_message = map['ErrorMessage']
        return data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CancelElasticsearchServiceSoftwareUpdate
    class CancelElasticsearchServiceSoftwareUpdate
      def self.parse(http_resp)
        data = Types::CancelElasticsearchServiceSoftwareUpdateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.service_software_options = (ServiceSoftwareOptions.parse(map['ServiceSoftwareOptions']) unless map['ServiceSoftwareOptions'].nil?)
        data
      end
    end

    class ServiceSoftwareOptions
      def self.parse(map)
        data = Types::ServiceSoftwareOptions.new
        data.current_version = map['CurrentVersion']
        data.new_version = map['NewVersion']
        data.update_available = map['UpdateAvailable']
        data.cancellable = map['Cancellable']
        data.update_status = map['UpdateStatus']
        data.description = map['Description']
        data.automated_update_date = Time.at(map['AutomatedUpdateDate'].to_i) if map['AutomatedUpdateDate']
        data.optional_deployment = map['OptionalDeployment']
        return data
      end
    end

    # Operation Parser for CreateElasticsearchDomain
    class CreateElasticsearchDomain
      def self.parse(http_resp)
        data = Types::CreateElasticsearchDomainOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.domain_status = (ElasticsearchDomainStatus.parse(map['DomainStatus']) unless map['DomainStatus'].nil?)
        data
      end
    end

    class ElasticsearchDomainStatus
      def self.parse(map)
        data = Types::ElasticsearchDomainStatus.new
        data.domain_id = map['DomainId']
        data.domain_name = map['DomainName']
        data.arn = map['ARN']
        data.created = map['Created']
        data.deleted = map['Deleted']
        data.endpoint = map['Endpoint']
        data.endpoints = (EndpointsMap.parse(map['Endpoints']) unless map['Endpoints'].nil?)
        data.processing = map['Processing']
        data.upgrade_processing = map['UpgradeProcessing']
        data.elasticsearch_version = map['ElasticsearchVersion']
        data.elasticsearch_cluster_config = (ElasticsearchClusterConfig.parse(map['ElasticsearchClusterConfig']) unless map['ElasticsearchClusterConfig'].nil?)
        data.ebs_options = (EBSOptions.parse(map['EBSOptions']) unless map['EBSOptions'].nil?)
        data.access_policies = map['AccessPolicies']
        data.snapshot_options = (SnapshotOptions.parse(map['SnapshotOptions']) unless map['SnapshotOptions'].nil?)
        data.vpc_options = (VPCDerivedInfo.parse(map['VPCOptions']) unless map['VPCOptions'].nil?)
        data.cognito_options = (CognitoOptions.parse(map['CognitoOptions']) unless map['CognitoOptions'].nil?)
        data.encryption_at_rest_options = (EncryptionAtRestOptions.parse(map['EncryptionAtRestOptions']) unless map['EncryptionAtRestOptions'].nil?)
        data.node_to_node_encryption_options = (NodeToNodeEncryptionOptions.parse(map['NodeToNodeEncryptionOptions']) unless map['NodeToNodeEncryptionOptions'].nil?)
        data.advanced_options = (AdvancedOptions.parse(map['AdvancedOptions']) unless map['AdvancedOptions'].nil?)
        data.log_publishing_options = (LogPublishingOptions.parse(map['LogPublishingOptions']) unless map['LogPublishingOptions'].nil?)
        data.service_software_options = (ServiceSoftwareOptions.parse(map['ServiceSoftwareOptions']) unless map['ServiceSoftwareOptions'].nil?)
        data.domain_endpoint_options = (DomainEndpointOptions.parse(map['DomainEndpointOptions']) unless map['DomainEndpointOptions'].nil?)
        data.advanced_security_options = (AdvancedSecurityOptions.parse(map['AdvancedSecurityOptions']) unless map['AdvancedSecurityOptions'].nil?)
        data.auto_tune_options = (AutoTuneOptionsOutput.parse(map['AutoTuneOptions']) unless map['AutoTuneOptions'].nil?)
        data.change_progress_details = (ChangeProgressDetails.parse(map['ChangeProgressDetails']) unless map['ChangeProgressDetails'].nil?)
        return data
      end
    end

    class ChangeProgressDetails
      def self.parse(map)
        data = Types::ChangeProgressDetails.new
        data.change_id = map['ChangeId']
        data.message = map['Message']
        return data
      end
    end

    class AutoTuneOptionsOutput
      def self.parse(map)
        data = Types::AutoTuneOptionsOutput.new
        data.state = map['State']
        data.error_message = map['ErrorMessage']
        return data
      end
    end

    class AdvancedSecurityOptions
      def self.parse(map)
        data = Types::AdvancedSecurityOptions.new
        data.enabled = map['Enabled']
        data.internal_user_database_enabled = map['InternalUserDatabaseEnabled']
        data.saml_options = (SAMLOptionsOutput.parse(map['SAMLOptions']) unless map['SAMLOptions'].nil?)
        data.anonymous_auth_disable_date = Time.at(map['AnonymousAuthDisableDate'].to_i) if map['AnonymousAuthDisableDate']
        data.anonymous_auth_enabled = map['AnonymousAuthEnabled']
        return data
      end
    end

    class SAMLOptionsOutput
      def self.parse(map)
        data = Types::SAMLOptionsOutput.new
        data.enabled = map['Enabled']
        data.idp = (SAMLIdp.parse(map['Idp']) unless map['Idp'].nil?)
        data.subject_key = map['SubjectKey']
        data.roles_key = map['RolesKey']
        data.session_timeout_minutes = map['SessionTimeoutMinutes']
        return data
      end
    end

    class SAMLIdp
      def self.parse(map)
        data = Types::SAMLIdp.new
        data.metadata_content = map['MetadataContent']
        data.entity_id = map['EntityId']
        return data
      end
    end

    class DomainEndpointOptions
      def self.parse(map)
        data = Types::DomainEndpointOptions.new
        data.enforce_https = map['EnforceHTTPS']
        data.tls_security_policy = map['TLSSecurityPolicy']
        data.custom_endpoint_enabled = map['CustomEndpointEnabled']
        data.custom_endpoint = map['CustomEndpoint']
        data.custom_endpoint_certificate_arn = map['CustomEndpointCertificateArn']
        return data
      end
    end

    class LogPublishingOptions
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = LogPublishingOption.parse(value) unless value.nil?
        end
        data
      end
    end

    class LogPublishingOption
      def self.parse(map)
        data = Types::LogPublishingOption.new
        data.cloud_watch_logs_log_group_arn = map['CloudWatchLogsLogGroupArn']
        data.enabled = map['Enabled']
        return data
      end
    end

    class AdvancedOptions
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class NodeToNodeEncryptionOptions
      def self.parse(map)
        data = Types::NodeToNodeEncryptionOptions.new
        data.enabled = map['Enabled']
        return data
      end
    end

    class EncryptionAtRestOptions
      def self.parse(map)
        data = Types::EncryptionAtRestOptions.new
        data.enabled = map['Enabled']
        data.kms_key_id = map['KmsKeyId']
        return data
      end
    end

    class CognitoOptions
      def self.parse(map)
        data = Types::CognitoOptions.new
        data.enabled = map['Enabled']
        data.user_pool_id = map['UserPoolId']
        data.identity_pool_id = map['IdentityPoolId']
        data.role_arn = map['RoleArn']
        return data
      end
    end

    class VPCDerivedInfo
      def self.parse(map)
        data = Types::VPCDerivedInfo.new
        data.vpc_id = map['VPCId']
        data.subnet_ids = (StringList.parse(map['SubnetIds']) unless map['SubnetIds'].nil?)
        data.availability_zones = (StringList.parse(map['AvailabilityZones']) unless map['AvailabilityZones'].nil?)
        data.security_group_ids = (StringList.parse(map['SecurityGroupIds']) unless map['SecurityGroupIds'].nil?)
        return data
      end
    end

    class StringList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class SnapshotOptions
      def self.parse(map)
        data = Types::SnapshotOptions.new
        data.automated_snapshot_start_hour = map['AutomatedSnapshotStartHour']
        return data
      end
    end

    class EBSOptions
      def self.parse(map)
        data = Types::EBSOptions.new
        data.ebs_enabled = map['EBSEnabled']
        data.volume_type = map['VolumeType']
        data.volume_size = map['VolumeSize']
        data.iops = map['Iops']
        return data
      end
    end

    class ElasticsearchClusterConfig
      def self.parse(map)
        data = Types::ElasticsearchClusterConfig.new
        data.instance_type = map['InstanceType']
        data.instance_count = map['InstanceCount']
        data.dedicated_master_enabled = map['DedicatedMasterEnabled']
        data.zone_awareness_enabled = map['ZoneAwarenessEnabled']
        data.zone_awareness_config = (ZoneAwarenessConfig.parse(map['ZoneAwarenessConfig']) unless map['ZoneAwarenessConfig'].nil?)
        data.dedicated_master_type = map['DedicatedMasterType']
        data.dedicated_master_count = map['DedicatedMasterCount']
        data.warm_enabled = map['WarmEnabled']
        data.warm_type = map['WarmType']
        data.warm_count = map['WarmCount']
        data.cold_storage_options = (ColdStorageOptions.parse(map['ColdStorageOptions']) unless map['ColdStorageOptions'].nil?)
        return data
      end
    end

    class ColdStorageOptions
      def self.parse(map)
        data = Types::ColdStorageOptions.new
        data.enabled = map['Enabled']
        return data
      end
    end

    class ZoneAwarenessConfig
      def self.parse(map)
        data = Types::ZoneAwarenessConfig.new
        data.availability_zone_count = map['AvailabilityZoneCount']
        return data
      end
    end

    class EndpointsMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Error Parser for ResourceAlreadyExistsException
    class ResourceAlreadyExistsException
      def self.parse(http_resp)
        data = Types::ResourceAlreadyExistsException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InvalidTypeException
    class InvalidTypeException
      def self.parse(http_resp)
        data = Types::InvalidTypeException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CreateOutboundCrossClusterSearchConnection
    class CreateOutboundCrossClusterSearchConnection
      def self.parse(http_resp)
        data = Types::CreateOutboundCrossClusterSearchConnectionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.source_domain_info = (DomainInformation.parse(map['SourceDomainInfo']) unless map['SourceDomainInfo'].nil?)
        data.destination_domain_info = (DomainInformation.parse(map['DestinationDomainInfo']) unless map['DestinationDomainInfo'].nil?)
        data.connection_alias = map['ConnectionAlias']
        data.connection_status = (OutboundCrossClusterSearchConnectionStatus.parse(map['ConnectionStatus']) unless map['ConnectionStatus'].nil?)
        data.cross_cluster_search_connection_id = map['CrossClusterSearchConnectionId']
        data
      end
    end

    class OutboundCrossClusterSearchConnectionStatus
      def self.parse(map)
        data = Types::OutboundCrossClusterSearchConnectionStatus.new
        data.status_code = map['StatusCode']
        data.message = map['Message']
        return data
      end
    end

    # Operation Parser for CreatePackage
    class CreatePackage
      def self.parse(http_resp)
        data = Types::CreatePackageOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.package_details = (PackageDetails.parse(map['PackageDetails']) unless map['PackageDetails'].nil?)
        data
      end
    end

    class PackageDetails
      def self.parse(map)
        data = Types::PackageDetails.new
        data.package_id = map['PackageID']
        data.package_name = map['PackageName']
        data.package_type = map['PackageType']
        data.package_description = map['PackageDescription']
        data.package_status = map['PackageStatus']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.last_updated_at = Time.at(map['LastUpdatedAt'].to_i) if map['LastUpdatedAt']
        data.available_package_version = map['AvailablePackageVersion']
        data.error_details = (ErrorDetails.parse(map['ErrorDetails']) unless map['ErrorDetails'].nil?)
        return data
      end
    end

    # Operation Parser for DeleteElasticsearchDomain
    class DeleteElasticsearchDomain
      def self.parse(http_resp)
        data = Types::DeleteElasticsearchDomainOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.domain_status = (ElasticsearchDomainStatus.parse(map['DomainStatus']) unless map['DomainStatus'].nil?)
        data
      end
    end

    # Operation Parser for DeleteElasticsearchServiceRole
    class DeleteElasticsearchServiceRole
      def self.parse(http_resp)
        data = Types::DeleteElasticsearchServiceRoleOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteInboundCrossClusterSearchConnection
    class DeleteInboundCrossClusterSearchConnection
      def self.parse(http_resp)
        data = Types::DeleteInboundCrossClusterSearchConnectionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.cross_cluster_search_connection = (InboundCrossClusterSearchConnection.parse(map['CrossClusterSearchConnection']) unless map['CrossClusterSearchConnection'].nil?)
        data
      end
    end

    # Operation Parser for DeleteOutboundCrossClusterSearchConnection
    class DeleteOutboundCrossClusterSearchConnection
      def self.parse(http_resp)
        data = Types::DeleteOutboundCrossClusterSearchConnectionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.cross_cluster_search_connection = (OutboundCrossClusterSearchConnection.parse(map['CrossClusterSearchConnection']) unless map['CrossClusterSearchConnection'].nil?)
        data
      end
    end

    class OutboundCrossClusterSearchConnection
      def self.parse(map)
        data = Types::OutboundCrossClusterSearchConnection.new
        data.source_domain_info = (DomainInformation.parse(map['SourceDomainInfo']) unless map['SourceDomainInfo'].nil?)
        data.destination_domain_info = (DomainInformation.parse(map['DestinationDomainInfo']) unless map['DestinationDomainInfo'].nil?)
        data.cross_cluster_search_connection_id = map['CrossClusterSearchConnectionId']
        data.connection_alias = map['ConnectionAlias']
        data.connection_status = (OutboundCrossClusterSearchConnectionStatus.parse(map['ConnectionStatus']) unless map['ConnectionStatus'].nil?)
        return data
      end
    end

    # Operation Parser for DeletePackage
    class DeletePackage
      def self.parse(http_resp)
        data = Types::DeletePackageOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.package_details = (PackageDetails.parse(map['PackageDetails']) unless map['PackageDetails'].nil?)
        data
      end
    end

    # Operation Parser for DescribeDomainAutoTunes
    class DescribeDomainAutoTunes
      def self.parse(http_resp)
        data = Types::DescribeDomainAutoTunesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.auto_tunes = (AutoTuneList.parse(map['AutoTunes']) unless map['AutoTunes'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class AutoTuneList
      def self.parse(list)
        data = []
        list.map do |value|
          data << AutoTune.parse(value) unless value.nil?
        end
        data
      end
    end

    class AutoTune
      def self.parse(map)
        data = Types::AutoTune.new
        data.auto_tune_type = map['AutoTuneType']
        data.auto_tune_details = (AutoTuneDetails.parse(map['AutoTuneDetails']) unless map['AutoTuneDetails'].nil?)
        return data
      end
    end

    class AutoTuneDetails
      def self.parse(map)
        data = Types::AutoTuneDetails.new
        data.scheduled_auto_tune_details = (ScheduledAutoTuneDetails.parse(map['ScheduledAutoTuneDetails']) unless map['ScheduledAutoTuneDetails'].nil?)
        return data
      end
    end

    class ScheduledAutoTuneDetails
      def self.parse(map)
        data = Types::ScheduledAutoTuneDetails.new
        data.date = Time.at(map['Date'].to_i) if map['Date']
        data.action_type = map['ActionType']
        data.action = map['Action']
        data.severity = map['Severity']
        return data
      end
    end

    # Operation Parser for DescribeDomainChangeProgress
    class DescribeDomainChangeProgress
      def self.parse(http_resp)
        data = Types::DescribeDomainChangeProgressOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.change_progress_status = (ChangeProgressStatusDetails.parse(map['ChangeProgressStatus']) unless map['ChangeProgressStatus'].nil?)
        data
      end
    end

    class ChangeProgressStatusDetails
      def self.parse(map)
        data = Types::ChangeProgressStatusDetails.new
        data.change_id = map['ChangeId']
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        data.status = map['Status']
        data.pending_properties = (StringList.parse(map['PendingProperties']) unless map['PendingProperties'].nil?)
        data.completed_properties = (StringList.parse(map['CompletedProperties']) unless map['CompletedProperties'].nil?)
        data.total_number_of_stages = map['TotalNumberOfStages']
        data.change_progress_stages = (ChangeProgressStageList.parse(map['ChangeProgressStages']) unless map['ChangeProgressStages'].nil?)
        return data
      end
    end

    class ChangeProgressStageList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ChangeProgressStage.parse(value) unless value.nil?
        end
        data
      end
    end

    class ChangeProgressStage
      def self.parse(map)
        data = Types::ChangeProgressStage.new
        data.name = map['Name']
        data.status = map['Status']
        data.description = map['Description']
        data.last_updated = Time.at(map['LastUpdated'].to_i) if map['LastUpdated']
        return data
      end
    end

    # Operation Parser for DescribeElasticsearchDomain
    class DescribeElasticsearchDomain
      def self.parse(http_resp)
        data = Types::DescribeElasticsearchDomainOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.domain_status = (ElasticsearchDomainStatus.parse(map['DomainStatus']) unless map['DomainStatus'].nil?)
        data
      end
    end

    # Operation Parser for DescribeElasticsearchDomainConfig
    class DescribeElasticsearchDomainConfig
      def self.parse(http_resp)
        data = Types::DescribeElasticsearchDomainConfigOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.domain_config = (ElasticsearchDomainConfig.parse(map['DomainConfig']) unless map['DomainConfig'].nil?)
        data
      end
    end

    class ElasticsearchDomainConfig
      def self.parse(map)
        data = Types::ElasticsearchDomainConfig.new
        data.elasticsearch_version = (ElasticsearchVersionStatus.parse(map['ElasticsearchVersion']) unless map['ElasticsearchVersion'].nil?)
        data.elasticsearch_cluster_config = (ElasticsearchClusterConfigStatus.parse(map['ElasticsearchClusterConfig']) unless map['ElasticsearchClusterConfig'].nil?)
        data.ebs_options = (EBSOptionsStatus.parse(map['EBSOptions']) unless map['EBSOptions'].nil?)
        data.access_policies = (AccessPoliciesStatus.parse(map['AccessPolicies']) unless map['AccessPolicies'].nil?)
        data.snapshot_options = (SnapshotOptionsStatus.parse(map['SnapshotOptions']) unless map['SnapshotOptions'].nil?)
        data.vpc_options = (VPCDerivedInfoStatus.parse(map['VPCOptions']) unless map['VPCOptions'].nil?)
        data.cognito_options = (CognitoOptionsStatus.parse(map['CognitoOptions']) unless map['CognitoOptions'].nil?)
        data.encryption_at_rest_options = (EncryptionAtRestOptionsStatus.parse(map['EncryptionAtRestOptions']) unless map['EncryptionAtRestOptions'].nil?)
        data.node_to_node_encryption_options = (NodeToNodeEncryptionOptionsStatus.parse(map['NodeToNodeEncryptionOptions']) unless map['NodeToNodeEncryptionOptions'].nil?)
        data.advanced_options = (AdvancedOptionsStatus.parse(map['AdvancedOptions']) unless map['AdvancedOptions'].nil?)
        data.log_publishing_options = (LogPublishingOptionsStatus.parse(map['LogPublishingOptions']) unless map['LogPublishingOptions'].nil?)
        data.domain_endpoint_options = (DomainEndpointOptionsStatus.parse(map['DomainEndpointOptions']) unless map['DomainEndpointOptions'].nil?)
        data.advanced_security_options = (AdvancedSecurityOptionsStatus.parse(map['AdvancedSecurityOptions']) unless map['AdvancedSecurityOptions'].nil?)
        data.auto_tune_options = (AutoTuneOptionsStatus.parse(map['AutoTuneOptions']) unless map['AutoTuneOptions'].nil?)
        data.change_progress_details = (ChangeProgressDetails.parse(map['ChangeProgressDetails']) unless map['ChangeProgressDetails'].nil?)
        return data
      end
    end

    class AutoTuneOptionsStatus
      def self.parse(map)
        data = Types::AutoTuneOptionsStatus.new
        data.options = (AutoTuneOptions.parse(map['Options']) unless map['Options'].nil?)
        data.status = (AutoTuneStatus.parse(map['Status']) unless map['Status'].nil?)
        return data
      end
    end

    class AutoTuneStatus
      def self.parse(map)
        data = Types::AutoTuneStatus.new
        data.creation_date = Time.at(map['CreationDate'].to_i) if map['CreationDate']
        data.update_date = Time.at(map['UpdateDate'].to_i) if map['UpdateDate']
        data.update_version = map['UpdateVersion']
        data.state = map['State']
        data.error_message = map['ErrorMessage']
        data.pending_deletion = map['PendingDeletion']
        return data
      end
    end

    class AutoTuneOptions
      def self.parse(map)
        data = Types::AutoTuneOptions.new
        data.desired_state = map['DesiredState']
        data.rollback_on_disable = map['RollbackOnDisable']
        data.maintenance_schedules = (AutoTuneMaintenanceScheduleList.parse(map['MaintenanceSchedules']) unless map['MaintenanceSchedules'].nil?)
        return data
      end
    end

    class AutoTuneMaintenanceScheduleList
      def self.parse(list)
        data = []
        list.map do |value|
          data << AutoTuneMaintenanceSchedule.parse(value) unless value.nil?
        end
        data
      end
    end

    class AutoTuneMaintenanceSchedule
      def self.parse(map)
        data = Types::AutoTuneMaintenanceSchedule.new
        data.start_at = Time.at(map['StartAt'].to_i) if map['StartAt']
        data.duration = (Duration.parse(map['Duration']) unless map['Duration'].nil?)
        data.cron_expression_for_recurrence = map['CronExpressionForRecurrence']
        return data
      end
    end

    class Duration
      def self.parse(map)
        data = Types::Duration.new
        data.value = map['Value']
        data.unit = map['Unit']
        return data
      end
    end

    class AdvancedSecurityOptionsStatus
      def self.parse(map)
        data = Types::AdvancedSecurityOptionsStatus.new
        data.options = (AdvancedSecurityOptions.parse(map['Options']) unless map['Options'].nil?)
        data.status = (OptionStatus.parse(map['Status']) unless map['Status'].nil?)
        return data
      end
    end

    class OptionStatus
      def self.parse(map)
        data = Types::OptionStatus.new
        data.creation_date = Time.at(map['CreationDate'].to_i) if map['CreationDate']
        data.update_date = Time.at(map['UpdateDate'].to_i) if map['UpdateDate']
        data.update_version = map['UpdateVersion']
        data.state = map['State']
        data.pending_deletion = map['PendingDeletion']
        return data
      end
    end

    class DomainEndpointOptionsStatus
      def self.parse(map)
        data = Types::DomainEndpointOptionsStatus.new
        data.options = (DomainEndpointOptions.parse(map['Options']) unless map['Options'].nil?)
        data.status = (OptionStatus.parse(map['Status']) unless map['Status'].nil?)
        return data
      end
    end

    class LogPublishingOptionsStatus
      def self.parse(map)
        data = Types::LogPublishingOptionsStatus.new
        data.options = (LogPublishingOptions.parse(map['Options']) unless map['Options'].nil?)
        data.status = (OptionStatus.parse(map['Status']) unless map['Status'].nil?)
        return data
      end
    end

    class AdvancedOptionsStatus
      def self.parse(map)
        data = Types::AdvancedOptionsStatus.new
        data.options = (AdvancedOptions.parse(map['Options']) unless map['Options'].nil?)
        data.status = (OptionStatus.parse(map['Status']) unless map['Status'].nil?)
        return data
      end
    end

    class NodeToNodeEncryptionOptionsStatus
      def self.parse(map)
        data = Types::NodeToNodeEncryptionOptionsStatus.new
        data.options = (NodeToNodeEncryptionOptions.parse(map['Options']) unless map['Options'].nil?)
        data.status = (OptionStatus.parse(map['Status']) unless map['Status'].nil?)
        return data
      end
    end

    class EncryptionAtRestOptionsStatus
      def self.parse(map)
        data = Types::EncryptionAtRestOptionsStatus.new
        data.options = (EncryptionAtRestOptions.parse(map['Options']) unless map['Options'].nil?)
        data.status = (OptionStatus.parse(map['Status']) unless map['Status'].nil?)
        return data
      end
    end

    class CognitoOptionsStatus
      def self.parse(map)
        data = Types::CognitoOptionsStatus.new
        data.options = (CognitoOptions.parse(map['Options']) unless map['Options'].nil?)
        data.status = (OptionStatus.parse(map['Status']) unless map['Status'].nil?)
        return data
      end
    end

    class VPCDerivedInfoStatus
      def self.parse(map)
        data = Types::VPCDerivedInfoStatus.new
        data.options = (VPCDerivedInfo.parse(map['Options']) unless map['Options'].nil?)
        data.status = (OptionStatus.parse(map['Status']) unless map['Status'].nil?)
        return data
      end
    end

    class SnapshotOptionsStatus
      def self.parse(map)
        data = Types::SnapshotOptionsStatus.new
        data.options = (SnapshotOptions.parse(map['Options']) unless map['Options'].nil?)
        data.status = (OptionStatus.parse(map['Status']) unless map['Status'].nil?)
        return data
      end
    end

    class AccessPoliciesStatus
      def self.parse(map)
        data = Types::AccessPoliciesStatus.new
        data.options = map['Options']
        data.status = (OptionStatus.parse(map['Status']) unless map['Status'].nil?)
        return data
      end
    end

    class EBSOptionsStatus
      def self.parse(map)
        data = Types::EBSOptionsStatus.new
        data.options = (EBSOptions.parse(map['Options']) unless map['Options'].nil?)
        data.status = (OptionStatus.parse(map['Status']) unless map['Status'].nil?)
        return data
      end
    end

    class ElasticsearchClusterConfigStatus
      def self.parse(map)
        data = Types::ElasticsearchClusterConfigStatus.new
        data.options = (ElasticsearchClusterConfig.parse(map['Options']) unless map['Options'].nil?)
        data.status = (OptionStatus.parse(map['Status']) unless map['Status'].nil?)
        return data
      end
    end

    class ElasticsearchVersionStatus
      def self.parse(map)
        data = Types::ElasticsearchVersionStatus.new
        data.options = map['Options']
        data.status = (OptionStatus.parse(map['Status']) unless map['Status'].nil?)
        return data
      end
    end

    # Operation Parser for DescribeElasticsearchDomains
    class DescribeElasticsearchDomains
      def self.parse(http_resp)
        data = Types::DescribeElasticsearchDomainsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.domain_status_list = (ElasticsearchDomainStatusList.parse(map['DomainStatusList']) unless map['DomainStatusList'].nil?)
        data
      end
    end

    class ElasticsearchDomainStatusList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ElasticsearchDomainStatus.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribeElasticsearchInstanceTypeLimits
    class DescribeElasticsearchInstanceTypeLimits
      def self.parse(http_resp)
        data = Types::DescribeElasticsearchInstanceTypeLimitsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.limits_by_role = (LimitsByRole.parse(map['LimitsByRole']) unless map['LimitsByRole'].nil?)
        data
      end
    end

    class LimitsByRole
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Limits.parse(value) unless value.nil?
        end
        data
      end
    end

    class Limits
      def self.parse(map)
        data = Types::Limits.new
        data.storage_types = (StorageTypeList.parse(map['StorageTypes']) unless map['StorageTypes'].nil?)
        data.instance_limits = (InstanceLimits.parse(map['InstanceLimits']) unless map['InstanceLimits'].nil?)
        data.additional_limits = (AdditionalLimitList.parse(map['AdditionalLimits']) unless map['AdditionalLimits'].nil?)
        return data
      end
    end

    class AdditionalLimitList
      def self.parse(list)
        data = []
        list.map do |value|
          data << AdditionalLimit.parse(value) unless value.nil?
        end
        data
      end
    end

    class AdditionalLimit
      def self.parse(map)
        data = Types::AdditionalLimit.new
        data.limit_name = map['LimitName']
        data.limit_values = (LimitValueList.parse(map['LimitValues']) unless map['LimitValues'].nil?)
        return data
      end
    end

    class LimitValueList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class InstanceLimits
      def self.parse(map)
        data = Types::InstanceLimits.new
        data.instance_count_limits = (InstanceCountLimits.parse(map['InstanceCountLimits']) unless map['InstanceCountLimits'].nil?)
        return data
      end
    end

    class InstanceCountLimits
      def self.parse(map)
        data = Types::InstanceCountLimits.new
        data.minimum_instance_count = map['MinimumInstanceCount']
        data.maximum_instance_count = map['MaximumInstanceCount']
        return data
      end
    end

    class StorageTypeList
      def self.parse(list)
        data = []
        list.map do |value|
          data << StorageType.parse(value) unless value.nil?
        end
        data
      end
    end

    class StorageType
      def self.parse(map)
        data = Types::StorageType.new
        data.storage_type_name = map['StorageTypeName']
        data.storage_sub_type_name = map['StorageSubTypeName']
        data.storage_type_limits = (StorageTypeLimitList.parse(map['StorageTypeLimits']) unless map['StorageTypeLimits'].nil?)
        return data
      end
    end

    class StorageTypeLimitList
      def self.parse(list)
        data = []
        list.map do |value|
          data << StorageTypeLimit.parse(value) unless value.nil?
        end
        data
      end
    end

    class StorageTypeLimit
      def self.parse(map)
        data = Types::StorageTypeLimit.new
        data.limit_name = map['LimitName']
        data.limit_values = (LimitValueList.parse(map['LimitValues']) unless map['LimitValues'].nil?)
        return data
      end
    end

    # Operation Parser for DescribeInboundCrossClusterSearchConnections
    class DescribeInboundCrossClusterSearchConnections
      def self.parse(http_resp)
        data = Types::DescribeInboundCrossClusterSearchConnectionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.cross_cluster_search_connections = (InboundCrossClusterSearchConnections.parse(map['CrossClusterSearchConnections']) unless map['CrossClusterSearchConnections'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class InboundCrossClusterSearchConnections
      def self.parse(list)
        data = []
        list.map do |value|
          data << InboundCrossClusterSearchConnection.parse(value) unless value.nil?
        end
        data
      end
    end

    # Error Parser for InvalidPaginationTokenException
    class InvalidPaginationTokenException
      def self.parse(http_resp)
        data = Types::InvalidPaginationTokenException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for DescribeOutboundCrossClusterSearchConnections
    class DescribeOutboundCrossClusterSearchConnections
      def self.parse(http_resp)
        data = Types::DescribeOutboundCrossClusterSearchConnectionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.cross_cluster_search_connections = (OutboundCrossClusterSearchConnections.parse(map['CrossClusterSearchConnections']) unless map['CrossClusterSearchConnections'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class OutboundCrossClusterSearchConnections
      def self.parse(list)
        data = []
        list.map do |value|
          data << OutboundCrossClusterSearchConnection.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribePackages
    class DescribePackages
      def self.parse(http_resp)
        data = Types::DescribePackagesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.package_details_list = (PackageDetailsList.parse(map['PackageDetailsList']) unless map['PackageDetailsList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class PackageDetailsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << PackageDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribeReservedElasticsearchInstanceOfferings
    class DescribeReservedElasticsearchInstanceOfferings
      def self.parse(http_resp)
        data = Types::DescribeReservedElasticsearchInstanceOfferingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['NextToken']
        data.reserved_elasticsearch_instance_offerings = (ReservedElasticsearchInstanceOfferingList.parse(map['ReservedElasticsearchInstanceOfferings']) unless map['ReservedElasticsearchInstanceOfferings'].nil?)
        data
      end
    end

    class ReservedElasticsearchInstanceOfferingList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ReservedElasticsearchInstanceOffering.parse(value) unless value.nil?
        end
        data
      end
    end

    class ReservedElasticsearchInstanceOffering
      def self.parse(map)
        data = Types::ReservedElasticsearchInstanceOffering.new
        data.reserved_elasticsearch_instance_offering_id = map['ReservedElasticsearchInstanceOfferingId']
        data.elasticsearch_instance_type = map['ElasticsearchInstanceType']
        data.duration = map['Duration']
        data.fixed_price = Hearth::NumberHelper.deserialize(map['FixedPrice'])
        data.usage_price = Hearth::NumberHelper.deserialize(map['UsagePrice'])
        data.currency_code = map['CurrencyCode']
        data.payment_option = map['PaymentOption']
        data.recurring_charges = (RecurringChargeList.parse(map['RecurringCharges']) unless map['RecurringCharges'].nil?)
        return data
      end
    end

    class RecurringChargeList
      def self.parse(list)
        data = []
        list.map do |value|
          data << RecurringCharge.parse(value) unless value.nil?
        end
        data
      end
    end

    class RecurringCharge
      def self.parse(map)
        data = Types::RecurringCharge.new
        data.recurring_charge_amount = Hearth::NumberHelper.deserialize(map['RecurringChargeAmount'])
        data.recurring_charge_frequency = map['RecurringChargeFrequency']
        return data
      end
    end

    # Operation Parser for DescribeReservedElasticsearchInstances
    class DescribeReservedElasticsearchInstances
      def self.parse(http_resp)
        data = Types::DescribeReservedElasticsearchInstancesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['NextToken']
        data.reserved_elasticsearch_instances = (ReservedElasticsearchInstanceList.parse(map['ReservedElasticsearchInstances']) unless map['ReservedElasticsearchInstances'].nil?)
        data
      end
    end

    class ReservedElasticsearchInstanceList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ReservedElasticsearchInstance.parse(value) unless value.nil?
        end
        data
      end
    end

    class ReservedElasticsearchInstance
      def self.parse(map)
        data = Types::ReservedElasticsearchInstance.new
        data.reservation_name = map['ReservationName']
        data.reserved_elasticsearch_instance_id = map['ReservedElasticsearchInstanceId']
        data.reserved_elasticsearch_instance_offering_id = map['ReservedElasticsearchInstanceOfferingId']
        data.elasticsearch_instance_type = map['ElasticsearchInstanceType']
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        data.duration = map['Duration']
        data.fixed_price = Hearth::NumberHelper.deserialize(map['FixedPrice'])
        data.usage_price = Hearth::NumberHelper.deserialize(map['UsagePrice'])
        data.currency_code = map['CurrencyCode']
        data.elasticsearch_instance_count = map['ElasticsearchInstanceCount']
        data.state = map['State']
        data.payment_option = map['PaymentOption']
        data.recurring_charges = (RecurringChargeList.parse(map['RecurringCharges']) unless map['RecurringCharges'].nil?)
        return data
      end
    end

    # Operation Parser for DissociatePackage
    class DissociatePackage
      def self.parse(http_resp)
        data = Types::DissociatePackageOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.domain_package_details = (DomainPackageDetails.parse(map['DomainPackageDetails']) unless map['DomainPackageDetails'].nil?)
        data
      end
    end

    # Operation Parser for GetCompatibleElasticsearchVersions
    class GetCompatibleElasticsearchVersions
      def self.parse(http_resp)
        data = Types::GetCompatibleElasticsearchVersionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.compatible_elasticsearch_versions = (CompatibleElasticsearchVersionsList.parse(map['CompatibleElasticsearchVersions']) unless map['CompatibleElasticsearchVersions'].nil?)
        data
      end
    end

    class CompatibleElasticsearchVersionsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << CompatibleVersionsMap.parse(value) unless value.nil?
        end
        data
      end
    end

    class CompatibleVersionsMap
      def self.parse(map)
        data = Types::CompatibleVersionsMap.new
        data.source_version = map['SourceVersion']
        data.target_versions = (ElasticsearchVersionList.parse(map['TargetVersions']) unless map['TargetVersions'].nil?)
        return data
      end
    end

    class ElasticsearchVersionList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetPackageVersionHistory
    class GetPackageVersionHistory
      def self.parse(http_resp)
        data = Types::GetPackageVersionHistoryOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.package_id = map['PackageID']
        data.package_version_history_list = (PackageVersionHistoryList.parse(map['PackageVersionHistoryList']) unless map['PackageVersionHistoryList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class PackageVersionHistoryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << PackageVersionHistory.parse(value) unless value.nil?
        end
        data
      end
    end

    class PackageVersionHistory
      def self.parse(map)
        data = Types::PackageVersionHistory.new
        data.package_version = map['PackageVersion']
        data.commit_message = map['CommitMessage']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        return data
      end
    end

    # Operation Parser for GetUpgradeHistory
    class GetUpgradeHistory
      def self.parse(http_resp)
        data = Types::GetUpgradeHistoryOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.upgrade_histories = (UpgradeHistoryList.parse(map['UpgradeHistories']) unless map['UpgradeHistories'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class UpgradeHistoryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << UpgradeHistory.parse(value) unless value.nil?
        end
        data
      end
    end

    class UpgradeHistory
      def self.parse(map)
        data = Types::UpgradeHistory.new
        data.upgrade_name = map['UpgradeName']
        data.start_timestamp = Time.at(map['StartTimestamp'].to_i) if map['StartTimestamp']
        data.upgrade_status = map['UpgradeStatus']
        data.steps_list = (UpgradeStepsList.parse(map['StepsList']) unless map['StepsList'].nil?)
        return data
      end
    end

    class UpgradeStepsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << UpgradeStepItem.parse(value) unless value.nil?
        end
        data
      end
    end

    class UpgradeStepItem
      def self.parse(map)
        data = Types::UpgradeStepItem.new
        data.upgrade_step = map['UpgradeStep']
        data.upgrade_step_status = map['UpgradeStepStatus']
        data.issues = (Issues.parse(map['Issues']) unless map['Issues'].nil?)
        data.progress_percent = Hearth::NumberHelper.deserialize(map['ProgressPercent'])
        return data
      end
    end

    class Issues
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetUpgradeStatus
    class GetUpgradeStatus
      def self.parse(http_resp)
        data = Types::GetUpgradeStatusOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.upgrade_step = map['UpgradeStep']
        data.step_status = map['StepStatus']
        data.upgrade_name = map['UpgradeName']
        data
      end
    end

    # Operation Parser for ListDomainNames
    class ListDomainNames
      def self.parse(http_resp)
        data = Types::ListDomainNamesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.domain_names = (DomainInfoList.parse(map['DomainNames']) unless map['DomainNames'].nil?)
        data
      end
    end

    class DomainInfoList
      def self.parse(list)
        data = []
        list.map do |value|
          data << DomainInfo.parse(value) unless value.nil?
        end
        data
      end
    end

    class DomainInfo
      def self.parse(map)
        data = Types::DomainInfo.new
        data.domain_name = map['DomainName']
        data.engine_type = map['EngineType']
        return data
      end
    end

    # Operation Parser for ListDomainsForPackage
    class ListDomainsForPackage
      def self.parse(http_resp)
        data = Types::ListDomainsForPackageOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.domain_package_details_list = (DomainPackageDetailsList.parse(map['DomainPackageDetailsList']) unless map['DomainPackageDetailsList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class DomainPackageDetailsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << DomainPackageDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListElasticsearchInstanceTypes
    class ListElasticsearchInstanceTypes
      def self.parse(http_resp)
        data = Types::ListElasticsearchInstanceTypesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.elasticsearch_instance_types = (ElasticsearchInstanceTypeList.parse(map['ElasticsearchInstanceTypes']) unless map['ElasticsearchInstanceTypes'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ElasticsearchInstanceTypeList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListElasticsearchVersions
    class ListElasticsearchVersions
      def self.parse(http_resp)
        data = Types::ListElasticsearchVersionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.elasticsearch_versions = (ElasticsearchVersionList.parse(map['ElasticsearchVersions']) unless map['ElasticsearchVersions'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for ListPackagesForDomain
    class ListPackagesForDomain
      def self.parse(http_resp)
        data = Types::ListPackagesForDomainOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.domain_package_details_list = (DomainPackageDetailsList.parse(map['DomainPackageDetailsList']) unless map['DomainPackageDetailsList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for ListTags
    class ListTags
      def self.parse(http_resp)
        data = Types::ListTagsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tag_list = (TagList.parse(map['TagList']) unless map['TagList'].nil?)
        data
      end
    end

    class TagList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Tag.parse(value) unless value.nil?
        end
        data
      end
    end

    class Tag
      def self.parse(map)
        data = Types::Tag.new
        data.key = map['Key']
        data.value = map['Value']
        return data
      end
    end

    # Operation Parser for PurchaseReservedElasticsearchInstanceOffering
    class PurchaseReservedElasticsearchInstanceOffering
      def self.parse(http_resp)
        data = Types::PurchaseReservedElasticsearchInstanceOfferingOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.reserved_elasticsearch_instance_id = map['ReservedElasticsearchInstanceId']
        data.reservation_name = map['ReservationName']
        data
      end
    end

    # Operation Parser for RejectInboundCrossClusterSearchConnection
    class RejectInboundCrossClusterSearchConnection
      def self.parse(http_resp)
        data = Types::RejectInboundCrossClusterSearchConnectionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.cross_cluster_search_connection = (InboundCrossClusterSearchConnection.parse(map['CrossClusterSearchConnection']) unless map['CrossClusterSearchConnection'].nil?)
        data
      end
    end

    # Operation Parser for RemoveTags
    class RemoveTags
      def self.parse(http_resp)
        data = Types::RemoveTagsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for StartElasticsearchServiceSoftwareUpdate
    class StartElasticsearchServiceSoftwareUpdate
      def self.parse(http_resp)
        data = Types::StartElasticsearchServiceSoftwareUpdateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.service_software_options = (ServiceSoftwareOptions.parse(map['ServiceSoftwareOptions']) unless map['ServiceSoftwareOptions'].nil?)
        data
      end
    end

    # Operation Parser for UpdateElasticsearchDomainConfig
    class UpdateElasticsearchDomainConfig
      def self.parse(http_resp)
        data = Types::UpdateElasticsearchDomainConfigOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.domain_config = (ElasticsearchDomainConfig.parse(map['DomainConfig']) unless map['DomainConfig'].nil?)
        data.dry_run_results = (DryRunResults.parse(map['DryRunResults']) unless map['DryRunResults'].nil?)
        data
      end
    end

    class DryRunResults
      def self.parse(map)
        data = Types::DryRunResults.new
        data.deployment_type = map['DeploymentType']
        data.message = map['Message']
        return data
      end
    end

    # Operation Parser for UpdatePackage
    class UpdatePackage
      def self.parse(http_resp)
        data = Types::UpdatePackageOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.package_details = (PackageDetails.parse(map['PackageDetails']) unless map['PackageDetails'].nil?)
        data
      end
    end

    # Operation Parser for UpgradeElasticsearchDomain
    class UpgradeElasticsearchDomain
      def self.parse(http_resp)
        data = Types::UpgradeElasticsearchDomainOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.domain_name = map['DomainName']
        data.target_version = map['TargetVersion']
        data.perform_check_only = map['PerformCheckOnly']
        data.change_progress_details = (ChangeProgressDetails.parse(map['ChangeProgressDetails']) unless map['ChangeProgressDetails'].nil?)
        data
      end
    end
  end
end
