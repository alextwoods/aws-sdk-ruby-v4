# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::OpenSearch
  module Parsers

    # Operation Parser for AcceptInboundConnection
    class AcceptInboundConnection
      def self.parse(http_resp)
        data = Types::AcceptInboundConnectionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.connection = (Parsers::InboundConnection.parse(map['Connection']) unless map['Connection'].nil?)
        data
      end
    end

    class InboundConnection
      def self.parse(map)
        data = Types::InboundConnection.new
        data.local_domain_info = (Parsers::DomainInformationContainer.parse(map['LocalDomainInfo']) unless map['LocalDomainInfo'].nil?)
        data.remote_domain_info = (Parsers::DomainInformationContainer.parse(map['RemoteDomainInfo']) unless map['RemoteDomainInfo'].nil?)
        data.connection_id = map['ConnectionId']
        data.connection_status = (Parsers::InboundConnectionStatus.parse(map['ConnectionStatus']) unless map['ConnectionStatus'].nil?)
        return data
      end
    end

    class InboundConnectionStatus
      def self.parse(map)
        data = Types::InboundConnectionStatus.new
        data.status_code = map['StatusCode']
        data.message = map['Message']
        return data
      end
    end

    class DomainInformationContainer
      def self.parse(map)
        data = Types::DomainInformationContainer.new
        data.aws_domain_information = (Parsers::AWSDomainInformation.parse(map['AWSDomainInformation']) unless map['AWSDomainInformation'].nil?)
        return data
      end
    end

    class AWSDomainInformation
      def self.parse(map)
        data = Types::AWSDomainInformation.new
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

    # Error Parser for BaseException
    class BaseException
      def self.parse(http_resp)
        data = Types::BaseException.new
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
        data.domain_package_details = (Parsers::DomainPackageDetails.parse(map['DomainPackageDetails']) unless map['DomainPackageDetails'].nil?)
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
        data.error_details = (Parsers::ErrorDetails.parse(map['ErrorDetails']) unless map['ErrorDetails'].nil?)
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

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
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

    # Operation Parser for CancelServiceSoftwareUpdate
    class CancelServiceSoftwareUpdate
      def self.parse(http_resp)
        data = Types::CancelServiceSoftwareUpdateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.service_software_options = (Parsers::ServiceSoftwareOptions.parse(map['ServiceSoftwareOptions']) unless map['ServiceSoftwareOptions'].nil?)
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

    # Operation Parser for CreateDomain
    class CreateDomain
      def self.parse(http_resp)
        data = Types::CreateDomainOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.domain_status = (Parsers::DomainStatus.parse(map['DomainStatus']) unless map['DomainStatus'].nil?)
        data
      end
    end

    class DomainStatus
      def self.parse(map)
        data = Types::DomainStatus.new
        data.domain_id = map['DomainId']
        data.domain_name = map['DomainName']
        data.arn = map['ARN']
        data.created = map['Created']
        data.deleted = map['Deleted']
        data.endpoint = map['Endpoint']
        data.endpoints = (Parsers::EndpointsMap.parse(map['Endpoints']) unless map['Endpoints'].nil?)
        data.processing = map['Processing']
        data.upgrade_processing = map['UpgradeProcessing']
        data.engine_version = map['EngineVersion']
        data.cluster_config = (Parsers::ClusterConfig.parse(map['ClusterConfig']) unless map['ClusterConfig'].nil?)
        data.ebs_options = (Parsers::EBSOptions.parse(map['EBSOptions']) unless map['EBSOptions'].nil?)
        data.access_policies = map['AccessPolicies']
        data.snapshot_options = (Parsers::SnapshotOptions.parse(map['SnapshotOptions']) unless map['SnapshotOptions'].nil?)
        data.vpc_options = (Parsers::VPCDerivedInfo.parse(map['VPCOptions']) unless map['VPCOptions'].nil?)
        data.cognito_options = (Parsers::CognitoOptions.parse(map['CognitoOptions']) unless map['CognitoOptions'].nil?)
        data.encryption_at_rest_options = (Parsers::EncryptionAtRestOptions.parse(map['EncryptionAtRestOptions']) unless map['EncryptionAtRestOptions'].nil?)
        data.node_to_node_encryption_options = (Parsers::NodeToNodeEncryptionOptions.parse(map['NodeToNodeEncryptionOptions']) unless map['NodeToNodeEncryptionOptions'].nil?)
        data.advanced_options = (Parsers::AdvancedOptions.parse(map['AdvancedOptions']) unless map['AdvancedOptions'].nil?)
        data.log_publishing_options = (Parsers::LogPublishingOptions.parse(map['LogPublishingOptions']) unless map['LogPublishingOptions'].nil?)
        data.service_software_options = (Parsers::ServiceSoftwareOptions.parse(map['ServiceSoftwareOptions']) unless map['ServiceSoftwareOptions'].nil?)
        data.domain_endpoint_options = (Parsers::DomainEndpointOptions.parse(map['DomainEndpointOptions']) unless map['DomainEndpointOptions'].nil?)
        data.advanced_security_options = (Parsers::AdvancedSecurityOptions.parse(map['AdvancedSecurityOptions']) unless map['AdvancedSecurityOptions'].nil?)
        data.auto_tune_options = (Parsers::AutoTuneOptionsOutput.parse(map['AutoTuneOptions']) unless map['AutoTuneOptions'].nil?)
        data.change_progress_details = (Parsers::ChangeProgressDetails.parse(map['ChangeProgressDetails']) unless map['ChangeProgressDetails'].nil?)
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
        data.saml_options = (Parsers::SAMLOptionsOutput.parse(map['SAMLOptions']) unless map['SAMLOptions'].nil?)
        data.anonymous_auth_disable_date = Time.at(map['AnonymousAuthDisableDate'].to_i) if map['AnonymousAuthDisableDate']
        data.anonymous_auth_enabled = map['AnonymousAuthEnabled']
        return data
      end
    end

    class SAMLOptionsOutput
      def self.parse(map)
        data = Types::SAMLOptionsOutput.new
        data.enabled = map['Enabled']
        data.idp = (Parsers::SAMLIdp.parse(map['Idp']) unless map['Idp'].nil?)
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
          data[key] = Parsers::LogPublishingOption.parse(value) unless value.nil?
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
        data.subnet_ids = (Parsers::StringList.parse(map['SubnetIds']) unless map['SubnetIds'].nil?)
        data.availability_zones = (Parsers::StringList.parse(map['AvailabilityZones']) unless map['AvailabilityZones'].nil?)
        data.security_group_ids = (Parsers::StringList.parse(map['SecurityGroupIds']) unless map['SecurityGroupIds'].nil?)
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

    class ClusterConfig
      def self.parse(map)
        data = Types::ClusterConfig.new
        data.instance_type = map['InstanceType']
        data.instance_count = map['InstanceCount']
        data.dedicated_master_enabled = map['DedicatedMasterEnabled']
        data.zone_awareness_enabled = map['ZoneAwarenessEnabled']
        data.zone_awareness_config = (Parsers::ZoneAwarenessConfig.parse(map['ZoneAwarenessConfig']) unless map['ZoneAwarenessConfig'].nil?)
        data.dedicated_master_type = map['DedicatedMasterType']
        data.dedicated_master_count = map['DedicatedMasterCount']
        data.warm_enabled = map['WarmEnabled']
        data.warm_type = map['WarmType']
        data.warm_count = map['WarmCount']
        data.cold_storage_options = (Parsers::ColdStorageOptions.parse(map['ColdStorageOptions']) unless map['ColdStorageOptions'].nil?)
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

    # Error Parser for InvalidTypeException
    class InvalidTypeException
      def self.parse(http_resp)
        data = Types::InvalidTypeException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
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

    # Operation Parser for CreateOutboundConnection
    class CreateOutboundConnection
      def self.parse(http_resp)
        data = Types::CreateOutboundConnectionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.local_domain_info = (Parsers::DomainInformationContainer.parse(map['LocalDomainInfo']) unless map['LocalDomainInfo'].nil?)
        data.remote_domain_info = (Parsers::DomainInformationContainer.parse(map['RemoteDomainInfo']) unless map['RemoteDomainInfo'].nil?)
        data.connection_alias = map['ConnectionAlias']
        data.connection_status = (Parsers::OutboundConnectionStatus.parse(map['ConnectionStatus']) unless map['ConnectionStatus'].nil?)
        data.connection_id = map['ConnectionId']
        data
      end
    end

    class OutboundConnectionStatus
      def self.parse(map)
        data = Types::OutboundConnectionStatus.new
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
        data.package_details = (Parsers::PackageDetails.parse(map['PackageDetails']) unless map['PackageDetails'].nil?)
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
        data.error_details = (Parsers::ErrorDetails.parse(map['ErrorDetails']) unless map['ErrorDetails'].nil?)
        return data
      end
    end

    # Operation Parser for DeleteDomain
    class DeleteDomain
      def self.parse(http_resp)
        data = Types::DeleteDomainOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.domain_status = (Parsers::DomainStatus.parse(map['DomainStatus']) unless map['DomainStatus'].nil?)
        data
      end
    end

    # Operation Parser for DeleteInboundConnection
    class DeleteInboundConnection
      def self.parse(http_resp)
        data = Types::DeleteInboundConnectionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.connection = (Parsers::InboundConnection.parse(map['Connection']) unless map['Connection'].nil?)
        data
      end
    end

    # Operation Parser for DeleteOutboundConnection
    class DeleteOutboundConnection
      def self.parse(http_resp)
        data = Types::DeleteOutboundConnectionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.connection = (Parsers::OutboundConnection.parse(map['Connection']) unless map['Connection'].nil?)
        data
      end
    end

    class OutboundConnection
      def self.parse(map)
        data = Types::OutboundConnection.new
        data.local_domain_info = (Parsers::DomainInformationContainer.parse(map['LocalDomainInfo']) unless map['LocalDomainInfo'].nil?)
        data.remote_domain_info = (Parsers::DomainInformationContainer.parse(map['RemoteDomainInfo']) unless map['RemoteDomainInfo'].nil?)
        data.connection_id = map['ConnectionId']
        data.connection_alias = map['ConnectionAlias']
        data.connection_status = (Parsers::OutboundConnectionStatus.parse(map['ConnectionStatus']) unless map['ConnectionStatus'].nil?)
        return data
      end
    end

    # Operation Parser for DeletePackage
    class DeletePackage
      def self.parse(http_resp)
        data = Types::DeletePackageOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.package_details = (Parsers::PackageDetails.parse(map['PackageDetails']) unless map['PackageDetails'].nil?)
        data
      end
    end

    # Operation Parser for DescribeDomain
    class DescribeDomain
      def self.parse(http_resp)
        data = Types::DescribeDomainOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.domain_status = (Parsers::DomainStatus.parse(map['DomainStatus']) unless map['DomainStatus'].nil?)
        data
      end
    end

    # Operation Parser for DescribeDomainAutoTunes
    class DescribeDomainAutoTunes
      def self.parse(http_resp)
        data = Types::DescribeDomainAutoTunesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.auto_tunes = (Parsers::AutoTuneList.parse(map['AutoTunes']) unless map['AutoTunes'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class AutoTuneList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AutoTune.parse(value) unless value.nil?
        end
        data
      end
    end

    class AutoTune
      def self.parse(map)
        data = Types::AutoTune.new
        data.auto_tune_type = map['AutoTuneType']
        data.auto_tune_details = (Parsers::AutoTuneDetails.parse(map['AutoTuneDetails']) unless map['AutoTuneDetails'].nil?)
        return data
      end
    end

    class AutoTuneDetails
      def self.parse(map)
        data = Types::AutoTuneDetails.new
        data.scheduled_auto_tune_details = (Parsers::ScheduledAutoTuneDetails.parse(map['ScheduledAutoTuneDetails']) unless map['ScheduledAutoTuneDetails'].nil?)
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
        data.change_progress_status = (Parsers::ChangeProgressStatusDetails.parse(map['ChangeProgressStatus']) unless map['ChangeProgressStatus'].nil?)
        data
      end
    end

    class ChangeProgressStatusDetails
      def self.parse(map)
        data = Types::ChangeProgressStatusDetails.new
        data.change_id = map['ChangeId']
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        data.status = map['Status']
        data.pending_properties = (Parsers::StringList.parse(map['PendingProperties']) unless map['PendingProperties'].nil?)
        data.completed_properties = (Parsers::StringList.parse(map['CompletedProperties']) unless map['CompletedProperties'].nil?)
        data.total_number_of_stages = map['TotalNumberOfStages']
        data.change_progress_stages = (Parsers::ChangeProgressStageList.parse(map['ChangeProgressStages']) unless map['ChangeProgressStages'].nil?)
        return data
      end
    end

    class ChangeProgressStageList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ChangeProgressStage.parse(value) unless value.nil?
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

    # Operation Parser for DescribeDomainConfig
    class DescribeDomainConfig
      def self.parse(http_resp)
        data = Types::DescribeDomainConfigOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.domain_config = (Parsers::DomainConfig.parse(map['DomainConfig']) unless map['DomainConfig'].nil?)
        data
      end
    end

    class DomainConfig
      def self.parse(map)
        data = Types::DomainConfig.new
        data.engine_version = (Parsers::VersionStatus.parse(map['EngineVersion']) unless map['EngineVersion'].nil?)
        data.cluster_config = (Parsers::ClusterConfigStatus.parse(map['ClusterConfig']) unless map['ClusterConfig'].nil?)
        data.ebs_options = (Parsers::EBSOptionsStatus.parse(map['EBSOptions']) unless map['EBSOptions'].nil?)
        data.access_policies = (Parsers::AccessPoliciesStatus.parse(map['AccessPolicies']) unless map['AccessPolicies'].nil?)
        data.snapshot_options = (Parsers::SnapshotOptionsStatus.parse(map['SnapshotOptions']) unless map['SnapshotOptions'].nil?)
        data.vpc_options = (Parsers::VPCDerivedInfoStatus.parse(map['VPCOptions']) unless map['VPCOptions'].nil?)
        data.cognito_options = (Parsers::CognitoOptionsStatus.parse(map['CognitoOptions']) unless map['CognitoOptions'].nil?)
        data.encryption_at_rest_options = (Parsers::EncryptionAtRestOptionsStatus.parse(map['EncryptionAtRestOptions']) unless map['EncryptionAtRestOptions'].nil?)
        data.node_to_node_encryption_options = (Parsers::NodeToNodeEncryptionOptionsStatus.parse(map['NodeToNodeEncryptionOptions']) unless map['NodeToNodeEncryptionOptions'].nil?)
        data.advanced_options = (Parsers::AdvancedOptionsStatus.parse(map['AdvancedOptions']) unless map['AdvancedOptions'].nil?)
        data.log_publishing_options = (Parsers::LogPublishingOptionsStatus.parse(map['LogPublishingOptions']) unless map['LogPublishingOptions'].nil?)
        data.domain_endpoint_options = (Parsers::DomainEndpointOptionsStatus.parse(map['DomainEndpointOptions']) unless map['DomainEndpointOptions'].nil?)
        data.advanced_security_options = (Parsers::AdvancedSecurityOptionsStatus.parse(map['AdvancedSecurityOptions']) unless map['AdvancedSecurityOptions'].nil?)
        data.auto_tune_options = (Parsers::AutoTuneOptionsStatus.parse(map['AutoTuneOptions']) unless map['AutoTuneOptions'].nil?)
        data.change_progress_details = (Parsers::ChangeProgressDetails.parse(map['ChangeProgressDetails']) unless map['ChangeProgressDetails'].nil?)
        return data
      end
    end

    class AutoTuneOptionsStatus
      def self.parse(map)
        data = Types::AutoTuneOptionsStatus.new
        data.options = (Parsers::AutoTuneOptions.parse(map['Options']) unless map['Options'].nil?)
        data.status = (Parsers::AutoTuneStatus.parse(map['Status']) unless map['Status'].nil?)
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
        data.maintenance_schedules = (Parsers::AutoTuneMaintenanceScheduleList.parse(map['MaintenanceSchedules']) unless map['MaintenanceSchedules'].nil?)
        return data
      end
    end

    class AutoTuneMaintenanceScheduleList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AutoTuneMaintenanceSchedule.parse(value) unless value.nil?
        end
        data
      end
    end

    class AutoTuneMaintenanceSchedule
      def self.parse(map)
        data = Types::AutoTuneMaintenanceSchedule.new
        data.start_at = Time.at(map['StartAt'].to_i) if map['StartAt']
        data.duration = (Parsers::Duration.parse(map['Duration']) unless map['Duration'].nil?)
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
        data.options = (Parsers::AdvancedSecurityOptions.parse(map['Options']) unless map['Options'].nil?)
        data.status = (Parsers::OptionStatus.parse(map['Status']) unless map['Status'].nil?)
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
        data.options = (Parsers::DomainEndpointOptions.parse(map['Options']) unless map['Options'].nil?)
        data.status = (Parsers::OptionStatus.parse(map['Status']) unless map['Status'].nil?)
        return data
      end
    end

    class LogPublishingOptionsStatus
      def self.parse(map)
        data = Types::LogPublishingOptionsStatus.new
        data.options = (Parsers::LogPublishingOptions.parse(map['Options']) unless map['Options'].nil?)
        data.status = (Parsers::OptionStatus.parse(map['Status']) unless map['Status'].nil?)
        return data
      end
    end

    class AdvancedOptionsStatus
      def self.parse(map)
        data = Types::AdvancedOptionsStatus.new
        data.options = (Parsers::AdvancedOptions.parse(map['Options']) unless map['Options'].nil?)
        data.status = (Parsers::OptionStatus.parse(map['Status']) unless map['Status'].nil?)
        return data
      end
    end

    class NodeToNodeEncryptionOptionsStatus
      def self.parse(map)
        data = Types::NodeToNodeEncryptionOptionsStatus.new
        data.options = (Parsers::NodeToNodeEncryptionOptions.parse(map['Options']) unless map['Options'].nil?)
        data.status = (Parsers::OptionStatus.parse(map['Status']) unless map['Status'].nil?)
        return data
      end
    end

    class EncryptionAtRestOptionsStatus
      def self.parse(map)
        data = Types::EncryptionAtRestOptionsStatus.new
        data.options = (Parsers::EncryptionAtRestOptions.parse(map['Options']) unless map['Options'].nil?)
        data.status = (Parsers::OptionStatus.parse(map['Status']) unless map['Status'].nil?)
        return data
      end
    end

    class CognitoOptionsStatus
      def self.parse(map)
        data = Types::CognitoOptionsStatus.new
        data.options = (Parsers::CognitoOptions.parse(map['Options']) unless map['Options'].nil?)
        data.status = (Parsers::OptionStatus.parse(map['Status']) unless map['Status'].nil?)
        return data
      end
    end

    class VPCDerivedInfoStatus
      def self.parse(map)
        data = Types::VPCDerivedInfoStatus.new
        data.options = (Parsers::VPCDerivedInfo.parse(map['Options']) unless map['Options'].nil?)
        data.status = (Parsers::OptionStatus.parse(map['Status']) unless map['Status'].nil?)
        return data
      end
    end

    class SnapshotOptionsStatus
      def self.parse(map)
        data = Types::SnapshotOptionsStatus.new
        data.options = (Parsers::SnapshotOptions.parse(map['Options']) unless map['Options'].nil?)
        data.status = (Parsers::OptionStatus.parse(map['Status']) unless map['Status'].nil?)
        return data
      end
    end

    class AccessPoliciesStatus
      def self.parse(map)
        data = Types::AccessPoliciesStatus.new
        data.options = map['Options']
        data.status = (Parsers::OptionStatus.parse(map['Status']) unless map['Status'].nil?)
        return data
      end
    end

    class EBSOptionsStatus
      def self.parse(map)
        data = Types::EBSOptionsStatus.new
        data.options = (Parsers::EBSOptions.parse(map['Options']) unless map['Options'].nil?)
        data.status = (Parsers::OptionStatus.parse(map['Status']) unless map['Status'].nil?)
        return data
      end
    end

    class ClusterConfigStatus
      def self.parse(map)
        data = Types::ClusterConfigStatus.new
        data.options = (Parsers::ClusterConfig.parse(map['Options']) unless map['Options'].nil?)
        data.status = (Parsers::OptionStatus.parse(map['Status']) unless map['Status'].nil?)
        return data
      end
    end

    class VersionStatus
      def self.parse(map)
        data = Types::VersionStatus.new
        data.options = map['Options']
        data.status = (Parsers::OptionStatus.parse(map['Status']) unless map['Status'].nil?)
        return data
      end
    end

    # Operation Parser for DescribeDomains
    class DescribeDomains
      def self.parse(http_resp)
        data = Types::DescribeDomainsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.domain_status_list = (Parsers::DomainStatusList.parse(map['DomainStatusList']) unless map['DomainStatusList'].nil?)
        data
      end
    end

    class DomainStatusList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::DomainStatus.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribeInboundConnections
    class DescribeInboundConnections
      def self.parse(http_resp)
        data = Types::DescribeInboundConnectionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.connections = (Parsers::InboundConnections.parse(map['Connections']) unless map['Connections'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class InboundConnections
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::InboundConnection.parse(value) unless value.nil?
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

    # Operation Parser for DescribeInstanceTypeLimits
    class DescribeInstanceTypeLimits
      def self.parse(http_resp)
        data = Types::DescribeInstanceTypeLimitsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.limits_by_role = (Parsers::LimitsByRole.parse(map['LimitsByRole']) unless map['LimitsByRole'].nil?)
        data
      end
    end

    class LimitsByRole
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::Limits.parse(value) unless value.nil?
        end
        data
      end
    end

    class Limits
      def self.parse(map)
        data = Types::Limits.new
        data.storage_types = (Parsers::StorageTypeList.parse(map['StorageTypes']) unless map['StorageTypes'].nil?)
        data.instance_limits = (Parsers::InstanceLimits.parse(map['InstanceLimits']) unless map['InstanceLimits'].nil?)
        data.additional_limits = (Parsers::AdditionalLimitList.parse(map['AdditionalLimits']) unless map['AdditionalLimits'].nil?)
        return data
      end
    end

    class AdditionalLimitList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AdditionalLimit.parse(value) unless value.nil?
        end
        data
      end
    end

    class AdditionalLimit
      def self.parse(map)
        data = Types::AdditionalLimit.new
        data.limit_name = map['LimitName']
        data.limit_values = (Parsers::LimitValueList.parse(map['LimitValues']) unless map['LimitValues'].nil?)
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
        data.instance_count_limits = (Parsers::InstanceCountLimits.parse(map['InstanceCountLimits']) unless map['InstanceCountLimits'].nil?)
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
          data << Parsers::StorageType.parse(value) unless value.nil?
        end
        data
      end
    end

    class StorageType
      def self.parse(map)
        data = Types::StorageType.new
        data.storage_type_name = map['StorageTypeName']
        data.storage_sub_type_name = map['StorageSubTypeName']
        data.storage_type_limits = (Parsers::StorageTypeLimitList.parse(map['StorageTypeLimits']) unless map['StorageTypeLimits'].nil?)
        return data
      end
    end

    class StorageTypeLimitList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::StorageTypeLimit.parse(value) unless value.nil?
        end
        data
      end
    end

    class StorageTypeLimit
      def self.parse(map)
        data = Types::StorageTypeLimit.new
        data.limit_name = map['LimitName']
        data.limit_values = (Parsers::LimitValueList.parse(map['LimitValues']) unless map['LimitValues'].nil?)
        return data
      end
    end

    # Operation Parser for DescribeOutboundConnections
    class DescribeOutboundConnections
      def self.parse(http_resp)
        data = Types::DescribeOutboundConnectionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.connections = (Parsers::OutboundConnections.parse(map['Connections']) unless map['Connections'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class OutboundConnections
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::OutboundConnection.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribePackages
    class DescribePackages
      def self.parse(http_resp)
        data = Types::DescribePackagesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.package_details_list = (Parsers::PackageDetailsList.parse(map['PackageDetailsList']) unless map['PackageDetailsList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class PackageDetailsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::PackageDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribeReservedInstanceOfferings
    class DescribeReservedInstanceOfferings
      def self.parse(http_resp)
        data = Types::DescribeReservedInstanceOfferingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['NextToken']
        data.reserved_instance_offerings = (Parsers::ReservedInstanceOfferingList.parse(map['ReservedInstanceOfferings']) unless map['ReservedInstanceOfferings'].nil?)
        data
      end
    end

    class ReservedInstanceOfferingList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ReservedInstanceOffering.parse(value) unless value.nil?
        end
        data
      end
    end

    class ReservedInstanceOffering
      def self.parse(map)
        data = Types::ReservedInstanceOffering.new
        data.reserved_instance_offering_id = map['ReservedInstanceOfferingId']
        data.instance_type = map['InstanceType']
        data.duration = map['Duration']
        data.fixed_price = Hearth::NumberHelper.deserialize(map['FixedPrice'])
        data.usage_price = Hearth::NumberHelper.deserialize(map['UsagePrice'])
        data.currency_code = map['CurrencyCode']
        data.payment_option = map['PaymentOption']
        data.recurring_charges = (Parsers::RecurringChargeList.parse(map['RecurringCharges']) unless map['RecurringCharges'].nil?)
        return data
      end
    end

    class RecurringChargeList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::RecurringCharge.parse(value) unless value.nil?
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

    # Operation Parser for DescribeReservedInstances
    class DescribeReservedInstances
      def self.parse(http_resp)
        data = Types::DescribeReservedInstancesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['NextToken']
        data.reserved_instances = (Parsers::ReservedInstanceList.parse(map['ReservedInstances']) unless map['ReservedInstances'].nil?)
        data
      end
    end

    class ReservedInstanceList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ReservedInstance.parse(value) unless value.nil?
        end
        data
      end
    end

    class ReservedInstance
      def self.parse(map)
        data = Types::ReservedInstance.new
        data.reservation_name = map['ReservationName']
        data.reserved_instance_id = map['ReservedInstanceId']
        data.billing_subscription_id = map['BillingSubscriptionId']
        data.reserved_instance_offering_id = map['ReservedInstanceOfferingId']
        data.instance_type = map['InstanceType']
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        data.duration = map['Duration']
        data.fixed_price = Hearth::NumberHelper.deserialize(map['FixedPrice'])
        data.usage_price = Hearth::NumberHelper.deserialize(map['UsagePrice'])
        data.currency_code = map['CurrencyCode']
        data.instance_count = map['InstanceCount']
        data.state = map['State']
        data.payment_option = map['PaymentOption']
        data.recurring_charges = (Parsers::RecurringChargeList.parse(map['RecurringCharges']) unless map['RecurringCharges'].nil?)
        return data
      end
    end

    # Operation Parser for DissociatePackage
    class DissociatePackage
      def self.parse(http_resp)
        data = Types::DissociatePackageOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.domain_package_details = (Parsers::DomainPackageDetails.parse(map['DomainPackageDetails']) unless map['DomainPackageDetails'].nil?)
        data
      end
    end

    # Operation Parser for GetCompatibleVersions
    class GetCompatibleVersions
      def self.parse(http_resp)
        data = Types::GetCompatibleVersionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.compatible_versions = (Parsers::CompatibleVersionsList.parse(map['CompatibleVersions']) unless map['CompatibleVersions'].nil?)
        data
      end
    end

    class CompatibleVersionsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::CompatibleVersionsMap.parse(value) unless value.nil?
        end
        data
      end
    end

    class CompatibleVersionsMap
      def self.parse(map)
        data = Types::CompatibleVersionsMap.new
        data.source_version = map['SourceVersion']
        data.target_versions = (Parsers::VersionList.parse(map['TargetVersions']) unless map['TargetVersions'].nil?)
        return data
      end
    end

    class VersionList
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
        data.package_version_history_list = (Parsers::PackageVersionHistoryList.parse(map['PackageVersionHistoryList']) unless map['PackageVersionHistoryList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class PackageVersionHistoryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::PackageVersionHistory.parse(value) unless value.nil?
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
        data.upgrade_histories = (Parsers::UpgradeHistoryList.parse(map['UpgradeHistories']) unless map['UpgradeHistories'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class UpgradeHistoryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::UpgradeHistory.parse(value) unless value.nil?
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
        data.steps_list = (Parsers::UpgradeStepsList.parse(map['StepsList']) unless map['StepsList'].nil?)
        return data
      end
    end

    class UpgradeStepsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::UpgradeStepItem.parse(value) unless value.nil?
        end
        data
      end
    end

    class UpgradeStepItem
      def self.parse(map)
        data = Types::UpgradeStepItem.new
        data.upgrade_step = map['UpgradeStep']
        data.upgrade_step_status = map['UpgradeStepStatus']
        data.issues = (Parsers::Issues.parse(map['Issues']) unless map['Issues'].nil?)
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
        data.domain_names = (Parsers::DomainInfoList.parse(map['DomainNames']) unless map['DomainNames'].nil?)
        data
      end
    end

    class DomainInfoList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::DomainInfo.parse(value) unless value.nil?
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
        data.domain_package_details_list = (Parsers::DomainPackageDetailsList.parse(map['DomainPackageDetailsList']) unless map['DomainPackageDetailsList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class DomainPackageDetailsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::DomainPackageDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListInstanceTypeDetails
    class ListInstanceTypeDetails
      def self.parse(http_resp)
        data = Types::ListInstanceTypeDetailsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.instance_type_details = (Parsers::InstanceTypeDetailsList.parse(map['InstanceTypeDetails']) unless map['InstanceTypeDetails'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class InstanceTypeDetailsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::InstanceTypeDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    class InstanceTypeDetails
      def self.parse(map)
        data = Types::InstanceTypeDetails.new
        data.instance_type = map['InstanceType']
        data.encryption_enabled = map['EncryptionEnabled']
        data.cognito_enabled = map['CognitoEnabled']
        data.app_logs_enabled = map['AppLogsEnabled']
        data.advanced_security_enabled = map['AdvancedSecurityEnabled']
        data.warm_enabled = map['WarmEnabled']
        data.instance_role = (Parsers::InstanceRoleList.parse(map['InstanceRole']) unless map['InstanceRole'].nil?)
        return data
      end
    end

    class InstanceRoleList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListPackagesForDomain
    class ListPackagesForDomain
      def self.parse(http_resp)
        data = Types::ListPackagesForDomainOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.domain_package_details_list = (Parsers::DomainPackageDetailsList.parse(map['DomainPackageDetailsList']) unless map['DomainPackageDetailsList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for ListTags
    class ListTags
      def self.parse(http_resp)
        data = Types::ListTagsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tag_list = (Parsers::TagList.parse(map['TagList']) unless map['TagList'].nil?)
        data
      end
    end

    class TagList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Tag.parse(value) unless value.nil?
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

    # Operation Parser for ListVersions
    class ListVersions
      def self.parse(http_resp)
        data = Types::ListVersionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.versions = (Parsers::VersionList.parse(map['Versions']) unless map['Versions'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for PurchaseReservedInstanceOffering
    class PurchaseReservedInstanceOffering
      def self.parse(http_resp)
        data = Types::PurchaseReservedInstanceOfferingOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.reserved_instance_id = map['ReservedInstanceId']
        data.reservation_name = map['ReservationName']
        data
      end
    end

    # Operation Parser for RejectInboundConnection
    class RejectInboundConnection
      def self.parse(http_resp)
        data = Types::RejectInboundConnectionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.connection = (Parsers::InboundConnection.parse(map['Connection']) unless map['Connection'].nil?)
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

    # Operation Parser for StartServiceSoftwareUpdate
    class StartServiceSoftwareUpdate
      def self.parse(http_resp)
        data = Types::StartServiceSoftwareUpdateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.service_software_options = (Parsers::ServiceSoftwareOptions.parse(map['ServiceSoftwareOptions']) unless map['ServiceSoftwareOptions'].nil?)
        data
      end
    end

    # Operation Parser for UpdateDomainConfig
    class UpdateDomainConfig
      def self.parse(http_resp)
        data = Types::UpdateDomainConfigOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.domain_config = (Parsers::DomainConfig.parse(map['DomainConfig']) unless map['DomainConfig'].nil?)
        data.dry_run_results = (Parsers::DryRunResults.parse(map['DryRunResults']) unless map['DryRunResults'].nil?)
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
        data.package_details = (Parsers::PackageDetails.parse(map['PackageDetails']) unless map['PackageDetails'].nil?)
        data
      end
    end

    # Operation Parser for UpgradeDomain
    class UpgradeDomain
      def self.parse(http_resp)
        data = Types::UpgradeDomainOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.upgrade_id = map['UpgradeId']
        data.domain_name = map['DomainName']
        data.target_version = map['TargetVersion']
        data.perform_check_only = map['PerformCheckOnly']
        data.advanced_options = (Parsers::AdvancedOptions.parse(map['AdvancedOptions']) unless map['AdvancedOptions'].nil?)
        data.change_progress_details = (Parsers::ChangeProgressDetails.parse(map['ChangeProgressDetails']) unless map['ChangeProgressDetails'].nil?)
        data
      end
    end
  end
end
