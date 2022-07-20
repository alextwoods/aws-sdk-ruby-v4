# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::GuardDuty
  module Parsers

    # Operation Parser for AcceptInvitation
    class AcceptInvitation
      def self.parse(http_resp)
        data = Types::AcceptInvitationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for BadRequestException
    class BadRequestException
      def self.parse(http_resp)
        data = Types::BadRequestException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.type = map['__type']
        data
      end
    end

    # Error Parser for InternalServerErrorException
    class InternalServerErrorException
      def self.parse(http_resp)
        data = Types::InternalServerErrorException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.type = map['__type']
        data
      end
    end

    # Operation Parser for ArchiveFindings
    class ArchiveFindings
      def self.parse(http_resp)
        data = Types::ArchiveFindingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for CreateDetector
    class CreateDetector
      def self.parse(http_resp)
        data = Types::CreateDetectorOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.detector_id = map['detectorId']
        data
      end
    end

    # Operation Parser for CreateFilter
    class CreateFilter
      def self.parse(http_resp)
        data = Types::CreateFilterOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['name']
        data
      end
    end

    # Operation Parser for CreateIPSet
    class CreateIPSet
      def self.parse(http_resp)
        data = Types::CreateIPSetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.ip_set_id = map['ipSetId']
        data
      end
    end

    # Operation Parser for CreateMembers
    class CreateMembers
      def self.parse(http_resp)
        data = Types::CreateMembersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.unprocessed_accounts = (UnprocessedAccounts.parse(map['unprocessedAccounts']) unless map['unprocessedAccounts'].nil?)
        data
      end
    end

    class UnprocessedAccounts
      def self.parse(list)
        data = []
        list.map do |value|
          data << UnprocessedAccount.parse(value) unless value.nil?
        end
        data
      end
    end

    class UnprocessedAccount
      def self.parse(map)
        data = Types::UnprocessedAccount.new
        data.account_id = map['accountId']
        data.result = map['result']
        return data
      end
    end

    # Operation Parser for CreatePublishingDestination
    class CreatePublishingDestination
      def self.parse(http_resp)
        data = Types::CreatePublishingDestinationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.destination_id = map['destinationId']
        data
      end
    end

    # Operation Parser for CreateSampleFindings
    class CreateSampleFindings
      def self.parse(http_resp)
        data = Types::CreateSampleFindingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for CreateThreatIntelSet
    class CreateThreatIntelSet
      def self.parse(http_resp)
        data = Types::CreateThreatIntelSetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.threat_intel_set_id = map['threatIntelSetId']
        data
      end
    end

    # Operation Parser for DeclineInvitations
    class DeclineInvitations
      def self.parse(http_resp)
        data = Types::DeclineInvitationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.unprocessed_accounts = (UnprocessedAccounts.parse(map['unprocessedAccounts']) unless map['unprocessedAccounts'].nil?)
        data
      end
    end

    # Operation Parser for DeleteDetector
    class DeleteDetector
      def self.parse(http_resp)
        data = Types::DeleteDetectorOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteFilter
    class DeleteFilter
      def self.parse(http_resp)
        data = Types::DeleteFilterOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteIPSet
    class DeleteIPSet
      def self.parse(http_resp)
        data = Types::DeleteIPSetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteInvitations
    class DeleteInvitations
      def self.parse(http_resp)
        data = Types::DeleteInvitationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.unprocessed_accounts = (UnprocessedAccounts.parse(map['unprocessedAccounts']) unless map['unprocessedAccounts'].nil?)
        data
      end
    end

    # Operation Parser for DeleteMembers
    class DeleteMembers
      def self.parse(http_resp)
        data = Types::DeleteMembersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.unprocessed_accounts = (UnprocessedAccounts.parse(map['unprocessedAccounts']) unless map['unprocessedAccounts'].nil?)
        data
      end
    end

    # Operation Parser for DeletePublishingDestination
    class DeletePublishingDestination
      def self.parse(http_resp)
        data = Types::DeletePublishingDestinationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteThreatIntelSet
    class DeleteThreatIntelSet
      def self.parse(http_resp)
        data = Types::DeleteThreatIntelSetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DescribeOrganizationConfiguration
    class DescribeOrganizationConfiguration
      def self.parse(http_resp)
        data = Types::DescribeOrganizationConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.auto_enable = map['autoEnable']
        data.member_account_limit_reached = map['memberAccountLimitReached']
        data.data_sources = (OrganizationDataSourceConfigurationsResult.parse(map['dataSources']) unless map['dataSources'].nil?)
        data
      end
    end

    class OrganizationDataSourceConfigurationsResult
      def self.parse(map)
        data = Types::OrganizationDataSourceConfigurationsResult.new
        data.s3_logs = (OrganizationS3LogsConfigurationResult.parse(map['s3Logs']) unless map['s3Logs'].nil?)
        data.kubernetes = (OrganizationKubernetesConfigurationResult.parse(map['kubernetes']) unless map['kubernetes'].nil?)
        return data
      end
    end

    class OrganizationKubernetesConfigurationResult
      def self.parse(map)
        data = Types::OrganizationKubernetesConfigurationResult.new
        data.audit_logs = (OrganizationKubernetesAuditLogsConfigurationResult.parse(map['auditLogs']) unless map['auditLogs'].nil?)
        return data
      end
    end

    class OrganizationKubernetesAuditLogsConfigurationResult
      def self.parse(map)
        data = Types::OrganizationKubernetesAuditLogsConfigurationResult.new
        data.auto_enable = map['autoEnable']
        return data
      end
    end

    class OrganizationS3LogsConfigurationResult
      def self.parse(map)
        data = Types::OrganizationS3LogsConfigurationResult.new
        data.auto_enable = map['autoEnable']
        return data
      end
    end

    # Operation Parser for DescribePublishingDestination
    class DescribePublishingDestination
      def self.parse(http_resp)
        data = Types::DescribePublishingDestinationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.destination_id = map['destinationId']
        data.destination_type = map['destinationType']
        data.status = map['status']
        data.publishing_failure_start_timestamp = map['publishingFailureStartTimestamp']
        data.destination_properties = (DestinationProperties.parse(map['destinationProperties']) unless map['destinationProperties'].nil?)
        data
      end
    end

    class DestinationProperties
      def self.parse(map)
        data = Types::DestinationProperties.new
        data.destination_arn = map['destinationArn']
        data.kms_key_arn = map['kmsKeyArn']
        return data
      end
    end

    # Operation Parser for DisableOrganizationAdminAccount
    class DisableOrganizationAdminAccount
      def self.parse(http_resp)
        data = Types::DisableOrganizationAdminAccountOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DisassociateFromMasterAccount
    class DisassociateFromMasterAccount
      def self.parse(http_resp)
        data = Types::DisassociateFromMasterAccountOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DisassociateMembers
    class DisassociateMembers
      def self.parse(http_resp)
        data = Types::DisassociateMembersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.unprocessed_accounts = (UnprocessedAccounts.parse(map['unprocessedAccounts']) unless map['unprocessedAccounts'].nil?)
        data
      end
    end

    # Operation Parser for EnableOrganizationAdminAccount
    class EnableOrganizationAdminAccount
      def self.parse(http_resp)
        data = Types::EnableOrganizationAdminAccountOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for GetDetector
    class GetDetector
      def self.parse(http_resp)
        data = Types::GetDetectorOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.created_at = map['createdAt']
        data.finding_publishing_frequency = map['findingPublishingFrequency']
        data.service_role = map['serviceRole']
        data.status = map['status']
        data.updated_at = map['updatedAt']
        data.data_sources = (DataSourceConfigurationsResult.parse(map['dataSources']) unless map['dataSources'].nil?)
        data.tags = (TagMap.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    class TagMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class DataSourceConfigurationsResult
      def self.parse(map)
        data = Types::DataSourceConfigurationsResult.new
        data.cloud_trail = (CloudTrailConfigurationResult.parse(map['cloudTrail']) unless map['cloudTrail'].nil?)
        data.dns_logs = (DNSLogsConfigurationResult.parse(map['dnsLogs']) unless map['dnsLogs'].nil?)
        data.flow_logs = (FlowLogsConfigurationResult.parse(map['flowLogs']) unless map['flowLogs'].nil?)
        data.s3_logs = (S3LogsConfigurationResult.parse(map['s3Logs']) unless map['s3Logs'].nil?)
        data.kubernetes = (KubernetesConfigurationResult.parse(map['kubernetes']) unless map['kubernetes'].nil?)
        return data
      end
    end

    class KubernetesConfigurationResult
      def self.parse(map)
        data = Types::KubernetesConfigurationResult.new
        data.audit_logs = (KubernetesAuditLogsConfigurationResult.parse(map['auditLogs']) unless map['auditLogs'].nil?)
        return data
      end
    end

    class KubernetesAuditLogsConfigurationResult
      def self.parse(map)
        data = Types::KubernetesAuditLogsConfigurationResult.new
        data.status = map['status']
        return data
      end
    end

    class S3LogsConfigurationResult
      def self.parse(map)
        data = Types::S3LogsConfigurationResult.new
        data.status = map['status']
        return data
      end
    end

    class FlowLogsConfigurationResult
      def self.parse(map)
        data = Types::FlowLogsConfigurationResult.new
        data.status = map['status']
        return data
      end
    end

    class DNSLogsConfigurationResult
      def self.parse(map)
        data = Types::DNSLogsConfigurationResult.new
        data.status = map['status']
        return data
      end
    end

    class CloudTrailConfigurationResult
      def self.parse(map)
        data = Types::CloudTrailConfigurationResult.new
        data.status = map['status']
        return data
      end
    end

    # Operation Parser for GetFilter
    class GetFilter
      def self.parse(http_resp)
        data = Types::GetFilterOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['name']
        data.description = map['description']
        data.action = map['action']
        data.rank = map['rank']
        data.finding_criteria = (FindingCriteria.parse(map['findingCriteria']) unless map['findingCriteria'].nil?)
        data.tags = (TagMap.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    class FindingCriteria
      def self.parse(map)
        data = Types::FindingCriteria.new
        data.criterion = (Criterion.parse(map['criterion']) unless map['criterion'].nil?)
        return data
      end
    end

    class Criterion
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Condition.parse(value) unless value.nil?
        end
        data
      end
    end

    class Condition
      def self.parse(map)
        data = Types::Condition.new
        data.eq = (Eq.parse(map['eq']) unless map['eq'].nil?)
        data.neq = (Neq.parse(map['neq']) unless map['neq'].nil?)
        data.gt = map['gt']
        data.gte = map['gte']
        data.lt = map['lt']
        data.lte = map['lte']
        data.equals = (Equals.parse(map['equals']) unless map['equals'].nil?)
        data.not_equals = (NotEquals.parse(map['notEquals']) unless map['notEquals'].nil?)
        data.greater_than = map['greaterThan']
        data.greater_than_or_equal = map['greaterThanOrEqual']
        data.less_than = map['lessThan']
        data.less_than_or_equal = map['lessThanOrEqual']
        return data
      end
    end

    class NotEquals
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class Equals
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class Neq
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class Eq
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetFindings
    class GetFindings
      def self.parse(http_resp)
        data = Types::GetFindingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.findings = (Findings.parse(map['findings']) unless map['findings'].nil?)
        data
      end
    end

    class Findings
      def self.parse(list)
        data = []
        list.map do |value|
          data << Finding.parse(value) unless value.nil?
        end
        data
      end
    end

    class Finding
      def self.parse(map)
        data = Types::Finding.new
        data.account_id = map['accountId']
        data.arn = map['arn']
        data.confidence = Hearth::NumberHelper.deserialize(map['confidence'])
        data.created_at = map['createdAt']
        data.description = map['description']
        data.id = map['id']
        data.partition = map['partition']
        data.region = map['region']
        data.resource = (Resource.parse(map['resource']) unless map['resource'].nil?)
        data.schema_version = map['schemaVersion']
        data.service = (Service.parse(map['service']) unless map['service'].nil?)
        data.severity = Hearth::NumberHelper.deserialize(map['severity'])
        data.title = map['title']
        data.type = map['type']
        data.updated_at = map['updatedAt']
        return data
      end
    end

    class Service
      def self.parse(map)
        data = Types::Service.new
        data.action = (Action.parse(map['action']) unless map['action'].nil?)
        data.evidence = (Evidence.parse(map['evidence']) unless map['evidence'].nil?)
        data.archived = map['archived']
        data.count = map['count']
        data.detector_id = map['detectorId']
        data.event_first_seen = map['eventFirstSeen']
        data.event_last_seen = map['eventLastSeen']
        data.resource_role = map['resourceRole']
        data.service_name = map['serviceName']
        data.user_feedback = map['userFeedback']
        return data
      end
    end

    class Evidence
      def self.parse(map)
        data = Types::Evidence.new
        data.threat_intelligence_details = (ThreatIntelligenceDetails.parse(map['threatIntelligenceDetails']) unless map['threatIntelligenceDetails'].nil?)
        return data
      end
    end

    class ThreatIntelligenceDetails
      def self.parse(list)
        data = []
        list.map do |value|
          data << ThreatIntelligenceDetail.parse(value) unless value.nil?
        end
        data
      end
    end

    class ThreatIntelligenceDetail
      def self.parse(map)
        data = Types::ThreatIntelligenceDetail.new
        data.threat_list_name = map['threatListName']
        data.threat_names = (ThreatNames.parse(map['threatNames']) unless map['threatNames'].nil?)
        return data
      end
    end

    class ThreatNames
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class Action
      def self.parse(map)
        data = Types::Action.new
        data.action_type = map['actionType']
        data.aws_api_call_action = (AwsApiCallAction.parse(map['awsApiCallAction']) unless map['awsApiCallAction'].nil?)
        data.dns_request_action = (DnsRequestAction.parse(map['dnsRequestAction']) unless map['dnsRequestAction'].nil?)
        data.network_connection_action = (NetworkConnectionAction.parse(map['networkConnectionAction']) unless map['networkConnectionAction'].nil?)
        data.port_probe_action = (PortProbeAction.parse(map['portProbeAction']) unless map['portProbeAction'].nil?)
        data.kubernetes_api_call_action = (KubernetesApiCallAction.parse(map['kubernetesApiCallAction']) unless map['kubernetesApiCallAction'].nil?)
        return data
      end
    end

    class KubernetesApiCallAction
      def self.parse(map)
        data = Types::KubernetesApiCallAction.new
        data.request_uri = map['requestUri']
        data.verb = map['verb']
        data.source_ips = (SourceIps.parse(map['sourceIps']) unless map['sourceIps'].nil?)
        data.user_agent = map['userAgent']
        data.remote_ip_details = (RemoteIpDetails.parse(map['remoteIpDetails']) unless map['remoteIpDetails'].nil?)
        data.status_code = map['statusCode']
        data.parameters = map['parameters']
        return data
      end
    end

    class RemoteIpDetails
      def self.parse(map)
        data = Types::RemoteIpDetails.new
        data.city = (City.parse(map['city']) unless map['city'].nil?)
        data.country = (Country.parse(map['country']) unless map['country'].nil?)
        data.geo_location = (GeoLocation.parse(map['geoLocation']) unless map['geoLocation'].nil?)
        data.ip_address_v4 = map['ipAddressV4']
        data.organization = (Organization.parse(map['organization']) unless map['organization'].nil?)
        return data
      end
    end

    class Organization
      def self.parse(map)
        data = Types::Organization.new
        data.asn = map['asn']
        data.asn_org = map['asnOrg']
        data.isp = map['isp']
        data.org = map['org']
        return data
      end
    end

    class GeoLocation
      def self.parse(map)
        data = Types::GeoLocation.new
        data.lat = Hearth::NumberHelper.deserialize(map['lat'])
        data.lon = Hearth::NumberHelper.deserialize(map['lon'])
        return data
      end
    end

    class Country
      def self.parse(map)
        data = Types::Country.new
        data.country_code = map['countryCode']
        data.country_name = map['countryName']
        return data
      end
    end

    class City
      def self.parse(map)
        data = Types::City.new
        data.city_name = map['cityName']
        return data
      end
    end

    class SourceIps
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class PortProbeAction
      def self.parse(map)
        data = Types::PortProbeAction.new
        data.blocked = map['blocked']
        data.port_probe_details = (PortProbeDetails.parse(map['portProbeDetails']) unless map['portProbeDetails'].nil?)
        return data
      end
    end

    class PortProbeDetails
      def self.parse(list)
        data = []
        list.map do |value|
          data << PortProbeDetail.parse(value) unless value.nil?
        end
        data
      end
    end

    class PortProbeDetail
      def self.parse(map)
        data = Types::PortProbeDetail.new
        data.local_port_details = (LocalPortDetails.parse(map['localPortDetails']) unless map['localPortDetails'].nil?)
        data.local_ip_details = (LocalIpDetails.parse(map['localIpDetails']) unless map['localIpDetails'].nil?)
        data.remote_ip_details = (RemoteIpDetails.parse(map['remoteIpDetails']) unless map['remoteIpDetails'].nil?)
        return data
      end
    end

    class LocalIpDetails
      def self.parse(map)
        data = Types::LocalIpDetails.new
        data.ip_address_v4 = map['ipAddressV4']
        return data
      end
    end

    class LocalPortDetails
      def self.parse(map)
        data = Types::LocalPortDetails.new
        data.port = map['port']
        data.port_name = map['portName']
        return data
      end
    end

    class NetworkConnectionAction
      def self.parse(map)
        data = Types::NetworkConnectionAction.new
        data.blocked = map['blocked']
        data.connection_direction = map['connectionDirection']
        data.local_port_details = (LocalPortDetails.parse(map['localPortDetails']) unless map['localPortDetails'].nil?)
        data.protocol = map['protocol']
        data.local_ip_details = (LocalIpDetails.parse(map['localIpDetails']) unless map['localIpDetails'].nil?)
        data.remote_ip_details = (RemoteIpDetails.parse(map['remoteIpDetails']) unless map['remoteIpDetails'].nil?)
        data.remote_port_details = (RemotePortDetails.parse(map['remotePortDetails']) unless map['remotePortDetails'].nil?)
        return data
      end
    end

    class RemotePortDetails
      def self.parse(map)
        data = Types::RemotePortDetails.new
        data.port = map['port']
        data.port_name = map['portName']
        return data
      end
    end

    class DnsRequestAction
      def self.parse(map)
        data = Types::DnsRequestAction.new
        data.domain = map['domain']
        return data
      end
    end

    class AwsApiCallAction
      def self.parse(map)
        data = Types::AwsApiCallAction.new
        data.api = map['api']
        data.caller_type = map['callerType']
        data.domain_details = (DomainDetails.parse(map['domainDetails']) unless map['domainDetails'].nil?)
        data.error_code = map['errorCode']
        data.user_agent = map['userAgent']
        data.remote_ip_details = (RemoteIpDetails.parse(map['remoteIpDetails']) unless map['remoteIpDetails'].nil?)
        data.service_name = map['serviceName']
        data.remote_account_details = (RemoteAccountDetails.parse(map['remoteAccountDetails']) unless map['remoteAccountDetails'].nil?)
        return data
      end
    end

    class RemoteAccountDetails
      def self.parse(map)
        data = Types::RemoteAccountDetails.new
        data.account_id = map['accountId']
        data.affiliated = map['affiliated']
        return data
      end
    end

    class DomainDetails
      def self.parse(map)
        data = Types::DomainDetails.new
        data.domain = map['domain']
        return data
      end
    end

    class Resource
      def self.parse(map)
        data = Types::Resource.new
        data.access_key_details = (AccessKeyDetails.parse(map['accessKeyDetails']) unless map['accessKeyDetails'].nil?)
        data.s3_bucket_details = (S3BucketDetails.parse(map['s3BucketDetails']) unless map['s3BucketDetails'].nil?)
        data.instance_details = (InstanceDetails.parse(map['instanceDetails']) unless map['instanceDetails'].nil?)
        data.eks_cluster_details = (EksClusterDetails.parse(map['eksClusterDetails']) unless map['eksClusterDetails'].nil?)
        data.kubernetes_details = (KubernetesDetails.parse(map['kubernetesDetails']) unless map['kubernetesDetails'].nil?)
        data.resource_type = map['resourceType']
        return data
      end
    end

    class KubernetesDetails
      def self.parse(map)
        data = Types::KubernetesDetails.new
        data.kubernetes_user_details = (KubernetesUserDetails.parse(map['kubernetesUserDetails']) unless map['kubernetesUserDetails'].nil?)
        data.kubernetes_workload_details = (KubernetesWorkloadDetails.parse(map['kubernetesWorkloadDetails']) unless map['kubernetesWorkloadDetails'].nil?)
        return data
      end
    end

    class KubernetesWorkloadDetails
      def self.parse(map)
        data = Types::KubernetesWorkloadDetails.new
        data.name = map['name']
        data.type = map['type']
        data.uid = map['uid']
        data.namespace = map['namespace']
        data.host_network = map['hostNetwork']
        data.containers = (Containers.parse(map['containers']) unless map['containers'].nil?)
        data.volumes = (Volumes.parse(map['volumes']) unless map['volumes'].nil?)
        return data
      end
    end

    class Volumes
      def self.parse(list)
        data = []
        list.map do |value|
          data << Volume.parse(value) unless value.nil?
        end
        data
      end
    end

    class Volume
      def self.parse(map)
        data = Types::Volume.new
        data.name = map['name']
        data.host_path = (HostPath.parse(map['hostPath']) unless map['hostPath'].nil?)
        return data
      end
    end

    class HostPath
      def self.parse(map)
        data = Types::HostPath.new
        data.path = map['path']
        return data
      end
    end

    class Containers
      def self.parse(list)
        data = []
        list.map do |value|
          data << Container.parse(value) unless value.nil?
        end
        data
      end
    end

    class Container
      def self.parse(map)
        data = Types::Container.new
        data.container_runtime = map['containerRuntime']
        data.id = map['id']
        data.name = map['name']
        data.image = map['image']
        data.image_prefix = map['imagePrefix']
        data.volume_mounts = (VolumeMounts.parse(map['volumeMounts']) unless map['volumeMounts'].nil?)
        data.security_context = (SecurityContext.parse(map['securityContext']) unless map['securityContext'].nil?)
        return data
      end
    end

    class SecurityContext
      def self.parse(map)
        data = Types::SecurityContext.new
        data.privileged = map['privileged']
        return data
      end
    end

    class VolumeMounts
      def self.parse(list)
        data = []
        list.map do |value|
          data << VolumeMount.parse(value) unless value.nil?
        end
        data
      end
    end

    class VolumeMount
      def self.parse(map)
        data = Types::VolumeMount.new
        data.name = map['name']
        data.mount_path = map['mountPath']
        return data
      end
    end

    class KubernetesUserDetails
      def self.parse(map)
        data = Types::KubernetesUserDetails.new
        data.username = map['username']
        data.uid = map['uid']
        data.groups = (Groups.parse(map['groups']) unless map['groups'].nil?)
        return data
      end
    end

    class Groups
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class EksClusterDetails
      def self.parse(map)
        data = Types::EksClusterDetails.new
        data.name = map['name']
        data.arn = map['arn']
        data.vpc_id = map['vpcId']
        data.status = map['status']
        data.tags = (Tags.parse(map['tags']) unless map['tags'].nil?)
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        return data
      end
    end

    class Tags
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
        data.key = map['key']
        data.value = map['value']
        return data
      end
    end

    class InstanceDetails
      def self.parse(map)
        data = Types::InstanceDetails.new
        data.availability_zone = map['availabilityZone']
        data.iam_instance_profile = (IamInstanceProfile.parse(map['iamInstanceProfile']) unless map['iamInstanceProfile'].nil?)
        data.image_description = map['imageDescription']
        data.image_id = map['imageId']
        data.instance_id = map['instanceId']
        data.instance_state = map['instanceState']
        data.instance_type = map['instanceType']
        data.outpost_arn = map['outpostArn']
        data.launch_time = map['launchTime']
        data.network_interfaces = (NetworkInterfaces.parse(map['networkInterfaces']) unless map['networkInterfaces'].nil?)
        data.platform = map['platform']
        data.product_codes = (ProductCodes.parse(map['productCodes']) unless map['productCodes'].nil?)
        data.tags = (Tags.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    class ProductCodes
      def self.parse(list)
        data = []
        list.map do |value|
          data << ProductCode.parse(value) unless value.nil?
        end
        data
      end
    end

    class ProductCode
      def self.parse(map)
        data = Types::ProductCode.new
        data.code = map['code']
        data.product_type = map['productType']
        return data
      end
    end

    class NetworkInterfaces
      def self.parse(list)
        data = []
        list.map do |value|
          data << NetworkInterface.parse(value) unless value.nil?
        end
        data
      end
    end

    class NetworkInterface
      def self.parse(map)
        data = Types::NetworkInterface.new
        data.ipv6_addresses = (Ipv6Addresses.parse(map['ipv6Addresses']) unless map['ipv6Addresses'].nil?)
        data.network_interface_id = map['networkInterfaceId']
        data.private_dns_name = map['privateDnsName']
        data.private_ip_address = map['privateIpAddress']
        data.private_ip_addresses = (PrivateIpAddresses.parse(map['privateIpAddresses']) unless map['privateIpAddresses'].nil?)
        data.public_dns_name = map['publicDnsName']
        data.public_ip = map['publicIp']
        data.security_groups = (SecurityGroups.parse(map['securityGroups']) unless map['securityGroups'].nil?)
        data.subnet_id = map['subnetId']
        data.vpc_id = map['vpcId']
        return data
      end
    end

    class SecurityGroups
      def self.parse(list)
        data = []
        list.map do |value|
          data << SecurityGroup.parse(value) unless value.nil?
        end
        data
      end
    end

    class SecurityGroup
      def self.parse(map)
        data = Types::SecurityGroup.new
        data.group_id = map['groupId']
        data.group_name = map['groupName']
        return data
      end
    end

    class PrivateIpAddresses
      def self.parse(list)
        data = []
        list.map do |value|
          data << PrivateIpAddressDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    class PrivateIpAddressDetails
      def self.parse(map)
        data = Types::PrivateIpAddressDetails.new
        data.private_dns_name = map['privateDnsName']
        data.private_ip_address = map['privateIpAddress']
        return data
      end
    end

    class Ipv6Addresses
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class IamInstanceProfile
      def self.parse(map)
        data = Types::IamInstanceProfile.new
        data.arn = map['arn']
        data.id = map['id']
        return data
      end
    end

    class S3BucketDetails
      def self.parse(list)
        data = []
        list.map do |value|
          data << S3BucketDetail.parse(value) unless value.nil?
        end
        data
      end
    end

    class S3BucketDetail
      def self.parse(map)
        data = Types::S3BucketDetail.new
        data.arn = map['arn']
        data.name = map['name']
        data.type = map['type']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.owner = (Owner.parse(map['owner']) unless map['owner'].nil?)
        data.tags = (Tags.parse(map['tags']) unless map['tags'].nil?)
        data.default_server_side_encryption = (DefaultServerSideEncryption.parse(map['defaultServerSideEncryption']) unless map['defaultServerSideEncryption'].nil?)
        data.public_access = (PublicAccess.parse(map['publicAccess']) unless map['publicAccess'].nil?)
        return data
      end
    end

    class PublicAccess
      def self.parse(map)
        data = Types::PublicAccess.new
        data.permission_configuration = (PermissionConfiguration.parse(map['permissionConfiguration']) unless map['permissionConfiguration'].nil?)
        data.effective_permission = map['effectivePermission']
        return data
      end
    end

    class PermissionConfiguration
      def self.parse(map)
        data = Types::PermissionConfiguration.new
        data.bucket_level_permissions = (BucketLevelPermissions.parse(map['bucketLevelPermissions']) unless map['bucketLevelPermissions'].nil?)
        data.account_level_permissions = (AccountLevelPermissions.parse(map['accountLevelPermissions']) unless map['accountLevelPermissions'].nil?)
        return data
      end
    end

    class AccountLevelPermissions
      def self.parse(map)
        data = Types::AccountLevelPermissions.new
        data.block_public_access = (BlockPublicAccess.parse(map['blockPublicAccess']) unless map['blockPublicAccess'].nil?)
        return data
      end
    end

    class BlockPublicAccess
      def self.parse(map)
        data = Types::BlockPublicAccess.new
        data.ignore_public_acls = map['ignorePublicAcls']
        data.restrict_public_buckets = map['restrictPublicBuckets']
        data.block_public_acls = map['blockPublicAcls']
        data.block_public_policy = map['blockPublicPolicy']
        return data
      end
    end

    class BucketLevelPermissions
      def self.parse(map)
        data = Types::BucketLevelPermissions.new
        data.access_control_list = (AccessControlList.parse(map['accessControlList']) unless map['accessControlList'].nil?)
        data.bucket_policy = (BucketPolicy.parse(map['bucketPolicy']) unless map['bucketPolicy'].nil?)
        data.block_public_access = (BlockPublicAccess.parse(map['blockPublicAccess']) unless map['blockPublicAccess'].nil?)
        return data
      end
    end

    class BucketPolicy
      def self.parse(map)
        data = Types::BucketPolicy.new
        data.allows_public_read_access = map['allowsPublicReadAccess']
        data.allows_public_write_access = map['allowsPublicWriteAccess']
        return data
      end
    end

    class AccessControlList
      def self.parse(map)
        data = Types::AccessControlList.new
        data.allows_public_read_access = map['allowsPublicReadAccess']
        data.allows_public_write_access = map['allowsPublicWriteAccess']
        return data
      end
    end

    class DefaultServerSideEncryption
      def self.parse(map)
        data = Types::DefaultServerSideEncryption.new
        data.encryption_type = map['encryptionType']
        data.kms_master_key_arn = map['kmsMasterKeyArn']
        return data
      end
    end

    class Owner
      def self.parse(map)
        data = Types::Owner.new
        data.id = map['id']
        return data
      end
    end

    class AccessKeyDetails
      def self.parse(map)
        data = Types::AccessKeyDetails.new
        data.access_key_id = map['accessKeyId']
        data.principal_id = map['principalId']
        data.user_name = map['userName']
        data.user_type = map['userType']
        return data
      end
    end

    # Operation Parser for GetFindingsStatistics
    class GetFindingsStatistics
      def self.parse(http_resp)
        data = Types::GetFindingsStatisticsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.finding_statistics = (FindingStatistics.parse(map['findingStatistics']) unless map['findingStatistics'].nil?)
        data
      end
    end

    class FindingStatistics
      def self.parse(map)
        data = Types::FindingStatistics.new
        data.count_by_severity = (CountBySeverity.parse(map['countBySeverity']) unless map['countBySeverity'].nil?)
        return data
      end
    end

    class CountBySeverity
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetIPSet
    class GetIPSet
      def self.parse(http_resp)
        data = Types::GetIPSetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['name']
        data.format = map['format']
        data.location = map['location']
        data.status = map['status']
        data.tags = (TagMap.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for GetInvitationsCount
    class GetInvitationsCount
      def self.parse(http_resp)
        data = Types::GetInvitationsCountOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.invitations_count = map['invitationsCount']
        data
      end
    end

    # Operation Parser for GetMasterAccount
    class GetMasterAccount
      def self.parse(http_resp)
        data = Types::GetMasterAccountOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.master = (Master.parse(map['master']) unless map['master'].nil?)
        data
      end
    end

    class Master
      def self.parse(map)
        data = Types::Master.new
        data.account_id = map['accountId']
        data.invitation_id = map['invitationId']
        data.relationship_status = map['relationshipStatus']
        data.invited_at = map['invitedAt']
        return data
      end
    end

    # Operation Parser for GetMemberDetectors
    class GetMemberDetectors
      def self.parse(http_resp)
        data = Types::GetMemberDetectorsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.member_data_source_configurations = (MemberDataSourceConfigurations.parse(map['members']) unless map['members'].nil?)
        data.unprocessed_accounts = (UnprocessedAccounts.parse(map['unprocessedAccounts']) unless map['unprocessedAccounts'].nil?)
        data
      end
    end

    class MemberDataSourceConfigurations
      def self.parse(list)
        data = []
        list.map do |value|
          data << MemberDataSourceConfiguration.parse(value) unless value.nil?
        end
        data
      end
    end

    class MemberDataSourceConfiguration
      def self.parse(map)
        data = Types::MemberDataSourceConfiguration.new
        data.account_id = map['accountId']
        data.data_sources = (DataSourceConfigurationsResult.parse(map['dataSources']) unless map['dataSources'].nil?)
        return data
      end
    end

    # Operation Parser for GetMembers
    class GetMembers
      def self.parse(http_resp)
        data = Types::GetMembersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.members = (Members.parse(map['members']) unless map['members'].nil?)
        data.unprocessed_accounts = (UnprocessedAccounts.parse(map['unprocessedAccounts']) unless map['unprocessedAccounts'].nil?)
        data
      end
    end

    class Members
      def self.parse(list)
        data = []
        list.map do |value|
          data << Member.parse(value) unless value.nil?
        end
        data
      end
    end

    class Member
      def self.parse(map)
        data = Types::Member.new
        data.account_id = map['accountId']
        data.detector_id = map['detectorId']
        data.master_id = map['masterId']
        data.email = map['email']
        data.relationship_status = map['relationshipStatus']
        data.invited_at = map['invitedAt']
        data.updated_at = map['updatedAt']
        return data
      end
    end

    # Operation Parser for GetThreatIntelSet
    class GetThreatIntelSet
      def self.parse(http_resp)
        data = Types::GetThreatIntelSetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['name']
        data.format = map['format']
        data.location = map['location']
        data.status = map['status']
        data.tags = (TagMap.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for GetUsageStatistics
    class GetUsageStatistics
      def self.parse(http_resp)
        data = Types::GetUsageStatisticsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.usage_statistics = (UsageStatistics.parse(map['usageStatistics']) unless map['usageStatistics'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class UsageStatistics
      def self.parse(map)
        data = Types::UsageStatistics.new
        data.sum_by_account = (UsageAccountResultList.parse(map['sumByAccount']) unless map['sumByAccount'].nil?)
        data.sum_by_data_source = (UsageDataSourceResultList.parse(map['sumByDataSource']) unless map['sumByDataSource'].nil?)
        data.sum_by_resource = (UsageResourceResultList.parse(map['sumByResource']) unless map['sumByResource'].nil?)
        data.top_resources = (UsageResourceResultList.parse(map['topResources']) unless map['topResources'].nil?)
        return data
      end
    end

    class UsageResourceResultList
      def self.parse(list)
        data = []
        list.map do |value|
          data << UsageResourceResult.parse(value) unless value.nil?
        end
        data
      end
    end

    class UsageResourceResult
      def self.parse(map)
        data = Types::UsageResourceResult.new
        data.resource = map['resource']
        data.total = (Total.parse(map['total']) unless map['total'].nil?)
        return data
      end
    end

    class Total
      def self.parse(map)
        data = Types::Total.new
        data.amount = map['amount']
        data.unit = map['unit']
        return data
      end
    end

    class UsageDataSourceResultList
      def self.parse(list)
        data = []
        list.map do |value|
          data << UsageDataSourceResult.parse(value) unless value.nil?
        end
        data
      end
    end

    class UsageDataSourceResult
      def self.parse(map)
        data = Types::UsageDataSourceResult.new
        data.data_source = map['dataSource']
        data.total = (Total.parse(map['total']) unless map['total'].nil?)
        return data
      end
    end

    class UsageAccountResultList
      def self.parse(list)
        data = []
        list.map do |value|
          data << UsageAccountResult.parse(value) unless value.nil?
        end
        data
      end
    end

    class UsageAccountResult
      def self.parse(map)
        data = Types::UsageAccountResult.new
        data.account_id = map['accountId']
        data.total = (Total.parse(map['total']) unless map['total'].nil?)
        return data
      end
    end

    # Operation Parser for InviteMembers
    class InviteMembers
      def self.parse(http_resp)
        data = Types::InviteMembersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.unprocessed_accounts = (UnprocessedAccounts.parse(map['unprocessedAccounts']) unless map['unprocessedAccounts'].nil?)
        data
      end
    end

    # Operation Parser for ListDetectors
    class ListDetectors
      def self.parse(http_resp)
        data = Types::ListDetectorsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.detector_ids = (DetectorIds.parse(map['detectorIds']) unless map['detectorIds'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class DetectorIds
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListFilters
    class ListFilters
      def self.parse(http_resp)
        data = Types::ListFiltersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.filter_names = (FilterNames.parse(map['filterNames']) unless map['filterNames'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class FilterNames
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListFindings
    class ListFindings
      def self.parse(http_resp)
        data = Types::ListFindingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.finding_ids = (FindingIds.parse(map['findingIds']) unless map['findingIds'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class FindingIds
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListIPSets
    class ListIPSets
      def self.parse(http_resp)
        data = Types::ListIPSetsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.ip_set_ids = (IpSetIds.parse(map['ipSetIds']) unless map['ipSetIds'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class IpSetIds
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListInvitations
    class ListInvitations
      def self.parse(http_resp)
        data = Types::ListInvitationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.invitations = (Invitations.parse(map['invitations']) unless map['invitations'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class Invitations
      def self.parse(list)
        data = []
        list.map do |value|
          data << Invitation.parse(value) unless value.nil?
        end
        data
      end
    end

    class Invitation
      def self.parse(map)
        data = Types::Invitation.new
        data.account_id = map['accountId']
        data.invitation_id = map['invitationId']
        data.relationship_status = map['relationshipStatus']
        data.invited_at = map['invitedAt']
        return data
      end
    end

    # Operation Parser for ListMembers
    class ListMembers
      def self.parse(http_resp)
        data = Types::ListMembersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.members = (Members.parse(map['members']) unless map['members'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    # Operation Parser for ListOrganizationAdminAccounts
    class ListOrganizationAdminAccounts
      def self.parse(http_resp)
        data = Types::ListOrganizationAdminAccountsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.admin_accounts = (AdminAccounts.parse(map['adminAccounts']) unless map['adminAccounts'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class AdminAccounts
      def self.parse(list)
        data = []
        list.map do |value|
          data << AdminAccount.parse(value) unless value.nil?
        end
        data
      end
    end

    class AdminAccount
      def self.parse(map)
        data = Types::AdminAccount.new
        data.admin_account_id = map['adminAccountId']
        data.admin_status = map['adminStatus']
        return data
      end
    end

    # Operation Parser for ListPublishingDestinations
    class ListPublishingDestinations
      def self.parse(http_resp)
        data = Types::ListPublishingDestinationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.destinations = (Destinations.parse(map['destinations']) unless map['destinations'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class Destinations
      def self.parse(list)
        data = []
        list.map do |value|
          data << Destination.parse(value) unless value.nil?
        end
        data
      end
    end

    class Destination
      def self.parse(map)
        data = Types::Destination.new
        data.destination_id = map['destinationId']
        data.destination_type = map['destinationType']
        data.status = map['status']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (TagMap.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for ListThreatIntelSets
    class ListThreatIntelSets
      def self.parse(http_resp)
        data = Types::ListThreatIntelSetsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.threat_intel_set_ids = (ThreatIntelSetIds.parse(map['threatIntelSetIds']) unless map['threatIntelSetIds'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ThreatIntelSetIds
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for StartMonitoringMembers
    class StartMonitoringMembers
      def self.parse(http_resp)
        data = Types::StartMonitoringMembersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.unprocessed_accounts = (UnprocessedAccounts.parse(map['unprocessedAccounts']) unless map['unprocessedAccounts'].nil?)
        data
      end
    end

    # Operation Parser for StopMonitoringMembers
    class StopMonitoringMembers
      def self.parse(http_resp)
        data = Types::StopMonitoringMembersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.unprocessed_accounts = (UnprocessedAccounts.parse(map['unprocessedAccounts']) unless map['unprocessedAccounts'].nil?)
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UnarchiveFindings
    class UnarchiveFindings
      def self.parse(http_resp)
        data = Types::UnarchiveFindingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateDetector
    class UpdateDetector
      def self.parse(http_resp)
        data = Types::UpdateDetectorOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateFilter
    class UpdateFilter
      def self.parse(http_resp)
        data = Types::UpdateFilterOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['name']
        data
      end
    end

    # Operation Parser for UpdateFindingsFeedback
    class UpdateFindingsFeedback
      def self.parse(http_resp)
        data = Types::UpdateFindingsFeedbackOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateIPSet
    class UpdateIPSet
      def self.parse(http_resp)
        data = Types::UpdateIPSetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateMemberDetectors
    class UpdateMemberDetectors
      def self.parse(http_resp)
        data = Types::UpdateMemberDetectorsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.unprocessed_accounts = (UnprocessedAccounts.parse(map['unprocessedAccounts']) unless map['unprocessedAccounts'].nil?)
        data
      end
    end

    # Operation Parser for UpdateOrganizationConfiguration
    class UpdateOrganizationConfiguration
      def self.parse(http_resp)
        data = Types::UpdateOrganizationConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdatePublishingDestination
    class UpdatePublishingDestination
      def self.parse(http_resp)
        data = Types::UpdatePublishingDestinationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateThreatIntelSet
    class UpdateThreatIntelSet
      def self.parse(http_resp)
        data = Types::UpdateThreatIntelSetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end
  end
end
