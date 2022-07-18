# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::DirectoryService
  module Parsers

    # Operation Parser for AcceptSharedDirectory
    class AcceptSharedDirectory
      def self.parse(http_resp)
        data = Types::AcceptSharedDirectoryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.shared_directory = (Parsers::SharedDirectory.parse(map['SharedDirectory']) unless map['SharedDirectory'].nil?)
        data
      end
    end

    class SharedDirectory
      def self.parse(map)
        data = Types::SharedDirectory.new
        data.owner_account_id = map['OwnerAccountId']
        data.owner_directory_id = map['OwnerDirectoryId']
        data.share_method = map['ShareMethod']
        data.shared_account_id = map['SharedAccountId']
        data.shared_directory_id = map['SharedDirectoryId']
        data.share_status = map['ShareStatus']
        data.share_notes = map['ShareNotes']
        data.created_date_time = Time.at(map['CreatedDateTime'].to_i) if map['CreatedDateTime']
        data.last_updated_date_time = Time.at(map['LastUpdatedDateTime'].to_i) if map['LastUpdatedDateTime']
        return data
      end
    end

    # Error Parser for EntityDoesNotExistException
    class EntityDoesNotExistException
      def self.parse(http_resp)
        data = Types::EntityDoesNotExistException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.request_id = map['RequestId']
        data
      end
    end

    # Error Parser for ServiceException
    class ServiceException
      def self.parse(http_resp)
        data = Types::ServiceException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.request_id = map['RequestId']
        data
      end
    end

    # Error Parser for DirectoryAlreadySharedException
    class DirectoryAlreadySharedException
      def self.parse(http_resp)
        data = Types::DirectoryAlreadySharedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.request_id = map['RequestId']
        data
      end
    end

    # Error Parser for InvalidParameterException
    class InvalidParameterException
      def self.parse(http_resp)
        data = Types::InvalidParameterException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.request_id = map['RequestId']
        data
      end
    end

    # Error Parser for ClientException
    class ClientException
      def self.parse(http_resp)
        data = Types::ClientException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for AddIpRoutes
    class AddIpRoutes
      def self.parse(http_resp)
        data = Types::AddIpRoutesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for IpRouteLimitExceededException
    class IpRouteLimitExceededException
      def self.parse(http_resp)
        data = Types::IpRouteLimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.request_id = map['RequestId']
        data
      end
    end

    # Error Parser for EntityAlreadyExistsException
    class EntityAlreadyExistsException
      def self.parse(http_resp)
        data = Types::EntityAlreadyExistsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.request_id = map['RequestId']
        data
      end
    end

    # Error Parser for DirectoryUnavailableException
    class DirectoryUnavailableException
      def self.parse(http_resp)
        data = Types::DirectoryUnavailableException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for AddRegion
    class AddRegion
      def self.parse(http_resp)
        data = Types::AddRegionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for UnsupportedOperationException
    class UnsupportedOperationException
      def self.parse(http_resp)
        data = Types::UnsupportedOperationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.request_id = map['RequestId']
        data
      end
    end

    # Error Parser for DirectoryDoesNotExistException
    class DirectoryDoesNotExistException
      def self.parse(http_resp)
        data = Types::DirectoryDoesNotExistException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.request_id = map['RequestId']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.request_id = map['RequestId']
        data
      end
    end

    # Error Parser for RegionLimitExceededException
    class RegionLimitExceededException
      def self.parse(http_resp)
        data = Types::RegionLimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.request_id = map['RequestId']
        data
      end
    end

    # Error Parser for DirectoryAlreadyInRegionException
    class DirectoryAlreadyInRegionException
      def self.parse(http_resp)
        data = Types::DirectoryAlreadyInRegionException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for AddTagsToResource
    class AddTagsToResource
      def self.parse(http_resp)
        data = Types::AddTagsToResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for TagLimitExceededException
    class TagLimitExceededException
      def self.parse(http_resp)
        data = Types::TagLimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for CancelSchemaExtension
    class CancelSchemaExtension
      def self.parse(http_resp)
        data = Types::CancelSchemaExtensionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for ConnectDirectory
    class ConnectDirectory
      def self.parse(http_resp)
        data = Types::ConnectDirectoryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.directory_id = map['DirectoryId']
        data
      end
    end

    # Error Parser for DirectoryLimitExceededException
    class DirectoryLimitExceededException
      def self.parse(http_resp)
        data = Types::DirectoryLimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for CreateAlias
    class CreateAlias
      def self.parse(http_resp)
        data = Types::CreateAliasOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.directory_id = map['DirectoryId']
        data.alias = map['Alias']
        data
      end
    end

    # Operation Parser for CreateComputer
    class CreateComputer
      def self.parse(http_resp)
        data = Types::CreateComputerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.computer = (Parsers::Computer.parse(map['Computer']) unless map['Computer'].nil?)
        data
      end
    end

    class Computer
      def self.parse(map)
        data = Types::Computer.new
        data.computer_id = map['ComputerId']
        data.computer_name = map['ComputerName']
        data.computer_attributes = (Parsers::Attributes.parse(map['ComputerAttributes']) unless map['ComputerAttributes'].nil?)
        return data
      end
    end

    class Attributes
      def self.parse(list)
        list.map do |value|
          Parsers::Attribute.parse(value) unless value.nil?
        end
      end
    end

    class Attribute
      def self.parse(map)
        data = Types::Attribute.new
        data.name = map['Name']
        data.value = map['Value']
        return data
      end
    end

    # Error Parser for AuthenticationFailedException
    class AuthenticationFailedException
      def self.parse(http_resp)
        data = Types::AuthenticationFailedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for CreateConditionalForwarder
    class CreateConditionalForwarder
      def self.parse(http_resp)
        data = Types::CreateConditionalForwarderOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for CreateDirectory
    class CreateDirectory
      def self.parse(http_resp)
        data = Types::CreateDirectoryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.directory_id = map['DirectoryId']
        data
      end
    end

    # Operation Parser for CreateLogSubscription
    class CreateLogSubscription
      def self.parse(http_resp)
        data = Types::CreateLogSubscriptionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for InsufficientPermissionsException
    class InsufficientPermissionsException
      def self.parse(http_resp)
        data = Types::InsufficientPermissionsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for CreateMicrosoftAD
    class CreateMicrosoftAD
      def self.parse(http_resp)
        data = Types::CreateMicrosoftADOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.directory_id = map['DirectoryId']
        data
      end
    end

    # Operation Parser for CreateSnapshot
    class CreateSnapshot
      def self.parse(http_resp)
        data = Types::CreateSnapshotOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.snapshot_id = map['SnapshotId']
        data
      end
    end

    # Error Parser for SnapshotLimitExceededException
    class SnapshotLimitExceededException
      def self.parse(http_resp)
        data = Types::SnapshotLimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for CreateTrust
    class CreateTrust
      def self.parse(http_resp)
        data = Types::CreateTrustOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.trust_id = map['TrustId']
        data
      end
    end

    # Operation Parser for DeleteConditionalForwarder
    class DeleteConditionalForwarder
      def self.parse(http_resp)
        data = Types::DeleteConditionalForwarderOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteDirectory
    class DeleteDirectory
      def self.parse(http_resp)
        data = Types::DeleteDirectoryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.directory_id = map['DirectoryId']
        data
      end
    end

    # Operation Parser for DeleteLogSubscription
    class DeleteLogSubscription
      def self.parse(http_resp)
        data = Types::DeleteLogSubscriptionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteSnapshot
    class DeleteSnapshot
      def self.parse(http_resp)
        data = Types::DeleteSnapshotOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.snapshot_id = map['SnapshotId']
        data
      end
    end

    # Operation Parser for DeleteTrust
    class DeleteTrust
      def self.parse(http_resp)
        data = Types::DeleteTrustOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.trust_id = map['TrustId']
        data
      end
    end

    # Operation Parser for DeregisterCertificate
    class DeregisterCertificate
      def self.parse(http_resp)
        data = Types::DeregisterCertificateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for CertificateInUseException
    class CertificateInUseException
      def self.parse(http_resp)
        data = Types::CertificateInUseException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.request_id = map['RequestId']
        data
      end
    end

    # Error Parser for CertificateDoesNotExistException
    class CertificateDoesNotExistException
      def self.parse(http_resp)
        data = Types::CertificateDoesNotExistException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for DeregisterEventTopic
    class DeregisterEventTopic
      def self.parse(http_resp)
        data = Types::DeregisterEventTopicOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DescribeCertificate
    class DescribeCertificate
      def self.parse(http_resp)
        data = Types::DescribeCertificateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.certificate = (Parsers::Certificate.parse(map['Certificate']) unless map['Certificate'].nil?)
        data
      end
    end

    class Certificate
      def self.parse(map)
        data = Types::Certificate.new
        data.certificate_id = map['CertificateId']
        data.state = map['State']
        data.state_reason = map['StateReason']
        data.common_name = map['CommonName']
        data.registered_date_time = Time.at(map['RegisteredDateTime'].to_i) if map['RegisteredDateTime']
        data.expiry_date_time = Time.at(map['ExpiryDateTime'].to_i) if map['ExpiryDateTime']
        data.type = map['Type']
        data.client_cert_auth_settings = (Parsers::ClientCertAuthSettings.parse(map['ClientCertAuthSettings']) unless map['ClientCertAuthSettings'].nil?)
        return data
      end
    end

    class ClientCertAuthSettings
      def self.parse(map)
        data = Types::ClientCertAuthSettings.new
        data.ocsp_url = map['OCSPUrl']
        return data
      end
    end

    # Operation Parser for DescribeClientAuthenticationSettings
    class DescribeClientAuthenticationSettings
      def self.parse(http_resp)
        data = Types::DescribeClientAuthenticationSettingsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.client_authentication_settings_info = (Parsers::ClientAuthenticationSettingsInfo.parse(map['ClientAuthenticationSettingsInfo']) unless map['ClientAuthenticationSettingsInfo'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ClientAuthenticationSettingsInfo
      def self.parse(list)
        list.map do |value|
          Parsers::ClientAuthenticationSettingInfo.parse(value) unless value.nil?
        end
      end
    end

    class ClientAuthenticationSettingInfo
      def self.parse(map)
        data = Types::ClientAuthenticationSettingInfo.new
        data.type = map['Type']
        data.status = map['Status']
        data.last_updated_date_time = Time.at(map['LastUpdatedDateTime'].to_i) if map['LastUpdatedDateTime']
        return data
      end
    end

    # Operation Parser for DescribeConditionalForwarders
    class DescribeConditionalForwarders
      def self.parse(http_resp)
        data = Types::DescribeConditionalForwardersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.conditional_forwarders = (Parsers::ConditionalForwarders.parse(map['ConditionalForwarders']) unless map['ConditionalForwarders'].nil?)
        data
      end
    end

    class ConditionalForwarders
      def self.parse(list)
        list.map do |value|
          Parsers::ConditionalForwarder.parse(value) unless value.nil?
        end
      end
    end

    class ConditionalForwarder
      def self.parse(map)
        data = Types::ConditionalForwarder.new
        data.remote_domain_name = map['RemoteDomainName']
        data.dns_ip_addrs = (Parsers::DnsIpAddrs.parse(map['DnsIpAddrs']) unless map['DnsIpAddrs'].nil?)
        data.replication_scope = map['ReplicationScope']
        return data
      end
    end

    class DnsIpAddrs
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeDirectories
    class DescribeDirectories
      def self.parse(http_resp)
        data = Types::DescribeDirectoriesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.directory_descriptions = (Parsers::DirectoryDescriptions.parse(map['DirectoryDescriptions']) unless map['DirectoryDescriptions'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class DirectoryDescriptions
      def self.parse(list)
        list.map do |value|
          Parsers::DirectoryDescription.parse(value) unless value.nil?
        end
      end
    end

    class DirectoryDescription
      def self.parse(map)
        data = Types::DirectoryDescription.new
        data.directory_id = map['DirectoryId']
        data.name = map['Name']
        data.short_name = map['ShortName']
        data.size = map['Size']
        data.edition = map['Edition']
        data.alias = map['Alias']
        data.access_url = map['AccessUrl']
        data.description = map['Description']
        data.dns_ip_addrs = (Parsers::DnsIpAddrs.parse(map['DnsIpAddrs']) unless map['DnsIpAddrs'].nil?)
        data.stage = map['Stage']
        data.share_status = map['ShareStatus']
        data.share_method = map['ShareMethod']
        data.share_notes = map['ShareNotes']
        data.launch_time = Time.at(map['LaunchTime'].to_i) if map['LaunchTime']
        data.stage_last_updated_date_time = Time.at(map['StageLastUpdatedDateTime'].to_i) if map['StageLastUpdatedDateTime']
        data.type = map['Type']
        data.vpc_settings = (Parsers::DirectoryVpcSettingsDescription.parse(map['VpcSettings']) unless map['VpcSettings'].nil?)
        data.connect_settings = (Parsers::DirectoryConnectSettingsDescription.parse(map['ConnectSettings']) unless map['ConnectSettings'].nil?)
        data.radius_settings = (Parsers::RadiusSettings.parse(map['RadiusSettings']) unless map['RadiusSettings'].nil?)
        data.radius_status = map['RadiusStatus']
        data.stage_reason = map['StageReason']
        data.sso_enabled = map['SsoEnabled']
        data.desired_number_of_domain_controllers = map['DesiredNumberOfDomainControllers']
        data.owner_directory_description = (Parsers::OwnerDirectoryDescription.parse(map['OwnerDirectoryDescription']) unless map['OwnerDirectoryDescription'].nil?)
        data.regions_info = (Parsers::RegionsInfo.parse(map['RegionsInfo']) unless map['RegionsInfo'].nil?)
        return data
      end
    end

    class RegionsInfo
      def self.parse(map)
        data = Types::RegionsInfo.new
        data.primary_region = map['PrimaryRegion']
        data.additional_regions = (Parsers::AdditionalRegions.parse(map['AdditionalRegions']) unless map['AdditionalRegions'].nil?)
        return data
      end
    end

    class AdditionalRegions
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class OwnerDirectoryDescription
      def self.parse(map)
        data = Types::OwnerDirectoryDescription.new
        data.directory_id = map['DirectoryId']
        data.account_id = map['AccountId']
        data.dns_ip_addrs = (Parsers::DnsIpAddrs.parse(map['DnsIpAddrs']) unless map['DnsIpAddrs'].nil?)
        data.vpc_settings = (Parsers::DirectoryVpcSettingsDescription.parse(map['VpcSettings']) unless map['VpcSettings'].nil?)
        data.radius_settings = (Parsers::RadiusSettings.parse(map['RadiusSettings']) unless map['RadiusSettings'].nil?)
        data.radius_status = map['RadiusStatus']
        return data
      end
    end

    class RadiusSettings
      def self.parse(map)
        data = Types::RadiusSettings.new
        data.radius_servers = (Parsers::Servers.parse(map['RadiusServers']) unless map['RadiusServers'].nil?)
        data.radius_port = map['RadiusPort']
        data.radius_timeout = map['RadiusTimeout']
        data.radius_retries = map['RadiusRetries']
        data.shared_secret = map['SharedSecret']
        data.authentication_protocol = map['AuthenticationProtocol']
        data.display_label = map['DisplayLabel']
        data.use_same_username = map['UseSameUsername']
        return data
      end
    end

    class Servers
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class DirectoryVpcSettingsDescription
      def self.parse(map)
        data = Types::DirectoryVpcSettingsDescription.new
        data.vpc_id = map['VpcId']
        data.subnet_ids = (Parsers::SubnetIds.parse(map['SubnetIds']) unless map['SubnetIds'].nil?)
        data.security_group_id = map['SecurityGroupId']
        data.availability_zones = (Parsers::AvailabilityZones.parse(map['AvailabilityZones']) unless map['AvailabilityZones'].nil?)
        return data
      end
    end

    class AvailabilityZones
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class SubnetIds
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class DirectoryConnectSettingsDescription
      def self.parse(map)
        data = Types::DirectoryConnectSettingsDescription.new
        data.vpc_id = map['VpcId']
        data.subnet_ids = (Parsers::SubnetIds.parse(map['SubnetIds']) unless map['SubnetIds'].nil?)
        data.customer_user_name = map['CustomerUserName']
        data.security_group_id = map['SecurityGroupId']
        data.availability_zones = (Parsers::AvailabilityZones.parse(map['AvailabilityZones']) unless map['AvailabilityZones'].nil?)
        data.connect_ips = (Parsers::IpAddrs.parse(map['ConnectIps']) unless map['ConnectIps'].nil?)
        return data
      end
    end

    class IpAddrs
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Error Parser for InvalidNextTokenException
    class InvalidNextTokenException
      def self.parse(http_resp)
        data = Types::InvalidNextTokenException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for DescribeDomainControllers
    class DescribeDomainControllers
      def self.parse(http_resp)
        data = Types::DescribeDomainControllersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.domain_controllers = (Parsers::DomainControllers.parse(map['DomainControllers']) unless map['DomainControllers'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class DomainControllers
      def self.parse(list)
        list.map do |value|
          Parsers::DomainController.parse(value) unless value.nil?
        end
      end
    end

    class DomainController
      def self.parse(map)
        data = Types::DomainController.new
        data.directory_id = map['DirectoryId']
        data.domain_controller_id = map['DomainControllerId']
        data.dns_ip_addr = map['DnsIpAddr']
        data.vpc_id = map['VpcId']
        data.subnet_id = map['SubnetId']
        data.availability_zone = map['AvailabilityZone']
        data.status = map['Status']
        data.status_reason = map['StatusReason']
        data.launch_time = Time.at(map['LaunchTime'].to_i) if map['LaunchTime']
        data.status_last_updated_date_time = Time.at(map['StatusLastUpdatedDateTime'].to_i) if map['StatusLastUpdatedDateTime']
        return data
      end
    end

    # Operation Parser for DescribeEventTopics
    class DescribeEventTopics
      def self.parse(http_resp)
        data = Types::DescribeEventTopicsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.event_topics = (Parsers::EventTopics.parse(map['EventTopics']) unless map['EventTopics'].nil?)
        data
      end
    end

    class EventTopics
      def self.parse(list)
        list.map do |value|
          Parsers::EventTopic.parse(value) unless value.nil?
        end
      end
    end

    class EventTopic
      def self.parse(map)
        data = Types::EventTopic.new
        data.directory_id = map['DirectoryId']
        data.topic_name = map['TopicName']
        data.topic_arn = map['TopicArn']
        data.created_date_time = Time.at(map['CreatedDateTime'].to_i) if map['CreatedDateTime']
        data.status = map['Status']
        return data
      end
    end

    # Operation Parser for DescribeLDAPSSettings
    class DescribeLDAPSSettings
      def self.parse(http_resp)
        data = Types::DescribeLDAPSSettingsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.ldaps_settings_info = (Parsers::LDAPSSettingsInfo.parse(map['LDAPSSettingsInfo']) unless map['LDAPSSettingsInfo'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class LDAPSSettingsInfo
      def self.parse(list)
        list.map do |value|
          Parsers::LDAPSSettingInfo.parse(value) unless value.nil?
        end
      end
    end

    class LDAPSSettingInfo
      def self.parse(map)
        data = Types::LDAPSSettingInfo.new
        data.ldaps_status = map['LDAPSStatus']
        data.ldaps_status_reason = map['LDAPSStatusReason']
        data.last_updated_date_time = Time.at(map['LastUpdatedDateTime'].to_i) if map['LastUpdatedDateTime']
        return data
      end
    end

    # Operation Parser for DescribeRegions
    class DescribeRegions
      def self.parse(http_resp)
        data = Types::DescribeRegionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.regions_description = (Parsers::RegionsDescription.parse(map['RegionsDescription']) unless map['RegionsDescription'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class RegionsDescription
      def self.parse(list)
        list.map do |value|
          Parsers::RegionDescription.parse(value) unless value.nil?
        end
      end
    end

    class RegionDescription
      def self.parse(map)
        data = Types::RegionDescription.new
        data.directory_id = map['DirectoryId']
        data.region_name = map['RegionName']
        data.region_type = map['RegionType']
        data.status = map['Status']
        data.vpc_settings = (Parsers::DirectoryVpcSettings.parse(map['VpcSettings']) unless map['VpcSettings'].nil?)
        data.desired_number_of_domain_controllers = map['DesiredNumberOfDomainControllers']
        data.launch_time = Time.at(map['LaunchTime'].to_i) if map['LaunchTime']
        data.status_last_updated_date_time = Time.at(map['StatusLastUpdatedDateTime'].to_i) if map['StatusLastUpdatedDateTime']
        data.last_updated_date_time = Time.at(map['LastUpdatedDateTime'].to_i) if map['LastUpdatedDateTime']
        return data
      end
    end

    class DirectoryVpcSettings
      def self.parse(map)
        data = Types::DirectoryVpcSettings.new
        data.vpc_id = map['VpcId']
        data.subnet_ids = (Parsers::SubnetIds.parse(map['SubnetIds']) unless map['SubnetIds'].nil?)
        return data
      end
    end

    # Operation Parser for DescribeSharedDirectories
    class DescribeSharedDirectories
      def self.parse(http_resp)
        data = Types::DescribeSharedDirectoriesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.shared_directories = (Parsers::SharedDirectories.parse(map['SharedDirectories']) unless map['SharedDirectories'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class SharedDirectories
      def self.parse(list)
        list.map do |value|
          Parsers::SharedDirectory.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeSnapshots
    class DescribeSnapshots
      def self.parse(http_resp)
        data = Types::DescribeSnapshotsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.snapshots = (Parsers::Snapshots.parse(map['Snapshots']) unless map['Snapshots'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class Snapshots
      def self.parse(list)
        list.map do |value|
          Parsers::Snapshot.parse(value) unless value.nil?
        end
      end
    end

    class Snapshot
      def self.parse(map)
        data = Types::Snapshot.new
        data.directory_id = map['DirectoryId']
        data.snapshot_id = map['SnapshotId']
        data.type = map['Type']
        data.name = map['Name']
        data.status = map['Status']
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        return data
      end
    end

    # Operation Parser for DescribeTrusts
    class DescribeTrusts
      def self.parse(http_resp)
        data = Types::DescribeTrustsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.trusts = (Parsers::Trusts.parse(map['Trusts']) unless map['Trusts'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class Trusts
      def self.parse(list)
        list.map do |value|
          Parsers::Trust.parse(value) unless value.nil?
        end
      end
    end

    class Trust
      def self.parse(map)
        data = Types::Trust.new
        data.directory_id = map['DirectoryId']
        data.trust_id = map['TrustId']
        data.remote_domain_name = map['RemoteDomainName']
        data.trust_type = map['TrustType']
        data.trust_direction = map['TrustDirection']
        data.trust_state = map['TrustState']
        data.created_date_time = Time.at(map['CreatedDateTime'].to_i) if map['CreatedDateTime']
        data.last_updated_date_time = Time.at(map['LastUpdatedDateTime'].to_i) if map['LastUpdatedDateTime']
        data.state_last_updated_date_time = Time.at(map['StateLastUpdatedDateTime'].to_i) if map['StateLastUpdatedDateTime']
        data.trust_state_reason = map['TrustStateReason']
        data.selective_auth = map['SelectiveAuth']
        return data
      end
    end

    # Operation Parser for DisableClientAuthentication
    class DisableClientAuthentication
      def self.parse(http_resp)
        data = Types::DisableClientAuthenticationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for InvalidClientAuthStatusException
    class InvalidClientAuthStatusException
      def self.parse(http_resp)
        data = Types::InvalidClientAuthStatusException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for DisableLDAPS
    class DisableLDAPS
      def self.parse(http_resp)
        data = Types::DisableLDAPSOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for InvalidLDAPSStatusException
    class InvalidLDAPSStatusException
      def self.parse(http_resp)
        data = Types::InvalidLDAPSStatusException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for DisableRadius
    class DisableRadius
      def self.parse(http_resp)
        data = Types::DisableRadiusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DisableSso
    class DisableSso
      def self.parse(http_resp)
        data = Types::DisableSsoOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for EnableClientAuthentication
    class EnableClientAuthentication
      def self.parse(http_resp)
        data = Types::EnableClientAuthenticationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for NoAvailableCertificateException
    class NoAvailableCertificateException
      def self.parse(http_resp)
        data = Types::NoAvailableCertificateException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for EnableLDAPS
    class EnableLDAPS
      def self.parse(http_resp)
        data = Types::EnableLDAPSOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for EnableRadius
    class EnableRadius
      def self.parse(http_resp)
        data = Types::EnableRadiusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for EnableSso
    class EnableSso
      def self.parse(http_resp)
        data = Types::EnableSsoOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for GetDirectoryLimits
    class GetDirectoryLimits
      def self.parse(http_resp)
        data = Types::GetDirectoryLimitsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.directory_limits = (Parsers::DirectoryLimits.parse(map['DirectoryLimits']) unless map['DirectoryLimits'].nil?)
        data
      end
    end

    class DirectoryLimits
      def self.parse(map)
        data = Types::DirectoryLimits.new
        data.cloud_only_directories_limit = map['CloudOnlyDirectoriesLimit']
        data.cloud_only_directories_current_count = map['CloudOnlyDirectoriesCurrentCount']
        data.cloud_only_directories_limit_reached = map['CloudOnlyDirectoriesLimitReached']
        data.cloud_only_microsoft_ad_limit = map['CloudOnlyMicrosoftADLimit']
        data.cloud_only_microsoft_ad_current_count = map['CloudOnlyMicrosoftADCurrentCount']
        data.cloud_only_microsoft_ad_limit_reached = map['CloudOnlyMicrosoftADLimitReached']
        data.connected_directories_limit = map['ConnectedDirectoriesLimit']
        data.connected_directories_current_count = map['ConnectedDirectoriesCurrentCount']
        data.connected_directories_limit_reached = map['ConnectedDirectoriesLimitReached']
        return data
      end
    end

    # Operation Parser for GetSnapshotLimits
    class GetSnapshotLimits
      def self.parse(http_resp)
        data = Types::GetSnapshotLimitsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.snapshot_limits = (Parsers::SnapshotLimits.parse(map['SnapshotLimits']) unless map['SnapshotLimits'].nil?)
        data
      end
    end

    class SnapshotLimits
      def self.parse(map)
        data = Types::SnapshotLimits.new
        data.manual_snapshots_limit = map['ManualSnapshotsLimit']
        data.manual_snapshots_current_count = map['ManualSnapshotsCurrentCount']
        data.manual_snapshots_limit_reached = map['ManualSnapshotsLimitReached']
        return data
      end
    end

    # Operation Parser for ListCertificates
    class ListCertificates
      def self.parse(http_resp)
        data = Types::ListCertificatesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.certificates_info = (Parsers::CertificatesInfo.parse(map['CertificatesInfo']) unless map['CertificatesInfo'].nil?)
        data
      end
    end

    class CertificatesInfo
      def self.parse(list)
        list.map do |value|
          Parsers::CertificateInfo.parse(value) unless value.nil?
        end
      end
    end

    class CertificateInfo
      def self.parse(map)
        data = Types::CertificateInfo.new
        data.certificate_id = map['CertificateId']
        data.common_name = map['CommonName']
        data.state = map['State']
        data.expiry_date_time = Time.at(map['ExpiryDateTime'].to_i) if map['ExpiryDateTime']
        data.type = map['Type']
        return data
      end
    end

    # Operation Parser for ListIpRoutes
    class ListIpRoutes
      def self.parse(http_resp)
        data = Types::ListIpRoutesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.ip_routes_info = (Parsers::IpRoutesInfo.parse(map['IpRoutesInfo']) unless map['IpRoutesInfo'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class IpRoutesInfo
      def self.parse(list)
        list.map do |value|
          Parsers::IpRouteInfo.parse(value) unless value.nil?
        end
      end
    end

    class IpRouteInfo
      def self.parse(map)
        data = Types::IpRouteInfo.new
        data.directory_id = map['DirectoryId']
        data.cidr_ip = map['CidrIp']
        data.ip_route_status_msg = map['IpRouteStatusMsg']
        data.added_date_time = Time.at(map['AddedDateTime'].to_i) if map['AddedDateTime']
        data.ip_route_status_reason = map['IpRouteStatusReason']
        data.description = map['Description']
        return data
      end
    end

    # Operation Parser for ListLogSubscriptions
    class ListLogSubscriptions
      def self.parse(http_resp)
        data = Types::ListLogSubscriptionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.log_subscriptions = (Parsers::LogSubscriptions.parse(map['LogSubscriptions']) unless map['LogSubscriptions'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class LogSubscriptions
      def self.parse(list)
        list.map do |value|
          Parsers::LogSubscription.parse(value) unless value.nil?
        end
      end
    end

    class LogSubscription
      def self.parse(map)
        data = Types::LogSubscription.new
        data.directory_id = map['DirectoryId']
        data.log_group_name = map['LogGroupName']
        data.subscription_created_date_time = Time.at(map['SubscriptionCreatedDateTime'].to_i) if map['SubscriptionCreatedDateTime']
        return data
      end
    end

    # Operation Parser for ListSchemaExtensions
    class ListSchemaExtensions
      def self.parse(http_resp)
        data = Types::ListSchemaExtensionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.schema_extensions_info = (Parsers::SchemaExtensionsInfo.parse(map['SchemaExtensionsInfo']) unless map['SchemaExtensionsInfo'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class SchemaExtensionsInfo
      def self.parse(list)
        list.map do |value|
          Parsers::SchemaExtensionInfo.parse(value) unless value.nil?
        end
      end
    end

    class SchemaExtensionInfo
      def self.parse(map)
        data = Types::SchemaExtensionInfo.new
        data.directory_id = map['DirectoryId']
        data.schema_extension_id = map['SchemaExtensionId']
        data.description = map['Description']
        data.schema_extension_status = map['SchemaExtensionStatus']
        data.schema_extension_status_reason = map['SchemaExtensionStatusReason']
        data.start_date_time = Time.at(map['StartDateTime'].to_i) if map['StartDateTime']
        data.end_date_time = Time.at(map['EndDateTime'].to_i) if map['EndDateTime']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tags = (Parsers::Tags.parse(map['Tags']) unless map['Tags'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class Tags
      def self.parse(list)
        list.map do |value|
          Parsers::Tag.parse(value) unless value.nil?
        end
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

    # Operation Parser for RegisterCertificate
    class RegisterCertificate
      def self.parse(http_resp)
        data = Types::RegisterCertificateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.certificate_id = map['CertificateId']
        data
      end
    end

    # Error Parser for CertificateAlreadyExistsException
    class CertificateAlreadyExistsException
      def self.parse(http_resp)
        data = Types::CertificateAlreadyExistsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.request_id = map['RequestId']
        data
      end
    end

    # Error Parser for CertificateLimitExceededException
    class CertificateLimitExceededException
      def self.parse(http_resp)
        data = Types::CertificateLimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.request_id = map['RequestId']
        data
      end
    end

    # Error Parser for InvalidCertificateException
    class InvalidCertificateException
      def self.parse(http_resp)
        data = Types::InvalidCertificateException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for RegisterEventTopic
    class RegisterEventTopic
      def self.parse(http_resp)
        data = Types::RegisterEventTopicOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for RejectSharedDirectory
    class RejectSharedDirectory
      def self.parse(http_resp)
        data = Types::RejectSharedDirectoryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.shared_directory_id = map['SharedDirectoryId']
        data
      end
    end

    # Operation Parser for RemoveIpRoutes
    class RemoveIpRoutes
      def self.parse(http_resp)
        data = Types::RemoveIpRoutesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for RemoveRegion
    class RemoveRegion
      def self.parse(http_resp)
        data = Types::RemoveRegionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for RemoveTagsFromResource
    class RemoveTagsFromResource
      def self.parse(http_resp)
        data = Types::RemoveTagsFromResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for ResetUserPassword
    class ResetUserPassword
      def self.parse(http_resp)
        data = Types::ResetUserPasswordOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for UserDoesNotExistException
    class UserDoesNotExistException
      def self.parse(http_resp)
        data = Types::UserDoesNotExistException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.request_id = map['RequestId']
        data
      end
    end

    # Error Parser for InvalidPasswordException
    class InvalidPasswordException
      def self.parse(http_resp)
        data = Types::InvalidPasswordException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for RestoreFromSnapshot
    class RestoreFromSnapshot
      def self.parse(http_resp)
        data = Types::RestoreFromSnapshotOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for ShareDirectory
    class ShareDirectory
      def self.parse(http_resp)
        data = Types::ShareDirectoryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.shared_directory_id = map['SharedDirectoryId']
        data
      end
    end

    # Error Parser for OrganizationsException
    class OrganizationsException
      def self.parse(http_resp)
        data = Types::OrganizationsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.request_id = map['RequestId']
        data
      end
    end

    # Error Parser for ShareLimitExceededException
    class ShareLimitExceededException
      def self.parse(http_resp)
        data = Types::ShareLimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.request_id = map['RequestId']
        data
      end
    end

    # Error Parser for InvalidTargetException
    class InvalidTargetException
      def self.parse(http_resp)
        data = Types::InvalidTargetException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for StartSchemaExtension
    class StartSchemaExtension
      def self.parse(http_resp)
        data = Types::StartSchemaExtensionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.schema_extension_id = map['SchemaExtensionId']
        data
      end
    end

    # Operation Parser for UnshareDirectory
    class UnshareDirectory
      def self.parse(http_resp)
        data = Types::UnshareDirectoryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.shared_directory_id = map['SharedDirectoryId']
        data
      end
    end

    # Error Parser for DirectoryNotSharedException
    class DirectoryNotSharedException
      def self.parse(http_resp)
        data = Types::DirectoryNotSharedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for UpdateConditionalForwarder
    class UpdateConditionalForwarder
      def self.parse(http_resp)
        data = Types::UpdateConditionalForwarderOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateNumberOfDomainControllers
    class UpdateNumberOfDomainControllers
      def self.parse(http_resp)
        data = Types::UpdateNumberOfDomainControllersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for DomainControllerLimitExceededException
    class DomainControllerLimitExceededException
      def self.parse(http_resp)
        data = Types::DomainControllerLimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for UpdateRadius
    class UpdateRadius
      def self.parse(http_resp)
        data = Types::UpdateRadiusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateTrust
    class UpdateTrust
      def self.parse(http_resp)
        data = Types::UpdateTrustOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.request_id = map['RequestId']
        data.trust_id = map['TrustId']
        data
      end
    end

    # Operation Parser for VerifyTrust
    class VerifyTrust
      def self.parse(http_resp)
        data = Types::VerifyTrustOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.trust_id = map['TrustId']
        data
      end
    end
  end
end
