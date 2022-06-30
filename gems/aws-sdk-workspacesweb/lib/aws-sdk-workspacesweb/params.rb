# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::WorkSpacesWeb
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module ArnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AssociateBrowserSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateBrowserSettingsInput, context: context)
        type = Types::AssociateBrowserSettingsInput.new
        type.portal_arn = params[:portal_arn]
        type.browser_settings_arn = params[:browser_settings_arn]
        type
      end
    end

    module AssociateBrowserSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateBrowserSettingsOutput, context: context)
        type = Types::AssociateBrowserSettingsOutput.new
        type.portal_arn = params[:portal_arn]
        type.browser_settings_arn = params[:browser_settings_arn]
        type
      end
    end

    module AssociateNetworkSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateNetworkSettingsInput, context: context)
        type = Types::AssociateNetworkSettingsInput.new
        type.portal_arn = params[:portal_arn]
        type.network_settings_arn = params[:network_settings_arn]
        type
      end
    end

    module AssociateNetworkSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateNetworkSettingsOutput, context: context)
        type = Types::AssociateNetworkSettingsOutput.new
        type.portal_arn = params[:portal_arn]
        type.network_settings_arn = params[:network_settings_arn]
        type
      end
    end

    module AssociateTrustStoreInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateTrustStoreInput, context: context)
        type = Types::AssociateTrustStoreInput.new
        type.portal_arn = params[:portal_arn]
        type.trust_store_arn = params[:trust_store_arn]
        type
      end
    end

    module AssociateTrustStoreOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateTrustStoreOutput, context: context)
        type = Types::AssociateTrustStoreOutput.new
        type.portal_arn = params[:portal_arn]
        type.trust_store_arn = params[:trust_store_arn]
        type
      end
    end

    module AssociateUserSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateUserSettingsInput, context: context)
        type = Types::AssociateUserSettingsInput.new
        type.portal_arn = params[:portal_arn]
        type.user_settings_arn = params[:user_settings_arn]
        type
      end
    end

    module AssociateUserSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateUserSettingsOutput, context: context)
        type = Types::AssociateUserSettingsOutput.new
        type.portal_arn = params[:portal_arn]
        type.user_settings_arn = params[:user_settings_arn]
        type
      end
    end

    module BrowserSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BrowserSettings, context: context)
        type = Types::BrowserSettings.new
        type.browser_settings_arn = params[:browser_settings_arn]
        type.associated_portal_arns = ArnList.build(params[:associated_portal_arns], context: "#{context}[:associated_portal_arns]") unless params[:associated_portal_arns].nil?
        type.browser_policy = params[:browser_policy]
        type
      end
    end

    module BrowserSettingsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BrowserSettingsSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BrowserSettingsSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BrowserSettingsSummary, context: context)
        type = Types::BrowserSettingsSummary.new
        type.browser_settings_arn = params[:browser_settings_arn]
        type
      end
    end

    module Certificate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Certificate, context: context)
        type = Types::Certificate.new
        type.thumbprint = params[:thumbprint]
        type.subject = params[:subject]
        type.issuer = params[:issuer]
        type.not_valid_before = params[:not_valid_before]
        type.not_valid_after = params[:not_valid_after]
        type.body = params[:body]
        type
      end
    end

    module CertificateList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CertificateSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CertificateSummary, context: context)
        type = Types::CertificateSummary.new
        type.thumbprint = params[:thumbprint]
        type.subject = params[:subject]
        type.issuer = params[:issuer]
        type.not_valid_before = params[:not_valid_before]
        type.not_valid_after = params[:not_valid_after]
        type
      end
    end

    module CertificateSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CertificateSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CertificateThumbprintList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module CreateBrowserSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBrowserSettingsInput, context: context)
        type = Types::CreateBrowserSettingsInput.new
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.customer_managed_key = params[:customer_managed_key]
        type.additional_encryption_context = EncryptionContextMap.build(params[:additional_encryption_context], context: "#{context}[:additional_encryption_context]") unless params[:additional_encryption_context].nil?
        type.browser_policy = params[:browser_policy]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module CreateBrowserSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBrowserSettingsOutput, context: context)
        type = Types::CreateBrowserSettingsOutput.new
        type.browser_settings_arn = params[:browser_settings_arn]
        type
      end
    end

    module CreateIdentityProviderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateIdentityProviderInput, context: context)
        type = Types::CreateIdentityProviderInput.new
        type.portal_arn = params[:portal_arn]
        type.identity_provider_name = params[:identity_provider_name]
        type.identity_provider_type = params[:identity_provider_type]
        type.identity_provider_details = IdentityProviderDetails.build(params[:identity_provider_details], context: "#{context}[:identity_provider_details]") unless params[:identity_provider_details].nil?
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module CreateIdentityProviderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateIdentityProviderOutput, context: context)
        type = Types::CreateIdentityProviderOutput.new
        type.identity_provider_arn = params[:identity_provider_arn]
        type
      end
    end

    module CreateNetworkSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateNetworkSettingsInput, context: context)
        type = Types::CreateNetworkSettingsInput.new
        type.vpc_id = params[:vpc_id]
        type.subnet_ids = SubnetIdList.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.security_group_ids = SecurityGroupIdList.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module CreateNetworkSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateNetworkSettingsOutput, context: context)
        type = Types::CreateNetworkSettingsOutput.new
        type.network_settings_arn = params[:network_settings_arn]
        type
      end
    end

    module CreatePortalInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePortalInput, context: context)
        type = Types::CreatePortalInput.new
        type.display_name = params[:display_name]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.customer_managed_key = params[:customer_managed_key]
        type.additional_encryption_context = EncryptionContextMap.build(params[:additional_encryption_context], context: "#{context}[:additional_encryption_context]") unless params[:additional_encryption_context].nil?
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module CreatePortalOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePortalOutput, context: context)
        type = Types::CreatePortalOutput.new
        type.portal_arn = params[:portal_arn]
        type.portal_endpoint = params[:portal_endpoint]
        type
      end
    end

    module CreateTrustStoreInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTrustStoreInput, context: context)
        type = Types::CreateTrustStoreInput.new
        type.certificate_list = CertificateList.build(params[:certificate_list], context: "#{context}[:certificate_list]") unless params[:certificate_list].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module CreateTrustStoreOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTrustStoreOutput, context: context)
        type = Types::CreateTrustStoreOutput.new
        type.trust_store_arn = params[:trust_store_arn]
        type
      end
    end

    module CreateUserSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateUserSettingsInput, context: context)
        type = Types::CreateUserSettingsInput.new
        type.copy_allowed = params[:copy_allowed]
        type.paste_allowed = params[:paste_allowed]
        type.download_allowed = params[:download_allowed]
        type.upload_allowed = params[:upload_allowed]
        type.print_allowed = params[:print_allowed]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.disconnect_timeout_in_minutes = params[:disconnect_timeout_in_minutes]
        type.idle_disconnect_timeout_in_minutes = params[:idle_disconnect_timeout_in_minutes]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module CreateUserSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateUserSettingsOutput, context: context)
        type = Types::CreateUserSettingsOutput.new
        type.user_settings_arn = params[:user_settings_arn]
        type
      end
    end

    module DeleteBrowserSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBrowserSettingsInput, context: context)
        type = Types::DeleteBrowserSettingsInput.new
        type.browser_settings_arn = params[:browser_settings_arn]
        type
      end
    end

    module DeleteBrowserSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBrowserSettingsOutput, context: context)
        type = Types::DeleteBrowserSettingsOutput.new
        type
      end
    end

    module DeleteIdentityProviderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteIdentityProviderInput, context: context)
        type = Types::DeleteIdentityProviderInput.new
        type.identity_provider_arn = params[:identity_provider_arn]
        type
      end
    end

    module DeleteIdentityProviderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteIdentityProviderOutput, context: context)
        type = Types::DeleteIdentityProviderOutput.new
        type
      end
    end

    module DeleteNetworkSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteNetworkSettingsInput, context: context)
        type = Types::DeleteNetworkSettingsInput.new
        type.network_settings_arn = params[:network_settings_arn]
        type
      end
    end

    module DeleteNetworkSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteNetworkSettingsOutput, context: context)
        type = Types::DeleteNetworkSettingsOutput.new
        type
      end
    end

    module DeletePortalInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePortalInput, context: context)
        type = Types::DeletePortalInput.new
        type.portal_arn = params[:portal_arn]
        type
      end
    end

    module DeletePortalOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePortalOutput, context: context)
        type = Types::DeletePortalOutput.new
        type
      end
    end

    module DeleteTrustStoreInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTrustStoreInput, context: context)
        type = Types::DeleteTrustStoreInput.new
        type.trust_store_arn = params[:trust_store_arn]
        type
      end
    end

    module DeleteTrustStoreOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTrustStoreOutput, context: context)
        type = Types::DeleteTrustStoreOutput.new
        type
      end
    end

    module DeleteUserSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUserSettingsInput, context: context)
        type = Types::DeleteUserSettingsInput.new
        type.user_settings_arn = params[:user_settings_arn]
        type
      end
    end

    module DeleteUserSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUserSettingsOutput, context: context)
        type = Types::DeleteUserSettingsOutput.new
        type
      end
    end

    module DisassociateBrowserSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateBrowserSettingsInput, context: context)
        type = Types::DisassociateBrowserSettingsInput.new
        type.portal_arn = params[:portal_arn]
        type
      end
    end

    module DisassociateBrowserSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateBrowserSettingsOutput, context: context)
        type = Types::DisassociateBrowserSettingsOutput.new
        type
      end
    end

    module DisassociateNetworkSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateNetworkSettingsInput, context: context)
        type = Types::DisassociateNetworkSettingsInput.new
        type.portal_arn = params[:portal_arn]
        type
      end
    end

    module DisassociateNetworkSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateNetworkSettingsOutput, context: context)
        type = Types::DisassociateNetworkSettingsOutput.new
        type
      end
    end

    module DisassociateTrustStoreInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateTrustStoreInput, context: context)
        type = Types::DisassociateTrustStoreInput.new
        type.portal_arn = params[:portal_arn]
        type
      end
    end

    module DisassociateTrustStoreOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateTrustStoreOutput, context: context)
        type = Types::DisassociateTrustStoreOutput.new
        type
      end
    end

    module DisassociateUserSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateUserSettingsInput, context: context)
        type = Types::DisassociateUserSettingsInput.new
        type.portal_arn = params[:portal_arn]
        type
      end
    end

    module DisassociateUserSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateUserSettingsOutput, context: context)
        type = Types::DisassociateUserSettingsOutput.new
        type
      end
    end

    module EncryptionContextMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module GetBrowserSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBrowserSettingsInput, context: context)
        type = Types::GetBrowserSettingsInput.new
        type.browser_settings_arn = params[:browser_settings_arn]
        type
      end
    end

    module GetBrowserSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBrowserSettingsOutput, context: context)
        type = Types::GetBrowserSettingsOutput.new
        type.browser_settings = BrowserSettings.build(params[:browser_settings], context: "#{context}[:browser_settings]") unless params[:browser_settings].nil?
        type
      end
    end

    module GetIdentityProviderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetIdentityProviderInput, context: context)
        type = Types::GetIdentityProviderInput.new
        type.identity_provider_arn = params[:identity_provider_arn]
        type
      end
    end

    module GetIdentityProviderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetIdentityProviderOutput, context: context)
        type = Types::GetIdentityProviderOutput.new
        type.identity_provider = IdentityProvider.build(params[:identity_provider], context: "#{context}[:identity_provider]") unless params[:identity_provider].nil?
        type
      end
    end

    module GetNetworkSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetNetworkSettingsInput, context: context)
        type = Types::GetNetworkSettingsInput.new
        type.network_settings_arn = params[:network_settings_arn]
        type
      end
    end

    module GetNetworkSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetNetworkSettingsOutput, context: context)
        type = Types::GetNetworkSettingsOutput.new
        type.network_settings = NetworkSettings.build(params[:network_settings], context: "#{context}[:network_settings]") unless params[:network_settings].nil?
        type
      end
    end

    module GetPortalInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPortalInput, context: context)
        type = Types::GetPortalInput.new
        type.portal_arn = params[:portal_arn]
        type
      end
    end

    module GetPortalOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPortalOutput, context: context)
        type = Types::GetPortalOutput.new
        type.portal = Portal.build(params[:portal], context: "#{context}[:portal]") unless params[:portal].nil?
        type
      end
    end

    module GetPortalServiceProviderMetadataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPortalServiceProviderMetadataInput, context: context)
        type = Types::GetPortalServiceProviderMetadataInput.new
        type.portal_arn = params[:portal_arn]
        type
      end
    end

    module GetPortalServiceProviderMetadataOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPortalServiceProviderMetadataOutput, context: context)
        type = Types::GetPortalServiceProviderMetadataOutput.new
        type.portal_arn = params[:portal_arn]
        type.service_provider_saml_metadata = params[:service_provider_saml_metadata]
        type
      end
    end

    module GetTrustStoreCertificateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTrustStoreCertificateInput, context: context)
        type = Types::GetTrustStoreCertificateInput.new
        type.trust_store_arn = params[:trust_store_arn]
        type.thumbprint = params[:thumbprint]
        type
      end
    end

    module GetTrustStoreCertificateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTrustStoreCertificateOutput, context: context)
        type = Types::GetTrustStoreCertificateOutput.new
        type.trust_store_arn = params[:trust_store_arn]
        type.certificate = Certificate.build(params[:certificate], context: "#{context}[:certificate]") unless params[:certificate].nil?
        type
      end
    end

    module GetTrustStoreInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTrustStoreInput, context: context)
        type = Types::GetTrustStoreInput.new
        type.trust_store_arn = params[:trust_store_arn]
        type
      end
    end

    module GetTrustStoreOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTrustStoreOutput, context: context)
        type = Types::GetTrustStoreOutput.new
        type.trust_store = TrustStore.build(params[:trust_store], context: "#{context}[:trust_store]") unless params[:trust_store].nil?
        type
      end
    end

    module GetUserSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetUserSettingsInput, context: context)
        type = Types::GetUserSettingsInput.new
        type.user_settings_arn = params[:user_settings_arn]
        type
      end
    end

    module GetUserSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetUserSettingsOutput, context: context)
        type = Types::GetUserSettingsOutput.new
        type.user_settings = UserSettings.build(params[:user_settings], context: "#{context}[:user_settings]") unless params[:user_settings].nil?
        type
      end
    end

    module IdentityProvider
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IdentityProvider, context: context)
        type = Types::IdentityProvider.new
        type.identity_provider_arn = params[:identity_provider_arn]
        type.identity_provider_name = params[:identity_provider_name]
        type.identity_provider_type = params[:identity_provider_type]
        type.identity_provider_details = IdentityProviderDetails.build(params[:identity_provider_details], context: "#{context}[:identity_provider_details]") unless params[:identity_provider_details].nil?
        type
      end
    end

    module IdentityProviderDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module IdentityProviderList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << IdentityProviderSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module IdentityProviderSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IdentityProviderSummary, context: context)
        type = Types::IdentityProviderSummary.new
        type.identity_provider_arn = params[:identity_provider_arn]
        type.identity_provider_name = params[:identity_provider_name]
        type.identity_provider_type = params[:identity_provider_type]
        type
      end
    end

    module InternalServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        type.message = params[:message]
        type.retry_after_seconds = params[:retry_after_seconds]
        type
      end
    end

    module ListBrowserSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBrowserSettingsInput, context: context)
        type = Types::ListBrowserSettingsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListBrowserSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBrowserSettingsOutput, context: context)
        type = Types::ListBrowserSettingsOutput.new
        type.browser_settings = BrowserSettingsList.build(params[:browser_settings], context: "#{context}[:browser_settings]") unless params[:browser_settings].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListIdentityProvidersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListIdentityProvidersInput, context: context)
        type = Types::ListIdentityProvidersInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.portal_arn = params[:portal_arn]
        type
      end
    end

    module ListIdentityProvidersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListIdentityProvidersOutput, context: context)
        type = Types::ListIdentityProvidersOutput.new
        type.next_token = params[:next_token]
        type.identity_providers = IdentityProviderList.build(params[:identity_providers], context: "#{context}[:identity_providers]") unless params[:identity_providers].nil?
        type
      end
    end

    module ListNetworkSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListNetworkSettingsInput, context: context)
        type = Types::ListNetworkSettingsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListNetworkSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListNetworkSettingsOutput, context: context)
        type = Types::ListNetworkSettingsOutput.new
        type.network_settings = NetworkSettingsList.build(params[:network_settings], context: "#{context}[:network_settings]") unless params[:network_settings].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPortalsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPortalsInput, context: context)
        type = Types::ListPortalsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListPortalsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPortalsOutput, context: context)
        type = Types::ListPortalsOutput.new
        type.portals = PortalList.build(params[:portals], context: "#{context}[:portals]") unless params[:portals].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ListTrustStoreCertificatesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTrustStoreCertificatesInput, context: context)
        type = Types::ListTrustStoreCertificatesInput.new
        type.trust_store_arn = params[:trust_store_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListTrustStoreCertificatesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTrustStoreCertificatesOutput, context: context)
        type = Types::ListTrustStoreCertificatesOutput.new
        type.certificate_list = CertificateSummaryList.build(params[:certificate_list], context: "#{context}[:certificate_list]") unless params[:certificate_list].nil?
        type.trust_store_arn = params[:trust_store_arn]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTrustStoresInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTrustStoresInput, context: context)
        type = Types::ListTrustStoresInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListTrustStoresOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTrustStoresOutput, context: context)
        type = Types::ListTrustStoresOutput.new
        type.trust_stores = TrustStoreSummaryList.build(params[:trust_stores], context: "#{context}[:trust_stores]") unless params[:trust_stores].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListUserSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListUserSettingsInput, context: context)
        type = Types::ListUserSettingsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListUserSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListUserSettingsOutput, context: context)
        type = Types::ListUserSettingsOutput.new
        type.user_settings = UserSettingsList.build(params[:user_settings], context: "#{context}[:user_settings]") unless params[:user_settings].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module NetworkSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkSettings, context: context)
        type = Types::NetworkSettings.new
        type.network_settings_arn = params[:network_settings_arn]
        type.associated_portal_arns = ArnList.build(params[:associated_portal_arns], context: "#{context}[:associated_portal_arns]") unless params[:associated_portal_arns].nil?
        type.vpc_id = params[:vpc_id]
        type.subnet_ids = SubnetIdList.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.security_group_ids = SecurityGroupIdList.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type
      end
    end

    module NetworkSettingsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NetworkSettingsSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NetworkSettingsSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkSettingsSummary, context: context)
        type = Types::NetworkSettingsSummary.new
        type.network_settings_arn = params[:network_settings_arn]
        type.vpc_id = params[:vpc_id]
        type
      end
    end

    module Portal
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Portal, context: context)
        type = Types::Portal.new
        type.portal_arn = params[:portal_arn]
        type.renderer_type = params[:renderer_type]
        type.browser_type = params[:browser_type]
        type.portal_status = params[:portal_status]
        type.portal_endpoint = params[:portal_endpoint]
        type.display_name = params[:display_name]
        type.creation_date = params[:creation_date]
        type.browser_settings_arn = params[:browser_settings_arn]
        type.user_settings_arn = params[:user_settings_arn]
        type.network_settings_arn = params[:network_settings_arn]
        type.trust_store_arn = params[:trust_store_arn]
        type.status_reason = params[:status_reason]
        type
      end
    end

    module PortalList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PortalSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PortalSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PortalSummary, context: context)
        type = Types::PortalSummary.new
        type.portal_arn = params[:portal_arn]
        type.renderer_type = params[:renderer_type]
        type.browser_type = params[:browser_type]
        type.portal_status = params[:portal_status]
        type.portal_endpoint = params[:portal_endpoint]
        type.display_name = params[:display_name]
        type.creation_date = params[:creation_date]
        type.browser_settings_arn = params[:browser_settings_arn]
        type.user_settings_arn = params[:user_settings_arn]
        type.network_settings_arn = params[:network_settings_arn]
        type.trust_store_arn = params[:trust_store_arn]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module SecurityGroupIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ServiceQuotaExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceQuotaExceededException, context: context)
        type = Types::ServiceQuotaExceededException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type.service_code = params[:service_code]
        type.quota_code = params[:quota_code]
        type
      end
    end

    module SubnetIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Tag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type
      end
    end

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type.service_code = params[:service_code]
        type.quota_code = params[:quota_code]
        type.retry_after_seconds = params[:retry_after_seconds]
        type
      end
    end

    module TooManyTagsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyTagsException, context: context)
        type = Types::TooManyTagsException.new
        type.message = params[:message]
        type.resource_name = params[:resource_name]
        type
      end
    end

    module TrustStore
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TrustStore, context: context)
        type = Types::TrustStore.new
        type.associated_portal_arns = ArnList.build(params[:associated_portal_arns], context: "#{context}[:associated_portal_arns]") unless params[:associated_portal_arns].nil?
        type.trust_store_arn = params[:trust_store_arn]
        type
      end
    end

    module TrustStoreSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TrustStoreSummary, context: context)
        type = Types::TrustStoreSummary.new
        type.trust_store_arn = params[:trust_store_arn]
        type
      end
    end

    module TrustStoreSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TrustStoreSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type
      end
    end

    module UpdateBrowserSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBrowserSettingsInput, context: context)
        type = Types::UpdateBrowserSettingsInput.new
        type.browser_settings_arn = params[:browser_settings_arn]
        type.browser_policy = params[:browser_policy]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module UpdateBrowserSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBrowserSettingsOutput, context: context)
        type = Types::UpdateBrowserSettingsOutput.new
        type.browser_settings = BrowserSettings.build(params[:browser_settings], context: "#{context}[:browser_settings]") unless params[:browser_settings].nil?
        type
      end
    end

    module UpdateIdentityProviderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateIdentityProviderInput, context: context)
        type = Types::UpdateIdentityProviderInput.new
        type.identity_provider_arn = params[:identity_provider_arn]
        type.identity_provider_name = params[:identity_provider_name]
        type.identity_provider_type = params[:identity_provider_type]
        type.identity_provider_details = IdentityProviderDetails.build(params[:identity_provider_details], context: "#{context}[:identity_provider_details]") unless params[:identity_provider_details].nil?
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module UpdateIdentityProviderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateIdentityProviderOutput, context: context)
        type = Types::UpdateIdentityProviderOutput.new
        type.identity_provider = IdentityProvider.build(params[:identity_provider], context: "#{context}[:identity_provider]") unless params[:identity_provider].nil?
        type
      end
    end

    module UpdateNetworkSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateNetworkSettingsInput, context: context)
        type = Types::UpdateNetworkSettingsInput.new
        type.network_settings_arn = params[:network_settings_arn]
        type.vpc_id = params[:vpc_id]
        type.subnet_ids = SubnetIdList.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.security_group_ids = SecurityGroupIdList.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module UpdateNetworkSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateNetworkSettingsOutput, context: context)
        type = Types::UpdateNetworkSettingsOutput.new
        type.network_settings = NetworkSettings.build(params[:network_settings], context: "#{context}[:network_settings]") unless params[:network_settings].nil?
        type
      end
    end

    module UpdatePortalInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePortalInput, context: context)
        type = Types::UpdatePortalInput.new
        type.portal_arn = params[:portal_arn]
        type.display_name = params[:display_name]
        type
      end
    end

    module UpdatePortalOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePortalOutput, context: context)
        type = Types::UpdatePortalOutput.new
        type.portal = Portal.build(params[:portal], context: "#{context}[:portal]") unless params[:portal].nil?
        type
      end
    end

    module UpdateTrustStoreInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTrustStoreInput, context: context)
        type = Types::UpdateTrustStoreInput.new
        type.trust_store_arn = params[:trust_store_arn]
        type.certificates_to_add = CertificateList.build(params[:certificates_to_add], context: "#{context}[:certificates_to_add]") unless params[:certificates_to_add].nil?
        type.certificates_to_delete = CertificateThumbprintList.build(params[:certificates_to_delete], context: "#{context}[:certificates_to_delete]") unless params[:certificates_to_delete].nil?
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module UpdateTrustStoreOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTrustStoreOutput, context: context)
        type = Types::UpdateTrustStoreOutput.new
        type.trust_store_arn = params[:trust_store_arn]
        type
      end
    end

    module UpdateUserSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateUserSettingsInput, context: context)
        type = Types::UpdateUserSettingsInput.new
        type.user_settings_arn = params[:user_settings_arn]
        type.copy_allowed = params[:copy_allowed]
        type.paste_allowed = params[:paste_allowed]
        type.download_allowed = params[:download_allowed]
        type.upload_allowed = params[:upload_allowed]
        type.print_allowed = params[:print_allowed]
        type.disconnect_timeout_in_minutes = params[:disconnect_timeout_in_minutes]
        type.idle_disconnect_timeout_in_minutes = params[:idle_disconnect_timeout_in_minutes]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module UpdateUserSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateUserSettingsOutput, context: context)
        type = Types::UpdateUserSettingsOutput.new
        type.user_settings = UserSettings.build(params[:user_settings], context: "#{context}[:user_settings]") unless params[:user_settings].nil?
        type
      end
    end

    module UserSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserSettings, context: context)
        type = Types::UserSettings.new
        type.user_settings_arn = params[:user_settings_arn]
        type.associated_portal_arns = ArnList.build(params[:associated_portal_arns], context: "#{context}[:associated_portal_arns]") unless params[:associated_portal_arns].nil?
        type.copy_allowed = params[:copy_allowed]
        type.paste_allowed = params[:paste_allowed]
        type.download_allowed = params[:download_allowed]
        type.upload_allowed = params[:upload_allowed]
        type.print_allowed = params[:print_allowed]
        type.disconnect_timeout_in_minutes = params[:disconnect_timeout_in_minutes]
        type.idle_disconnect_timeout_in_minutes = params[:idle_disconnect_timeout_in_minutes]
        type
      end
    end

    module UserSettingsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UserSettingsSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UserSettingsSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserSettingsSummary, context: context)
        type = Types::UserSettingsSummary.new
        type.user_settings_arn = params[:user_settings_arn]
        type.copy_allowed = params[:copy_allowed]
        type.paste_allowed = params[:paste_allowed]
        type.download_allowed = params[:download_allowed]
        type.upload_allowed = params[:upload_allowed]
        type.print_allowed = params[:print_allowed]
        type.disconnect_timeout_in_minutes = params[:disconnect_timeout_in_minutes]
        type.idle_disconnect_timeout_in_minutes = params[:idle_disconnect_timeout_in_minutes]
        type
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type.reason = params[:reason]
        type.field_list = ValidationExceptionFieldList.build(params[:field_list], context: "#{context}[:field_list]") unless params[:field_list].nil?
        type
      end
    end

    module ValidationExceptionField
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationExceptionField, context: context)
        type = Types::ValidationExceptionField.new
        type.name = params[:name]
        type.message = params[:message]
        type
      end
    end

    module ValidationExceptionFieldList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ValidationExceptionField.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
