# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Route53Domains
  module Builders

    # Operation Builder for AcceptDomainTransferFromAnotherAwsAccount
    class AcceptDomainTransferFromAnotherAwsAccount
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Domains_v20140515.AcceptDomainTransferFromAnotherAwsAccount'
        data = {}
        data['DomainName'] = input[:domain_name] unless input[:domain_name].nil?
        data['Password'] = input[:password] unless input[:password].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CancelDomainTransferToAnotherAwsAccount
    class CancelDomainTransferToAnotherAwsAccount
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Domains_v20140515.CancelDomainTransferToAnotherAwsAccount'
        data = {}
        data['DomainName'] = input[:domain_name] unless input[:domain_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CheckDomainAvailability
    class CheckDomainAvailability
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Domains_v20140515.CheckDomainAvailability'
        data = {}
        data['DomainName'] = input[:domain_name] unless input[:domain_name].nil?
        data['IdnLangCode'] = input[:idn_lang_code] unless input[:idn_lang_code].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CheckDomainTransferability
    class CheckDomainTransferability
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Domains_v20140515.CheckDomainTransferability'
        data = {}
        data['DomainName'] = input[:domain_name] unless input[:domain_name].nil?
        data['AuthCode'] = input[:auth_code] unless input[:auth_code].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteDomain
    class DeleteDomain
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Domains_v20140515.DeleteDomain'
        data = {}
        data['DomainName'] = input[:domain_name] unless input[:domain_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteTagsForDomain
    class DeleteTagsForDomain
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Domains_v20140515.DeleteTagsForDomain'
        data = {}
        data['DomainName'] = input[:domain_name] unless input[:domain_name].nil?
        data['TagsToDelete'] = Builders::TagKeyList.build(input[:tags_to_delete]) unless input[:tags_to_delete].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DisableDomainAutoRenew
    class DisableDomainAutoRenew
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Domains_v20140515.DisableDomainAutoRenew'
        data = {}
        data['DomainName'] = input[:domain_name] unless input[:domain_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisableDomainTransferLock
    class DisableDomainTransferLock
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Domains_v20140515.DisableDomainTransferLock'
        data = {}
        data['DomainName'] = input[:domain_name] unless input[:domain_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for EnableDomainAutoRenew
    class EnableDomainAutoRenew
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Domains_v20140515.EnableDomainAutoRenew'
        data = {}
        data['DomainName'] = input[:domain_name] unless input[:domain_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for EnableDomainTransferLock
    class EnableDomainTransferLock
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Domains_v20140515.EnableDomainTransferLock'
        data = {}
        data['DomainName'] = input[:domain_name] unless input[:domain_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetContactReachabilityStatus
    class GetContactReachabilityStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Domains_v20140515.GetContactReachabilityStatus'
        data = {}
        data['domainName'] = input[:domain_name] unless input[:domain_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetDomainDetail
    class GetDomainDetail
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Domains_v20140515.GetDomainDetail'
        data = {}
        data['DomainName'] = input[:domain_name] unless input[:domain_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetDomainSuggestions
    class GetDomainSuggestions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Domains_v20140515.GetDomainSuggestions'
        data = {}
        data['DomainName'] = input[:domain_name] unless input[:domain_name].nil?
        data['SuggestionCount'] = input[:suggestion_count] unless input[:suggestion_count].nil?
        data['OnlyAvailable'] = input[:only_available] unless input[:only_available].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetOperationDetail
    class GetOperationDetail
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Domains_v20140515.GetOperationDetail'
        data = {}
        data['OperationId'] = input[:operation_id] unless input[:operation_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListDomains
    class ListDomains
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Domains_v20140515.ListDomains'
        data = {}
        data['FilterConditions'] = Builders::FilterConditions.build(input[:filter_conditions]) unless input[:filter_conditions].nil?
        data['SortCondition'] = Builders::SortCondition.build(input[:sort_condition]) unless input[:sort_condition].nil?
        data['Marker'] = input[:marker] unless input[:marker].nil?
        data['MaxItems'] = input[:max_items] unless input[:max_items].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for SortCondition
    class SortCondition
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data
      end
    end

    # List Builder for FilterConditions
    class FilterConditions
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::FilterCondition.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for FilterCondition
    class FilterCondition
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Operator'] = input[:operator] unless input[:operator].nil?
        data['Values'] = Builders::Values.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # List Builder for Values
    class Values
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListOperations
    class ListOperations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Domains_v20140515.ListOperations'
        data = {}
        data['SubmittedSince'] = Hearth::TimeHelper.to_epoch_seconds(input[:submitted_since]).to_i unless input[:submitted_since].nil?
        data['Marker'] = input[:marker] unless input[:marker].nil?
        data['MaxItems'] = input[:max_items] unless input[:max_items].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListPrices
    class ListPrices
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Domains_v20140515.ListPrices'
        data = {}
        data['Tld'] = input[:tld] unless input[:tld].nil?
        data['Marker'] = input[:marker] unless input[:marker].nil?
        data['MaxItems'] = input[:max_items] unless input[:max_items].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForDomain
    class ListTagsForDomain
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Domains_v20140515.ListTagsForDomain'
        data = {}
        data['DomainName'] = input[:domain_name] unless input[:domain_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RegisterDomain
    class RegisterDomain
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Domains_v20140515.RegisterDomain'
        data = {}
        data['DomainName'] = input[:domain_name] unless input[:domain_name].nil?
        data['IdnLangCode'] = input[:idn_lang_code] unless input[:idn_lang_code].nil?
        data['DurationInYears'] = input[:duration_in_years] unless input[:duration_in_years].nil?
        data['AutoRenew'] = input[:auto_renew] unless input[:auto_renew].nil?
        data['AdminContact'] = Builders::ContactDetail.build(input[:admin_contact]) unless input[:admin_contact].nil?
        data['RegistrantContact'] = Builders::ContactDetail.build(input[:registrant_contact]) unless input[:registrant_contact].nil?
        data['TechContact'] = Builders::ContactDetail.build(input[:tech_contact]) unless input[:tech_contact].nil?
        data['PrivacyProtectAdminContact'] = input[:privacy_protect_admin_contact] unless input[:privacy_protect_admin_contact].nil?
        data['PrivacyProtectRegistrantContact'] = input[:privacy_protect_registrant_contact] unless input[:privacy_protect_registrant_contact].nil?
        data['PrivacyProtectTechContact'] = input[:privacy_protect_tech_contact] unless input[:privacy_protect_tech_contact].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ContactDetail
    class ContactDetail
      def self.build(input)
        data = {}
        data['FirstName'] = input[:first_name] unless input[:first_name].nil?
        data['LastName'] = input[:last_name] unless input[:last_name].nil?
        data['ContactType'] = input[:contact_type] unless input[:contact_type].nil?
        data['OrganizationName'] = input[:organization_name] unless input[:organization_name].nil?
        data['AddressLine1'] = input[:address_line1] unless input[:address_line1].nil?
        data['AddressLine2'] = input[:address_line2] unless input[:address_line2].nil?
        data['City'] = input[:city] unless input[:city].nil?
        data['State'] = input[:state] unless input[:state].nil?
        data['CountryCode'] = input[:country_code] unless input[:country_code].nil?
        data['ZipCode'] = input[:zip_code] unless input[:zip_code].nil?
        data['PhoneNumber'] = input[:phone_number] unless input[:phone_number].nil?
        data['Email'] = input[:email] unless input[:email].nil?
        data['Fax'] = input[:fax] unless input[:fax].nil?
        data['ExtraParams'] = Builders::ExtraParamList.build(input[:extra_params]) unless input[:extra_params].nil?
        data
      end
    end

    # List Builder for ExtraParamList
    class ExtraParamList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ExtraParam.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ExtraParam
    class ExtraParam
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for RejectDomainTransferFromAnotherAwsAccount
    class RejectDomainTransferFromAnotherAwsAccount
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Domains_v20140515.RejectDomainTransferFromAnotherAwsAccount'
        data = {}
        data['DomainName'] = input[:domain_name] unless input[:domain_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RenewDomain
    class RenewDomain
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Domains_v20140515.RenewDomain'
        data = {}
        data['DomainName'] = input[:domain_name] unless input[:domain_name].nil?
        data['DurationInYears'] = input[:duration_in_years] unless input[:duration_in_years].nil?
        data['CurrentExpiryYear'] = input[:current_expiry_year] unless input[:current_expiry_year].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ResendContactReachabilityEmail
    class ResendContactReachabilityEmail
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Domains_v20140515.ResendContactReachabilityEmail'
        data = {}
        data['domainName'] = input[:domain_name] unless input[:domain_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RetrieveDomainAuthCode
    class RetrieveDomainAuthCode
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Domains_v20140515.RetrieveDomainAuthCode'
        data = {}
        data['DomainName'] = input[:domain_name] unless input[:domain_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TransferDomain
    class TransferDomain
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Domains_v20140515.TransferDomain'
        data = {}
        data['DomainName'] = input[:domain_name] unless input[:domain_name].nil?
        data['IdnLangCode'] = input[:idn_lang_code] unless input[:idn_lang_code].nil?
        data['DurationInYears'] = input[:duration_in_years] unless input[:duration_in_years].nil?
        data['Nameservers'] = Builders::NameserverList.build(input[:nameservers]) unless input[:nameservers].nil?
        data['AuthCode'] = input[:auth_code] unless input[:auth_code].nil?
        data['AutoRenew'] = input[:auto_renew] unless input[:auto_renew].nil?
        data['AdminContact'] = Builders::ContactDetail.build(input[:admin_contact]) unless input[:admin_contact].nil?
        data['RegistrantContact'] = Builders::ContactDetail.build(input[:registrant_contact]) unless input[:registrant_contact].nil?
        data['TechContact'] = Builders::ContactDetail.build(input[:tech_contact]) unless input[:tech_contact].nil?
        data['PrivacyProtectAdminContact'] = input[:privacy_protect_admin_contact] unless input[:privacy_protect_admin_contact].nil?
        data['PrivacyProtectRegistrantContact'] = input[:privacy_protect_registrant_contact] unless input[:privacy_protect_registrant_contact].nil?
        data['PrivacyProtectTechContact'] = input[:privacy_protect_tech_contact] unless input[:privacy_protect_tech_contact].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for NameserverList
    class NameserverList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Nameserver.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Nameserver
    class Nameserver
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['GlueIps'] = Builders::GlueIpList.build(input[:glue_ips]) unless input[:glue_ips].nil?
        data
      end
    end

    # List Builder for GlueIpList
    class GlueIpList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for TransferDomainToAnotherAwsAccount
    class TransferDomainToAnotherAwsAccount
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Domains_v20140515.TransferDomainToAnotherAwsAccount'
        data = {}
        data['DomainName'] = input[:domain_name] unless input[:domain_name].nil?
        data['AccountId'] = input[:account_id] unless input[:account_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateDomainContact
    class UpdateDomainContact
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Domains_v20140515.UpdateDomainContact'
        data = {}
        data['DomainName'] = input[:domain_name] unless input[:domain_name].nil?
        data['AdminContact'] = Builders::ContactDetail.build(input[:admin_contact]) unless input[:admin_contact].nil?
        data['RegistrantContact'] = Builders::ContactDetail.build(input[:registrant_contact]) unless input[:registrant_contact].nil?
        data['TechContact'] = Builders::ContactDetail.build(input[:tech_contact]) unless input[:tech_contact].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateDomainContactPrivacy
    class UpdateDomainContactPrivacy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Domains_v20140515.UpdateDomainContactPrivacy'
        data = {}
        data['DomainName'] = input[:domain_name] unless input[:domain_name].nil?
        data['AdminPrivacy'] = input[:admin_privacy] unless input[:admin_privacy].nil?
        data['RegistrantPrivacy'] = input[:registrant_privacy] unless input[:registrant_privacy].nil?
        data['TechPrivacy'] = input[:tech_privacy] unless input[:tech_privacy].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateDomainNameservers
    class UpdateDomainNameservers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Domains_v20140515.UpdateDomainNameservers'
        data = {}
        data['DomainName'] = input[:domain_name] unless input[:domain_name].nil?
        data['FIAuthKey'] = input[:fi_auth_key] unless input[:fi_auth_key].nil?
        data['Nameservers'] = Builders::NameserverList.build(input[:nameservers]) unless input[:nameservers].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateTagsForDomain
    class UpdateTagsForDomain
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Domains_v20140515.UpdateTagsForDomain'
        data = {}
        data['DomainName'] = input[:domain_name] unless input[:domain_name].nil?
        data['TagsToUpdate'] = Builders::TagList.build(input[:tags_to_update]) unless input[:tags_to_update].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for ViewBilling
    class ViewBilling
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Route53Domains_v20140515.ViewBilling'
        data = {}
        data['Start'] = Hearth::TimeHelper.to_epoch_seconds(input[:start]).to_i unless input[:start].nil?
        data['End'] = Hearth::TimeHelper.to_epoch_seconds(input[:end]).to_i unless input[:end].nil?
        data['Marker'] = input[:marker] unless input[:marker].nil?
        data['MaxItems'] = input[:max_items] unless input[:max_items].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
