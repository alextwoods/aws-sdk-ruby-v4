# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::WorkLink
  module Parsers

    # Operation Parser for AssociateDomain
    class AssociateDomain
      def self.parse(http_resp)
        data = Types::AssociateDomainOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for TooManyRequestsException
    class TooManyRequestsException
      def self.parse(http_resp)
        data = Types::TooManyRequestsException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ResourceAlreadyExistsException
    class ResourceAlreadyExistsException
      def self.parse(http_resp)
        data = Types::ResourceAlreadyExistsException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InternalServerErrorException
    class InternalServerErrorException
      def self.parse(http_resp)
        data = Types::InternalServerErrorException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidRequestException
    class InvalidRequestException
      def self.parse(http_resp)
        data = Types::InvalidRequestException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for UnauthorizedException
    class UnauthorizedException
      def self.parse(http_resp)
        data = Types::UnauthorizedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for AssociateWebsiteAuthorizationProvider
    class AssociateWebsiteAuthorizationProvider
      def self.parse(http_resp)
        data = Types::AssociateWebsiteAuthorizationProviderOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.authorization_provider_id = map['AuthorizationProviderId']
        data
      end
    end

    # Operation Parser for AssociateWebsiteCertificateAuthority
    class AssociateWebsiteCertificateAuthority
      def self.parse(http_resp)
        data = Types::AssociateWebsiteCertificateAuthorityOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.website_ca_id = map['WebsiteCaId']
        data
      end
    end

    # Operation Parser for CreateFleet
    class CreateFleet
      def self.parse(http_resp)
        data = Types::CreateFleetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.fleet_arn = map['FleetArn']
        data
      end
    end

    # Operation Parser for DeleteFleet
    class DeleteFleet
      def self.parse(http_resp)
        data = Types::DeleteFleetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DescribeAuditStreamConfiguration
    class DescribeAuditStreamConfiguration
      def self.parse(http_resp)
        data = Types::DescribeAuditStreamConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.audit_stream_arn = map['AuditStreamArn']
        data
      end
    end

    # Operation Parser for DescribeCompanyNetworkConfiguration
    class DescribeCompanyNetworkConfiguration
      def self.parse(http_resp)
        data = Types::DescribeCompanyNetworkConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.vpc_id = map['VpcId']
        data.subnet_ids = (SubnetIds.parse(map['SubnetIds']) unless map['SubnetIds'].nil?)
        data.security_group_ids = (SecurityGroupIds.parse(map['SecurityGroupIds']) unless map['SecurityGroupIds'].nil?)
        data
      end
    end

    class SecurityGroupIds
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class SubnetIds
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribeDevice
    class DescribeDevice
      def self.parse(http_resp)
        data = Types::DescribeDeviceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.status = map['Status']
        data.model = map['Model']
        data.manufacturer = map['Manufacturer']
        data.operating_system = map['OperatingSystem']
        data.operating_system_version = map['OperatingSystemVersion']
        data.patch_level = map['PatchLevel']
        data.first_accessed_time = Time.at(map['FirstAccessedTime'].to_i) if map['FirstAccessedTime']
        data.last_accessed_time = Time.at(map['LastAccessedTime'].to_i) if map['LastAccessedTime']
        data.username = map['Username']
        data
      end
    end

    # Operation Parser for DescribeDevicePolicyConfiguration
    class DescribeDevicePolicyConfiguration
      def self.parse(http_resp)
        data = Types::DescribeDevicePolicyConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.device_ca_certificate = map['DeviceCaCertificate']
        data
      end
    end

    # Operation Parser for DescribeDomain
    class DescribeDomain
      def self.parse(http_resp)
        data = Types::DescribeDomainOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.domain_name = map['DomainName']
        data.display_name = map['DisplayName']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data.domain_status = map['DomainStatus']
        data.acm_certificate_arn = map['AcmCertificateArn']
        data
      end
    end

    # Operation Parser for DescribeFleetMetadata
    class DescribeFleetMetadata
      def self.parse(http_resp)
        data = Types::DescribeFleetMetadataOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data.last_updated_time = Time.at(map['LastUpdatedTime'].to_i) if map['LastUpdatedTime']
        data.fleet_name = map['FleetName']
        data.display_name = map['DisplayName']
        data.optimize_for_end_user_location = map['OptimizeForEndUserLocation']
        data.company_code = map['CompanyCode']
        data.fleet_status = map['FleetStatus']
        data.tags = (TagMap.parse(map['Tags']) unless map['Tags'].nil?)
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

    # Operation Parser for DescribeIdentityProviderConfiguration
    class DescribeIdentityProviderConfiguration
      def self.parse(http_resp)
        data = Types::DescribeIdentityProviderConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.identity_provider_type = map['IdentityProviderType']
        data.service_provider_saml_metadata = map['ServiceProviderSamlMetadata']
        data.identity_provider_saml_metadata = map['IdentityProviderSamlMetadata']
        data
      end
    end

    # Operation Parser for DescribeWebsiteCertificateAuthority
    class DescribeWebsiteCertificateAuthority
      def self.parse(http_resp)
        data = Types::DescribeWebsiteCertificateAuthorityOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.certificate = map['Certificate']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data.display_name = map['DisplayName']
        data
      end
    end

    # Operation Parser for DisassociateDomain
    class DisassociateDomain
      def self.parse(http_resp)
        data = Types::DisassociateDomainOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DisassociateWebsiteAuthorizationProvider
    class DisassociateWebsiteAuthorizationProvider
      def self.parse(http_resp)
        data = Types::DisassociateWebsiteAuthorizationProviderOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DisassociateWebsiteCertificateAuthority
    class DisassociateWebsiteCertificateAuthority
      def self.parse(http_resp)
        data = Types::DisassociateWebsiteCertificateAuthorityOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for ListDevices
    class ListDevices
      def self.parse(http_resp)
        data = Types::ListDevicesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.devices = (DeviceSummaryList.parse(map['Devices']) unless map['Devices'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class DeviceSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << DeviceSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class DeviceSummary
      def self.parse(map)
        data = Types::DeviceSummary.new
        data.device_id = map['DeviceId']
        data.device_status = map['DeviceStatus']
        return data
      end
    end

    # Operation Parser for ListDomains
    class ListDomains
      def self.parse(http_resp)
        data = Types::ListDomainsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.domains = (DomainSummaryList.parse(map['Domains']) unless map['Domains'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class DomainSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << DomainSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class DomainSummary
      def self.parse(map)
        data = Types::DomainSummary.new
        data.domain_name = map['DomainName']
        data.display_name = map['DisplayName']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data.domain_status = map['DomainStatus']
        return data
      end
    end

    # Operation Parser for ListFleets
    class ListFleets
      def self.parse(http_resp)
        data = Types::ListFleetsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.fleet_summary_list = (FleetSummaryList.parse(map['FleetSummaryList']) unless map['FleetSummaryList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class FleetSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << FleetSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class FleetSummary
      def self.parse(map)
        data = Types::FleetSummary.new
        data.fleet_arn = map['FleetArn']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data.last_updated_time = Time.at(map['LastUpdatedTime'].to_i) if map['LastUpdatedTime']
        data.fleet_name = map['FleetName']
        data.display_name = map['DisplayName']
        data.company_code = map['CompanyCode']
        data.fleet_status = map['FleetStatus']
        data.tags = (TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    # Operation Parser for ListWebsiteAuthorizationProviders
    class ListWebsiteAuthorizationProviders
      def self.parse(http_resp)
        data = Types::ListWebsiteAuthorizationProvidersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.website_authorization_providers = (WebsiteAuthorizationProvidersSummaryList.parse(map['WebsiteAuthorizationProviders']) unless map['WebsiteAuthorizationProviders'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class WebsiteAuthorizationProvidersSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << WebsiteAuthorizationProviderSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class WebsiteAuthorizationProviderSummary
      def self.parse(map)
        data = Types::WebsiteAuthorizationProviderSummary.new
        data.authorization_provider_id = map['AuthorizationProviderId']
        data.authorization_provider_type = map['AuthorizationProviderType']
        data.domain_name = map['DomainName']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        return data
      end
    end

    # Operation Parser for ListWebsiteCertificateAuthorities
    class ListWebsiteCertificateAuthorities
      def self.parse(http_resp)
        data = Types::ListWebsiteCertificateAuthoritiesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.website_certificate_authorities = (WebsiteCaSummaryList.parse(map['WebsiteCertificateAuthorities']) unless map['WebsiteCertificateAuthorities'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class WebsiteCaSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << WebsiteCaSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class WebsiteCaSummary
      def self.parse(map)
        data = Types::WebsiteCaSummary.new
        data.website_ca_id = map['WebsiteCaId']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data.display_name = map['DisplayName']
        return data
      end
    end

    # Operation Parser for RestoreDomainAccess
    class RestoreDomainAccess
      def self.parse(http_resp)
        data = Types::RestoreDomainAccessOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for RevokeDomainAccess
    class RevokeDomainAccess
      def self.parse(http_resp)
        data = Types::RevokeDomainAccessOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for SignOutUser
    class SignOutUser
      def self.parse(http_resp)
        data = Types::SignOutUserOutput.new
        map = Hearth::JSON.load(http_resp.body)
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

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateAuditStreamConfiguration
    class UpdateAuditStreamConfiguration
      def self.parse(http_resp)
        data = Types::UpdateAuditStreamConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateCompanyNetworkConfiguration
    class UpdateCompanyNetworkConfiguration
      def self.parse(http_resp)
        data = Types::UpdateCompanyNetworkConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateDevicePolicyConfiguration
    class UpdateDevicePolicyConfiguration
      def self.parse(http_resp)
        data = Types::UpdateDevicePolicyConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateDomainMetadata
    class UpdateDomainMetadata
      def self.parse(http_resp)
        data = Types::UpdateDomainMetadataOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateFleetMetadata
    class UpdateFleetMetadata
      def self.parse(http_resp)
        data = Types::UpdateFleetMetadataOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateIdentityProviderConfiguration
    class UpdateIdentityProviderConfiguration
      def self.parse(http_resp)
        data = Types::UpdateIdentityProviderConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end
  end
end
