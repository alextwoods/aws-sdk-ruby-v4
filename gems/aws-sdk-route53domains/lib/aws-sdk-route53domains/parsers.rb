# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Route53Domains
  module Parsers

    # Operation Parser for AcceptDomainTransferFromAnotherAwsAccount
    class AcceptDomainTransferFromAnotherAwsAccount
      def self.parse(http_resp)
        data = Types::AcceptDomainTransferFromAnotherAwsAccountOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operation_id = map['OperationId']
        data
      end
    end

    # Error Parser for DomainLimitExceeded
    class DomainLimitExceeded
      def self.parse(http_resp)
        data = Types::DomainLimitExceeded.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidInput
    class InvalidInput
      def self.parse(http_resp)
        data = Types::InvalidInput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for UnsupportedTLD
    class UnsupportedTLD
      def self.parse(http_resp)
        data = Types::UnsupportedTLD.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for OperationLimitExceeded
    class OperationLimitExceeded
      def self.parse(http_resp)
        data = Types::OperationLimitExceeded.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CancelDomainTransferToAnotherAwsAccount
    class CancelDomainTransferToAnotherAwsAccount
      def self.parse(http_resp)
        data = Types::CancelDomainTransferToAnotherAwsAccountOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operation_id = map['OperationId']
        data
      end
    end

    # Operation Parser for CheckDomainAvailability
    class CheckDomainAvailability
      def self.parse(http_resp)
        data = Types::CheckDomainAvailabilityOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.availability = map['Availability']
        data
      end
    end

    # Operation Parser for CheckDomainTransferability
    class CheckDomainTransferability
      def self.parse(http_resp)
        data = Types::CheckDomainTransferabilityOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.transferability = (Parsers::DomainTransferability.parse(map['Transferability']) unless map['Transferability'].nil?)
        data
      end
    end

    class DomainTransferability
      def self.parse(map)
        data = Types::DomainTransferability.new
        data.transferable = map['Transferable']
        return data
      end
    end

    # Operation Parser for DeleteDomain
    class DeleteDomain
      def self.parse(http_resp)
        data = Types::DeleteDomainOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operation_id = map['OperationId']
        data
      end
    end

    # Error Parser for DuplicateRequest
    class DuplicateRequest
      def self.parse(http_resp)
        data = Types::DuplicateRequest.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for TLDRulesViolation
    class TLDRulesViolation
      def self.parse(http_resp)
        data = Types::TLDRulesViolation.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DeleteTagsForDomain
    class DeleteTagsForDomain
      def self.parse(http_resp)
        data = Types::DeleteTagsForDomainOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DisableDomainAutoRenew
    class DisableDomainAutoRenew
      def self.parse(http_resp)
        data = Types::DisableDomainAutoRenewOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DisableDomainTransferLock
    class DisableDomainTransferLock
      def self.parse(http_resp)
        data = Types::DisableDomainTransferLockOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operation_id = map['OperationId']
        data
      end
    end

    # Operation Parser for EnableDomainAutoRenew
    class EnableDomainAutoRenew
      def self.parse(http_resp)
        data = Types::EnableDomainAutoRenewOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for EnableDomainTransferLock
    class EnableDomainTransferLock
      def self.parse(http_resp)
        data = Types::EnableDomainTransferLockOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operation_id = map['OperationId']
        data
      end
    end

    # Operation Parser for GetContactReachabilityStatus
    class GetContactReachabilityStatus
      def self.parse(http_resp)
        data = Types::GetContactReachabilityStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.domain_name = map['domainName']
        data.status = map['status']
        data
      end
    end

    # Operation Parser for GetDomainDetail
    class GetDomainDetail
      def self.parse(http_resp)
        data = Types::GetDomainDetailOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.domain_name = map['DomainName']
        data.nameservers = (Parsers::NameserverList.parse(map['Nameservers']) unless map['Nameservers'].nil?)
        data.auto_renew = map['AutoRenew']
        data.admin_contact = (Parsers::ContactDetail.parse(map['AdminContact']) unless map['AdminContact'].nil?)
        data.registrant_contact = (Parsers::ContactDetail.parse(map['RegistrantContact']) unless map['RegistrantContact'].nil?)
        data.tech_contact = (Parsers::ContactDetail.parse(map['TechContact']) unless map['TechContact'].nil?)
        data.admin_privacy = map['AdminPrivacy']
        data.registrant_privacy = map['RegistrantPrivacy']
        data.tech_privacy = map['TechPrivacy']
        data.registrar_name = map['RegistrarName']
        data.who_is_server = map['WhoIsServer']
        data.registrar_url = map['RegistrarUrl']
        data.abuse_contact_email = map['AbuseContactEmail']
        data.abuse_contact_phone = map['AbuseContactPhone']
        data.registry_domain_id = map['RegistryDomainId']
        data.creation_date = Time.at(map['CreationDate'].to_i) if map['CreationDate']
        data.updated_date = Time.at(map['UpdatedDate'].to_i) if map['UpdatedDate']
        data.expiration_date = Time.at(map['ExpirationDate'].to_i) if map['ExpirationDate']
        data.reseller = map['Reseller']
        data.dns_sec = map['DnsSec']
        data.status_list = (Parsers::DomainStatusList.parse(map['StatusList']) unless map['StatusList'].nil?)
        data
      end
    end

    class DomainStatusList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ContactDetail
      def self.parse(map)
        data = Types::ContactDetail.new
        data.first_name = map['FirstName']
        data.last_name = map['LastName']
        data.contact_type = map['ContactType']
        data.organization_name = map['OrganizationName']
        data.address_line1 = map['AddressLine1']
        data.address_line2 = map['AddressLine2']
        data.city = map['City']
        data.state = map['State']
        data.country_code = map['CountryCode']
        data.zip_code = map['ZipCode']
        data.phone_number = map['PhoneNumber']
        data.email = map['Email']
        data.fax = map['Fax']
        data.extra_params = (Parsers::ExtraParamList.parse(map['ExtraParams']) unless map['ExtraParams'].nil?)
        return data
      end
    end

    class ExtraParamList
      def self.parse(list)
        list.map do |value|
          Parsers::ExtraParam.parse(value) unless value.nil?
        end
      end
    end

    class ExtraParam
      def self.parse(map)
        data = Types::ExtraParam.new
        data.name = map['Name']
        data.value = map['Value']
        return data
      end
    end

    class NameserverList
      def self.parse(list)
        list.map do |value|
          Parsers::Nameserver.parse(value) unless value.nil?
        end
      end
    end

    class Nameserver
      def self.parse(map)
        data = Types::Nameserver.new
        data.name = map['Name']
        data.glue_ips = (Parsers::GlueIpList.parse(map['GlueIps']) unless map['GlueIps'].nil?)
        return data
      end
    end

    class GlueIpList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for GetDomainSuggestions
    class GetDomainSuggestions
      def self.parse(http_resp)
        data = Types::GetDomainSuggestionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.suggestions_list = (Parsers::DomainSuggestionsList.parse(map['SuggestionsList']) unless map['SuggestionsList'].nil?)
        data
      end
    end

    class DomainSuggestionsList
      def self.parse(list)
        list.map do |value|
          Parsers::DomainSuggestion.parse(value) unless value.nil?
        end
      end
    end

    class DomainSuggestion
      def self.parse(map)
        data = Types::DomainSuggestion.new
        data.domain_name = map['DomainName']
        data.availability = map['Availability']
        return data
      end
    end

    # Operation Parser for GetOperationDetail
    class GetOperationDetail
      def self.parse(http_resp)
        data = Types::GetOperationDetailOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operation_id = map['OperationId']
        data.status = map['Status']
        data.message = map['Message']
        data.domain_name = map['DomainName']
        data.type = map['Type']
        data.submitted_date = Time.at(map['SubmittedDate'].to_i) if map['SubmittedDate']
        data
      end
    end

    # Operation Parser for ListDomains
    class ListDomains
      def self.parse(http_resp)
        data = Types::ListDomainsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.domains = (Parsers::DomainSummaryList.parse(map['Domains']) unless map['Domains'].nil?)
        data.next_page_marker = map['NextPageMarker']
        data
      end
    end

    class DomainSummaryList
      def self.parse(list)
        list.map do |value|
          Parsers::DomainSummary.parse(value) unless value.nil?
        end
      end
    end

    class DomainSummary
      def self.parse(map)
        data = Types::DomainSummary.new
        data.domain_name = map['DomainName']
        data.auto_renew = map['AutoRenew']
        data.transfer_lock = map['TransferLock']
        data.expiry = Time.at(map['Expiry'].to_i) if map['Expiry']
        return data
      end
    end

    # Operation Parser for ListOperations
    class ListOperations
      def self.parse(http_resp)
        data = Types::ListOperationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operations = (Parsers::OperationSummaryList.parse(map['Operations']) unless map['Operations'].nil?)
        data.next_page_marker = map['NextPageMarker']
        data
      end
    end

    class OperationSummaryList
      def self.parse(list)
        list.map do |value|
          Parsers::OperationSummary.parse(value) unless value.nil?
        end
      end
    end

    class OperationSummary
      def self.parse(map)
        data = Types::OperationSummary.new
        data.operation_id = map['OperationId']
        data.status = map['Status']
        data.type = map['Type']
        data.submitted_date = Time.at(map['SubmittedDate'].to_i) if map['SubmittedDate']
        return data
      end
    end

    # Operation Parser for ListPrices
    class ListPrices
      def self.parse(http_resp)
        data = Types::ListPricesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.prices = (Parsers::DomainPriceList.parse(map['Prices']) unless map['Prices'].nil?)
        data.next_page_marker = map['NextPageMarker']
        data
      end
    end

    class DomainPriceList
      def self.parse(list)
        list.map do |value|
          Parsers::DomainPrice.parse(value) unless value.nil?
        end
      end
    end

    class DomainPrice
      def self.parse(map)
        data = Types::DomainPrice.new
        data.name = map['Name']
        data.registration_price = (Parsers::PriceWithCurrency.parse(map['RegistrationPrice']) unless map['RegistrationPrice'].nil?)
        data.transfer_price = (Parsers::PriceWithCurrency.parse(map['TransferPrice']) unless map['TransferPrice'].nil?)
        data.renewal_price = (Parsers::PriceWithCurrency.parse(map['RenewalPrice']) unless map['RenewalPrice'].nil?)
        data.change_ownership_price = (Parsers::PriceWithCurrency.parse(map['ChangeOwnershipPrice']) unless map['ChangeOwnershipPrice'].nil?)
        data.restoration_price = (Parsers::PriceWithCurrency.parse(map['RestorationPrice']) unless map['RestorationPrice'].nil?)
        return data
      end
    end

    class PriceWithCurrency
      def self.parse(map)
        data = Types::PriceWithCurrency.new
        data.price = Hearth::NumberHelper.deserialize(map['Price'])
        data.currency = map['Currency']
        return data
      end
    end

    # Operation Parser for ListTagsForDomain
    class ListTagsForDomain
      def self.parse(http_resp)
        data = Types::ListTagsForDomainOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tag_list = (Parsers::TagList.parse(map['TagList']) unless map['TagList'].nil?)
        data
      end
    end

    class TagList
      def self.parse(list)
        list.map do |value|
          Parsers::Tag.parse(value) unless value.nil?
        end
      end
    end

    class Tag
      def self.parse(map)
        data = Types::Tag.new
        data.key = map['Key']
        data.value = map['Value']
        return data
      end
    end

    # Operation Parser for RegisterDomain
    class RegisterDomain
      def self.parse(http_resp)
        data = Types::RegisterDomainOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operation_id = map['OperationId']
        data
      end
    end

    # Operation Parser for RejectDomainTransferFromAnotherAwsAccount
    class RejectDomainTransferFromAnotherAwsAccount
      def self.parse(http_resp)
        data = Types::RejectDomainTransferFromAnotherAwsAccountOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operation_id = map['OperationId']
        data
      end
    end

    # Operation Parser for RenewDomain
    class RenewDomain
      def self.parse(http_resp)
        data = Types::RenewDomainOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operation_id = map['OperationId']
        data
      end
    end

    # Operation Parser for ResendContactReachabilityEmail
    class ResendContactReachabilityEmail
      def self.parse(http_resp)
        data = Types::ResendContactReachabilityEmailOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.domain_name = map['domainName']
        data.email_address = map['emailAddress']
        data.is_already_verified = map['isAlreadyVerified']
        data
      end
    end

    # Operation Parser for RetrieveDomainAuthCode
    class RetrieveDomainAuthCode
      def self.parse(http_resp)
        data = Types::RetrieveDomainAuthCodeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.auth_code = map['AuthCode']
        data
      end
    end

    # Operation Parser for TransferDomain
    class TransferDomain
      def self.parse(http_resp)
        data = Types::TransferDomainOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operation_id = map['OperationId']
        data
      end
    end

    # Operation Parser for TransferDomainToAnotherAwsAccount
    class TransferDomainToAnotherAwsAccount
      def self.parse(http_resp)
        data = Types::TransferDomainToAnotherAwsAccountOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operation_id = map['OperationId']
        data.password = map['Password']
        data
      end
    end

    # Operation Parser for UpdateDomainContact
    class UpdateDomainContact
      def self.parse(http_resp)
        data = Types::UpdateDomainContactOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operation_id = map['OperationId']
        data
      end
    end

    # Operation Parser for UpdateDomainContactPrivacy
    class UpdateDomainContactPrivacy
      def self.parse(http_resp)
        data = Types::UpdateDomainContactPrivacyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operation_id = map['OperationId']
        data
      end
    end

    # Operation Parser for UpdateDomainNameservers
    class UpdateDomainNameservers
      def self.parse(http_resp)
        data = Types::UpdateDomainNameserversOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operation_id = map['OperationId']
        data
      end
    end

    # Operation Parser for UpdateTagsForDomain
    class UpdateTagsForDomain
      def self.parse(http_resp)
        data = Types::UpdateTagsForDomainOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for ViewBilling
    class ViewBilling
      def self.parse(http_resp)
        data = Types::ViewBillingOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_page_marker = map['NextPageMarker']
        data.billing_records = (Parsers::BillingRecords.parse(map['BillingRecords']) unless map['BillingRecords'].nil?)
        data
      end
    end

    class BillingRecords
      def self.parse(list)
        list.map do |value|
          Parsers::BillingRecord.parse(value) unless value.nil?
        end
      end
    end

    class BillingRecord
      def self.parse(map)
        data = Types::BillingRecord.new
        data.domain_name = map['DomainName']
        data.operation = map['Operation']
        data.invoice_id = map['InvoiceId']
        data.bill_date = Time.at(map['BillDate'].to_i) if map['BillDate']
        data.price = Hearth::NumberHelper.deserialize(map['Price'])
        return data
      end
    end
  end
end
