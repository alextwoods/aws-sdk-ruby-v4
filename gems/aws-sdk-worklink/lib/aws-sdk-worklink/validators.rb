# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::WorkLink
  module Validators

    class AssociateDomainInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateDomainInput, context: context)
        Hearth::Validator.validate!(input[:fleet_arn], ::String, context: "#{context}[:fleet_arn]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:acm_certificate_arn], ::String, context: "#{context}[:acm_certificate_arn]")
      end
    end

    class AssociateDomainOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateDomainOutput, context: context)
      end
    end

    class AssociateWebsiteAuthorizationProviderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateWebsiteAuthorizationProviderInput, context: context)
        Hearth::Validator.validate!(input[:fleet_arn], ::String, context: "#{context}[:fleet_arn]")
        Hearth::Validator.validate!(input[:authorization_provider_type], ::String, context: "#{context}[:authorization_provider_type]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
      end
    end

    class AssociateWebsiteAuthorizationProviderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateWebsiteAuthorizationProviderOutput, context: context)
        Hearth::Validator.validate!(input[:authorization_provider_id], ::String, context: "#{context}[:authorization_provider_id]")
      end
    end

    class AssociateWebsiteCertificateAuthorityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateWebsiteCertificateAuthorityInput, context: context)
        Hearth::Validator.validate!(input[:fleet_arn], ::String, context: "#{context}[:fleet_arn]")
        Hearth::Validator.validate!(input[:certificate], ::String, context: "#{context}[:certificate]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
      end
    end

    class AssociateWebsiteCertificateAuthorityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateWebsiteCertificateAuthorityOutput, context: context)
        Hearth::Validator.validate!(input[:website_ca_id], ::String, context: "#{context}[:website_ca_id]")
      end
    end

    class CreateFleetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFleetInput, context: context)
        Hearth::Validator.validate!(input[:fleet_name], ::String, context: "#{context}[:fleet_name]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:optimize_for_end_user_location], ::TrueClass, ::FalseClass, context: "#{context}[:optimize_for_end_user_location]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateFleetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFleetOutput, context: context)
        Hearth::Validator.validate!(input[:fleet_arn], ::String, context: "#{context}[:fleet_arn]")
      end
    end

    class DeleteFleetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFleetInput, context: context)
        Hearth::Validator.validate!(input[:fleet_arn], ::String, context: "#{context}[:fleet_arn]")
      end
    end

    class DeleteFleetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFleetOutput, context: context)
      end
    end

    class DescribeAuditStreamConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAuditStreamConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:fleet_arn], ::String, context: "#{context}[:fleet_arn]")
      end
    end

    class DescribeAuditStreamConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAuditStreamConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:audit_stream_arn], ::String, context: "#{context}[:audit_stream_arn]")
      end
    end

    class DescribeCompanyNetworkConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCompanyNetworkConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:fleet_arn], ::String, context: "#{context}[:fleet_arn]")
      end
    end

    class DescribeCompanyNetworkConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCompanyNetworkConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Validators::SubnetIds.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        Validators::SecurityGroupIds.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
      end
    end

    class DescribeDeviceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDeviceInput, context: context)
        Hearth::Validator.validate!(input[:fleet_arn], ::String, context: "#{context}[:fleet_arn]")
        Hearth::Validator.validate!(input[:device_id], ::String, context: "#{context}[:device_id]")
      end
    end

    class DescribeDeviceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDeviceOutput, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:model], ::String, context: "#{context}[:model]")
        Hearth::Validator.validate!(input[:manufacturer], ::String, context: "#{context}[:manufacturer]")
        Hearth::Validator.validate!(input[:operating_system], ::String, context: "#{context}[:operating_system]")
        Hearth::Validator.validate!(input[:operating_system_version], ::String, context: "#{context}[:operating_system_version]")
        Hearth::Validator.validate!(input[:patch_level], ::String, context: "#{context}[:patch_level]")
        Hearth::Validator.validate!(input[:first_accessed_time], ::Time, context: "#{context}[:first_accessed_time]")
        Hearth::Validator.validate!(input[:last_accessed_time], ::Time, context: "#{context}[:last_accessed_time]")
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
      end
    end

    class DescribeDevicePolicyConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDevicePolicyConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:fleet_arn], ::String, context: "#{context}[:fleet_arn]")
      end
    end

    class DescribeDevicePolicyConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDevicePolicyConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:device_ca_certificate], ::String, context: "#{context}[:device_ca_certificate]")
      end
    end

    class DescribeDomainInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDomainInput, context: context)
        Hearth::Validator.validate!(input[:fleet_arn], ::String, context: "#{context}[:fleet_arn]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
      end
    end

    class DescribeDomainOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDomainOutput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:domain_status], ::String, context: "#{context}[:domain_status]")
        Hearth::Validator.validate!(input[:acm_certificate_arn], ::String, context: "#{context}[:acm_certificate_arn]")
      end
    end

    class DescribeFleetMetadataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFleetMetadataInput, context: context)
        Hearth::Validator.validate!(input[:fleet_arn], ::String, context: "#{context}[:fleet_arn]")
      end
    end

    class DescribeFleetMetadataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFleetMetadataOutput, context: context)
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate!(input[:fleet_name], ::String, context: "#{context}[:fleet_name]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:optimize_for_end_user_location], ::TrueClass, ::FalseClass, context: "#{context}[:optimize_for_end_user_location]")
        Hearth::Validator.validate!(input[:company_code], ::String, context: "#{context}[:company_code]")
        Hearth::Validator.validate!(input[:fleet_status], ::String, context: "#{context}[:fleet_status]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class DescribeIdentityProviderConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeIdentityProviderConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:fleet_arn], ::String, context: "#{context}[:fleet_arn]")
      end
    end

    class DescribeIdentityProviderConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeIdentityProviderConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:identity_provider_type], ::String, context: "#{context}[:identity_provider_type]")
        Hearth::Validator.validate!(input[:service_provider_saml_metadata], ::String, context: "#{context}[:service_provider_saml_metadata]")
        Hearth::Validator.validate!(input[:identity_provider_saml_metadata], ::String, context: "#{context}[:identity_provider_saml_metadata]")
      end
    end

    class DescribeWebsiteCertificateAuthorityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeWebsiteCertificateAuthorityInput, context: context)
        Hearth::Validator.validate!(input[:fleet_arn], ::String, context: "#{context}[:fleet_arn]")
        Hearth::Validator.validate!(input[:website_ca_id], ::String, context: "#{context}[:website_ca_id]")
      end
    end

    class DescribeWebsiteCertificateAuthorityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeWebsiteCertificateAuthorityOutput, context: context)
        Hearth::Validator.validate!(input[:certificate], ::String, context: "#{context}[:certificate]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
      end
    end

    class DeviceSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeviceSummary, context: context)
        Hearth::Validator.validate!(input[:device_id], ::String, context: "#{context}[:device_id]")
        Hearth::Validator.validate!(input[:device_status], ::String, context: "#{context}[:device_status]")
      end
    end

    class DeviceSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DeviceSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DisassociateDomainInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateDomainInput, context: context)
        Hearth::Validator.validate!(input[:fleet_arn], ::String, context: "#{context}[:fleet_arn]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
      end
    end

    class DisassociateDomainOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateDomainOutput, context: context)
      end
    end

    class DisassociateWebsiteAuthorizationProviderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateWebsiteAuthorizationProviderInput, context: context)
        Hearth::Validator.validate!(input[:fleet_arn], ::String, context: "#{context}[:fleet_arn]")
        Hearth::Validator.validate!(input[:authorization_provider_id], ::String, context: "#{context}[:authorization_provider_id]")
      end
    end

    class DisassociateWebsiteAuthorizationProviderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateWebsiteAuthorizationProviderOutput, context: context)
      end
    end

    class DisassociateWebsiteCertificateAuthorityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateWebsiteCertificateAuthorityInput, context: context)
        Hearth::Validator.validate!(input[:fleet_arn], ::String, context: "#{context}[:fleet_arn]")
        Hearth::Validator.validate!(input[:website_ca_id], ::String, context: "#{context}[:website_ca_id]")
      end
    end

    class DisassociateWebsiteCertificateAuthorityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateWebsiteCertificateAuthorityOutput, context: context)
      end
    end

    class DomainSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DomainSummary, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:domain_status], ::String, context: "#{context}[:domain_status]")
      end
    end

    class DomainSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DomainSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FleetSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FleetSummary, context: context)
        Hearth::Validator.validate!(input[:fleet_arn], ::String, context: "#{context}[:fleet_arn]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate!(input[:fleet_name], ::String, context: "#{context}[:fleet_name]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:company_code], ::String, context: "#{context}[:company_code]")
        Hearth::Validator.validate!(input[:fleet_status], ::String, context: "#{context}[:fleet_status]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class FleetSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::FleetSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InternalServerErrorException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerErrorException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListDevicesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDevicesInput, context: context)
        Hearth::Validator.validate!(input[:fleet_arn], ::String, context: "#{context}[:fleet_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListDevicesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDevicesOutput, context: context)
        Validators::DeviceSummaryList.validate!(input[:devices], context: "#{context}[:devices]") unless input[:devices].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDomainsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDomainsInput, context: context)
        Hearth::Validator.validate!(input[:fleet_arn], ::String, context: "#{context}[:fleet_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListDomainsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDomainsOutput, context: context)
        Validators::DomainSummaryList.validate!(input[:domains], context: "#{context}[:domains]") unless input[:domains].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListFleetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFleetsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListFleetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFleetsOutput, context: context)
        Validators::FleetSummaryList.validate!(input[:fleet_summary_list], context: "#{context}[:fleet_summary_list]") unless input[:fleet_summary_list].nil?
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
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ListWebsiteAuthorizationProvidersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListWebsiteAuthorizationProvidersInput, context: context)
        Hearth::Validator.validate!(input[:fleet_arn], ::String, context: "#{context}[:fleet_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListWebsiteAuthorizationProvidersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListWebsiteAuthorizationProvidersOutput, context: context)
        Validators::WebsiteAuthorizationProvidersSummaryList.validate!(input[:website_authorization_providers], context: "#{context}[:website_authorization_providers]") unless input[:website_authorization_providers].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListWebsiteCertificateAuthoritiesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListWebsiteCertificateAuthoritiesInput, context: context)
        Hearth::Validator.validate!(input[:fleet_arn], ::String, context: "#{context}[:fleet_arn]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListWebsiteCertificateAuthoritiesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListWebsiteCertificateAuthoritiesOutput, context: context)
        Validators::WebsiteCaSummaryList.validate!(input[:website_certificate_authorities], context: "#{context}[:website_certificate_authorities]") unless input[:website_certificate_authorities].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ResourceAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RestoreDomainAccessInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestoreDomainAccessInput, context: context)
        Hearth::Validator.validate!(input[:fleet_arn], ::String, context: "#{context}[:fleet_arn]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
      end
    end

    class RestoreDomainAccessOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestoreDomainAccessOutput, context: context)
      end
    end

    class RevokeDomainAccessInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RevokeDomainAccessInput, context: context)
        Hearth::Validator.validate!(input[:fleet_arn], ::String, context: "#{context}[:fleet_arn]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
      end
    end

    class RevokeDomainAccessOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RevokeDomainAccessOutput, context: context)
      end
    end

    class SecurityGroupIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SignOutUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SignOutUserInput, context: context)
        Hearth::Validator.validate!(input[:fleet_arn], ::String, context: "#{context}[:fleet_arn]")
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
      end
    end

    class SignOutUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SignOutUserOutput, context: context)
      end
    end

    class SubnetIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
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

    class TagMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class TooManyRequestsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyRequestsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UnauthorizedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnauthorizedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateAuditStreamConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAuditStreamConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:fleet_arn], ::String, context: "#{context}[:fleet_arn]")
        Hearth::Validator.validate!(input[:audit_stream_arn], ::String, context: "#{context}[:audit_stream_arn]")
      end
    end

    class UpdateAuditStreamConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAuditStreamConfigurationOutput, context: context)
      end
    end

    class UpdateCompanyNetworkConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateCompanyNetworkConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:fleet_arn], ::String, context: "#{context}[:fleet_arn]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Validators::SubnetIds.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        Validators::SecurityGroupIds.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
      end
    end

    class UpdateCompanyNetworkConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateCompanyNetworkConfigurationOutput, context: context)
      end
    end

    class UpdateDevicePolicyConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDevicePolicyConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:fleet_arn], ::String, context: "#{context}[:fleet_arn]")
        Hearth::Validator.validate!(input[:device_ca_certificate], ::String, context: "#{context}[:device_ca_certificate]")
      end
    end

    class UpdateDevicePolicyConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDevicePolicyConfigurationOutput, context: context)
      end
    end

    class UpdateDomainMetadataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDomainMetadataInput, context: context)
        Hearth::Validator.validate!(input[:fleet_arn], ::String, context: "#{context}[:fleet_arn]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
      end
    end

    class UpdateDomainMetadataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDomainMetadataOutput, context: context)
      end
    end

    class UpdateFleetMetadataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFleetMetadataInput, context: context)
        Hearth::Validator.validate!(input[:fleet_arn], ::String, context: "#{context}[:fleet_arn]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:optimize_for_end_user_location], ::TrueClass, ::FalseClass, context: "#{context}[:optimize_for_end_user_location]")
      end
    end

    class UpdateFleetMetadataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFleetMetadataOutput, context: context)
      end
    end

    class UpdateIdentityProviderConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateIdentityProviderConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:fleet_arn], ::String, context: "#{context}[:fleet_arn]")
        Hearth::Validator.validate!(input[:identity_provider_type], ::String, context: "#{context}[:identity_provider_type]")
        Hearth::Validator.validate!(input[:identity_provider_saml_metadata], ::String, context: "#{context}[:identity_provider_saml_metadata]")
      end
    end

    class UpdateIdentityProviderConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateIdentityProviderConfigurationOutput, context: context)
      end
    end

    class WebsiteAuthorizationProviderSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WebsiteAuthorizationProviderSummary, context: context)
        Hearth::Validator.validate!(input[:authorization_provider_id], ::String, context: "#{context}[:authorization_provider_id]")
        Hearth::Validator.validate!(input[:authorization_provider_type], ::String, context: "#{context}[:authorization_provider_type]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
      end
    end

    class WebsiteAuthorizationProvidersSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::WebsiteAuthorizationProviderSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class WebsiteCaSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WebsiteCaSummary, context: context)
        Hearth::Validator.validate!(input[:website_ca_id], ::String, context: "#{context}[:website_ca_id]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
      end
    end

    class WebsiteCaSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::WebsiteCaSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
