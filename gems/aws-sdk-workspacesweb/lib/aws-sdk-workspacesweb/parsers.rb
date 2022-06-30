# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::WorkSpacesWeb
  module Parsers

    # Operation Parser for AssociateBrowserSettings
    class AssociateBrowserSettings
      def self.parse(http_resp)
        data = Types::AssociateBrowserSettingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.portal_arn = map['portalArn']
        data.browser_settings_arn = map['browserSettingsArn']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.resource_id = map['resourceId']
        data.resource_type = map['resourceType']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.reason = map['reason']
        data.field_list = (Parsers::ValidationExceptionFieldList.parse(map['fieldList']) unless map['fieldList'].nil?)
        data
      end
    end

    class ValidationExceptionFieldList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ValidationExceptionField.parse(value) unless value.nil?
        end
        data
      end
    end

    class ValidationExceptionField
      def self.parse(map)
        data = Types::ValidationExceptionField.new
        data.name = map['name']
        data.message = map['message'] || map['Message']
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

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.resource_id = map['resourceId']
        data.resource_type = map['resourceType']
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        data.retry_after_seconds = http_resp.headers['Retry-After'].to_i unless http_resp.headers['Retry-After'].nil?
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.service_code = map['serviceCode']
        data.quota_code = map['quotaCode']
        data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        data.retry_after_seconds = http_resp.headers['Retry-After'].to_i unless http_resp.headers['Retry-After'].nil?
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for AssociateNetworkSettings
    class AssociateNetworkSettings
      def self.parse(http_resp)
        data = Types::AssociateNetworkSettingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.portal_arn = map['portalArn']
        data.network_settings_arn = map['networkSettingsArn']
        data
      end
    end

    # Operation Parser for AssociateTrustStore
    class AssociateTrustStore
      def self.parse(http_resp)
        data = Types::AssociateTrustStoreOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.portal_arn = map['portalArn']
        data.trust_store_arn = map['trustStoreArn']
        data
      end
    end

    # Operation Parser for AssociateUserSettings
    class AssociateUserSettings
      def self.parse(http_resp)
        data = Types::AssociateUserSettingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.portal_arn = map['portalArn']
        data.user_settings_arn = map['userSettingsArn']
        data
      end
    end

    # Operation Parser for CreateBrowserSettings
    class CreateBrowserSettings
      def self.parse(http_resp)
        data = Types::CreateBrowserSettingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.browser_settings_arn = map['browserSettingsArn']
        data
      end
    end

    # Error Parser for ServiceQuotaExceededException
    class ServiceQuotaExceededException
      def self.parse(http_resp)
        data = Types::ServiceQuotaExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.resource_id = map['resourceId']
        data.resource_type = map['resourceType']
        data.service_code = map['serviceCode']
        data.quota_code = map['quotaCode']
        data
      end
    end

    # Operation Parser for CreateIdentityProvider
    class CreateIdentityProvider
      def self.parse(http_resp)
        data = Types::CreateIdentityProviderOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.identity_provider_arn = map['identityProviderArn']
        data
      end
    end

    # Operation Parser for CreateNetworkSettings
    class CreateNetworkSettings
      def self.parse(http_resp)
        data = Types::CreateNetworkSettingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.network_settings_arn = map['networkSettingsArn']
        data
      end
    end

    # Operation Parser for CreatePortal
    class CreatePortal
      def self.parse(http_resp)
        data = Types::CreatePortalOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.portal_arn = map['portalArn']
        data.portal_endpoint = map['portalEndpoint']
        data
      end
    end

    # Operation Parser for CreateTrustStore
    class CreateTrustStore
      def self.parse(http_resp)
        data = Types::CreateTrustStoreOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.trust_store_arn = map['trustStoreArn']
        data
      end
    end

    # Operation Parser for CreateUserSettings
    class CreateUserSettings
      def self.parse(http_resp)
        data = Types::CreateUserSettingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.user_settings_arn = map['userSettingsArn']
        data
      end
    end

    # Operation Parser for DeleteBrowserSettings
    class DeleteBrowserSettings
      def self.parse(http_resp)
        data = Types::DeleteBrowserSettingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteIdentityProvider
    class DeleteIdentityProvider
      def self.parse(http_resp)
        data = Types::DeleteIdentityProviderOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteNetworkSettings
    class DeleteNetworkSettings
      def self.parse(http_resp)
        data = Types::DeleteNetworkSettingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeletePortal
    class DeletePortal
      def self.parse(http_resp)
        data = Types::DeletePortalOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteTrustStore
    class DeleteTrustStore
      def self.parse(http_resp)
        data = Types::DeleteTrustStoreOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteUserSettings
    class DeleteUserSettings
      def self.parse(http_resp)
        data = Types::DeleteUserSettingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DisassociateBrowserSettings
    class DisassociateBrowserSettings
      def self.parse(http_resp)
        data = Types::DisassociateBrowserSettingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DisassociateNetworkSettings
    class DisassociateNetworkSettings
      def self.parse(http_resp)
        data = Types::DisassociateNetworkSettingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DisassociateTrustStore
    class DisassociateTrustStore
      def self.parse(http_resp)
        data = Types::DisassociateTrustStoreOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DisassociateUserSettings
    class DisassociateUserSettings
      def self.parse(http_resp)
        data = Types::DisassociateUserSettingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for GetBrowserSettings
    class GetBrowserSettings
      def self.parse(http_resp)
        data = Types::GetBrowserSettingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.browser_settings = (Parsers::BrowserSettings.parse(map['browserSettings']) unless map['browserSettings'].nil?)
        data
      end
    end

    class BrowserSettings
      def self.parse(map)
        data = Types::BrowserSettings.new
        data.browser_settings_arn = map['browserSettingsArn']
        data.associated_portal_arns = (Parsers::ArnList.parse(map['associatedPortalArns']) unless map['associatedPortalArns'].nil?)
        data.browser_policy = map['browserPolicy']
        return data
      end
    end

    class ArnList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetIdentityProvider
    class GetIdentityProvider
      def self.parse(http_resp)
        data = Types::GetIdentityProviderOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.identity_provider = (Parsers::IdentityProvider.parse(map['identityProvider']) unless map['identityProvider'].nil?)
        data
      end
    end

    class IdentityProvider
      def self.parse(map)
        data = Types::IdentityProvider.new
        data.identity_provider_arn = map['identityProviderArn']
        data.identity_provider_name = map['identityProviderName']
        data.identity_provider_type = map['identityProviderType']
        data.identity_provider_details = (Parsers::IdentityProviderDetails.parse(map['identityProviderDetails']) unless map['identityProviderDetails'].nil?)
        return data
      end
    end

    class IdentityProviderDetails
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetNetworkSettings
    class GetNetworkSettings
      def self.parse(http_resp)
        data = Types::GetNetworkSettingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.network_settings = (Parsers::NetworkSettings.parse(map['networkSettings']) unless map['networkSettings'].nil?)
        data
      end
    end

    class NetworkSettings
      def self.parse(map)
        data = Types::NetworkSettings.new
        data.network_settings_arn = map['networkSettingsArn']
        data.associated_portal_arns = (Parsers::ArnList.parse(map['associatedPortalArns']) unless map['associatedPortalArns'].nil?)
        data.vpc_id = map['vpcId']
        data.subnet_ids = (Parsers::SubnetIdList.parse(map['subnetIds']) unless map['subnetIds'].nil?)
        data.security_group_ids = (Parsers::SecurityGroupIdList.parse(map['securityGroupIds']) unless map['securityGroupIds'].nil?)
        return data
      end
    end

    class SecurityGroupIdList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class SubnetIdList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetPortal
    class GetPortal
      def self.parse(http_resp)
        data = Types::GetPortalOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.portal = (Parsers::Portal.parse(map['portal']) unless map['portal'].nil?)
        data
      end
    end

    class Portal
      def self.parse(map)
        data = Types::Portal.new
        data.portal_arn = map['portalArn']
        data.renderer_type = map['rendererType']
        data.browser_type = map['browserType']
        data.portal_status = map['portalStatus']
        data.portal_endpoint = map['portalEndpoint']
        data.display_name = map['displayName']
        data.creation_date = Time.at(map['creationDate'].to_i) if map['creationDate']
        data.browser_settings_arn = map['browserSettingsArn']
        data.user_settings_arn = map['userSettingsArn']
        data.network_settings_arn = map['networkSettingsArn']
        data.trust_store_arn = map['trustStoreArn']
        data.status_reason = map['statusReason']
        return data
      end
    end

    # Operation Parser for GetPortalServiceProviderMetadata
    class GetPortalServiceProviderMetadata
      def self.parse(http_resp)
        data = Types::GetPortalServiceProviderMetadataOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.portal_arn = map['portalArn']
        data.service_provider_saml_metadata = map['serviceProviderSamlMetadata']
        data
      end
    end

    # Operation Parser for GetTrustStore
    class GetTrustStore
      def self.parse(http_resp)
        data = Types::GetTrustStoreOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.trust_store = (Parsers::TrustStore.parse(map['trustStore']) unless map['trustStore'].nil?)
        data
      end
    end

    class TrustStore
      def self.parse(map)
        data = Types::TrustStore.new
        data.associated_portal_arns = (Parsers::ArnList.parse(map['associatedPortalArns']) unless map['associatedPortalArns'].nil?)
        data.trust_store_arn = map['trustStoreArn']
        return data
      end
    end

    # Operation Parser for GetTrustStoreCertificate
    class GetTrustStoreCertificate
      def self.parse(http_resp)
        data = Types::GetTrustStoreCertificateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.trust_store_arn = map['trustStoreArn']
        data.certificate = (Parsers::Certificate.parse(map['certificate']) unless map['certificate'].nil?)
        data
      end
    end

    class Certificate
      def self.parse(map)
        data = Types::Certificate.new
        data.thumbprint = map['thumbprint']
        data.subject = map['subject']
        data.issuer = map['issuer']
        data.not_valid_before = Time.at(map['notValidBefore'].to_i) if map['notValidBefore']
        data.not_valid_after = Time.at(map['notValidAfter'].to_i) if map['notValidAfter']
        data.body = Base64::decode64(map['body']) unless map['body'].nil?
        return data
      end
    end

    # Operation Parser for GetUserSettings
    class GetUserSettings
      def self.parse(http_resp)
        data = Types::GetUserSettingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.user_settings = (Parsers::UserSettings.parse(map['userSettings']) unless map['userSettings'].nil?)
        data
      end
    end

    class UserSettings
      def self.parse(map)
        data = Types::UserSettings.new
        data.user_settings_arn = map['userSettingsArn']
        data.associated_portal_arns = (Parsers::ArnList.parse(map['associatedPortalArns']) unless map['associatedPortalArns'].nil?)
        data.copy_allowed = map['copyAllowed']
        data.paste_allowed = map['pasteAllowed']
        data.download_allowed = map['downloadAllowed']
        data.upload_allowed = map['uploadAllowed']
        data.print_allowed = map['printAllowed']
        data.disconnect_timeout_in_minutes = map['disconnectTimeoutInMinutes']
        data.idle_disconnect_timeout_in_minutes = map['idleDisconnectTimeoutInMinutes']
        return data
      end
    end

    # Operation Parser for ListBrowserSettings
    class ListBrowserSettings
      def self.parse(http_resp)
        data = Types::ListBrowserSettingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.browser_settings = (Parsers::BrowserSettingsList.parse(map['browserSettings']) unless map['browserSettings'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class BrowserSettingsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::BrowserSettingsSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class BrowserSettingsSummary
      def self.parse(map)
        data = Types::BrowserSettingsSummary.new
        data.browser_settings_arn = map['browserSettingsArn']
        return data
      end
    end

    # Operation Parser for ListIdentityProviders
    class ListIdentityProviders
      def self.parse(http_resp)
        data = Types::ListIdentityProvidersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['nextToken']
        data.identity_providers = (Parsers::IdentityProviderList.parse(map['identityProviders']) unless map['identityProviders'].nil?)
        data
      end
    end

    class IdentityProviderList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::IdentityProviderSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class IdentityProviderSummary
      def self.parse(map)
        data = Types::IdentityProviderSummary.new
        data.identity_provider_arn = map['identityProviderArn']
        data.identity_provider_name = map['identityProviderName']
        data.identity_provider_type = map['identityProviderType']
        return data
      end
    end

    # Operation Parser for ListNetworkSettings
    class ListNetworkSettings
      def self.parse(http_resp)
        data = Types::ListNetworkSettingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.network_settings = (Parsers::NetworkSettingsList.parse(map['networkSettings']) unless map['networkSettings'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class NetworkSettingsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::NetworkSettingsSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class NetworkSettingsSummary
      def self.parse(map)
        data = Types::NetworkSettingsSummary.new
        data.network_settings_arn = map['networkSettingsArn']
        data.vpc_id = map['vpcId']
        return data
      end
    end

    # Operation Parser for ListPortals
    class ListPortals
      def self.parse(http_resp)
        data = Types::ListPortalsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.portals = (Parsers::PortalList.parse(map['portals']) unless map['portals'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class PortalList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::PortalSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class PortalSummary
      def self.parse(map)
        data = Types::PortalSummary.new
        data.portal_arn = map['portalArn']
        data.renderer_type = map['rendererType']
        data.browser_type = map['browserType']
        data.portal_status = map['portalStatus']
        data.portal_endpoint = map['portalEndpoint']
        data.display_name = map['displayName']
        data.creation_date = Time.at(map['creationDate'].to_i) if map['creationDate']
        data.browser_settings_arn = map['browserSettingsArn']
        data.user_settings_arn = map['userSettingsArn']
        data.network_settings_arn = map['networkSettingsArn']
        data.trust_store_arn = map['trustStoreArn']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Parsers::TagList.parse(map['tags']) unless map['tags'].nil?)
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

    # Operation Parser for ListTrustStoreCertificates
    class ListTrustStoreCertificates
      def self.parse(http_resp)
        data = Types::ListTrustStoreCertificatesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.certificate_list = (Parsers::CertificateSummaryList.parse(map['certificateList']) unless map['certificateList'].nil?)
        data.trust_store_arn = map['trustStoreArn']
        data.next_token = map['nextToken']
        data
      end
    end

    class CertificateSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::CertificateSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class CertificateSummary
      def self.parse(map)
        data = Types::CertificateSummary.new
        data.thumbprint = map['thumbprint']
        data.subject = map['subject']
        data.issuer = map['issuer']
        data.not_valid_before = Time.at(map['notValidBefore'].to_i) if map['notValidBefore']
        data.not_valid_after = Time.at(map['notValidAfter'].to_i) if map['notValidAfter']
        return data
      end
    end

    # Operation Parser for ListTrustStores
    class ListTrustStores
      def self.parse(http_resp)
        data = Types::ListTrustStoresOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.trust_stores = (Parsers::TrustStoreSummaryList.parse(map['trustStores']) unless map['trustStores'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class TrustStoreSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::TrustStoreSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class TrustStoreSummary
      def self.parse(map)
        data = Types::TrustStoreSummary.new
        data.trust_store_arn = map['trustStoreArn']
        return data
      end
    end

    # Operation Parser for ListUserSettings
    class ListUserSettings
      def self.parse(http_resp)
        data = Types::ListUserSettingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.user_settings = (Parsers::UserSettingsList.parse(map['userSettings']) unless map['userSettings'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class UserSettingsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::UserSettingsSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class UserSettingsSummary
      def self.parse(map)
        data = Types::UserSettingsSummary.new
        data.user_settings_arn = map['userSettingsArn']
        data.copy_allowed = map['copyAllowed']
        data.paste_allowed = map['pasteAllowed']
        data.download_allowed = map['downloadAllowed']
        data.upload_allowed = map['uploadAllowed']
        data.print_allowed = map['printAllowed']
        data.disconnect_timeout_in_minutes = map['disconnectTimeoutInMinutes']
        data.idle_disconnect_timeout_in_minutes = map['idleDisconnectTimeoutInMinutes']
        return data
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

    # Error Parser for TooManyTagsException
    class TooManyTagsException
      def self.parse(http_resp)
        data = Types::TooManyTagsException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.resource_name = map['resourceName']
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

    # Operation Parser for UpdateBrowserSettings
    class UpdateBrowserSettings
      def self.parse(http_resp)
        data = Types::UpdateBrowserSettingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.browser_settings = (Parsers::BrowserSettings.parse(map['browserSettings']) unless map['browserSettings'].nil?)
        data
      end
    end

    # Operation Parser for UpdateIdentityProvider
    class UpdateIdentityProvider
      def self.parse(http_resp)
        data = Types::UpdateIdentityProviderOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.identity_provider = (Parsers::IdentityProvider.parse(map['identityProvider']) unless map['identityProvider'].nil?)
        data
      end
    end

    # Operation Parser for UpdateNetworkSettings
    class UpdateNetworkSettings
      def self.parse(http_resp)
        data = Types::UpdateNetworkSettingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.network_settings = (Parsers::NetworkSettings.parse(map['networkSettings']) unless map['networkSettings'].nil?)
        data
      end
    end

    # Operation Parser for UpdatePortal
    class UpdatePortal
      def self.parse(http_resp)
        data = Types::UpdatePortalOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.portal = (Parsers::Portal.parse(map['portal']) unless map['portal'].nil?)
        data
      end
    end

    # Operation Parser for UpdateTrustStore
    class UpdateTrustStore
      def self.parse(http_resp)
        data = Types::UpdateTrustStoreOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.trust_store_arn = map['trustStoreArn']
        data
      end
    end

    # Operation Parser for UpdateUserSettings
    class UpdateUserSettings
      def self.parse(http_resp)
        data = Types::UpdateUserSettingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.user_settings = (Parsers::UserSettings.parse(map['userSettings']) unless map['userSettings'].nil?)
        data
      end
    end
  end
end
