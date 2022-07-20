# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::Route53Domains
  module Validators

    class AcceptDomainTransferFromAnotherAwsAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcceptDomainTransferFromAnotherAwsAccountInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:password], ::String, context: "#{context}[:password]")
      end
    end

    class AcceptDomainTransferFromAnotherAwsAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcceptDomainTransferFromAnotherAwsAccountOutput, context: context)
        Hearth::Validator.validate!(input[:operation_id], ::String, context: "#{context}[:operation_id]")
      end
    end

    class BillingRecord
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BillingRecord, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:operation], ::String, context: "#{context}[:operation]")
        Hearth::Validator.validate!(input[:invoice_id], ::String, context: "#{context}[:invoice_id]")
        Hearth::Validator.validate!(input[:bill_date], ::Time, context: "#{context}[:bill_date]")
        Hearth::Validator.validate!(input[:price], ::Float, context: "#{context}[:price]")
      end
    end

    class BillingRecords
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BillingRecord.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CancelDomainTransferToAnotherAwsAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelDomainTransferToAnotherAwsAccountInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
      end
    end

    class CancelDomainTransferToAnotherAwsAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelDomainTransferToAnotherAwsAccountOutput, context: context)
        Hearth::Validator.validate!(input[:operation_id], ::String, context: "#{context}[:operation_id]")
      end
    end

    class CheckDomainAvailabilityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CheckDomainAvailabilityInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:idn_lang_code], ::String, context: "#{context}[:idn_lang_code]")
      end
    end

    class CheckDomainAvailabilityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CheckDomainAvailabilityOutput, context: context)
        Hearth::Validator.validate!(input[:availability], ::String, context: "#{context}[:availability]")
      end
    end

    class CheckDomainTransferabilityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CheckDomainTransferabilityInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:auth_code], ::String, context: "#{context}[:auth_code]")
      end
    end

    class CheckDomainTransferabilityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CheckDomainTransferabilityOutput, context: context)
        DomainTransferability.validate!(input[:transferability], context: "#{context}[:transferability]") unless input[:transferability].nil?
      end
    end

    class ContactDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContactDetail, context: context)
        Hearth::Validator.validate!(input[:first_name], ::String, context: "#{context}[:first_name]")
        Hearth::Validator.validate!(input[:last_name], ::String, context: "#{context}[:last_name]")
        Hearth::Validator.validate!(input[:contact_type], ::String, context: "#{context}[:contact_type]")
        Hearth::Validator.validate!(input[:organization_name], ::String, context: "#{context}[:organization_name]")
        Hearth::Validator.validate!(input[:address_line1], ::String, context: "#{context}[:address_line1]")
        Hearth::Validator.validate!(input[:address_line2], ::String, context: "#{context}[:address_line2]")
        Hearth::Validator.validate!(input[:city], ::String, context: "#{context}[:city]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:country_code], ::String, context: "#{context}[:country_code]")
        Hearth::Validator.validate!(input[:zip_code], ::String, context: "#{context}[:zip_code]")
        Hearth::Validator.validate!(input[:phone_number], ::String, context: "#{context}[:phone_number]")
        Hearth::Validator.validate!(input[:email], ::String, context: "#{context}[:email]")
        Hearth::Validator.validate!(input[:fax], ::String, context: "#{context}[:fax]")
        ExtraParamList.validate!(input[:extra_params], context: "#{context}[:extra_params]") unless input[:extra_params].nil?
      end
    end

    class DeleteDomainInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDomainInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
      end
    end

    class DeleteDomainOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDomainOutput, context: context)
        Hearth::Validator.validate!(input[:operation_id], ::String, context: "#{context}[:operation_id]")
      end
    end

    class DeleteTagsForDomainInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTagsForDomainInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        TagKeyList.validate!(input[:tags_to_delete], context: "#{context}[:tags_to_delete]") unless input[:tags_to_delete].nil?
      end
    end

    class DeleteTagsForDomainOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTagsForDomainOutput, context: context)
      end
    end

    class DisableDomainAutoRenewInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableDomainAutoRenewInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
      end
    end

    class DisableDomainAutoRenewOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableDomainAutoRenewOutput, context: context)
      end
    end

    class DisableDomainTransferLockInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableDomainTransferLockInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
      end
    end

    class DisableDomainTransferLockOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableDomainTransferLockOutput, context: context)
        Hearth::Validator.validate!(input[:operation_id], ::String, context: "#{context}[:operation_id]")
      end
    end

    class DomainLimitExceeded
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DomainLimitExceeded, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DomainPrice
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DomainPrice, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        PriceWithCurrency.validate!(input[:registration_price], context: "#{context}[:registration_price]") unless input[:registration_price].nil?
        PriceWithCurrency.validate!(input[:transfer_price], context: "#{context}[:transfer_price]") unless input[:transfer_price].nil?
        PriceWithCurrency.validate!(input[:renewal_price], context: "#{context}[:renewal_price]") unless input[:renewal_price].nil?
        PriceWithCurrency.validate!(input[:change_ownership_price], context: "#{context}[:change_ownership_price]") unless input[:change_ownership_price].nil?
        PriceWithCurrency.validate!(input[:restoration_price], context: "#{context}[:restoration_price]") unless input[:restoration_price].nil?
      end
    end

    class DomainPriceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DomainPrice.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DomainStatusList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DomainSuggestion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DomainSuggestion, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:availability], ::String, context: "#{context}[:availability]")
      end
    end

    class DomainSuggestionsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DomainSuggestion.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DomainSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DomainSummary, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:auto_renew], ::TrueClass, ::FalseClass, context: "#{context}[:auto_renew]")
        Hearth::Validator.validate!(input[:transfer_lock], ::TrueClass, ::FalseClass, context: "#{context}[:transfer_lock]")
        Hearth::Validator.validate!(input[:expiry], ::Time, context: "#{context}[:expiry]")
      end
    end

    class DomainSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DomainSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DomainTransferability
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DomainTransferability, context: context)
        Hearth::Validator.validate!(input[:transferable], ::String, context: "#{context}[:transferable]")
      end
    end

    class DuplicateRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DuplicateRequest, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class EnableDomainAutoRenewInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableDomainAutoRenewInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
      end
    end

    class EnableDomainAutoRenewOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableDomainAutoRenewOutput, context: context)
      end
    end

    class EnableDomainTransferLockInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableDomainTransferLockInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
      end
    end

    class EnableDomainTransferLockOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableDomainTransferLockOutput, context: context)
        Hearth::Validator.validate!(input[:operation_id], ::String, context: "#{context}[:operation_id]")
      end
    end

    class ExtraParam
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExtraParam, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class ExtraParamList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ExtraParam.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FilterCondition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FilterCondition, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:operator], ::String, context: "#{context}[:operator]")
        Values.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class FilterConditions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          FilterCondition.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GetContactReachabilityStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetContactReachabilityStatusInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
      end
    end

    class GetContactReachabilityStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetContactReachabilityStatusOutput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class GetDomainDetailInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDomainDetailInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
      end
    end

    class GetDomainDetailOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDomainDetailOutput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        NameserverList.validate!(input[:nameservers], context: "#{context}[:nameservers]") unless input[:nameservers].nil?
        Hearth::Validator.validate!(input[:auto_renew], ::TrueClass, ::FalseClass, context: "#{context}[:auto_renew]")
        ContactDetail.validate!(input[:admin_contact], context: "#{context}[:admin_contact]") unless input[:admin_contact].nil?
        ContactDetail.validate!(input[:registrant_contact], context: "#{context}[:registrant_contact]") unless input[:registrant_contact].nil?
        ContactDetail.validate!(input[:tech_contact], context: "#{context}[:tech_contact]") unless input[:tech_contact].nil?
        Hearth::Validator.validate!(input[:admin_privacy], ::TrueClass, ::FalseClass, context: "#{context}[:admin_privacy]")
        Hearth::Validator.validate!(input[:registrant_privacy], ::TrueClass, ::FalseClass, context: "#{context}[:registrant_privacy]")
        Hearth::Validator.validate!(input[:tech_privacy], ::TrueClass, ::FalseClass, context: "#{context}[:tech_privacy]")
        Hearth::Validator.validate!(input[:registrar_name], ::String, context: "#{context}[:registrar_name]")
        Hearth::Validator.validate!(input[:who_is_server], ::String, context: "#{context}[:who_is_server]")
        Hearth::Validator.validate!(input[:registrar_url], ::String, context: "#{context}[:registrar_url]")
        Hearth::Validator.validate!(input[:abuse_contact_email], ::String, context: "#{context}[:abuse_contact_email]")
        Hearth::Validator.validate!(input[:abuse_contact_phone], ::String, context: "#{context}[:abuse_contact_phone]")
        Hearth::Validator.validate!(input[:registry_domain_id], ::String, context: "#{context}[:registry_domain_id]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:updated_date], ::Time, context: "#{context}[:updated_date]")
        Hearth::Validator.validate!(input[:expiration_date], ::Time, context: "#{context}[:expiration_date]")
        Hearth::Validator.validate!(input[:reseller], ::String, context: "#{context}[:reseller]")
        Hearth::Validator.validate!(input[:dns_sec], ::String, context: "#{context}[:dns_sec]")
        DomainStatusList.validate!(input[:status_list], context: "#{context}[:status_list]") unless input[:status_list].nil?
      end
    end

    class GetDomainSuggestionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDomainSuggestionsInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:suggestion_count], ::Integer, context: "#{context}[:suggestion_count]")
        Hearth::Validator.validate!(input[:only_available], ::TrueClass, ::FalseClass, context: "#{context}[:only_available]")
      end
    end

    class GetDomainSuggestionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDomainSuggestionsOutput, context: context)
        DomainSuggestionsList.validate!(input[:suggestions_list], context: "#{context}[:suggestions_list]") unless input[:suggestions_list].nil?
      end
    end

    class GetOperationDetailInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetOperationDetailInput, context: context)
        Hearth::Validator.validate!(input[:operation_id], ::String, context: "#{context}[:operation_id]")
      end
    end

    class GetOperationDetailOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetOperationDetailOutput, context: context)
        Hearth::Validator.validate!(input[:operation_id], ::String, context: "#{context}[:operation_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:submitted_date], ::Time, context: "#{context}[:submitted_date]")
      end
    end

    class GlueIpList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InvalidInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidInput, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListDomainsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDomainsInput, context: context)
        FilterConditions.validate!(input[:filter_conditions], context: "#{context}[:filter_conditions]") unless input[:filter_conditions].nil?
        SortCondition.validate!(input[:sort_condition], context: "#{context}[:sort_condition]") unless input[:sort_condition].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListDomainsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDomainsOutput, context: context)
        DomainSummaryList.validate!(input[:domains], context: "#{context}[:domains]") unless input[:domains].nil?
        Hearth::Validator.validate!(input[:next_page_marker], ::String, context: "#{context}[:next_page_marker]")
      end
    end

    class ListOperationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListOperationsInput, context: context)
        Hearth::Validator.validate!(input[:submitted_since], ::Time, context: "#{context}[:submitted_since]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListOperationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListOperationsOutput, context: context)
        OperationSummaryList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
        Hearth::Validator.validate!(input[:next_page_marker], ::String, context: "#{context}[:next_page_marker]")
      end
    end

    class ListPricesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPricesInput, context: context)
        Hearth::Validator.validate!(input[:tld], ::String, context: "#{context}[:tld]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListPricesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPricesOutput, context: context)
        DomainPriceList.validate!(input[:prices], context: "#{context}[:prices]") unless input[:prices].nil?
        Hearth::Validator.validate!(input[:next_page_marker], ::String, context: "#{context}[:next_page_marker]")
      end
    end

    class ListTagsForDomainInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForDomainInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
      end
    end

    class ListTagsForDomainOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForDomainOutput, context: context)
        TagList.validate!(input[:tag_list], context: "#{context}[:tag_list]") unless input[:tag_list].nil?
      end
    end

    class Nameserver
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Nameserver, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        GlueIpList.validate!(input[:glue_ips], context: "#{context}[:glue_ips]") unless input[:glue_ips].nil?
      end
    end

    class NameserverList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Nameserver.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OperationLimitExceeded
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OperationLimitExceeded, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OperationSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OperationSummary, context: context)
        Hearth::Validator.validate!(input[:operation_id], ::String, context: "#{context}[:operation_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:submitted_date], ::Time, context: "#{context}[:submitted_date]")
      end
    end

    class OperationSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          OperationSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PriceWithCurrency
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PriceWithCurrency, context: context)
        Hearth::Validator.validate!(input[:price], ::Float, context: "#{context}[:price]")
        Hearth::Validator.validate!(input[:currency], ::String, context: "#{context}[:currency]")
      end
    end

    class RegisterDomainInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterDomainInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:idn_lang_code], ::String, context: "#{context}[:idn_lang_code]")
        Hearth::Validator.validate!(input[:duration_in_years], ::Integer, context: "#{context}[:duration_in_years]")
        Hearth::Validator.validate!(input[:auto_renew], ::TrueClass, ::FalseClass, context: "#{context}[:auto_renew]")
        ContactDetail.validate!(input[:admin_contact], context: "#{context}[:admin_contact]") unless input[:admin_contact].nil?
        ContactDetail.validate!(input[:registrant_contact], context: "#{context}[:registrant_contact]") unless input[:registrant_contact].nil?
        ContactDetail.validate!(input[:tech_contact], context: "#{context}[:tech_contact]") unless input[:tech_contact].nil?
        Hearth::Validator.validate!(input[:privacy_protect_admin_contact], ::TrueClass, ::FalseClass, context: "#{context}[:privacy_protect_admin_contact]")
        Hearth::Validator.validate!(input[:privacy_protect_registrant_contact], ::TrueClass, ::FalseClass, context: "#{context}[:privacy_protect_registrant_contact]")
        Hearth::Validator.validate!(input[:privacy_protect_tech_contact], ::TrueClass, ::FalseClass, context: "#{context}[:privacy_protect_tech_contact]")
      end
    end

    class RegisterDomainOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterDomainOutput, context: context)
        Hearth::Validator.validate!(input[:operation_id], ::String, context: "#{context}[:operation_id]")
      end
    end

    class RejectDomainTransferFromAnotherAwsAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RejectDomainTransferFromAnotherAwsAccountInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
      end
    end

    class RejectDomainTransferFromAnotherAwsAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RejectDomainTransferFromAnotherAwsAccountOutput, context: context)
        Hearth::Validator.validate!(input[:operation_id], ::String, context: "#{context}[:operation_id]")
      end
    end

    class RenewDomainInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RenewDomainInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:duration_in_years], ::Integer, context: "#{context}[:duration_in_years]")
        Hearth::Validator.validate!(input[:current_expiry_year], ::Integer, context: "#{context}[:current_expiry_year]")
      end
    end

    class RenewDomainOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RenewDomainOutput, context: context)
        Hearth::Validator.validate!(input[:operation_id], ::String, context: "#{context}[:operation_id]")
      end
    end

    class ResendContactReachabilityEmailInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResendContactReachabilityEmailInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
      end
    end

    class ResendContactReachabilityEmailOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResendContactReachabilityEmailOutput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:email_address], ::String, context: "#{context}[:email_address]")
        Hearth::Validator.validate!(input[:is_already_verified], ::TrueClass, ::FalseClass, context: "#{context}[:is_already_verified]")
      end
    end

    class RetrieveDomainAuthCodeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RetrieveDomainAuthCodeInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
      end
    end

    class RetrieveDomainAuthCodeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RetrieveDomainAuthCodeOutput, context: context)
        Hearth::Validator.validate!(input[:auth_code], ::String, context: "#{context}[:auth_code]")
      end
    end

    class SortCondition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SortCondition, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
      end
    end

    class TLDRulesViolation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TLDRulesViolation, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
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

    class TransferDomainInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TransferDomainInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:idn_lang_code], ::String, context: "#{context}[:idn_lang_code]")
        Hearth::Validator.validate!(input[:duration_in_years], ::Integer, context: "#{context}[:duration_in_years]")
        NameserverList.validate!(input[:nameservers], context: "#{context}[:nameservers]") unless input[:nameservers].nil?
        Hearth::Validator.validate!(input[:auth_code], ::String, context: "#{context}[:auth_code]")
        Hearth::Validator.validate!(input[:auto_renew], ::TrueClass, ::FalseClass, context: "#{context}[:auto_renew]")
        ContactDetail.validate!(input[:admin_contact], context: "#{context}[:admin_contact]") unless input[:admin_contact].nil?
        ContactDetail.validate!(input[:registrant_contact], context: "#{context}[:registrant_contact]") unless input[:registrant_contact].nil?
        ContactDetail.validate!(input[:tech_contact], context: "#{context}[:tech_contact]") unless input[:tech_contact].nil?
        Hearth::Validator.validate!(input[:privacy_protect_admin_contact], ::TrueClass, ::FalseClass, context: "#{context}[:privacy_protect_admin_contact]")
        Hearth::Validator.validate!(input[:privacy_protect_registrant_contact], ::TrueClass, ::FalseClass, context: "#{context}[:privacy_protect_registrant_contact]")
        Hearth::Validator.validate!(input[:privacy_protect_tech_contact], ::TrueClass, ::FalseClass, context: "#{context}[:privacy_protect_tech_contact]")
      end
    end

    class TransferDomainOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TransferDomainOutput, context: context)
        Hearth::Validator.validate!(input[:operation_id], ::String, context: "#{context}[:operation_id]")
      end
    end

    class TransferDomainToAnotherAwsAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TransferDomainToAnotherAwsAccountInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
      end
    end

    class TransferDomainToAnotherAwsAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TransferDomainToAnotherAwsAccountOutput, context: context)
        Hearth::Validator.validate!(input[:operation_id], ::String, context: "#{context}[:operation_id]")
        Hearth::Validator.validate!(input[:password], ::String, context: "#{context}[:password]")
      end
    end

    class UnsupportedTLD
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnsupportedTLD, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UpdateDomainContactInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDomainContactInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        ContactDetail.validate!(input[:admin_contact], context: "#{context}[:admin_contact]") unless input[:admin_contact].nil?
        ContactDetail.validate!(input[:registrant_contact], context: "#{context}[:registrant_contact]") unless input[:registrant_contact].nil?
        ContactDetail.validate!(input[:tech_contact], context: "#{context}[:tech_contact]") unless input[:tech_contact].nil?
      end
    end

    class UpdateDomainContactOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDomainContactOutput, context: context)
        Hearth::Validator.validate!(input[:operation_id], ::String, context: "#{context}[:operation_id]")
      end
    end

    class UpdateDomainContactPrivacyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDomainContactPrivacyInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:admin_privacy], ::TrueClass, ::FalseClass, context: "#{context}[:admin_privacy]")
        Hearth::Validator.validate!(input[:registrant_privacy], ::TrueClass, ::FalseClass, context: "#{context}[:registrant_privacy]")
        Hearth::Validator.validate!(input[:tech_privacy], ::TrueClass, ::FalseClass, context: "#{context}[:tech_privacy]")
      end
    end

    class UpdateDomainContactPrivacyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDomainContactPrivacyOutput, context: context)
        Hearth::Validator.validate!(input[:operation_id], ::String, context: "#{context}[:operation_id]")
      end
    end

    class UpdateDomainNameserversInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDomainNameserversInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:fi_auth_key], ::String, context: "#{context}[:fi_auth_key]")
        NameserverList.validate!(input[:nameservers], context: "#{context}[:nameservers]") unless input[:nameservers].nil?
      end
    end

    class UpdateDomainNameserversOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDomainNameserversOutput, context: context)
        Hearth::Validator.validate!(input[:operation_id], ::String, context: "#{context}[:operation_id]")
      end
    end

    class UpdateTagsForDomainInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTagsForDomainInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        TagList.validate!(input[:tags_to_update], context: "#{context}[:tags_to_update]") unless input[:tags_to_update].nil?
      end
    end

    class UpdateTagsForDomainOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTagsForDomainOutput, context: context)
      end
    end

    class Values
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ViewBillingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ViewBillingInput, context: context)
        Hearth::Validator.validate!(input[:start], ::Time, context: "#{context}[:start]")
        Hearth::Validator.validate!(input[:end], ::Time, context: "#{context}[:end]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ViewBillingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ViewBillingOutput, context: context)
        Hearth::Validator.validate!(input[:next_page_marker], ::String, context: "#{context}[:next_page_marker]")
        BillingRecords.validate!(input[:billing_records], context: "#{context}[:billing_records]") unless input[:billing_records].nil?
      end
    end

  end
end
