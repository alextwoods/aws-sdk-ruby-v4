# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ACM
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module AddTagsToCertificateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddTagsToCertificateInput, context: context)
        type = Types::AddTagsToCertificateInput.new
        type.certificate_arn = params[:certificate_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module AddTagsToCertificateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddTagsToCertificateOutput, context: context)
        type = Types::AddTagsToCertificateOutput.new
        type
      end
    end

    module CertificateDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CertificateDetail, context: context)
        type = Types::CertificateDetail.new
        type.certificate_arn = params[:certificate_arn]
        type.domain_name = params[:domain_name]
        type.subject_alternative_names = DomainList.build(params[:subject_alternative_names], context: "#{context}[:subject_alternative_names]") unless params[:subject_alternative_names].nil?
        type.domain_validation_options = DomainValidationList.build(params[:domain_validation_options], context: "#{context}[:domain_validation_options]") unless params[:domain_validation_options].nil?
        type.serial = params[:serial]
        type.subject = params[:subject]
        type.issuer = params[:issuer]
        type.created_at = params[:created_at]
        type.issued_at = params[:issued_at]
        type.imported_at = params[:imported_at]
        type.status = params[:status]
        type.revoked_at = params[:revoked_at]
        type.revocation_reason = params[:revocation_reason]
        type.not_before = params[:not_before]
        type.not_after = params[:not_after]
        type.key_algorithm = params[:key_algorithm]
        type.signature_algorithm = params[:signature_algorithm]
        type.in_use_by = InUseList.build(params[:in_use_by], context: "#{context}[:in_use_by]") unless params[:in_use_by].nil?
        type.failure_reason = params[:failure_reason]
        type.type = params[:type]
        type.renewal_summary = RenewalSummary.build(params[:renewal_summary], context: "#{context}[:renewal_summary]") unless params[:renewal_summary].nil?
        type.key_usages = KeyUsageList.build(params[:key_usages], context: "#{context}[:key_usages]") unless params[:key_usages].nil?
        type.extended_key_usages = ExtendedKeyUsageList.build(params[:extended_key_usages], context: "#{context}[:extended_key_usages]") unless params[:extended_key_usages].nil?
        type.certificate_authority_arn = params[:certificate_authority_arn]
        type.renewal_eligibility = params[:renewal_eligibility]
        type.options = CertificateOptions.build(params[:options], context: "#{context}[:options]") unless params[:options].nil?
        type
      end
    end

    module CertificateOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CertificateOptions, context: context)
        type = Types::CertificateOptions.new
        type.certificate_transparency_logging_preference = params[:certificate_transparency_logging_preference]
        type
      end
    end

    module CertificateStatuses
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
        type.certificate_arn = params[:certificate_arn]
        type.domain_name = params[:domain_name]
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

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type
      end
    end

    module DeleteCertificateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCertificateInput, context: context)
        type = Types::DeleteCertificateInput.new
        type.certificate_arn = params[:certificate_arn]
        type
      end
    end

    module DeleteCertificateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCertificateOutput, context: context)
        type = Types::DeleteCertificateOutput.new
        type
      end
    end

    module DescribeCertificateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCertificateInput, context: context)
        type = Types::DescribeCertificateInput.new
        type.certificate_arn = params[:certificate_arn]
        type
      end
    end

    module DescribeCertificateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCertificateOutput, context: context)
        type = Types::DescribeCertificateOutput.new
        type.certificate = CertificateDetail.build(params[:certificate], context: "#{context}[:certificate]") unless params[:certificate].nil?
        type
      end
    end

    module DomainList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DomainValidation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DomainValidation, context: context)
        type = Types::DomainValidation.new
        type.domain_name = params[:domain_name]
        type.validation_emails = ValidationEmailList.build(params[:validation_emails], context: "#{context}[:validation_emails]") unless params[:validation_emails].nil?
        type.validation_domain = params[:validation_domain]
        type.validation_status = params[:validation_status]
        type.resource_record = ResourceRecord.build(params[:resource_record], context: "#{context}[:resource_record]") unless params[:resource_record].nil?
        type.validation_method = params[:validation_method]
        type
      end
    end

    module DomainValidationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DomainValidation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DomainValidationOption
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DomainValidationOption, context: context)
        type = Types::DomainValidationOption.new
        type.domain_name = params[:domain_name]
        type.validation_domain = params[:validation_domain]
        type
      end
    end

    module DomainValidationOptionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DomainValidationOption.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ExpiryEventsConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExpiryEventsConfiguration, context: context)
        type = Types::ExpiryEventsConfiguration.new
        type.days_before_expiry = params[:days_before_expiry]
        type
      end
    end

    module ExportCertificateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportCertificateInput, context: context)
        type = Types::ExportCertificateInput.new
        type.certificate_arn = params[:certificate_arn]
        type.passphrase = params[:passphrase]
        type
      end
    end

    module ExportCertificateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportCertificateOutput, context: context)
        type = Types::ExportCertificateOutput.new
        type.certificate = params[:certificate]
        type.certificate_chain = params[:certificate_chain]
        type.private_key = params[:private_key]
        type
      end
    end

    module ExtendedKeyUsage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExtendedKeyUsage, context: context)
        type = Types::ExtendedKeyUsage.new
        type.name = params[:name]
        type.oid = params[:oid]
        type
      end
    end

    module ExtendedKeyUsageFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
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

    module Filters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Filters, context: context)
        type = Types::Filters.new
        type.extended_key_usage = ExtendedKeyUsageFilterList.build(params[:extended_key_usage], context: "#{context}[:extended_key_usage]") unless params[:extended_key_usage].nil?
        type.key_usage = KeyUsageFilterList.build(params[:key_usage], context: "#{context}[:key_usage]") unless params[:key_usage].nil?
        type.key_types = KeyAlgorithmList.build(params[:key_types], context: "#{context}[:key_types]") unless params[:key_types].nil?
        type
      end
    end

    module GetAccountConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAccountConfigurationInput, context: context)
        type = Types::GetAccountConfigurationInput.new
        type
      end
    end

    module GetAccountConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAccountConfigurationOutput, context: context)
        type = Types::GetAccountConfigurationOutput.new
        type.expiry_events = ExpiryEventsConfiguration.build(params[:expiry_events], context: "#{context}[:expiry_events]") unless params[:expiry_events].nil?
        type
      end
    end

    module GetCertificateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCertificateInput, context: context)
        type = Types::GetCertificateInput.new
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

    module ImportCertificateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportCertificateInput, context: context)
        type = Types::ImportCertificateInput.new
        type.certificate_arn = params[:certificate_arn]
        type.certificate = params[:certificate]
        type.private_key = params[:private_key]
        type.certificate_chain = params[:certificate_chain]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ImportCertificateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportCertificateOutput, context: context)
        type = Types::ImportCertificateOutput.new
        type.certificate_arn = params[:certificate_arn]
        type
      end
    end

    module InUseList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
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

    module InvalidDomainValidationOptionsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidDomainValidationOptionsException, context: context)
        type = Types::InvalidDomainValidationOptionsException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidParameterException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidParameterException, context: context)
        type = Types::InvalidParameterException.new
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

    module KeyAlgorithmList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module KeyUsage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KeyUsage, context: context)
        type = Types::KeyUsage.new
        type.name = params[:name]
        type
      end
    end

    module KeyUsageFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module KeyUsageList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << KeyUsage.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
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

    module ListCertificatesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCertificatesInput, context: context)
        type = Types::ListCertificatesInput.new
        type.certificate_statuses = CertificateStatuses.build(params[:certificate_statuses], context: "#{context}[:certificate_statuses]") unless params[:certificate_statuses].nil?
        type.includes = Filters.build(params[:includes], context: "#{context}[:includes]") unless params[:includes].nil?
        type.next_token = params[:next_token]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListCertificatesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCertificatesOutput, context: context)
        type = Types::ListCertificatesOutput.new
        type.next_token = params[:next_token]
        type.certificate_summary_list = CertificateSummaryList.build(params[:certificate_summary_list], context: "#{context}[:certificate_summary_list]") unless params[:certificate_summary_list].nil?
        type
      end
    end

    module ListTagsForCertificateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForCertificateInput, context: context)
        type = Types::ListTagsForCertificateInput.new
        type.certificate_arn = params[:certificate_arn]
        type
      end
    end

    module ListTagsForCertificateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForCertificateOutput, context: context)
        type = Types::ListTagsForCertificateOutput.new
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module PutAccountConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutAccountConfigurationInput, context: context)
        type = Types::PutAccountConfigurationInput.new
        type.expiry_events = ExpiryEventsConfiguration.build(params[:expiry_events], context: "#{context}[:expiry_events]") unless params[:expiry_events].nil?
        type.idempotency_token = params[:idempotency_token]
        type
      end
    end

    module PutAccountConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutAccountConfigurationOutput, context: context)
        type = Types::PutAccountConfigurationOutput.new
        type
      end
    end

    module RemoveTagsFromCertificateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveTagsFromCertificateInput, context: context)
        type = Types::RemoveTagsFromCertificateInput.new
        type.certificate_arn = params[:certificate_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module RemoveTagsFromCertificateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveTagsFromCertificateOutput, context: context)
        type = Types::RemoveTagsFromCertificateOutput.new
        type
      end
    end

    module RenewCertificateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RenewCertificateInput, context: context)
        type = Types::RenewCertificateInput.new
        type.certificate_arn = params[:certificate_arn]
        type
      end
    end

    module RenewCertificateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RenewCertificateOutput, context: context)
        type = Types::RenewCertificateOutput.new
        type
      end
    end

    module RenewalSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RenewalSummary, context: context)
        type = Types::RenewalSummary.new
        type.renewal_status = params[:renewal_status]
        type.domain_validation_options = DomainValidationList.build(params[:domain_validation_options], context: "#{context}[:domain_validation_options]") unless params[:domain_validation_options].nil?
        type.renewal_status_reason = params[:renewal_status_reason]
        type.updated_at = params[:updated_at]
        type
      end
    end

    module RequestCertificateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RequestCertificateInput, context: context)
        type = Types::RequestCertificateInput.new
        type.domain_name = params[:domain_name]
        type.validation_method = params[:validation_method]
        type.subject_alternative_names = DomainList.build(params[:subject_alternative_names], context: "#{context}[:subject_alternative_names]") unless params[:subject_alternative_names].nil?
        type.idempotency_token = params[:idempotency_token]
        type.domain_validation_options = DomainValidationOptionList.build(params[:domain_validation_options], context: "#{context}[:domain_validation_options]") unless params[:domain_validation_options].nil?
        type.options = CertificateOptions.build(params[:options], context: "#{context}[:options]") unless params[:options].nil?
        type.certificate_authority_arn = params[:certificate_authority_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module RequestCertificateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RequestCertificateOutput, context: context)
        type = Types::RequestCertificateOutput.new
        type.certificate_arn = params[:certificate_arn]
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

    module ResendValidationEmailInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResendValidationEmailInput, context: context)
        type = Types::ResendValidationEmailInput.new
        type.certificate_arn = params[:certificate_arn]
        type.domain = params[:domain]
        type.validation_domain = params[:validation_domain]
        type
      end
    end

    module ResendValidationEmailOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResendValidationEmailOutput, context: context)
        type = Types::ResendValidationEmailOutput.new
        type
      end
    end

    module ResourceInUseException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceInUseException, context: context)
        type = Types::ResourceInUseException.new
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

    module ResourceRecord
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceRecord, context: context)
        type = Types::ResourceRecord.new
        type.name = params[:name]
        type.type = params[:type]
        type.value = params[:value]
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

    module TagPolicyException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagPolicyException, context: context)
        type = Types::TagPolicyException.new
        type.message = params[:message]
        type
      end
    end

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type
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

    module UpdateCertificateOptionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateCertificateOptionsInput, context: context)
        type = Types::UpdateCertificateOptionsInput.new
        type.certificate_arn = params[:certificate_arn]
        type.options = CertificateOptions.build(params[:options], context: "#{context}[:options]") unless params[:options].nil?
        type
      end
    end

    module UpdateCertificateOptionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateCertificateOptionsOutput, context: context)
        type = Types::UpdateCertificateOptionsOutput.new
        type
      end
    end

    module ValidationEmailList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type
      end
    end

  end
end
