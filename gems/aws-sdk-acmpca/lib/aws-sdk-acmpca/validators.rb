# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ACMPCA
  module Validators

    class ASN1Subject
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ASN1Subject, context: context)
        Hearth::Validator.validate!(input[:country], ::String, context: "#{context}[:country]")
        Hearth::Validator.validate!(input[:organization], ::String, context: "#{context}[:organization]")
        Hearth::Validator.validate!(input[:organizational_unit], ::String, context: "#{context}[:organizational_unit]")
        Hearth::Validator.validate!(input[:distinguished_name_qualifier], ::String, context: "#{context}[:distinguished_name_qualifier]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:common_name], ::String, context: "#{context}[:common_name]")
        Hearth::Validator.validate!(input[:serial_number], ::String, context: "#{context}[:serial_number]")
        Hearth::Validator.validate!(input[:locality], ::String, context: "#{context}[:locality]")
        Hearth::Validator.validate!(input[:title], ::String, context: "#{context}[:title]")
        Hearth::Validator.validate!(input[:surname], ::String, context: "#{context}[:surname]")
        Hearth::Validator.validate!(input[:given_name], ::String, context: "#{context}[:given_name]")
        Hearth::Validator.validate!(input[:initials], ::String, context: "#{context}[:initials]")
        Hearth::Validator.validate!(input[:pseudonym], ::String, context: "#{context}[:pseudonym]")
        Hearth::Validator.validate!(input[:generation_qualifier], ::String, context: "#{context}[:generation_qualifier]")
        Validators::CustomAttributeList.validate!(input[:custom_attributes], context: "#{context}[:custom_attributes]") unless input[:custom_attributes].nil?
      end
    end

    class AccessDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDescription, context: context)
        Validators::AccessMethod.validate!(input[:access_method], context: "#{context}[:access_method]") unless input[:access_method].nil?
        Validators::GeneralName.validate!(input[:access_location], context: "#{context}[:access_location]") unless input[:access_location].nil?
      end
    end

    class AccessDescriptionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AccessDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AccessMethod
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessMethod, context: context)
        Hearth::Validator.validate!(input[:custom_object_identifier], ::String, context: "#{context}[:custom_object_identifier]")
        Hearth::Validator.validate!(input[:access_method_type], ::String, context: "#{context}[:access_method_type]")
      end
    end

    class ActionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ApiPassthrough
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApiPassthrough, context: context)
        Validators::Extensions.validate!(input[:extensions], context: "#{context}[:extensions]") unless input[:extensions].nil?
        Validators::ASN1Subject.validate!(input[:subject], context: "#{context}[:subject]") unless input[:subject].nil?
      end
    end

    class CertificateAuthorities
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::CertificateAuthority.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CertificateAuthority
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CertificateAuthority, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:owner_account], ::String, context: "#{context}[:owner_account]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_state_change_at], ::Time, context: "#{context}[:last_state_change_at]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:serial], ::String, context: "#{context}[:serial]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:not_before], ::Time, context: "#{context}[:not_before]")
        Hearth::Validator.validate!(input[:not_after], ::Time, context: "#{context}[:not_after]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Validators::CertificateAuthorityConfiguration.validate!(input[:certificate_authority_configuration], context: "#{context}[:certificate_authority_configuration]") unless input[:certificate_authority_configuration].nil?
        Validators::RevocationConfiguration.validate!(input[:revocation_configuration], context: "#{context}[:revocation_configuration]") unless input[:revocation_configuration].nil?
        Hearth::Validator.validate!(input[:restorable_until], ::Time, context: "#{context}[:restorable_until]")
        Hearth::Validator.validate!(input[:key_storage_security_standard], ::String, context: "#{context}[:key_storage_security_standard]")
      end
    end

    class CertificateAuthorityConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CertificateAuthorityConfiguration, context: context)
        Hearth::Validator.validate!(input[:key_algorithm], ::String, context: "#{context}[:key_algorithm]")
        Hearth::Validator.validate!(input[:signing_algorithm], ::String, context: "#{context}[:signing_algorithm]")
        Validators::ASN1Subject.validate!(input[:subject], context: "#{context}[:subject]") unless input[:subject].nil?
        Validators::CsrExtensions.validate!(input[:csr_extensions], context: "#{context}[:csr_extensions]") unless input[:csr_extensions].nil?
      end
    end

    class CertificateMismatchException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CertificateMismatchException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CertificatePolicyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PolicyInformation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConcurrentModificationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConcurrentModificationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CreateCertificateAuthorityAuditReportInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCertificateAuthorityAuditReportInput, context: context)
        Hearth::Validator.validate!(input[:certificate_authority_arn], ::String, context: "#{context}[:certificate_authority_arn]")
        Hearth::Validator.validate!(input[:s3_bucket_name], ::String, context: "#{context}[:s3_bucket_name]")
        Hearth::Validator.validate!(input[:audit_report_response_format], ::String, context: "#{context}[:audit_report_response_format]")
      end
    end

    class CreateCertificateAuthorityAuditReportOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCertificateAuthorityAuditReportOutput, context: context)
        Hearth::Validator.validate!(input[:audit_report_id], ::String, context: "#{context}[:audit_report_id]")
        Hearth::Validator.validate!(input[:s3_key], ::String, context: "#{context}[:s3_key]")
      end
    end

    class CreateCertificateAuthorityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCertificateAuthorityInput, context: context)
        Validators::CertificateAuthorityConfiguration.validate!(input[:certificate_authority_configuration], context: "#{context}[:certificate_authority_configuration]") unless input[:certificate_authority_configuration].nil?
        Validators::RevocationConfiguration.validate!(input[:revocation_configuration], context: "#{context}[:revocation_configuration]") unless input[:revocation_configuration].nil?
        Hearth::Validator.validate!(input[:certificate_authority_type], ::String, context: "#{context}[:certificate_authority_type]")
        Hearth::Validator.validate!(input[:idempotency_token], ::String, context: "#{context}[:idempotency_token]")
        Hearth::Validator.validate!(input[:key_storage_security_standard], ::String, context: "#{context}[:key_storage_security_standard]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateCertificateAuthorityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCertificateAuthorityOutput, context: context)
        Hearth::Validator.validate!(input[:certificate_authority_arn], ::String, context: "#{context}[:certificate_authority_arn]")
      end
    end

    class CreatePermissionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePermissionInput, context: context)
        Hearth::Validator.validate!(input[:certificate_authority_arn], ::String, context: "#{context}[:certificate_authority_arn]")
        Hearth::Validator.validate!(input[:principal], ::String, context: "#{context}[:principal]")
        Hearth::Validator.validate!(input[:source_account], ::String, context: "#{context}[:source_account]")
        Validators::ActionList.validate!(input[:actions], context: "#{context}[:actions]") unless input[:actions].nil?
      end
    end

    class CreatePermissionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePermissionOutput, context: context)
      end
    end

    class CrlConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CrlConfiguration, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:expiration_in_days], ::Integer, context: "#{context}[:expiration_in_days]")
        Hearth::Validator.validate!(input[:custom_cname], ::String, context: "#{context}[:custom_cname]")
        Hearth::Validator.validate!(input[:s3_bucket_name], ::String, context: "#{context}[:s3_bucket_name]")
        Hearth::Validator.validate!(input[:s3_object_acl], ::String, context: "#{context}[:s3_object_acl]")
      end
    end

    class CsrExtensions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CsrExtensions, context: context)
        Validators::KeyUsage.validate!(input[:key_usage], context: "#{context}[:key_usage]") unless input[:key_usage].nil?
        Validators::AccessDescriptionList.validate!(input[:subject_information_access], context: "#{context}[:subject_information_access]") unless input[:subject_information_access].nil?
      end
    end

    class CustomAttribute
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomAttribute, context: context)
        Hearth::Validator.validate!(input[:object_identifier], ::String, context: "#{context}[:object_identifier]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class CustomAttributeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::CustomAttribute.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CustomExtension
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomExtension, context: context)
        Hearth::Validator.validate!(input[:object_identifier], ::String, context: "#{context}[:object_identifier]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:critical], ::TrueClass, ::FalseClass, context: "#{context}[:critical]")
      end
    end

    class CustomExtensionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::CustomExtension.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeleteCertificateAuthorityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCertificateAuthorityInput, context: context)
        Hearth::Validator.validate!(input[:certificate_authority_arn], ::String, context: "#{context}[:certificate_authority_arn]")
        Hearth::Validator.validate!(input[:permanent_deletion_time_in_days], ::Integer, context: "#{context}[:permanent_deletion_time_in_days]")
      end
    end

    class DeleteCertificateAuthorityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCertificateAuthorityOutput, context: context)
      end
    end

    class DeletePermissionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePermissionInput, context: context)
        Hearth::Validator.validate!(input[:certificate_authority_arn], ::String, context: "#{context}[:certificate_authority_arn]")
        Hearth::Validator.validate!(input[:principal], ::String, context: "#{context}[:principal]")
        Hearth::Validator.validate!(input[:source_account], ::String, context: "#{context}[:source_account]")
      end
    end

    class DeletePermissionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePermissionOutput, context: context)
      end
    end

    class DeletePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePolicyInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class DeletePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePolicyOutput, context: context)
      end
    end

    class DescribeCertificateAuthorityAuditReportInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCertificateAuthorityAuditReportInput, context: context)
        Hearth::Validator.validate!(input[:certificate_authority_arn], ::String, context: "#{context}[:certificate_authority_arn]")
        Hearth::Validator.validate!(input[:audit_report_id], ::String, context: "#{context}[:audit_report_id]")
      end
    end

    class DescribeCertificateAuthorityAuditReportOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCertificateAuthorityAuditReportOutput, context: context)
        Hearth::Validator.validate!(input[:audit_report_status], ::String, context: "#{context}[:audit_report_status]")
        Hearth::Validator.validate!(input[:s3_bucket_name], ::String, context: "#{context}[:s3_bucket_name]")
        Hearth::Validator.validate!(input[:s3_key], ::String, context: "#{context}[:s3_key]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
      end
    end

    class DescribeCertificateAuthorityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCertificateAuthorityInput, context: context)
        Hearth::Validator.validate!(input[:certificate_authority_arn], ::String, context: "#{context}[:certificate_authority_arn]")
      end
    end

    class DescribeCertificateAuthorityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCertificateAuthorityOutput, context: context)
        Validators::CertificateAuthority.validate!(input[:certificate_authority], context: "#{context}[:certificate_authority]") unless input[:certificate_authority].nil?
      end
    end

    class EdiPartyName
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EdiPartyName, context: context)
        Hearth::Validator.validate!(input[:party_name], ::String, context: "#{context}[:party_name]")
        Hearth::Validator.validate!(input[:name_assigner], ::String, context: "#{context}[:name_assigner]")
      end
    end

    class ExtendedKeyUsage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExtendedKeyUsage, context: context)
        Hearth::Validator.validate!(input[:extended_key_usage_type], ::String, context: "#{context}[:extended_key_usage_type]")
        Hearth::Validator.validate!(input[:extended_key_usage_object_identifier], ::String, context: "#{context}[:extended_key_usage_object_identifier]")
      end
    end

    class ExtendedKeyUsageList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ExtendedKeyUsage.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Extensions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Extensions, context: context)
        Validators::CertificatePolicyList.validate!(input[:certificate_policies], context: "#{context}[:certificate_policies]") unless input[:certificate_policies].nil?
        Validators::ExtendedKeyUsageList.validate!(input[:extended_key_usage], context: "#{context}[:extended_key_usage]") unless input[:extended_key_usage].nil?
        Validators::KeyUsage.validate!(input[:key_usage], context: "#{context}[:key_usage]") unless input[:key_usage].nil?
        Validators::GeneralNameList.validate!(input[:subject_alternative_names], context: "#{context}[:subject_alternative_names]") unless input[:subject_alternative_names].nil?
        Validators::CustomExtensionList.validate!(input[:custom_extensions], context: "#{context}[:custom_extensions]") unless input[:custom_extensions].nil?
      end
    end

    class GeneralName
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GeneralName, context: context)
        Validators::OtherName.validate!(input[:other_name], context: "#{context}[:other_name]") unless input[:other_name].nil?
        Hearth::Validator.validate!(input[:rfc822_name], ::String, context: "#{context}[:rfc822_name]")
        Hearth::Validator.validate!(input[:dns_name], ::String, context: "#{context}[:dns_name]")
        Validators::ASN1Subject.validate!(input[:directory_name], context: "#{context}[:directory_name]") unless input[:directory_name].nil?
        Validators::EdiPartyName.validate!(input[:edi_party_name], context: "#{context}[:edi_party_name]") unless input[:edi_party_name].nil?
        Hearth::Validator.validate!(input[:uniform_resource_identifier], ::String, context: "#{context}[:uniform_resource_identifier]")
        Hearth::Validator.validate!(input[:ip_address], ::String, context: "#{context}[:ip_address]")
        Hearth::Validator.validate!(input[:registered_id], ::String, context: "#{context}[:registered_id]")
      end
    end

    class GeneralNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::GeneralName.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GetCertificateAuthorityCertificateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCertificateAuthorityCertificateInput, context: context)
        Hearth::Validator.validate!(input[:certificate_authority_arn], ::String, context: "#{context}[:certificate_authority_arn]")
      end
    end

    class GetCertificateAuthorityCertificateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCertificateAuthorityCertificateOutput, context: context)
        Hearth::Validator.validate!(input[:certificate], ::String, context: "#{context}[:certificate]")
        Hearth::Validator.validate!(input[:certificate_chain], ::String, context: "#{context}[:certificate_chain]")
      end
    end

    class GetCertificateAuthorityCsrInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCertificateAuthorityCsrInput, context: context)
        Hearth::Validator.validate!(input[:certificate_authority_arn], ::String, context: "#{context}[:certificate_authority_arn]")
      end
    end

    class GetCertificateAuthorityCsrOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCertificateAuthorityCsrOutput, context: context)
        Hearth::Validator.validate!(input[:csr], ::String, context: "#{context}[:csr]")
      end
    end

    class GetCertificateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCertificateInput, context: context)
        Hearth::Validator.validate!(input[:certificate_authority_arn], ::String, context: "#{context}[:certificate_authority_arn]")
        Hearth::Validator.validate!(input[:certificate_arn], ::String, context: "#{context}[:certificate_arn]")
      end
    end

    class GetCertificateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCertificateOutput, context: context)
        Hearth::Validator.validate!(input[:certificate], ::String, context: "#{context}[:certificate]")
        Hearth::Validator.validate!(input[:certificate_chain], ::String, context: "#{context}[:certificate_chain]")
      end
    end

    class GetPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPolicyInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class GetPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPolicyOutput, context: context)
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
      end
    end

    class ImportCertificateAuthorityCertificateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportCertificateAuthorityCertificateInput, context: context)
        Hearth::Validator.validate!(input[:certificate_authority_arn], ::String, context: "#{context}[:certificate_authority_arn]")
        Hearth::Validator.validate!(input[:certificate], ::String, context: "#{context}[:certificate]")
        Hearth::Validator.validate!(input[:certificate_chain], ::String, context: "#{context}[:certificate_chain]")
      end
    end

    class ImportCertificateAuthorityCertificateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportCertificateAuthorityCertificateOutput, context: context)
      end
    end

    class InvalidArgsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidArgsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidArnException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidArnException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidNextTokenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidNextTokenException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidPolicyException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidPolicyException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidStateException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidStateException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidTagException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidTagException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class IssueCertificateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IssueCertificateInput, context: context)
        Validators::ApiPassthrough.validate!(input[:api_passthrough], context: "#{context}[:api_passthrough]") unless input[:api_passthrough].nil?
        Hearth::Validator.validate!(input[:certificate_authority_arn], ::String, context: "#{context}[:certificate_authority_arn]")
        Hearth::Validator.validate!(input[:csr], ::String, context: "#{context}[:csr]")
        Hearth::Validator.validate!(input[:signing_algorithm], ::String, context: "#{context}[:signing_algorithm]")
        Hearth::Validator.validate!(input[:template_arn], ::String, context: "#{context}[:template_arn]")
        Validators::Validity.validate!(input[:validity], context: "#{context}[:validity]") unless input[:validity].nil?
        Validators::Validity.validate!(input[:validity_not_before], context: "#{context}[:validity_not_before]") unless input[:validity_not_before].nil?
        Hearth::Validator.validate!(input[:idempotency_token], ::String, context: "#{context}[:idempotency_token]")
      end
    end

    class IssueCertificateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IssueCertificateOutput, context: context)
        Hearth::Validator.validate!(input[:certificate_arn], ::String, context: "#{context}[:certificate_arn]")
      end
    end

    class KeyUsage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KeyUsage, context: context)
        Hearth::Validator.validate!(input[:digital_signature], ::TrueClass, ::FalseClass, context: "#{context}[:digital_signature]")
        Hearth::Validator.validate!(input[:non_repudiation], ::TrueClass, ::FalseClass, context: "#{context}[:non_repudiation]")
        Hearth::Validator.validate!(input[:key_encipherment], ::TrueClass, ::FalseClass, context: "#{context}[:key_encipherment]")
        Hearth::Validator.validate!(input[:data_encipherment], ::TrueClass, ::FalseClass, context: "#{context}[:data_encipherment]")
        Hearth::Validator.validate!(input[:key_agreement], ::TrueClass, ::FalseClass, context: "#{context}[:key_agreement]")
        Hearth::Validator.validate!(input[:key_cert_sign], ::TrueClass, ::FalseClass, context: "#{context}[:key_cert_sign]")
        Hearth::Validator.validate!(input[:crl_sign], ::TrueClass, ::FalseClass, context: "#{context}[:crl_sign]")
        Hearth::Validator.validate!(input[:encipher_only], ::TrueClass, ::FalseClass, context: "#{context}[:encipher_only]")
        Hearth::Validator.validate!(input[:decipher_only], ::TrueClass, ::FalseClass, context: "#{context}[:decipher_only]")
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListCertificateAuthoritiesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCertificateAuthoritiesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:resource_owner], ::String, context: "#{context}[:resource_owner]")
      end
    end

    class ListCertificateAuthoritiesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCertificateAuthoritiesOutput, context: context)
        Validators::CertificateAuthorities.validate!(input[:certificate_authorities], context: "#{context}[:certificate_authorities]") unless input[:certificate_authorities].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPermissionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPermissionsInput, context: context)
        Hearth::Validator.validate!(input[:certificate_authority_arn], ::String, context: "#{context}[:certificate_authority_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListPermissionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPermissionsOutput, context: context)
        Validators::PermissionList.validate!(input[:permissions], context: "#{context}[:permissions]") unless input[:permissions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsInput, context: context)
        Hearth::Validator.validate!(input[:certificate_authority_arn], ::String, context: "#{context}[:certificate_authority_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsOutput, context: context)
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class LockoutPreventedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LockoutPreventedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class MalformedCSRException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MalformedCSRException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class MalformedCertificateException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MalformedCertificateException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OcspConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OcspConfiguration, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:ocsp_custom_cname], ::String, context: "#{context}[:ocsp_custom_cname]")
      end
    end

    class OtherName
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OtherName, context: context)
        Hearth::Validator.validate!(input[:type_id], ::String, context: "#{context}[:type_id]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class Permission
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Permission, context: context)
        Hearth::Validator.validate!(input[:certificate_authority_arn], ::String, context: "#{context}[:certificate_authority_arn]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:principal], ::String, context: "#{context}[:principal]")
        Hearth::Validator.validate!(input[:source_account], ::String, context: "#{context}[:source_account]")
        Validators::ActionList.validate!(input[:actions], context: "#{context}[:actions]") unless input[:actions].nil?
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
      end
    end

    class PermissionAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PermissionAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PermissionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Permission.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PolicyInformation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PolicyInformation, context: context)
        Hearth::Validator.validate!(input[:cert_policy_id], ::String, context: "#{context}[:cert_policy_id]")
        Validators::PolicyQualifierInfoList.validate!(input[:policy_qualifiers], context: "#{context}[:policy_qualifiers]") unless input[:policy_qualifiers].nil?
      end
    end

    class PolicyQualifierInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PolicyQualifierInfo, context: context)
        Hearth::Validator.validate!(input[:policy_qualifier_id], ::String, context: "#{context}[:policy_qualifier_id]")
        Validators::Qualifier.validate!(input[:qualifier], context: "#{context}[:qualifier]") unless input[:qualifier].nil?
      end
    end

    class PolicyQualifierInfoList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PolicyQualifierInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PutPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutPolicyInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
      end
    end

    class PutPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutPolicyOutput, context: context)
      end
    end

    class Qualifier
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Qualifier, context: context)
        Hearth::Validator.validate!(input[:cps_uri], ::String, context: "#{context}[:cps_uri]")
      end
    end

    class RequestAlreadyProcessedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RequestAlreadyProcessedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RequestFailedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RequestFailedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RequestInProgressException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RequestInProgressException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RestoreCertificateAuthorityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestoreCertificateAuthorityInput, context: context)
        Hearth::Validator.validate!(input[:certificate_authority_arn], ::String, context: "#{context}[:certificate_authority_arn]")
      end
    end

    class RestoreCertificateAuthorityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestoreCertificateAuthorityOutput, context: context)
      end
    end

    class RevocationConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RevocationConfiguration, context: context)
        Validators::CrlConfiguration.validate!(input[:crl_configuration], context: "#{context}[:crl_configuration]") unless input[:crl_configuration].nil?
        Validators::OcspConfiguration.validate!(input[:ocsp_configuration], context: "#{context}[:ocsp_configuration]") unless input[:ocsp_configuration].nil?
      end
    end

    class RevokeCertificateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RevokeCertificateInput, context: context)
        Hearth::Validator.validate!(input[:certificate_authority_arn], ::String, context: "#{context}[:certificate_authority_arn]")
        Hearth::Validator.validate!(input[:certificate_serial], ::String, context: "#{context}[:certificate_serial]")
        Hearth::Validator.validate!(input[:revocation_reason], ::String, context: "#{context}[:revocation_reason]")
      end
    end

    class RevokeCertificateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RevokeCertificateOutput, context: context)
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagCertificateAuthorityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagCertificateAuthorityInput, context: context)
        Hearth::Validator.validate!(input[:certificate_authority_arn], ::String, context: "#{context}[:certificate_authority_arn]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagCertificateAuthorityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagCertificateAuthorityOutput, context: context)
      end
    end

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TooManyTagsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyTagsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UntagCertificateAuthorityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagCertificateAuthorityInput, context: context)
        Hearth::Validator.validate!(input[:certificate_authority_arn], ::String, context: "#{context}[:certificate_authority_arn]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class UntagCertificateAuthorityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagCertificateAuthorityOutput, context: context)
      end
    end

    class UpdateCertificateAuthorityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateCertificateAuthorityInput, context: context)
        Hearth::Validator.validate!(input[:certificate_authority_arn], ::String, context: "#{context}[:certificate_authority_arn]")
        Validators::RevocationConfiguration.validate!(input[:revocation_configuration], context: "#{context}[:revocation_configuration]") unless input[:revocation_configuration].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class UpdateCertificateAuthorityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateCertificateAuthorityOutput, context: context)
      end
    end

    class Validity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Validity, context: context)
        Hearth::Validator.validate!(input[:value], ::Integer, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

  end
end
