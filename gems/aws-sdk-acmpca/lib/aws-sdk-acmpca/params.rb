# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ACMPCA
  module Params

    module ASN1Subject
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ASN1Subject, context: context)
        type = Types::ASN1Subject.new
        type.country = params[:country]
        type.organization = params[:organization]
        type.organizational_unit = params[:organizational_unit]
        type.distinguished_name_qualifier = params[:distinguished_name_qualifier]
        type.state = params[:state]
        type.common_name = params[:common_name]
        type.serial_number = params[:serial_number]
        type.locality = params[:locality]
        type.title = params[:title]
        type.surname = params[:surname]
        type.given_name = params[:given_name]
        type.initials = params[:initials]
        type.pseudonym = params[:pseudonym]
        type.generation_qualifier = params[:generation_qualifier]
        type.custom_attributes = CustomAttributeList.build(params[:custom_attributes], context: "#{context}[:custom_attributes]") unless params[:custom_attributes].nil?
        type
      end
    end

    module AccessDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDescription, context: context)
        type = Types::AccessDescription.new
        type.access_method = AccessMethod.build(params[:access_method], context: "#{context}[:access_method]") unless params[:access_method].nil?
        type.access_location = GeneralName.build(params[:access_location], context: "#{context}[:access_location]") unless params[:access_location].nil?
        type
      end
    end

    module AccessDescriptionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AccessDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AccessMethod
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessMethod, context: context)
        type = Types::AccessMethod.new
        type.custom_object_identifier = params[:custom_object_identifier]
        type.access_method_type = params[:access_method_type]
        type
      end
    end

    module ActionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ApiPassthrough
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApiPassthrough, context: context)
        type = Types::ApiPassthrough.new
        type.extensions = Extensions.build(params[:extensions], context: "#{context}[:extensions]") unless params[:extensions].nil?
        type.subject = ASN1Subject.build(params[:subject], context: "#{context}[:subject]") unless params[:subject].nil?
        type
      end
    end

    module CertificateAuthorities
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CertificateAuthority.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CertificateAuthority
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CertificateAuthority, context: context)
        type = Types::CertificateAuthority.new
        type.arn = params[:arn]
        type.owner_account = params[:owner_account]
        type.created_at = params[:created_at]
        type.last_state_change_at = params[:last_state_change_at]
        type.type = params[:type]
        type.serial = params[:serial]
        type.status = params[:status]
        type.not_before = params[:not_before]
        type.not_after = params[:not_after]
        type.failure_reason = params[:failure_reason]
        type.certificate_authority_configuration = CertificateAuthorityConfiguration.build(params[:certificate_authority_configuration], context: "#{context}[:certificate_authority_configuration]") unless params[:certificate_authority_configuration].nil?
        type.revocation_configuration = RevocationConfiguration.build(params[:revocation_configuration], context: "#{context}[:revocation_configuration]") unless params[:revocation_configuration].nil?
        type.restorable_until = params[:restorable_until]
        type.key_storage_security_standard = params[:key_storage_security_standard]
        type
      end
    end

    module CertificateAuthorityConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CertificateAuthorityConfiguration, context: context)
        type = Types::CertificateAuthorityConfiguration.new
        type.key_algorithm = params[:key_algorithm]
        type.signing_algorithm = params[:signing_algorithm]
        type.subject = ASN1Subject.build(params[:subject], context: "#{context}[:subject]") unless params[:subject].nil?
        type.csr_extensions = CsrExtensions.build(params[:csr_extensions], context: "#{context}[:csr_extensions]") unless params[:csr_extensions].nil?
        type
      end
    end

    module CertificateMismatchException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CertificateMismatchException, context: context)
        type = Types::CertificateMismatchException.new
        type.message = params[:message]
        type
      end
    end

    module CertificatePolicyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PolicyInformation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConcurrentModificationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConcurrentModificationException, context: context)
        type = Types::ConcurrentModificationException.new
        type.message = params[:message]
        type
      end
    end

    module CreateCertificateAuthorityAuditReportInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCertificateAuthorityAuditReportInput, context: context)
        type = Types::CreateCertificateAuthorityAuditReportInput.new
        type.certificate_authority_arn = params[:certificate_authority_arn]
        type.s3_bucket_name = params[:s3_bucket_name]
        type.audit_report_response_format = params[:audit_report_response_format]
        type
      end
    end

    module CreateCertificateAuthorityAuditReportOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCertificateAuthorityAuditReportOutput, context: context)
        type = Types::CreateCertificateAuthorityAuditReportOutput.new
        type.audit_report_id = params[:audit_report_id]
        type.s3_key = params[:s3_key]
        type
      end
    end

    module CreateCertificateAuthorityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCertificateAuthorityInput, context: context)
        type = Types::CreateCertificateAuthorityInput.new
        type.certificate_authority_configuration = CertificateAuthorityConfiguration.build(params[:certificate_authority_configuration], context: "#{context}[:certificate_authority_configuration]") unless params[:certificate_authority_configuration].nil?
        type.revocation_configuration = RevocationConfiguration.build(params[:revocation_configuration], context: "#{context}[:revocation_configuration]") unless params[:revocation_configuration].nil?
        type.certificate_authority_type = params[:certificate_authority_type]
        type.idempotency_token = params[:idempotency_token]
        type.key_storage_security_standard = params[:key_storage_security_standard]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateCertificateAuthorityOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCertificateAuthorityOutput, context: context)
        type = Types::CreateCertificateAuthorityOutput.new
        type.certificate_authority_arn = params[:certificate_authority_arn]
        type
      end
    end

    module CreatePermissionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePermissionInput, context: context)
        type = Types::CreatePermissionInput.new
        type.certificate_authority_arn = params[:certificate_authority_arn]
        type.principal = params[:principal]
        type.source_account = params[:source_account]
        type.actions = ActionList.build(params[:actions], context: "#{context}[:actions]") unless params[:actions].nil?
        type
      end
    end

    module CreatePermissionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePermissionOutput, context: context)
        type = Types::CreatePermissionOutput.new
        type
      end
    end

    module CrlConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CrlConfiguration, context: context)
        type = Types::CrlConfiguration.new
        type.enabled = params[:enabled]
        type.expiration_in_days = params[:expiration_in_days]
        type.custom_cname = params[:custom_cname]
        type.s3_bucket_name = params[:s3_bucket_name]
        type.s3_object_acl = params[:s3_object_acl]
        type
      end
    end

    module CsrExtensions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CsrExtensions, context: context)
        type = Types::CsrExtensions.new
        type.key_usage = KeyUsage.build(params[:key_usage], context: "#{context}[:key_usage]") unless params[:key_usage].nil?
        type.subject_information_access = AccessDescriptionList.build(params[:subject_information_access], context: "#{context}[:subject_information_access]") unless params[:subject_information_access].nil?
        type
      end
    end

    module CustomAttribute
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomAttribute, context: context)
        type = Types::CustomAttribute.new
        type.object_identifier = params[:object_identifier]
        type.value = params[:value]
        type
      end
    end

    module CustomAttributeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CustomAttribute.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CustomExtension
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomExtension, context: context)
        type = Types::CustomExtension.new
        type.object_identifier = params[:object_identifier]
        type.value = params[:value]
        type.critical = params[:critical]
        type
      end
    end

    module CustomExtensionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CustomExtension.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeleteCertificateAuthorityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCertificateAuthorityInput, context: context)
        type = Types::DeleteCertificateAuthorityInput.new
        type.certificate_authority_arn = params[:certificate_authority_arn]
        type.permanent_deletion_time_in_days = params[:permanent_deletion_time_in_days]
        type
      end
    end

    module DeleteCertificateAuthorityOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCertificateAuthorityOutput, context: context)
        type = Types::DeleteCertificateAuthorityOutput.new
        type
      end
    end

    module DeletePermissionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePermissionInput, context: context)
        type = Types::DeletePermissionInput.new
        type.certificate_authority_arn = params[:certificate_authority_arn]
        type.principal = params[:principal]
        type.source_account = params[:source_account]
        type
      end
    end

    module DeletePermissionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePermissionOutput, context: context)
        type = Types::DeletePermissionOutput.new
        type
      end
    end

    module DeletePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePolicyInput, context: context)
        type = Types::DeletePolicyInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module DeletePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePolicyOutput, context: context)
        type = Types::DeletePolicyOutput.new
        type
      end
    end

    module DescribeCertificateAuthorityAuditReportInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCertificateAuthorityAuditReportInput, context: context)
        type = Types::DescribeCertificateAuthorityAuditReportInput.new
        type.certificate_authority_arn = params[:certificate_authority_arn]
        type.audit_report_id = params[:audit_report_id]
        type
      end
    end

    module DescribeCertificateAuthorityAuditReportOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCertificateAuthorityAuditReportOutput, context: context)
        type = Types::DescribeCertificateAuthorityAuditReportOutput.new
        type.audit_report_status = params[:audit_report_status]
        type.s3_bucket_name = params[:s3_bucket_name]
        type.s3_key = params[:s3_key]
        type.created_at = params[:created_at]
        type
      end
    end

    module DescribeCertificateAuthorityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCertificateAuthorityInput, context: context)
        type = Types::DescribeCertificateAuthorityInput.new
        type.certificate_authority_arn = params[:certificate_authority_arn]
        type
      end
    end

    module DescribeCertificateAuthorityOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCertificateAuthorityOutput, context: context)
        type = Types::DescribeCertificateAuthorityOutput.new
        type.certificate_authority = CertificateAuthority.build(params[:certificate_authority], context: "#{context}[:certificate_authority]") unless params[:certificate_authority].nil?
        type
      end
    end

    module EdiPartyName
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EdiPartyName, context: context)
        type = Types::EdiPartyName.new
        type.party_name = params[:party_name]
        type.name_assigner = params[:name_assigner]
        type
      end
    end

    module ExtendedKeyUsage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExtendedKeyUsage, context: context)
        type = Types::ExtendedKeyUsage.new
        type.extended_key_usage_type = params[:extended_key_usage_type]
        type.extended_key_usage_object_identifier = params[:extended_key_usage_object_identifier]
        type
      end
    end

    module ExtendedKeyUsageList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ExtendedKeyUsage.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Extensions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Extensions, context: context)
        type = Types::Extensions.new
        type.certificate_policies = CertificatePolicyList.build(params[:certificate_policies], context: "#{context}[:certificate_policies]") unless params[:certificate_policies].nil?
        type.extended_key_usage = ExtendedKeyUsageList.build(params[:extended_key_usage], context: "#{context}[:extended_key_usage]") unless params[:extended_key_usage].nil?
        type.key_usage = KeyUsage.build(params[:key_usage], context: "#{context}[:key_usage]") unless params[:key_usage].nil?
        type.subject_alternative_names = GeneralNameList.build(params[:subject_alternative_names], context: "#{context}[:subject_alternative_names]") unless params[:subject_alternative_names].nil?
        type.custom_extensions = CustomExtensionList.build(params[:custom_extensions], context: "#{context}[:custom_extensions]") unless params[:custom_extensions].nil?
        type
      end
    end

    module GeneralName
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GeneralName, context: context)
        type = Types::GeneralName.new
        type.other_name = OtherName.build(params[:other_name], context: "#{context}[:other_name]") unless params[:other_name].nil?
        type.rfc822_name = params[:rfc822_name]
        type.dns_name = params[:dns_name]
        type.directory_name = ASN1Subject.build(params[:directory_name], context: "#{context}[:directory_name]") unless params[:directory_name].nil?
        type.edi_party_name = EdiPartyName.build(params[:edi_party_name], context: "#{context}[:edi_party_name]") unless params[:edi_party_name].nil?
        type.uniform_resource_identifier = params[:uniform_resource_identifier]
        type.ip_address = params[:ip_address]
        type.registered_id = params[:registered_id]
        type
      end
    end

    module GeneralNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GeneralName.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GetCertificateAuthorityCertificateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCertificateAuthorityCertificateInput, context: context)
        type = Types::GetCertificateAuthorityCertificateInput.new
        type.certificate_authority_arn = params[:certificate_authority_arn]
        type
      end
    end

    module GetCertificateAuthorityCertificateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCertificateAuthorityCertificateOutput, context: context)
        type = Types::GetCertificateAuthorityCertificateOutput.new
        type.certificate = params[:certificate]
        type.certificate_chain = params[:certificate_chain]
        type
      end
    end

    module GetCertificateAuthorityCsrInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCertificateAuthorityCsrInput, context: context)
        type = Types::GetCertificateAuthorityCsrInput.new
        type.certificate_authority_arn = params[:certificate_authority_arn]
        type
      end
    end

    module GetCertificateAuthorityCsrOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCertificateAuthorityCsrOutput, context: context)
        type = Types::GetCertificateAuthorityCsrOutput.new
        type.csr = params[:csr]
        type
      end
    end

    module GetCertificateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCertificateInput, context: context)
        type = Types::GetCertificateInput.new
        type.certificate_authority_arn = params[:certificate_authority_arn]
        type.certificate_arn = params[:certificate_arn]
        type
      end
    end

    module GetCertificateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCertificateOutput, context: context)
        type = Types::GetCertificateOutput.new
        type.certificate = params[:certificate]
        type.certificate_chain = params[:certificate_chain]
        type
      end
    end

    module GetPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPolicyInput, context: context)
        type = Types::GetPolicyInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module GetPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPolicyOutput, context: context)
        type = Types::GetPolicyOutput.new
        type.policy = params[:policy]
        type
      end
    end

    module ImportCertificateAuthorityCertificateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportCertificateAuthorityCertificateInput, context: context)
        type = Types::ImportCertificateAuthorityCertificateInput.new
        type.certificate_authority_arn = params[:certificate_authority_arn]
        type.certificate = params[:certificate]
        type.certificate_chain = params[:certificate_chain]
        type
      end
    end

    module ImportCertificateAuthorityCertificateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportCertificateAuthorityCertificateOutput, context: context)
        type = Types::ImportCertificateAuthorityCertificateOutput.new
        type
      end
    end

    module InvalidArgsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidArgsException, context: context)
        type = Types::InvalidArgsException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidArnException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidArnException, context: context)
        type = Types::InvalidArnException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidNextTokenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidNextTokenException, context: context)
        type = Types::InvalidNextTokenException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidPolicyException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidPolicyException, context: context)
        type = Types::InvalidPolicyException.new
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

    module InvalidStateException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidStateException, context: context)
        type = Types::InvalidStateException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidTagException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidTagException, context: context)
        type = Types::InvalidTagException.new
        type.message = params[:message]
        type
      end
    end

    module IssueCertificateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IssueCertificateInput, context: context)
        type = Types::IssueCertificateInput.new
        type.api_passthrough = ApiPassthrough.build(params[:api_passthrough], context: "#{context}[:api_passthrough]") unless params[:api_passthrough].nil?
        type.certificate_authority_arn = params[:certificate_authority_arn]
        type.csr = params[:csr]
        type.signing_algorithm = params[:signing_algorithm]
        type.template_arn = params[:template_arn]
        type.validity = Validity.build(params[:validity], context: "#{context}[:validity]") unless params[:validity].nil?
        type.validity_not_before = Validity.build(params[:validity_not_before], context: "#{context}[:validity_not_before]") unless params[:validity_not_before].nil?
        type.idempotency_token = params[:idempotency_token]
        type
      end
    end

    module IssueCertificateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IssueCertificateOutput, context: context)
        type = Types::IssueCertificateOutput.new
        type.certificate_arn = params[:certificate_arn]
        type
      end
    end

    module KeyUsage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KeyUsage, context: context)
        type = Types::KeyUsage.new
        type.digital_signature = params[:digital_signature]
        type.non_repudiation = params[:non_repudiation]
        type.key_encipherment = params[:key_encipherment]
        type.data_encipherment = params[:data_encipherment]
        type.key_agreement = params[:key_agreement]
        type.key_cert_sign = params[:key_cert_sign]
        type.crl_sign = params[:crl_sign]
        type.encipher_only = params[:encipher_only]
        type.decipher_only = params[:decipher_only]
        type
      end
    end

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ListCertificateAuthoritiesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCertificateAuthoritiesInput, context: context)
        type = Types::ListCertificateAuthoritiesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.resource_owner = params[:resource_owner]
        type
      end
    end

    module ListCertificateAuthoritiesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCertificateAuthoritiesOutput, context: context)
        type = Types::ListCertificateAuthoritiesOutput.new
        type.certificate_authorities = CertificateAuthorities.build(params[:certificate_authorities], context: "#{context}[:certificate_authorities]") unless params[:certificate_authorities].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPermissionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPermissionsInput, context: context)
        type = Types::ListPermissionsInput.new
        type.certificate_authority_arn = params[:certificate_authority_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListPermissionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPermissionsOutput, context: context)
        type = Types::ListPermissionsOutput.new
        type.permissions = PermissionList.build(params[:permissions], context: "#{context}[:permissions]") unless params[:permissions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsInput, context: context)
        type = Types::ListTagsInput.new
        type.certificate_authority_arn = params[:certificate_authority_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsOutput, context: context)
        type = Types::ListTagsOutput.new
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module LockoutPreventedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LockoutPreventedException, context: context)
        type = Types::LockoutPreventedException.new
        type.message = params[:message]
        type
      end
    end

    module MalformedCSRException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MalformedCSRException, context: context)
        type = Types::MalformedCSRException.new
        type.message = params[:message]
        type
      end
    end

    module MalformedCertificateException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MalformedCertificateException, context: context)
        type = Types::MalformedCertificateException.new
        type.message = params[:message]
        type
      end
    end

    module OcspConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OcspConfiguration, context: context)
        type = Types::OcspConfiguration.new
        type.enabled = params[:enabled]
        type.ocsp_custom_cname = params[:ocsp_custom_cname]
        type
      end
    end

    module OtherName
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OtherName, context: context)
        type = Types::OtherName.new
        type.type_id = params[:type_id]
        type.value = params[:value]
        type
      end
    end

    module Permission
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Permission, context: context)
        type = Types::Permission.new
        type.certificate_authority_arn = params[:certificate_authority_arn]
        type.created_at = params[:created_at]
        type.principal = params[:principal]
        type.source_account = params[:source_account]
        type.actions = ActionList.build(params[:actions], context: "#{context}[:actions]") unless params[:actions].nil?
        type.policy = params[:policy]
        type
      end
    end

    module PermissionAlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PermissionAlreadyExistsException, context: context)
        type = Types::PermissionAlreadyExistsException.new
        type.message = params[:message]
        type
      end
    end

    module PermissionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Permission.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PolicyInformation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PolicyInformation, context: context)
        type = Types::PolicyInformation.new
        type.cert_policy_id = params[:cert_policy_id]
        type.policy_qualifiers = PolicyQualifierInfoList.build(params[:policy_qualifiers], context: "#{context}[:policy_qualifiers]") unless params[:policy_qualifiers].nil?
        type
      end
    end

    module PolicyQualifierInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PolicyQualifierInfo, context: context)
        type = Types::PolicyQualifierInfo.new
        type.policy_qualifier_id = params[:policy_qualifier_id]
        type.qualifier = Qualifier.build(params[:qualifier], context: "#{context}[:qualifier]") unless params[:qualifier].nil?
        type
      end
    end

    module PolicyQualifierInfoList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PolicyQualifierInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PutPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutPolicyInput, context: context)
        type = Types::PutPolicyInput.new
        type.resource_arn = params[:resource_arn]
        type.policy = params[:policy]
        type
      end
    end

    module PutPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutPolicyOutput, context: context)
        type = Types::PutPolicyOutput.new
        type
      end
    end

    module Qualifier
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Qualifier, context: context)
        type = Types::Qualifier.new
        type.cps_uri = params[:cps_uri]
        type
      end
    end

    module RequestAlreadyProcessedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RequestAlreadyProcessedException, context: context)
        type = Types::RequestAlreadyProcessedException.new
        type.message = params[:message]
        type
      end
    end

    module RequestFailedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RequestFailedException, context: context)
        type = Types::RequestFailedException.new
        type.message = params[:message]
        type
      end
    end

    module RequestInProgressException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RequestInProgressException, context: context)
        type = Types::RequestInProgressException.new
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

    module RestoreCertificateAuthorityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RestoreCertificateAuthorityInput, context: context)
        type = Types::RestoreCertificateAuthorityInput.new
        type.certificate_authority_arn = params[:certificate_authority_arn]
        type
      end
    end

    module RestoreCertificateAuthorityOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RestoreCertificateAuthorityOutput, context: context)
        type = Types::RestoreCertificateAuthorityOutput.new
        type
      end
    end

    module RevocationConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RevocationConfiguration, context: context)
        type = Types::RevocationConfiguration.new
        type.crl_configuration = CrlConfiguration.build(params[:crl_configuration], context: "#{context}[:crl_configuration]") unless params[:crl_configuration].nil?
        type.ocsp_configuration = OcspConfiguration.build(params[:ocsp_configuration], context: "#{context}[:ocsp_configuration]") unless params[:ocsp_configuration].nil?
        type
      end
    end

    module RevokeCertificateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RevokeCertificateInput, context: context)
        type = Types::RevokeCertificateInput.new
        type.certificate_authority_arn = params[:certificate_authority_arn]
        type.certificate_serial = params[:certificate_serial]
        type.revocation_reason = params[:revocation_reason]
        type
      end
    end

    module RevokeCertificateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RevokeCertificateOutput, context: context)
        type = Types::RevokeCertificateOutput.new
        type
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

    module TagCertificateAuthorityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagCertificateAuthorityInput, context: context)
        type = Types::TagCertificateAuthorityInput.new
        type.certificate_authority_arn = params[:certificate_authority_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagCertificateAuthorityOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagCertificateAuthorityOutput, context: context)
        type = Types::TagCertificateAuthorityOutput.new
        type
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

    module TooManyTagsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyTagsException, context: context)
        type = Types::TooManyTagsException.new
        type.message = params[:message]
        type
      end
    end

    module UntagCertificateAuthorityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagCertificateAuthorityInput, context: context)
        type = Types::UntagCertificateAuthorityInput.new
        type.certificate_authority_arn = params[:certificate_authority_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module UntagCertificateAuthorityOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagCertificateAuthorityOutput, context: context)
        type = Types::UntagCertificateAuthorityOutput.new
        type
      end
    end

    module UpdateCertificateAuthorityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateCertificateAuthorityInput, context: context)
        type = Types::UpdateCertificateAuthorityInput.new
        type.certificate_authority_arn = params[:certificate_authority_arn]
        type.revocation_configuration = RevocationConfiguration.build(params[:revocation_configuration], context: "#{context}[:revocation_configuration]") unless params[:revocation_configuration].nil?
        type.status = params[:status]
        type
      end
    end

    module UpdateCertificateAuthorityOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateCertificateAuthorityOutput, context: context)
        type = Types::UpdateCertificateAuthorityOutput.new
        type
      end
    end

    module Validity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Validity, context: context)
        type = Types::Validity.new
        type.value = params[:value]
        type.type = params[:type]
        type
      end
    end

  end
end
