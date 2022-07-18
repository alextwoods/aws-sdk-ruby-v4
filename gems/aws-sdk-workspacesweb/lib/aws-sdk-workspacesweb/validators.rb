# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::WorkSpacesWeb
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ArnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AssociateBrowserSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateBrowserSettingsInput, context: context)
        Hearth::Validator.validate!(input[:portal_arn], ::String, context: "#{context}[:portal_arn]")
        Hearth::Validator.validate!(input[:browser_settings_arn], ::String, context: "#{context}[:browser_settings_arn]")
      end
    end

    class AssociateBrowserSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateBrowserSettingsOutput, context: context)
        Hearth::Validator.validate!(input[:portal_arn], ::String, context: "#{context}[:portal_arn]")
        Hearth::Validator.validate!(input[:browser_settings_arn], ::String, context: "#{context}[:browser_settings_arn]")
      end
    end

    class AssociateNetworkSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateNetworkSettingsInput, context: context)
        Hearth::Validator.validate!(input[:portal_arn], ::String, context: "#{context}[:portal_arn]")
        Hearth::Validator.validate!(input[:network_settings_arn], ::String, context: "#{context}[:network_settings_arn]")
      end
    end

    class AssociateNetworkSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateNetworkSettingsOutput, context: context)
        Hearth::Validator.validate!(input[:portal_arn], ::String, context: "#{context}[:portal_arn]")
        Hearth::Validator.validate!(input[:network_settings_arn], ::String, context: "#{context}[:network_settings_arn]")
      end
    end

    class AssociateTrustStoreInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateTrustStoreInput, context: context)
        Hearth::Validator.validate!(input[:portal_arn], ::String, context: "#{context}[:portal_arn]")
        Hearth::Validator.validate!(input[:trust_store_arn], ::String, context: "#{context}[:trust_store_arn]")
      end
    end

    class AssociateTrustStoreOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateTrustStoreOutput, context: context)
        Hearth::Validator.validate!(input[:portal_arn], ::String, context: "#{context}[:portal_arn]")
        Hearth::Validator.validate!(input[:trust_store_arn], ::String, context: "#{context}[:trust_store_arn]")
      end
    end

    class AssociateUserSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateUserSettingsInput, context: context)
        Hearth::Validator.validate!(input[:portal_arn], ::String, context: "#{context}[:portal_arn]")
        Hearth::Validator.validate!(input[:user_settings_arn], ::String, context: "#{context}[:user_settings_arn]")
      end
    end

    class AssociateUserSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateUserSettingsOutput, context: context)
        Hearth::Validator.validate!(input[:portal_arn], ::String, context: "#{context}[:portal_arn]")
        Hearth::Validator.validate!(input[:user_settings_arn], ::String, context: "#{context}[:user_settings_arn]")
      end
    end

    class BrowserSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BrowserSettings, context: context)
        Hearth::Validator.validate!(input[:browser_settings_arn], ::String, context: "#{context}[:browser_settings_arn]")
        ArnList.validate!(input[:associated_portal_arns], context: "#{context}[:associated_portal_arns]") unless input[:associated_portal_arns].nil?
        Hearth::Validator.validate!(input[:browser_policy], ::String, context: "#{context}[:browser_policy]")
      end
    end

    class BrowserSettingsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BrowserSettingsSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BrowserSettingsSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BrowserSettingsSummary, context: context)
        Hearth::Validator.validate!(input[:browser_settings_arn], ::String, context: "#{context}[:browser_settings_arn]")
      end
    end

    class Certificate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Certificate, context: context)
        Hearth::Validator.validate!(input[:thumbprint], ::String, context: "#{context}[:thumbprint]")
        Hearth::Validator.validate!(input[:subject], ::String, context: "#{context}[:subject]")
        Hearth::Validator.validate!(input[:issuer], ::String, context: "#{context}[:issuer]")
        Hearth::Validator.validate!(input[:not_valid_before], ::Time, context: "#{context}[:not_valid_before]")
        Hearth::Validator.validate!(input[:not_valid_after], ::Time, context: "#{context}[:not_valid_after]")
        Hearth::Validator.validate!(input[:body], ::String, context: "#{context}[:body]")
      end
    end

    class CertificateList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CertificateSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CertificateSummary, context: context)
        Hearth::Validator.validate!(input[:thumbprint], ::String, context: "#{context}[:thumbprint]")
        Hearth::Validator.validate!(input[:subject], ::String, context: "#{context}[:subject]")
        Hearth::Validator.validate!(input[:issuer], ::String, context: "#{context}[:issuer]")
        Hearth::Validator.validate!(input[:not_valid_before], ::Time, context: "#{context}[:not_valid_before]")
        Hearth::Validator.validate!(input[:not_valid_after], ::Time, context: "#{context}[:not_valid_after]")
      end
    end

    class CertificateSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CertificateSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CertificateThumbprintList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class CreateBrowserSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBrowserSettingsInput, context: context)
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:customer_managed_key], ::String, context: "#{context}[:customer_managed_key]")
        EncryptionContextMap.validate!(input[:additional_encryption_context], context: "#{context}[:additional_encryption_context]") unless input[:additional_encryption_context].nil?
        Hearth::Validator.validate!(input[:browser_policy], ::String, context: "#{context}[:browser_policy]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreateBrowserSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBrowserSettingsOutput, context: context)
        Hearth::Validator.validate!(input[:browser_settings_arn], ::String, context: "#{context}[:browser_settings_arn]")
      end
    end

    class CreateIdentityProviderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateIdentityProviderInput, context: context)
        Hearth::Validator.validate!(input[:portal_arn], ::String, context: "#{context}[:portal_arn]")
        Hearth::Validator.validate!(input[:identity_provider_name], ::String, context: "#{context}[:identity_provider_name]")
        Hearth::Validator.validate!(input[:identity_provider_type], ::String, context: "#{context}[:identity_provider_type]")
        IdentityProviderDetails.validate!(input[:identity_provider_details], context: "#{context}[:identity_provider_details]") unless input[:identity_provider_details].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreateIdentityProviderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateIdentityProviderOutput, context: context)
        Hearth::Validator.validate!(input[:identity_provider_arn], ::String, context: "#{context}[:identity_provider_arn]")
      end
    end

    class CreateNetworkSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateNetworkSettingsInput, context: context)
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        SubnetIdList.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        SecurityGroupIdList.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreateNetworkSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateNetworkSettingsOutput, context: context)
        Hearth::Validator.validate!(input[:network_settings_arn], ::String, context: "#{context}[:network_settings_arn]")
      end
    end

    class CreatePortalInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePortalInput, context: context)
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:customer_managed_key], ::String, context: "#{context}[:customer_managed_key]")
        EncryptionContextMap.validate!(input[:additional_encryption_context], context: "#{context}[:additional_encryption_context]") unless input[:additional_encryption_context].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreatePortalOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePortalOutput, context: context)
        Hearth::Validator.validate!(input[:portal_arn], ::String, context: "#{context}[:portal_arn]")
        Hearth::Validator.validate!(input[:portal_endpoint], ::String, context: "#{context}[:portal_endpoint]")
      end
    end

    class CreateTrustStoreInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTrustStoreInput, context: context)
        CertificateList.validate!(input[:certificate_list], context: "#{context}[:certificate_list]") unless input[:certificate_list].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreateTrustStoreOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTrustStoreOutput, context: context)
        Hearth::Validator.validate!(input[:trust_store_arn], ::String, context: "#{context}[:trust_store_arn]")
      end
    end

    class CreateUserSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateUserSettingsInput, context: context)
        Hearth::Validator.validate!(input[:copy_allowed], ::String, context: "#{context}[:copy_allowed]")
        Hearth::Validator.validate!(input[:paste_allowed], ::String, context: "#{context}[:paste_allowed]")
        Hearth::Validator.validate!(input[:download_allowed], ::String, context: "#{context}[:download_allowed]")
        Hearth::Validator.validate!(input[:upload_allowed], ::String, context: "#{context}[:upload_allowed]")
        Hearth::Validator.validate!(input[:print_allowed], ::String, context: "#{context}[:print_allowed]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:disconnect_timeout_in_minutes], ::Integer, context: "#{context}[:disconnect_timeout_in_minutes]")
        Hearth::Validator.validate!(input[:idle_disconnect_timeout_in_minutes], ::Integer, context: "#{context}[:idle_disconnect_timeout_in_minutes]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreateUserSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateUserSettingsOutput, context: context)
        Hearth::Validator.validate!(input[:user_settings_arn], ::String, context: "#{context}[:user_settings_arn]")
      end
    end

    class DeleteBrowserSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBrowserSettingsInput, context: context)
        Hearth::Validator.validate!(input[:browser_settings_arn], ::String, context: "#{context}[:browser_settings_arn]")
      end
    end

    class DeleteBrowserSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBrowserSettingsOutput, context: context)
      end
    end

    class DeleteIdentityProviderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteIdentityProviderInput, context: context)
        Hearth::Validator.validate!(input[:identity_provider_arn], ::String, context: "#{context}[:identity_provider_arn]")
      end
    end

    class DeleteIdentityProviderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteIdentityProviderOutput, context: context)
      end
    end

    class DeleteNetworkSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteNetworkSettingsInput, context: context)
        Hearth::Validator.validate!(input[:network_settings_arn], ::String, context: "#{context}[:network_settings_arn]")
      end
    end

    class DeleteNetworkSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteNetworkSettingsOutput, context: context)
      end
    end

    class DeletePortalInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePortalInput, context: context)
        Hearth::Validator.validate!(input[:portal_arn], ::String, context: "#{context}[:portal_arn]")
      end
    end

    class DeletePortalOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePortalOutput, context: context)
      end
    end

    class DeleteTrustStoreInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTrustStoreInput, context: context)
        Hearth::Validator.validate!(input[:trust_store_arn], ::String, context: "#{context}[:trust_store_arn]")
      end
    end

    class DeleteTrustStoreOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTrustStoreOutput, context: context)
      end
    end

    class DeleteUserSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUserSettingsInput, context: context)
        Hearth::Validator.validate!(input[:user_settings_arn], ::String, context: "#{context}[:user_settings_arn]")
      end
    end

    class DeleteUserSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUserSettingsOutput, context: context)
      end
    end

    class DisassociateBrowserSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateBrowserSettingsInput, context: context)
        Hearth::Validator.validate!(input[:portal_arn], ::String, context: "#{context}[:portal_arn]")
      end
    end

    class DisassociateBrowserSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateBrowserSettingsOutput, context: context)
      end
    end

    class DisassociateNetworkSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateNetworkSettingsInput, context: context)
        Hearth::Validator.validate!(input[:portal_arn], ::String, context: "#{context}[:portal_arn]")
      end
    end

    class DisassociateNetworkSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateNetworkSettingsOutput, context: context)
      end
    end

    class DisassociateTrustStoreInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateTrustStoreInput, context: context)
        Hearth::Validator.validate!(input[:portal_arn], ::String, context: "#{context}[:portal_arn]")
      end
    end

    class DisassociateTrustStoreOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateTrustStoreOutput, context: context)
      end
    end

    class DisassociateUserSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateUserSettingsInput, context: context)
        Hearth::Validator.validate!(input[:portal_arn], ::String, context: "#{context}[:portal_arn]")
      end
    end

    class DisassociateUserSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateUserSettingsOutput, context: context)
      end
    end

    class EncryptionContextMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class GetBrowserSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBrowserSettingsInput, context: context)
        Hearth::Validator.validate!(input[:browser_settings_arn], ::String, context: "#{context}[:browser_settings_arn]")
      end
    end

    class GetBrowserSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBrowserSettingsOutput, context: context)
        BrowserSettings.validate!(input[:browser_settings], context: "#{context}[:browser_settings]") unless input[:browser_settings].nil?
      end
    end

    class GetIdentityProviderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetIdentityProviderInput, context: context)
        Hearth::Validator.validate!(input[:identity_provider_arn], ::String, context: "#{context}[:identity_provider_arn]")
      end
    end

    class GetIdentityProviderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetIdentityProviderOutput, context: context)
        IdentityProvider.validate!(input[:identity_provider], context: "#{context}[:identity_provider]") unless input[:identity_provider].nil?
      end
    end

    class GetNetworkSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetNetworkSettingsInput, context: context)
        Hearth::Validator.validate!(input[:network_settings_arn], ::String, context: "#{context}[:network_settings_arn]")
      end
    end

    class GetNetworkSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetNetworkSettingsOutput, context: context)
        NetworkSettings.validate!(input[:network_settings], context: "#{context}[:network_settings]") unless input[:network_settings].nil?
      end
    end

    class GetPortalInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPortalInput, context: context)
        Hearth::Validator.validate!(input[:portal_arn], ::String, context: "#{context}[:portal_arn]")
      end
    end

    class GetPortalOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPortalOutput, context: context)
        Portal.validate!(input[:portal], context: "#{context}[:portal]") unless input[:portal].nil?
      end
    end

    class GetPortalServiceProviderMetadataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPortalServiceProviderMetadataInput, context: context)
        Hearth::Validator.validate!(input[:portal_arn], ::String, context: "#{context}[:portal_arn]")
      end
    end

    class GetPortalServiceProviderMetadataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPortalServiceProviderMetadataOutput, context: context)
        Hearth::Validator.validate!(input[:portal_arn], ::String, context: "#{context}[:portal_arn]")
        Hearth::Validator.validate!(input[:service_provider_saml_metadata], ::String, context: "#{context}[:service_provider_saml_metadata]")
      end
    end

    class GetTrustStoreCertificateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTrustStoreCertificateInput, context: context)
        Hearth::Validator.validate!(input[:trust_store_arn], ::String, context: "#{context}[:trust_store_arn]")
        Hearth::Validator.validate!(input[:thumbprint], ::String, context: "#{context}[:thumbprint]")
      end
    end

    class GetTrustStoreCertificateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTrustStoreCertificateOutput, context: context)
        Hearth::Validator.validate!(input[:trust_store_arn], ::String, context: "#{context}[:trust_store_arn]")
        Certificate.validate!(input[:certificate], context: "#{context}[:certificate]") unless input[:certificate].nil?
      end
    end

    class GetTrustStoreInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTrustStoreInput, context: context)
        Hearth::Validator.validate!(input[:trust_store_arn], ::String, context: "#{context}[:trust_store_arn]")
      end
    end

    class GetTrustStoreOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTrustStoreOutput, context: context)
        TrustStore.validate!(input[:trust_store], context: "#{context}[:trust_store]") unless input[:trust_store].nil?
      end
    end

    class GetUserSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetUserSettingsInput, context: context)
        Hearth::Validator.validate!(input[:user_settings_arn], ::String, context: "#{context}[:user_settings_arn]")
      end
    end

    class GetUserSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetUserSettingsOutput, context: context)
        UserSettings.validate!(input[:user_settings], context: "#{context}[:user_settings]") unless input[:user_settings].nil?
      end
    end

    class IdentityProvider
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IdentityProvider, context: context)
        Hearth::Validator.validate!(input[:identity_provider_arn], ::String, context: "#{context}[:identity_provider_arn]")
        Hearth::Validator.validate!(input[:identity_provider_name], ::String, context: "#{context}[:identity_provider_name]")
        Hearth::Validator.validate!(input[:identity_provider_type], ::String, context: "#{context}[:identity_provider_type]")
        IdentityProviderDetails.validate!(input[:identity_provider_details], context: "#{context}[:identity_provider_details]") unless input[:identity_provider_details].nil?
      end
    end

    class IdentityProviderDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class IdentityProviderList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          IdentityProviderSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class IdentityProviderSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IdentityProviderSummary, context: context)
        Hearth::Validator.validate!(input[:identity_provider_arn], ::String, context: "#{context}[:identity_provider_arn]")
        Hearth::Validator.validate!(input[:identity_provider_name], ::String, context: "#{context}[:identity_provider_name]")
        Hearth::Validator.validate!(input[:identity_provider_type], ::String, context: "#{context}[:identity_provider_type]")
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:retry_after_seconds], ::Integer, context: "#{context}[:retry_after_seconds]")
      end
    end

    class ListBrowserSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBrowserSettingsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListBrowserSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBrowserSettingsOutput, context: context)
        BrowserSettingsList.validate!(input[:browser_settings], context: "#{context}[:browser_settings]") unless input[:browser_settings].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListIdentityProvidersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListIdentityProvidersInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:portal_arn], ::String, context: "#{context}[:portal_arn]")
      end
    end

    class ListIdentityProvidersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListIdentityProvidersOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        IdentityProviderList.validate!(input[:identity_providers], context: "#{context}[:identity_providers]") unless input[:identity_providers].nil?
      end
    end

    class ListNetworkSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListNetworkSettingsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListNetworkSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListNetworkSettingsOutput, context: context)
        NetworkSettingsList.validate!(input[:network_settings], context: "#{context}[:network_settings]") unless input[:network_settings].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPortalsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPortalsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListPortalsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPortalsOutput, context: context)
        PortalList.validate!(input[:portals], context: "#{context}[:portals]") unless input[:portals].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ListTrustStoreCertificatesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTrustStoreCertificatesInput, context: context)
        Hearth::Validator.validate!(input[:trust_store_arn], ::String, context: "#{context}[:trust_store_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListTrustStoreCertificatesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTrustStoreCertificatesOutput, context: context)
        CertificateSummaryList.validate!(input[:certificate_list], context: "#{context}[:certificate_list]") unless input[:certificate_list].nil?
        Hearth::Validator.validate!(input[:trust_store_arn], ::String, context: "#{context}[:trust_store_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTrustStoresInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTrustStoresInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListTrustStoresOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTrustStoresOutput, context: context)
        TrustStoreSummaryList.validate!(input[:trust_stores], context: "#{context}[:trust_stores]") unless input[:trust_stores].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListUserSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListUserSettingsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListUserSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListUserSettingsOutput, context: context)
        UserSettingsList.validate!(input[:user_settings], context: "#{context}[:user_settings]") unless input[:user_settings].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class NetworkSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkSettings, context: context)
        Hearth::Validator.validate!(input[:network_settings_arn], ::String, context: "#{context}[:network_settings_arn]")
        ArnList.validate!(input[:associated_portal_arns], context: "#{context}[:associated_portal_arns]") unless input[:associated_portal_arns].nil?
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        SubnetIdList.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        SecurityGroupIdList.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
      end
    end

    class NetworkSettingsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          NetworkSettingsSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NetworkSettingsSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkSettingsSummary, context: context)
        Hearth::Validator.validate!(input[:network_settings_arn], ::String, context: "#{context}[:network_settings_arn]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
      end
    end

    class Portal
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Portal, context: context)
        Hearth::Validator.validate!(input[:portal_arn], ::String, context: "#{context}[:portal_arn]")
        Hearth::Validator.validate!(input[:renderer_type], ::String, context: "#{context}[:renderer_type]")
        Hearth::Validator.validate!(input[:browser_type], ::String, context: "#{context}[:browser_type]")
        Hearth::Validator.validate!(input[:portal_status], ::String, context: "#{context}[:portal_status]")
        Hearth::Validator.validate!(input[:portal_endpoint], ::String, context: "#{context}[:portal_endpoint]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:browser_settings_arn], ::String, context: "#{context}[:browser_settings_arn]")
        Hearth::Validator.validate!(input[:user_settings_arn], ::String, context: "#{context}[:user_settings_arn]")
        Hearth::Validator.validate!(input[:network_settings_arn], ::String, context: "#{context}[:network_settings_arn]")
        Hearth::Validator.validate!(input[:trust_store_arn], ::String, context: "#{context}[:trust_store_arn]")
        Hearth::Validator.validate!(input[:status_reason], ::String, context: "#{context}[:status_reason]")
      end
    end

    class PortalList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PortalSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PortalSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PortalSummary, context: context)
        Hearth::Validator.validate!(input[:portal_arn], ::String, context: "#{context}[:portal_arn]")
        Hearth::Validator.validate!(input[:renderer_type], ::String, context: "#{context}[:renderer_type]")
        Hearth::Validator.validate!(input[:browser_type], ::String, context: "#{context}[:browser_type]")
        Hearth::Validator.validate!(input[:portal_status], ::String, context: "#{context}[:portal_status]")
        Hearth::Validator.validate!(input[:portal_endpoint], ::String, context: "#{context}[:portal_endpoint]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:browser_settings_arn], ::String, context: "#{context}[:browser_settings_arn]")
        Hearth::Validator.validate!(input[:user_settings_arn], ::String, context: "#{context}[:user_settings_arn]")
        Hearth::Validator.validate!(input[:network_settings_arn], ::String, context: "#{context}[:network_settings_arn]")
        Hearth::Validator.validate!(input[:trust_store_arn], ::String, context: "#{context}[:trust_store_arn]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class SecurityGroupIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:service_code], ::String, context: "#{context}[:service_code]")
        Hearth::Validator.validate!(input[:quota_code], ::String, context: "#{context}[:quota_code]")
      end
    end

    class SubnetIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:service_code], ::String, context: "#{context}[:service_code]")
        Hearth::Validator.validate!(input[:quota_code], ::String, context: "#{context}[:quota_code]")
        Hearth::Validator.validate!(input[:retry_after_seconds], ::Integer, context: "#{context}[:retry_after_seconds]")
      end
    end

    class TooManyTagsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyTagsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
      end
    end

    class TrustStore
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TrustStore, context: context)
        ArnList.validate!(input[:associated_portal_arns], context: "#{context}[:associated_portal_arns]") unless input[:associated_portal_arns].nil?
        Hearth::Validator.validate!(input[:trust_store_arn], ::String, context: "#{context}[:trust_store_arn]")
      end
    end

    class TrustStoreSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TrustStoreSummary, context: context)
        Hearth::Validator.validate!(input[:trust_store_arn], ::String, context: "#{context}[:trust_store_arn]")
      end
    end

    class TrustStoreSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TrustStoreSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateBrowserSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBrowserSettingsInput, context: context)
        Hearth::Validator.validate!(input[:browser_settings_arn], ::String, context: "#{context}[:browser_settings_arn]")
        Hearth::Validator.validate!(input[:browser_policy], ::String, context: "#{context}[:browser_policy]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class UpdateBrowserSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBrowserSettingsOutput, context: context)
        BrowserSettings.validate!(input[:browser_settings], context: "#{context}[:browser_settings]") unless input[:browser_settings].nil?
      end
    end

    class UpdateIdentityProviderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateIdentityProviderInput, context: context)
        Hearth::Validator.validate!(input[:identity_provider_arn], ::String, context: "#{context}[:identity_provider_arn]")
        Hearth::Validator.validate!(input[:identity_provider_name], ::String, context: "#{context}[:identity_provider_name]")
        Hearth::Validator.validate!(input[:identity_provider_type], ::String, context: "#{context}[:identity_provider_type]")
        IdentityProviderDetails.validate!(input[:identity_provider_details], context: "#{context}[:identity_provider_details]") unless input[:identity_provider_details].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class UpdateIdentityProviderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateIdentityProviderOutput, context: context)
        IdentityProvider.validate!(input[:identity_provider], context: "#{context}[:identity_provider]") unless input[:identity_provider].nil?
      end
    end

    class UpdateNetworkSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateNetworkSettingsInput, context: context)
        Hearth::Validator.validate!(input[:network_settings_arn], ::String, context: "#{context}[:network_settings_arn]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        SubnetIdList.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        SecurityGroupIdList.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class UpdateNetworkSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateNetworkSettingsOutput, context: context)
        NetworkSettings.validate!(input[:network_settings], context: "#{context}[:network_settings]") unless input[:network_settings].nil?
      end
    end

    class UpdatePortalInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePortalInput, context: context)
        Hearth::Validator.validate!(input[:portal_arn], ::String, context: "#{context}[:portal_arn]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
      end
    end

    class UpdatePortalOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePortalOutput, context: context)
        Portal.validate!(input[:portal], context: "#{context}[:portal]") unless input[:portal].nil?
      end
    end

    class UpdateTrustStoreInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTrustStoreInput, context: context)
        Hearth::Validator.validate!(input[:trust_store_arn], ::String, context: "#{context}[:trust_store_arn]")
        CertificateList.validate!(input[:certificates_to_add], context: "#{context}[:certificates_to_add]") unless input[:certificates_to_add].nil?
        CertificateThumbprintList.validate!(input[:certificates_to_delete], context: "#{context}[:certificates_to_delete]") unless input[:certificates_to_delete].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class UpdateTrustStoreOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTrustStoreOutput, context: context)
        Hearth::Validator.validate!(input[:trust_store_arn], ::String, context: "#{context}[:trust_store_arn]")
      end
    end

    class UpdateUserSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateUserSettingsInput, context: context)
        Hearth::Validator.validate!(input[:user_settings_arn], ::String, context: "#{context}[:user_settings_arn]")
        Hearth::Validator.validate!(input[:copy_allowed], ::String, context: "#{context}[:copy_allowed]")
        Hearth::Validator.validate!(input[:paste_allowed], ::String, context: "#{context}[:paste_allowed]")
        Hearth::Validator.validate!(input[:download_allowed], ::String, context: "#{context}[:download_allowed]")
        Hearth::Validator.validate!(input[:upload_allowed], ::String, context: "#{context}[:upload_allowed]")
        Hearth::Validator.validate!(input[:print_allowed], ::String, context: "#{context}[:print_allowed]")
        Hearth::Validator.validate!(input[:disconnect_timeout_in_minutes], ::Integer, context: "#{context}[:disconnect_timeout_in_minutes]")
        Hearth::Validator.validate!(input[:idle_disconnect_timeout_in_minutes], ::Integer, context: "#{context}[:idle_disconnect_timeout_in_minutes]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class UpdateUserSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateUserSettingsOutput, context: context)
        UserSettings.validate!(input[:user_settings], context: "#{context}[:user_settings]") unless input[:user_settings].nil?
      end
    end

    class UserSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserSettings, context: context)
        Hearth::Validator.validate!(input[:user_settings_arn], ::String, context: "#{context}[:user_settings_arn]")
        ArnList.validate!(input[:associated_portal_arns], context: "#{context}[:associated_portal_arns]") unless input[:associated_portal_arns].nil?
        Hearth::Validator.validate!(input[:copy_allowed], ::String, context: "#{context}[:copy_allowed]")
        Hearth::Validator.validate!(input[:paste_allowed], ::String, context: "#{context}[:paste_allowed]")
        Hearth::Validator.validate!(input[:download_allowed], ::String, context: "#{context}[:download_allowed]")
        Hearth::Validator.validate!(input[:upload_allowed], ::String, context: "#{context}[:upload_allowed]")
        Hearth::Validator.validate!(input[:print_allowed], ::String, context: "#{context}[:print_allowed]")
        Hearth::Validator.validate!(input[:disconnect_timeout_in_minutes], ::Integer, context: "#{context}[:disconnect_timeout_in_minutes]")
        Hearth::Validator.validate!(input[:idle_disconnect_timeout_in_minutes], ::Integer, context: "#{context}[:idle_disconnect_timeout_in_minutes]")
      end
    end

    class UserSettingsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          UserSettingsSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UserSettingsSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserSettingsSummary, context: context)
        Hearth::Validator.validate!(input[:user_settings_arn], ::String, context: "#{context}[:user_settings_arn]")
        Hearth::Validator.validate!(input[:copy_allowed], ::String, context: "#{context}[:copy_allowed]")
        Hearth::Validator.validate!(input[:paste_allowed], ::String, context: "#{context}[:paste_allowed]")
        Hearth::Validator.validate!(input[:download_allowed], ::String, context: "#{context}[:download_allowed]")
        Hearth::Validator.validate!(input[:upload_allowed], ::String, context: "#{context}[:upload_allowed]")
        Hearth::Validator.validate!(input[:print_allowed], ::String, context: "#{context}[:print_allowed]")
        Hearth::Validator.validate!(input[:disconnect_timeout_in_minutes], ::Integer, context: "#{context}[:disconnect_timeout_in_minutes]")
        Hearth::Validator.validate!(input[:idle_disconnect_timeout_in_minutes], ::Integer, context: "#{context}[:idle_disconnect_timeout_in_minutes]")
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
        ValidationExceptionFieldList.validate!(input[:field_list], context: "#{context}[:field_list]") unless input[:field_list].nil?
      end
    end

    class ValidationExceptionField
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationExceptionField, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ValidationExceptionFieldList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ValidationExceptionField.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
