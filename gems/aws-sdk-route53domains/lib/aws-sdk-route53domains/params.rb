# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Route53Domains
  module Params

    module AcceptDomainTransferFromAnotherAwsAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcceptDomainTransferFromAnotherAwsAccountInput, context: context)
        type = Types::AcceptDomainTransferFromAnotherAwsAccountInput.new
        type.domain_name = params[:domain_name]
        type.password = params[:password]
        type
      end
    end

    module AcceptDomainTransferFromAnotherAwsAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcceptDomainTransferFromAnotherAwsAccountOutput, context: context)
        type = Types::AcceptDomainTransferFromAnotherAwsAccountOutput.new
        type.operation_id = params[:operation_id]
        type
      end
    end

    module BillingRecord
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BillingRecord, context: context)
        type = Types::BillingRecord.new
        type.domain_name = params[:domain_name]
        type.operation = params[:operation]
        type.invoice_id = params[:invoice_id]
        type.bill_date = params[:bill_date]
        type.price = params[:price]
        type
      end
    end

    module BillingRecords
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BillingRecord.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CancelDomainTransferToAnotherAwsAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelDomainTransferToAnotherAwsAccountInput, context: context)
        type = Types::CancelDomainTransferToAnotherAwsAccountInput.new
        type.domain_name = params[:domain_name]
        type
      end
    end

    module CancelDomainTransferToAnotherAwsAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelDomainTransferToAnotherAwsAccountOutput, context: context)
        type = Types::CancelDomainTransferToAnotherAwsAccountOutput.new
        type.operation_id = params[:operation_id]
        type
      end
    end

    module CheckDomainAvailabilityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CheckDomainAvailabilityInput, context: context)
        type = Types::CheckDomainAvailabilityInput.new
        type.domain_name = params[:domain_name]
        type.idn_lang_code = params[:idn_lang_code]
        type
      end
    end

    module CheckDomainAvailabilityOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CheckDomainAvailabilityOutput, context: context)
        type = Types::CheckDomainAvailabilityOutput.new
        type.availability = params[:availability]
        type
      end
    end

    module CheckDomainTransferabilityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CheckDomainTransferabilityInput, context: context)
        type = Types::CheckDomainTransferabilityInput.new
        type.domain_name = params[:domain_name]
        type.auth_code = params[:auth_code]
        type
      end
    end

    module CheckDomainTransferabilityOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CheckDomainTransferabilityOutput, context: context)
        type = Types::CheckDomainTransferabilityOutput.new
        type.transferability = DomainTransferability.build(params[:transferability], context: "#{context}[:transferability]") unless params[:transferability].nil?
        type
      end
    end

    module ContactDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContactDetail, context: context)
        type = Types::ContactDetail.new
        type.first_name = params[:first_name]
        type.last_name = params[:last_name]
        type.contact_type = params[:contact_type]
        type.organization_name = params[:organization_name]
        type.address_line1 = params[:address_line1]
        type.address_line2 = params[:address_line2]
        type.city = params[:city]
        type.state = params[:state]
        type.country_code = params[:country_code]
        type.zip_code = params[:zip_code]
        type.phone_number = params[:phone_number]
        type.email = params[:email]
        type.fax = params[:fax]
        type.extra_params = ExtraParamList.build(params[:extra_params], context: "#{context}[:extra_params]") unless params[:extra_params].nil?
        type
      end
    end

    module DeleteDomainInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDomainInput, context: context)
        type = Types::DeleteDomainInput.new
        type.domain_name = params[:domain_name]
        type
      end
    end

    module DeleteDomainOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDomainOutput, context: context)
        type = Types::DeleteDomainOutput.new
        type.operation_id = params[:operation_id]
        type
      end
    end

    module DeleteTagsForDomainInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTagsForDomainInput, context: context)
        type = Types::DeleteTagsForDomainInput.new
        type.domain_name = params[:domain_name]
        type.tags_to_delete = TagKeyList.build(params[:tags_to_delete], context: "#{context}[:tags_to_delete]") unless params[:tags_to_delete].nil?
        type
      end
    end

    module DeleteTagsForDomainOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTagsForDomainOutput, context: context)
        type = Types::DeleteTagsForDomainOutput.new
        type
      end
    end

    module DisableDomainAutoRenewInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableDomainAutoRenewInput, context: context)
        type = Types::DisableDomainAutoRenewInput.new
        type.domain_name = params[:domain_name]
        type
      end
    end

    module DisableDomainAutoRenewOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableDomainAutoRenewOutput, context: context)
        type = Types::DisableDomainAutoRenewOutput.new
        type
      end
    end

    module DisableDomainTransferLockInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableDomainTransferLockInput, context: context)
        type = Types::DisableDomainTransferLockInput.new
        type.domain_name = params[:domain_name]
        type
      end
    end

    module DisableDomainTransferLockOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableDomainTransferLockOutput, context: context)
        type = Types::DisableDomainTransferLockOutput.new
        type.operation_id = params[:operation_id]
        type
      end
    end

    module DomainLimitExceeded
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DomainLimitExceeded, context: context)
        type = Types::DomainLimitExceeded.new
        type.message = params[:message]
        type
      end
    end

    module DomainPrice
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DomainPrice, context: context)
        type = Types::DomainPrice.new
        type.name = params[:name]
        type.registration_price = PriceWithCurrency.build(params[:registration_price], context: "#{context}[:registration_price]") unless params[:registration_price].nil?
        type.transfer_price = PriceWithCurrency.build(params[:transfer_price], context: "#{context}[:transfer_price]") unless params[:transfer_price].nil?
        type.renewal_price = PriceWithCurrency.build(params[:renewal_price], context: "#{context}[:renewal_price]") unless params[:renewal_price].nil?
        type.change_ownership_price = PriceWithCurrency.build(params[:change_ownership_price], context: "#{context}[:change_ownership_price]") unless params[:change_ownership_price].nil?
        type.restoration_price = PriceWithCurrency.build(params[:restoration_price], context: "#{context}[:restoration_price]") unless params[:restoration_price].nil?
        type
      end
    end

    module DomainPriceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DomainPrice.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DomainStatusList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DomainSuggestion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DomainSuggestion, context: context)
        type = Types::DomainSuggestion.new
        type.domain_name = params[:domain_name]
        type.availability = params[:availability]
        type
      end
    end

    module DomainSuggestionsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DomainSuggestion.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DomainSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DomainSummary, context: context)
        type = Types::DomainSummary.new
        type.domain_name = params[:domain_name]
        type.auto_renew = params[:auto_renew]
        type.transfer_lock = params[:transfer_lock]
        type.expiry = params[:expiry]
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

    module DomainTransferability
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DomainTransferability, context: context)
        type = Types::DomainTransferability.new
        type.transferable = params[:transferable]
        type
      end
    end

    module DuplicateRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DuplicateRequest, context: context)
        type = Types::DuplicateRequest.new
        type.message = params[:message]
        type
      end
    end

    module EnableDomainAutoRenewInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableDomainAutoRenewInput, context: context)
        type = Types::EnableDomainAutoRenewInput.new
        type.domain_name = params[:domain_name]
        type
      end
    end

    module EnableDomainAutoRenewOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableDomainAutoRenewOutput, context: context)
        type = Types::EnableDomainAutoRenewOutput.new
        type
      end
    end

    module EnableDomainTransferLockInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableDomainTransferLockInput, context: context)
        type = Types::EnableDomainTransferLockInput.new
        type.domain_name = params[:domain_name]
        type
      end
    end

    module EnableDomainTransferLockOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableDomainTransferLockOutput, context: context)
        type = Types::EnableDomainTransferLockOutput.new
        type.operation_id = params[:operation_id]
        type
      end
    end

    module ExtraParam
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExtraParam, context: context)
        type = Types::ExtraParam.new
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module ExtraParamList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ExtraParam.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FilterCondition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FilterCondition, context: context)
        type = Types::FilterCondition.new
        type.name = params[:name]
        type.operator = params[:operator]
        type.values = Values.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module FilterConditions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FilterCondition.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GetContactReachabilityStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetContactReachabilityStatusInput, context: context)
        type = Types::GetContactReachabilityStatusInput.new
        type.domain_name = params[:domain_name]
        type
      end
    end

    module GetContactReachabilityStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetContactReachabilityStatusOutput, context: context)
        type = Types::GetContactReachabilityStatusOutput.new
        type.domain_name = params[:domain_name]
        type.status = params[:status]
        type
      end
    end

    module GetDomainDetailInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDomainDetailInput, context: context)
        type = Types::GetDomainDetailInput.new
        type.domain_name = params[:domain_name]
        type
      end
    end

    module GetDomainDetailOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDomainDetailOutput, context: context)
        type = Types::GetDomainDetailOutput.new
        type.domain_name = params[:domain_name]
        type.nameservers = NameserverList.build(params[:nameservers], context: "#{context}[:nameservers]") unless params[:nameservers].nil?
        type.auto_renew = params[:auto_renew]
        type.admin_contact = ContactDetail.build(params[:admin_contact], context: "#{context}[:admin_contact]") unless params[:admin_contact].nil?
        type.registrant_contact = ContactDetail.build(params[:registrant_contact], context: "#{context}[:registrant_contact]") unless params[:registrant_contact].nil?
        type.tech_contact = ContactDetail.build(params[:tech_contact], context: "#{context}[:tech_contact]") unless params[:tech_contact].nil?
        type.admin_privacy = params[:admin_privacy]
        type.registrant_privacy = params[:registrant_privacy]
        type.tech_privacy = params[:tech_privacy]
        type.registrar_name = params[:registrar_name]
        type.who_is_server = params[:who_is_server]
        type.registrar_url = params[:registrar_url]
        type.abuse_contact_email = params[:abuse_contact_email]
        type.abuse_contact_phone = params[:abuse_contact_phone]
        type.registry_domain_id = params[:registry_domain_id]
        type.creation_date = params[:creation_date]
        type.updated_date = params[:updated_date]
        type.expiration_date = params[:expiration_date]
        type.reseller = params[:reseller]
        type.dns_sec = params[:dns_sec]
        type.status_list = DomainStatusList.build(params[:status_list], context: "#{context}[:status_list]") unless params[:status_list].nil?
        type
      end
    end

    module GetDomainSuggestionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDomainSuggestionsInput, context: context)
        type = Types::GetDomainSuggestionsInput.new
        type.domain_name = params[:domain_name]
        type.suggestion_count = params[:suggestion_count]
        type.only_available = params[:only_available]
        type
      end
    end

    module GetDomainSuggestionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDomainSuggestionsOutput, context: context)
        type = Types::GetDomainSuggestionsOutput.new
        type.suggestions_list = DomainSuggestionsList.build(params[:suggestions_list], context: "#{context}[:suggestions_list]") unless params[:suggestions_list].nil?
        type
      end
    end

    module GetOperationDetailInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetOperationDetailInput, context: context)
        type = Types::GetOperationDetailInput.new
        type.operation_id = params[:operation_id]
        type
      end
    end

    module GetOperationDetailOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetOperationDetailOutput, context: context)
        type = Types::GetOperationDetailOutput.new
        type.operation_id = params[:operation_id]
        type.status = params[:status]
        type.message = params[:message]
        type.domain_name = params[:domain_name]
        type.type = params[:type]
        type.submitted_date = params[:submitted_date]
        type
      end
    end

    module GlueIpList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module InvalidInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidInput, context: context)
        type = Types::InvalidInput.new
        type.message = params[:message]
        type
      end
    end

    module ListDomainsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDomainsInput, context: context)
        type = Types::ListDomainsInput.new
        type.filter_conditions = FilterConditions.build(params[:filter_conditions], context: "#{context}[:filter_conditions]") unless params[:filter_conditions].nil?
        type.sort_condition = SortCondition.build(params[:sort_condition], context: "#{context}[:sort_condition]") unless params[:sort_condition].nil?
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListDomainsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDomainsOutput, context: context)
        type = Types::ListDomainsOutput.new
        type.domains = DomainSummaryList.build(params[:domains], context: "#{context}[:domains]") unless params[:domains].nil?
        type.next_page_marker = params[:next_page_marker]
        type
      end
    end

    module ListOperationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListOperationsInput, context: context)
        type = Types::ListOperationsInput.new
        type.submitted_since = params[:submitted_since]
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListOperationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListOperationsOutput, context: context)
        type = Types::ListOperationsOutput.new
        type.operations = OperationSummaryList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type.next_page_marker = params[:next_page_marker]
        type
      end
    end

    module ListPricesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPricesInput, context: context)
        type = Types::ListPricesInput.new
        type.tld = params[:tld]
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListPricesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPricesOutput, context: context)
        type = Types::ListPricesOutput.new
        type.prices = DomainPriceList.build(params[:prices], context: "#{context}[:prices]") unless params[:prices].nil?
        type.next_page_marker = params[:next_page_marker]
        type
      end
    end

    module ListTagsForDomainInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForDomainInput, context: context)
        type = Types::ListTagsForDomainInput.new
        type.domain_name = params[:domain_name]
        type
      end
    end

    module ListTagsForDomainOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForDomainOutput, context: context)
        type = Types::ListTagsForDomainOutput.new
        type.tag_list = TagList.build(params[:tag_list], context: "#{context}[:tag_list]") unless params[:tag_list].nil?
        type
      end
    end

    module Nameserver
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Nameserver, context: context)
        type = Types::Nameserver.new
        type.name = params[:name]
        type.glue_ips = GlueIpList.build(params[:glue_ips], context: "#{context}[:glue_ips]") unless params[:glue_ips].nil?
        type
      end
    end

    module NameserverList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Nameserver.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OperationLimitExceeded
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OperationLimitExceeded, context: context)
        type = Types::OperationLimitExceeded.new
        type.message = params[:message]
        type
      end
    end

    module OperationSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OperationSummary, context: context)
        type = Types::OperationSummary.new
        type.operation_id = params[:operation_id]
        type.status = params[:status]
        type.type = params[:type]
        type.submitted_date = params[:submitted_date]
        type
      end
    end

    module OperationSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OperationSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PriceWithCurrency
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PriceWithCurrency, context: context)
        type = Types::PriceWithCurrency.new
        type.price = params[:price]
        type.currency = params[:currency]
        type
      end
    end

    module RegisterDomainInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterDomainInput, context: context)
        type = Types::RegisterDomainInput.new
        type.domain_name = params[:domain_name]
        type.idn_lang_code = params[:idn_lang_code]
        type.duration_in_years = params[:duration_in_years]
        type.auto_renew = params[:auto_renew]
        type.admin_contact = ContactDetail.build(params[:admin_contact], context: "#{context}[:admin_contact]") unless params[:admin_contact].nil?
        type.registrant_contact = ContactDetail.build(params[:registrant_contact], context: "#{context}[:registrant_contact]") unless params[:registrant_contact].nil?
        type.tech_contact = ContactDetail.build(params[:tech_contact], context: "#{context}[:tech_contact]") unless params[:tech_contact].nil?
        type.privacy_protect_admin_contact = params[:privacy_protect_admin_contact]
        type.privacy_protect_registrant_contact = params[:privacy_protect_registrant_contact]
        type.privacy_protect_tech_contact = params[:privacy_protect_tech_contact]
        type
      end
    end

    module RegisterDomainOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterDomainOutput, context: context)
        type = Types::RegisterDomainOutput.new
        type.operation_id = params[:operation_id]
        type
      end
    end

    module RejectDomainTransferFromAnotherAwsAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RejectDomainTransferFromAnotherAwsAccountInput, context: context)
        type = Types::RejectDomainTransferFromAnotherAwsAccountInput.new
        type.domain_name = params[:domain_name]
        type
      end
    end

    module RejectDomainTransferFromAnotherAwsAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RejectDomainTransferFromAnotherAwsAccountOutput, context: context)
        type = Types::RejectDomainTransferFromAnotherAwsAccountOutput.new
        type.operation_id = params[:operation_id]
        type
      end
    end

    module RenewDomainInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RenewDomainInput, context: context)
        type = Types::RenewDomainInput.new
        type.domain_name = params[:domain_name]
        type.duration_in_years = params[:duration_in_years]
        type.current_expiry_year = params[:current_expiry_year]
        type
      end
    end

    module RenewDomainOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RenewDomainOutput, context: context)
        type = Types::RenewDomainOutput.new
        type.operation_id = params[:operation_id]
        type
      end
    end

    module ResendContactReachabilityEmailInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResendContactReachabilityEmailInput, context: context)
        type = Types::ResendContactReachabilityEmailInput.new
        type.domain_name = params[:domain_name]
        type
      end
    end

    module ResendContactReachabilityEmailOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResendContactReachabilityEmailOutput, context: context)
        type = Types::ResendContactReachabilityEmailOutput.new
        type.domain_name = params[:domain_name]
        type.email_address = params[:email_address]
        type.is_already_verified = params[:is_already_verified]
        type
      end
    end

    module RetrieveDomainAuthCodeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RetrieveDomainAuthCodeInput, context: context)
        type = Types::RetrieveDomainAuthCodeInput.new
        type.domain_name = params[:domain_name]
        type
      end
    end

    module RetrieveDomainAuthCodeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RetrieveDomainAuthCodeOutput, context: context)
        type = Types::RetrieveDomainAuthCodeOutput.new
        type.auth_code = params[:auth_code]
        type
      end
    end

    module SortCondition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SortCondition, context: context)
        type = Types::SortCondition.new
        type.name = params[:name]
        type.sort_order = params[:sort_order]
        type
      end
    end

    module TLDRulesViolation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TLDRulesViolation, context: context)
        type = Types::TLDRulesViolation.new
        type.message = params[:message]
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

    module TransferDomainInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TransferDomainInput, context: context)
        type = Types::TransferDomainInput.new
        type.domain_name = params[:domain_name]
        type.idn_lang_code = params[:idn_lang_code]
        type.duration_in_years = params[:duration_in_years]
        type.nameservers = NameserverList.build(params[:nameservers], context: "#{context}[:nameservers]") unless params[:nameservers].nil?
        type.auth_code = params[:auth_code]
        type.auto_renew = params[:auto_renew]
        type.admin_contact = ContactDetail.build(params[:admin_contact], context: "#{context}[:admin_contact]") unless params[:admin_contact].nil?
        type.registrant_contact = ContactDetail.build(params[:registrant_contact], context: "#{context}[:registrant_contact]") unless params[:registrant_contact].nil?
        type.tech_contact = ContactDetail.build(params[:tech_contact], context: "#{context}[:tech_contact]") unless params[:tech_contact].nil?
        type.privacy_protect_admin_contact = params[:privacy_protect_admin_contact]
        type.privacy_protect_registrant_contact = params[:privacy_protect_registrant_contact]
        type.privacy_protect_tech_contact = params[:privacy_protect_tech_contact]
        type
      end
    end

    module TransferDomainOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TransferDomainOutput, context: context)
        type = Types::TransferDomainOutput.new
        type.operation_id = params[:operation_id]
        type
      end
    end

    module TransferDomainToAnotherAwsAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TransferDomainToAnotherAwsAccountInput, context: context)
        type = Types::TransferDomainToAnotherAwsAccountInput.new
        type.domain_name = params[:domain_name]
        type.account_id = params[:account_id]
        type
      end
    end

    module TransferDomainToAnotherAwsAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TransferDomainToAnotherAwsAccountOutput, context: context)
        type = Types::TransferDomainToAnotherAwsAccountOutput.new
        type.operation_id = params[:operation_id]
        type.password = params[:password]
        type
      end
    end

    module UnsupportedTLD
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnsupportedTLD, context: context)
        type = Types::UnsupportedTLD.new
        type.message = params[:message]
        type
      end
    end

    module UpdateDomainContactInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDomainContactInput, context: context)
        type = Types::UpdateDomainContactInput.new
        type.domain_name = params[:domain_name]
        type.admin_contact = ContactDetail.build(params[:admin_contact], context: "#{context}[:admin_contact]") unless params[:admin_contact].nil?
        type.registrant_contact = ContactDetail.build(params[:registrant_contact], context: "#{context}[:registrant_contact]") unless params[:registrant_contact].nil?
        type.tech_contact = ContactDetail.build(params[:tech_contact], context: "#{context}[:tech_contact]") unless params[:tech_contact].nil?
        type
      end
    end

    module UpdateDomainContactOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDomainContactOutput, context: context)
        type = Types::UpdateDomainContactOutput.new
        type.operation_id = params[:operation_id]
        type
      end
    end

    module UpdateDomainContactPrivacyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDomainContactPrivacyInput, context: context)
        type = Types::UpdateDomainContactPrivacyInput.new
        type.domain_name = params[:domain_name]
        type.admin_privacy = params[:admin_privacy]
        type.registrant_privacy = params[:registrant_privacy]
        type.tech_privacy = params[:tech_privacy]
        type
      end
    end

    module UpdateDomainContactPrivacyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDomainContactPrivacyOutput, context: context)
        type = Types::UpdateDomainContactPrivacyOutput.new
        type.operation_id = params[:operation_id]
        type
      end
    end

    module UpdateDomainNameserversInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDomainNameserversInput, context: context)
        type = Types::UpdateDomainNameserversInput.new
        type.domain_name = params[:domain_name]
        type.fi_auth_key = params[:fi_auth_key]
        type.nameservers = NameserverList.build(params[:nameservers], context: "#{context}[:nameservers]") unless params[:nameservers].nil?
        type
      end
    end

    module UpdateDomainNameserversOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDomainNameserversOutput, context: context)
        type = Types::UpdateDomainNameserversOutput.new
        type.operation_id = params[:operation_id]
        type
      end
    end

    module UpdateTagsForDomainInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTagsForDomainInput, context: context)
        type = Types::UpdateTagsForDomainInput.new
        type.domain_name = params[:domain_name]
        type.tags_to_update = TagList.build(params[:tags_to_update], context: "#{context}[:tags_to_update]") unless params[:tags_to_update].nil?
        type
      end
    end

    module UpdateTagsForDomainOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTagsForDomainOutput, context: context)
        type = Types::UpdateTagsForDomainOutput.new
        type
      end
    end

    module Values
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ViewBillingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ViewBillingInput, context: context)
        type = Types::ViewBillingInput.new
        type.start = params[:start]
        type.end = params[:end]
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ViewBillingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ViewBillingOutput, context: context)
        type = Types::ViewBillingOutput.new
        type.next_page_marker = params[:next_page_marker]
        type.billing_records = BillingRecords.build(params[:billing_records], context: "#{context}[:billing_records]") unless params[:billing_records].nil?
        type
      end
    end

  end
end
