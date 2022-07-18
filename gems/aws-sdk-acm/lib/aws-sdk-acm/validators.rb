# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::ACM
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AddTagsToCertificateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddTagsToCertificateInput, context: context)
        Hearth::Validator.validate!(input[:certificate_arn], ::String, context: "#{context}[:certificate_arn]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class AddTagsToCertificateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddTagsToCertificateOutput, context: context)
      end
    end

    class CertificateDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CertificateDetail, context: context)
        Hearth::Validator.validate!(input[:certificate_arn], ::String, context: "#{context}[:certificate_arn]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        DomainList.validate!(input[:subject_alternative_names], context: "#{context}[:subject_alternative_names]") unless input[:subject_alternative_names].nil?
        DomainValidationList.validate!(input[:domain_validation_options], context: "#{context}[:domain_validation_options]") unless input[:domain_validation_options].nil?
        Hearth::Validator.validate!(input[:serial], ::String, context: "#{context}[:serial]")
        Hearth::Validator.validate!(input[:subject], ::String, context: "#{context}[:subject]")
        Hearth::Validator.validate!(input[:issuer], ::String, context: "#{context}[:issuer]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:issued_at], ::Time, context: "#{context}[:issued_at]")
        Hearth::Validator.validate!(input[:imported_at], ::Time, context: "#{context}[:imported_at]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:revoked_at], ::Time, context: "#{context}[:revoked_at]")
        Hearth::Validator.validate!(input[:revocation_reason], ::String, context: "#{context}[:revocation_reason]")
        Hearth::Validator.validate!(input[:not_before], ::Time, context: "#{context}[:not_before]")
        Hearth::Validator.validate!(input[:not_after], ::Time, context: "#{context}[:not_after]")
        Hearth::Validator.validate!(input[:key_algorithm], ::String, context: "#{context}[:key_algorithm]")
        Hearth::Validator.validate!(input[:signature_algorithm], ::String, context: "#{context}[:signature_algorithm]")
        InUseList.validate!(input[:in_use_by], context: "#{context}[:in_use_by]") unless input[:in_use_by].nil?
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        RenewalSummary.validate!(input[:renewal_summary], context: "#{context}[:renewal_summary]") unless input[:renewal_summary].nil?
        KeyUsageList.validate!(input[:key_usages], context: "#{context}[:key_usages]") unless input[:key_usages].nil?
        ExtendedKeyUsageList.validate!(input[:extended_key_usages], context: "#{context}[:extended_key_usages]") unless input[:extended_key_usages].nil?
        Hearth::Validator.validate!(input[:certificate_authority_arn], ::String, context: "#{context}[:certificate_authority_arn]")
        Hearth::Validator.validate!(input[:renewal_eligibility], ::String, context: "#{context}[:renewal_eligibility]")
        CertificateOptions.validate!(input[:options], context: "#{context}[:options]") unless input[:options].nil?
      end
    end

    class CertificateOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CertificateOptions, context: context)
        Hearth::Validator.validate!(input[:certificate_transparency_logging_preference], ::String, context: "#{context}[:certificate_transparency_logging_preference]")
      end
    end

    class CertificateStatuses
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
        Hearth::Validator.validate!(input[:certificate_arn], ::String, context: "#{context}[:certificate_arn]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
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

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DeleteCertificateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCertificateInput, context: context)
        Hearth::Validator.validate!(input[:certificate_arn], ::String, context: "#{context}[:certificate_arn]")
      end
    end

    class DeleteCertificateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCertificateOutput, context: context)
      end
    end

    class DescribeCertificateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCertificateInput, context: context)
        Hearth::Validator.validate!(input[:certificate_arn], ::String, context: "#{context}[:certificate_arn]")
      end
    end

    class DescribeCertificateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCertificateOutput, context: context)
        CertificateDetail.validate!(input[:certificate], context: "#{context}[:certificate]") unless input[:certificate].nil?
      end
    end

    class DomainList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DomainValidation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DomainValidation, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        ValidationEmailList.validate!(input[:validation_emails], context: "#{context}[:validation_emails]") unless input[:validation_emails].nil?
        Hearth::Validator.validate!(input[:validation_domain], ::String, context: "#{context}[:validation_domain]")
        Hearth::Validator.validate!(input[:validation_status], ::String, context: "#{context}[:validation_status]")
        ResourceRecord.validate!(input[:resource_record], context: "#{context}[:resource_record]") unless input[:resource_record].nil?
        Hearth::Validator.validate!(input[:validation_method], ::String, context: "#{context}[:validation_method]")
      end
    end

    class DomainValidationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DomainValidation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DomainValidationOption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DomainValidationOption, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:validation_domain], ::String, context: "#{context}[:validation_domain]")
      end
    end

    class DomainValidationOptionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DomainValidationOption.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ExpiryEventsConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExpiryEventsConfiguration, context: context)
        Hearth::Validator.validate!(input[:days_before_expiry], ::Integer, context: "#{context}[:days_before_expiry]")
      end
    end

    class ExportCertificateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportCertificateInput, context: context)
        Hearth::Validator.validate!(input[:certificate_arn], ::String, context: "#{context}[:certificate_arn]")
        Hearth::Validator.validate!(input[:passphrase], ::String, context: "#{context}[:passphrase]")
      end
    end

    class ExportCertificateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportCertificateOutput, context: context)
        Hearth::Validator.validate!(input[:certificate], ::String, context: "#{context}[:certificate]")
        Hearth::Validator.validate!(input[:certificate_chain], ::String, context: "#{context}[:certificate_chain]")
        Hearth::Validator.validate!(input[:private_key], ::String, context: "#{context}[:private_key]")
      end
    end

    class ExtendedKeyUsage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExtendedKeyUsage, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:oid], ::String, context: "#{context}[:oid]")
      end
    end

    class ExtendedKeyUsageFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ExtendedKeyUsageList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ExtendedKeyUsage.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Filters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Filters, context: context)
        ExtendedKeyUsageFilterList.validate!(input[:extended_key_usage], context: "#{context}[:extended_key_usage]") unless input[:extended_key_usage].nil?
        KeyUsageFilterList.validate!(input[:key_usage], context: "#{context}[:key_usage]") unless input[:key_usage].nil?
        KeyAlgorithmList.validate!(input[:key_types], context: "#{context}[:key_types]") unless input[:key_types].nil?
      end
    end

    class GetAccountConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAccountConfigurationInput, context: context)
      end
    end

    class GetAccountConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAccountConfigurationOutput, context: context)
        ExpiryEventsConfiguration.validate!(input[:expiry_events], context: "#{context}[:expiry_events]") unless input[:expiry_events].nil?
      end
    end

    class GetCertificateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCertificateInput, context: context)
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

    class ImportCertificateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportCertificateInput, context: context)
        Hearth::Validator.validate!(input[:certificate_arn], ::String, context: "#{context}[:certificate_arn]")
        Hearth::Validator.validate!(input[:certificate], ::String, context: "#{context}[:certificate]")
        Hearth::Validator.validate!(input[:private_key], ::String, context: "#{context}[:private_key]")
        Hearth::Validator.validate!(input[:certificate_chain], ::String, context: "#{context}[:certificate_chain]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ImportCertificateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportCertificateOutput, context: context)
        Hearth::Validator.validate!(input[:certificate_arn], ::String, context: "#{context}[:certificate_arn]")
      end
    end

    class InUseList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
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

    class InvalidDomainValidationOptionsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidDomainValidationOptionsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidParameterException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidParameterException, context: context)
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

    class KeyAlgorithmList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class KeyUsage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KeyUsage, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class KeyUsageFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class KeyUsageList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          KeyUsage.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListCertificatesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCertificatesInput, context: context)
        CertificateStatuses.validate!(input[:certificate_statuses], context: "#{context}[:certificate_statuses]") unless input[:certificate_statuses].nil?
        Filters.validate!(input[:includes], context: "#{context}[:includes]") unless input[:includes].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListCertificatesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCertificatesOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        CertificateSummaryList.validate!(input[:certificate_summary_list], context: "#{context}[:certificate_summary_list]") unless input[:certificate_summary_list].nil?
      end
    end

    class ListTagsForCertificateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForCertificateInput, context: context)
        Hearth::Validator.validate!(input[:certificate_arn], ::String, context: "#{context}[:certificate_arn]")
      end
    end

    class ListTagsForCertificateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForCertificateOutput, context: context)
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class PutAccountConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutAccountConfigurationInput, context: context)
        ExpiryEventsConfiguration.validate!(input[:expiry_events], context: "#{context}[:expiry_events]") unless input[:expiry_events].nil?
        Hearth::Validator.validate!(input[:idempotency_token], ::String, context: "#{context}[:idempotency_token]")
      end
    end

    class PutAccountConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutAccountConfigurationOutput, context: context)
      end
    end

    class RemoveTagsFromCertificateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveTagsFromCertificateInput, context: context)
        Hearth::Validator.validate!(input[:certificate_arn], ::String, context: "#{context}[:certificate_arn]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class RemoveTagsFromCertificateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveTagsFromCertificateOutput, context: context)
      end
    end

    class RenewCertificateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RenewCertificateInput, context: context)
        Hearth::Validator.validate!(input[:certificate_arn], ::String, context: "#{context}[:certificate_arn]")
      end
    end

    class RenewCertificateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RenewCertificateOutput, context: context)
      end
    end

    class RenewalSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RenewalSummary, context: context)
        Hearth::Validator.validate!(input[:renewal_status], ::String, context: "#{context}[:renewal_status]")
        DomainValidationList.validate!(input[:domain_validation_options], context: "#{context}[:domain_validation_options]") unless input[:domain_validation_options].nil?
        Hearth::Validator.validate!(input[:renewal_status_reason], ::String, context: "#{context}[:renewal_status_reason]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
      end
    end

    class RequestCertificateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RequestCertificateInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:validation_method], ::String, context: "#{context}[:validation_method]")
        DomainList.validate!(input[:subject_alternative_names], context: "#{context}[:subject_alternative_names]") unless input[:subject_alternative_names].nil?
        Hearth::Validator.validate!(input[:idempotency_token], ::String, context: "#{context}[:idempotency_token]")
        DomainValidationOptionList.validate!(input[:domain_validation_options], context: "#{context}[:domain_validation_options]") unless input[:domain_validation_options].nil?
        CertificateOptions.validate!(input[:options], context: "#{context}[:options]") unless input[:options].nil?
        Hearth::Validator.validate!(input[:certificate_authority_arn], ::String, context: "#{context}[:certificate_authority_arn]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class RequestCertificateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RequestCertificateOutput, context: context)
        Hearth::Validator.validate!(input[:certificate_arn], ::String, context: "#{context}[:certificate_arn]")
      end
    end

    class RequestInProgressException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RequestInProgressException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResendValidationEmailInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResendValidationEmailInput, context: context)
        Hearth::Validator.validate!(input[:certificate_arn], ::String, context: "#{context}[:certificate_arn]")
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:validation_domain], ::String, context: "#{context}[:validation_domain]")
      end
    end

    class ResendValidationEmailOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResendValidationEmailOutput, context: context)
      end
    end

    class ResourceInUseException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceInUseException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceRecord
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceRecord, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
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

    class TagPolicyException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagPolicyException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyTagsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyTagsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UpdateCertificateOptionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateCertificateOptionsInput, context: context)
        Hearth::Validator.validate!(input[:certificate_arn], ::String, context: "#{context}[:certificate_arn]")
        CertificateOptions.validate!(input[:options], context: "#{context}[:options]") unless input[:options].nil?
      end
    end

    class UpdateCertificateOptionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateCertificateOptionsOutput, context: context)
      end
    end

    class ValidationEmailList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

  end
end
