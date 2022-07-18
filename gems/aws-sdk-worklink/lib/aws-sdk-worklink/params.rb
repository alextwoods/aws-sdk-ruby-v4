# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::WorkLink
  module Params

    module AssociateDomainInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateDomainInput, context: context)
        type = Types::AssociateDomainInput.new
        type.fleet_arn = params[:fleet_arn]
        type.domain_name = params[:domain_name]
        type.display_name = params[:display_name]
        type.acm_certificate_arn = params[:acm_certificate_arn]
        type
      end
    end

    module AssociateDomainOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateDomainOutput, context: context)
        type = Types::AssociateDomainOutput.new
        type
      end
    end

    module AssociateWebsiteAuthorizationProviderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateWebsiteAuthorizationProviderInput, context: context)
        type = Types::AssociateWebsiteAuthorizationProviderInput.new
        type.fleet_arn = params[:fleet_arn]
        type.authorization_provider_type = params[:authorization_provider_type]
        type.domain_name = params[:domain_name]
        type
      end
    end

    module AssociateWebsiteAuthorizationProviderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateWebsiteAuthorizationProviderOutput, context: context)
        type = Types::AssociateWebsiteAuthorizationProviderOutput.new
        type.authorization_provider_id = params[:authorization_provider_id]
        type
      end
    end

    module AssociateWebsiteCertificateAuthorityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateWebsiteCertificateAuthorityInput, context: context)
        type = Types::AssociateWebsiteCertificateAuthorityInput.new
        type.fleet_arn = params[:fleet_arn]
        type.certificate = params[:certificate]
        type.display_name = params[:display_name]
        type
      end
    end

    module AssociateWebsiteCertificateAuthorityOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateWebsiteCertificateAuthorityOutput, context: context)
        type = Types::AssociateWebsiteCertificateAuthorityOutput.new
        type.website_ca_id = params[:website_ca_id]
        type
      end
    end

    module CreateFleetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFleetInput, context: context)
        type = Types::CreateFleetInput.new
        type.fleet_name = params[:fleet_name]
        type.display_name = params[:display_name]
        type.optimize_for_end_user_location = params[:optimize_for_end_user_location]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateFleetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFleetOutput, context: context)
        type = Types::CreateFleetOutput.new
        type.fleet_arn = params[:fleet_arn]
        type
      end
    end

    module DeleteFleetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFleetInput, context: context)
        type = Types::DeleteFleetInput.new
        type.fleet_arn = params[:fleet_arn]
        type
      end
    end

    module DeleteFleetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFleetOutput, context: context)
        type = Types::DeleteFleetOutput.new
        type
      end
    end

    module DescribeAuditStreamConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAuditStreamConfigurationInput, context: context)
        type = Types::DescribeAuditStreamConfigurationInput.new
        type.fleet_arn = params[:fleet_arn]
        type
      end
    end

    module DescribeAuditStreamConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAuditStreamConfigurationOutput, context: context)
        type = Types::DescribeAuditStreamConfigurationOutput.new
        type.audit_stream_arn = params[:audit_stream_arn]
        type
      end
    end

    module DescribeCompanyNetworkConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCompanyNetworkConfigurationInput, context: context)
        type = Types::DescribeCompanyNetworkConfigurationInput.new
        type.fleet_arn = params[:fleet_arn]
        type
      end
    end

    module DescribeCompanyNetworkConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCompanyNetworkConfigurationOutput, context: context)
        type = Types::DescribeCompanyNetworkConfigurationOutput.new
        type.vpc_id = params[:vpc_id]
        type.subnet_ids = SubnetIds.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.security_group_ids = SecurityGroupIds.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type
      end
    end

    module DescribeDeviceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDeviceInput, context: context)
        type = Types::DescribeDeviceInput.new
        type.fleet_arn = params[:fleet_arn]
        type.device_id = params[:device_id]
        type
      end
    end

    module DescribeDeviceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDeviceOutput, context: context)
        type = Types::DescribeDeviceOutput.new
        type.status = params[:status]
        type.model = params[:model]
        type.manufacturer = params[:manufacturer]
        type.operating_system = params[:operating_system]
        type.operating_system_version = params[:operating_system_version]
        type.patch_level = params[:patch_level]
        type.first_accessed_time = params[:first_accessed_time]
        type.last_accessed_time = params[:last_accessed_time]
        type.username = params[:username]
        type
      end
    end

    module DescribeDevicePolicyConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDevicePolicyConfigurationInput, context: context)
        type = Types::DescribeDevicePolicyConfigurationInput.new
        type.fleet_arn = params[:fleet_arn]
        type
      end
    end

    module DescribeDevicePolicyConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDevicePolicyConfigurationOutput, context: context)
        type = Types::DescribeDevicePolicyConfigurationOutput.new
        type.device_ca_certificate = params[:device_ca_certificate]
        type
      end
    end

    module DescribeDomainInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDomainInput, context: context)
        type = Types::DescribeDomainInput.new
        type.fleet_arn = params[:fleet_arn]
        type.domain_name = params[:domain_name]
        type
      end
    end

    module DescribeDomainOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDomainOutput, context: context)
        type = Types::DescribeDomainOutput.new
        type.domain_name = params[:domain_name]
        type.display_name = params[:display_name]
        type.created_time = params[:created_time]
        type.domain_status = params[:domain_status]
        type.acm_certificate_arn = params[:acm_certificate_arn]
        type
      end
    end

    module DescribeFleetMetadataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFleetMetadataInput, context: context)
        type = Types::DescribeFleetMetadataInput.new
        type.fleet_arn = params[:fleet_arn]
        type
      end
    end

    module DescribeFleetMetadataOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFleetMetadataOutput, context: context)
        type = Types::DescribeFleetMetadataOutput.new
        type.created_time = params[:created_time]
        type.last_updated_time = params[:last_updated_time]
        type.fleet_name = params[:fleet_name]
        type.display_name = params[:display_name]
        type.optimize_for_end_user_location = params[:optimize_for_end_user_location]
        type.company_code = params[:company_code]
        type.fleet_status = params[:fleet_status]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module DescribeIdentityProviderConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeIdentityProviderConfigurationInput, context: context)
        type = Types::DescribeIdentityProviderConfigurationInput.new
        type.fleet_arn = params[:fleet_arn]
        type
      end
    end

    module DescribeIdentityProviderConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeIdentityProviderConfigurationOutput, context: context)
        type = Types::DescribeIdentityProviderConfigurationOutput.new
        type.identity_provider_type = params[:identity_provider_type]
        type.service_provider_saml_metadata = params[:service_provider_saml_metadata]
        type.identity_provider_saml_metadata = params[:identity_provider_saml_metadata]
        type
      end
    end

    module DescribeWebsiteCertificateAuthorityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeWebsiteCertificateAuthorityInput, context: context)
        type = Types::DescribeWebsiteCertificateAuthorityInput.new
        type.fleet_arn = params[:fleet_arn]
        type.website_ca_id = params[:website_ca_id]
        type
      end
    end

    module DescribeWebsiteCertificateAuthorityOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeWebsiteCertificateAuthorityOutput, context: context)
        type = Types::DescribeWebsiteCertificateAuthorityOutput.new
        type.certificate = params[:certificate]
        type.created_time = params[:created_time]
        type.display_name = params[:display_name]
        type
      end
    end

    module DeviceSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeviceSummary, context: context)
        type = Types::DeviceSummary.new
        type.device_id = params[:device_id]
        type.device_status = params[:device_status]
        type
      end
    end

    module DeviceSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DeviceSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DisassociateDomainInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateDomainInput, context: context)
        type = Types::DisassociateDomainInput.new
        type.fleet_arn = params[:fleet_arn]
        type.domain_name = params[:domain_name]
        type
      end
    end

    module DisassociateDomainOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateDomainOutput, context: context)
        type = Types::DisassociateDomainOutput.new
        type
      end
    end

    module DisassociateWebsiteAuthorizationProviderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateWebsiteAuthorizationProviderInput, context: context)
        type = Types::DisassociateWebsiteAuthorizationProviderInput.new
        type.fleet_arn = params[:fleet_arn]
        type.authorization_provider_id = params[:authorization_provider_id]
        type
      end
    end

    module DisassociateWebsiteAuthorizationProviderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateWebsiteAuthorizationProviderOutput, context: context)
        type = Types::DisassociateWebsiteAuthorizationProviderOutput.new
        type
      end
    end

    module DisassociateWebsiteCertificateAuthorityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateWebsiteCertificateAuthorityInput, context: context)
        type = Types::DisassociateWebsiteCertificateAuthorityInput.new
        type.fleet_arn = params[:fleet_arn]
        type.website_ca_id = params[:website_ca_id]
        type
      end
    end

    module DisassociateWebsiteCertificateAuthorityOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateWebsiteCertificateAuthorityOutput, context: context)
        type = Types::DisassociateWebsiteCertificateAuthorityOutput.new
        type
      end
    end

    module DomainSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DomainSummary, context: context)
        type = Types::DomainSummary.new
        type.domain_name = params[:domain_name]
        type.display_name = params[:display_name]
        type.created_time = params[:created_time]
        type.domain_status = params[:domain_status]
        type
      end
    end

    module DomainSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DomainSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FleetSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FleetSummary, context: context)
        type = Types::FleetSummary.new
        type.fleet_arn = params[:fleet_arn]
        type.created_time = params[:created_time]
        type.last_updated_time = params[:last_updated_time]
        type.fleet_name = params[:fleet_name]
        type.display_name = params[:display_name]
        type.company_code = params[:company_code]
        type.fleet_status = params[:fleet_status]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module FleetSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FleetSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InternalServerErrorException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerErrorException, context: context)
        type = Types::InternalServerErrorException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidRequestException, context: context)
        type = Types::InvalidRequestException.new
        type.message = params[:message]
        type
      end
    end

    module ListDevicesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDevicesInput, context: context)
        type = Types::ListDevicesInput.new
        type.fleet_arn = params[:fleet_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListDevicesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDevicesOutput, context: context)
        type = Types::ListDevicesOutput.new
        type.devices = DeviceSummaryList.build(params[:devices], context: "#{context}[:devices]") unless params[:devices].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDomainsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDomainsInput, context: context)
        type = Types::ListDomainsInput.new
        type.fleet_arn = params[:fleet_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListDomainsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDomainsOutput, context: context)
        type = Types::ListDomainsOutput.new
        type.domains = DomainSummaryList.build(params[:domains], context: "#{context}[:domains]") unless params[:domains].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListFleetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFleetsInput, context: context)
        type = Types::ListFleetsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListFleetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFleetsOutput, context: context)
        type = Types::ListFleetsOutput.new
        type.fleet_summary_list = FleetSummaryList.build(params[:fleet_summary_list], context: "#{context}[:fleet_summary_list]") unless params[:fleet_summary_list].nil?
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
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ListWebsiteAuthorizationProvidersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListWebsiteAuthorizationProvidersInput, context: context)
        type = Types::ListWebsiteAuthorizationProvidersInput.new
        type.fleet_arn = params[:fleet_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListWebsiteAuthorizationProvidersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListWebsiteAuthorizationProvidersOutput, context: context)
        type = Types::ListWebsiteAuthorizationProvidersOutput.new
        type.website_authorization_providers = WebsiteAuthorizationProvidersSummaryList.build(params[:website_authorization_providers], context: "#{context}[:website_authorization_providers]") unless params[:website_authorization_providers].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListWebsiteCertificateAuthoritiesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListWebsiteCertificateAuthoritiesInput, context: context)
        type = Types::ListWebsiteCertificateAuthoritiesInput.new
        type.fleet_arn = params[:fleet_arn]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListWebsiteCertificateAuthoritiesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListWebsiteCertificateAuthoritiesOutput, context: context)
        type = Types::ListWebsiteCertificateAuthoritiesOutput.new
        type.website_certificate_authorities = WebsiteCaSummaryList.build(params[:website_certificate_authorities], context: "#{context}[:website_certificate_authorities]") unless params[:website_certificate_authorities].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ResourceAlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceAlreadyExistsException, context: context)
        type = Types::ResourceAlreadyExistsException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module RestoreDomainAccessInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RestoreDomainAccessInput, context: context)
        type = Types::RestoreDomainAccessInput.new
        type.fleet_arn = params[:fleet_arn]
        type.domain_name = params[:domain_name]
        type
      end
    end

    module RestoreDomainAccessOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RestoreDomainAccessOutput, context: context)
        type = Types::RestoreDomainAccessOutput.new
        type
      end
    end

    module RevokeDomainAccessInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RevokeDomainAccessInput, context: context)
        type = Types::RevokeDomainAccessInput.new
        type.fleet_arn = params[:fleet_arn]
        type.domain_name = params[:domain_name]
        type
      end
    end

    module RevokeDomainAccessOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RevokeDomainAccessOutput, context: context)
        type = Types::RevokeDomainAccessOutput.new
        type
      end
    end

    module SecurityGroupIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SignOutUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SignOutUserInput, context: context)
        type = Types::SignOutUserInput.new
        type.fleet_arn = params[:fleet_arn]
        type.username = params[:username]
        type
      end
    end

    module SignOutUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SignOutUserOutput, context: context)
        type = Types::SignOutUserOutput.new
        type
      end
    end

    module SubnetIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
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

    module TagMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module TooManyRequestsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyRequestsException, context: context)
        type = Types::TooManyRequestsException.new
        type.message = params[:message]
        type
      end
    end

    module UnauthorizedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnauthorizedException, context: context)
        type = Types::UnauthorizedException.new
        type.message = params[:message]
        type
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

    module UpdateAuditStreamConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAuditStreamConfigurationInput, context: context)
        type = Types::UpdateAuditStreamConfigurationInput.new
        type.fleet_arn = params[:fleet_arn]
        type.audit_stream_arn = params[:audit_stream_arn]
        type
      end
    end

    module UpdateAuditStreamConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAuditStreamConfigurationOutput, context: context)
        type = Types::UpdateAuditStreamConfigurationOutput.new
        type
      end
    end

    module UpdateCompanyNetworkConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateCompanyNetworkConfigurationInput, context: context)
        type = Types::UpdateCompanyNetworkConfigurationInput.new
        type.fleet_arn = params[:fleet_arn]
        type.vpc_id = params[:vpc_id]
        type.subnet_ids = SubnetIds.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.security_group_ids = SecurityGroupIds.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type
      end
    end

    module UpdateCompanyNetworkConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateCompanyNetworkConfigurationOutput, context: context)
        type = Types::UpdateCompanyNetworkConfigurationOutput.new
        type
      end
    end

    module UpdateDevicePolicyConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDevicePolicyConfigurationInput, context: context)
        type = Types::UpdateDevicePolicyConfigurationInput.new
        type.fleet_arn = params[:fleet_arn]
        type.device_ca_certificate = params[:device_ca_certificate]
        type
      end
    end

    module UpdateDevicePolicyConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDevicePolicyConfigurationOutput, context: context)
        type = Types::UpdateDevicePolicyConfigurationOutput.new
        type
      end
    end

    module UpdateDomainMetadataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDomainMetadataInput, context: context)
        type = Types::UpdateDomainMetadataInput.new
        type.fleet_arn = params[:fleet_arn]
        type.domain_name = params[:domain_name]
        type.display_name = params[:display_name]
        type
      end
    end

    module UpdateDomainMetadataOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDomainMetadataOutput, context: context)
        type = Types::UpdateDomainMetadataOutput.new
        type
      end
    end

    module UpdateFleetMetadataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFleetMetadataInput, context: context)
        type = Types::UpdateFleetMetadataInput.new
        type.fleet_arn = params[:fleet_arn]
        type.display_name = params[:display_name]
        type.optimize_for_end_user_location = params[:optimize_for_end_user_location]
        type
      end
    end

    module UpdateFleetMetadataOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFleetMetadataOutput, context: context)
        type = Types::UpdateFleetMetadataOutput.new
        type
      end
    end

    module UpdateIdentityProviderConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateIdentityProviderConfigurationInput, context: context)
        type = Types::UpdateIdentityProviderConfigurationInput.new
        type.fleet_arn = params[:fleet_arn]
        type.identity_provider_type = params[:identity_provider_type]
        type.identity_provider_saml_metadata = params[:identity_provider_saml_metadata]
        type
      end
    end

    module UpdateIdentityProviderConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateIdentityProviderConfigurationOutput, context: context)
        type = Types::UpdateIdentityProviderConfigurationOutput.new
        type
      end
    end

    module WebsiteAuthorizationProviderSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WebsiteAuthorizationProviderSummary, context: context)
        type = Types::WebsiteAuthorizationProviderSummary.new
        type.authorization_provider_id = params[:authorization_provider_id]
        type.authorization_provider_type = params[:authorization_provider_type]
        type.domain_name = params[:domain_name]
        type.created_time = params[:created_time]
        type
      end
    end

    module WebsiteAuthorizationProvidersSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << WebsiteAuthorizationProviderSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module WebsiteCaSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WebsiteCaSummary, context: context)
        type = Types::WebsiteCaSummary.new
        type.website_ca_id = params[:website_ca_id]
        type.created_time = params[:created_time]
        type.display_name = params[:display_name]
        type
      end
    end

    module WebsiteCaSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << WebsiteCaSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
