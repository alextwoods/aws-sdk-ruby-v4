# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Route53Domains
  module Stubs

    # Operation Stubber for AcceptDomainTransferFromAnotherAwsAccount
    class AcceptDomainTransferFromAnotherAwsAccount
      def self.default(visited=[])
        {
          operation_id: 'operation_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['OperationId'] = stub[:operation_id] unless stub[:operation_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CancelDomainTransferToAnotherAwsAccount
    class CancelDomainTransferToAnotherAwsAccount
      def self.default(visited=[])
        {
          operation_id: 'operation_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['OperationId'] = stub[:operation_id] unless stub[:operation_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CheckDomainAvailability
    class CheckDomainAvailability
      def self.default(visited=[])
        {
          availability: 'availability',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Availability'] = stub[:availability] unless stub[:availability].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CheckDomainTransferability
    class CheckDomainTransferability
      def self.default(visited=[])
        {
          transferability: DomainTransferability.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Transferability'] = Stubs::DomainTransferability.stub(stub[:transferability]) unless stub[:transferability].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for DomainTransferability
    class DomainTransferability
      def self.default(visited=[])
        return nil if visited.include?('DomainTransferability')
        visited = visited + ['DomainTransferability']
        {
          transferable: 'transferable',
        }
      end

      def self.stub(stub)
        stub ||= Types::DomainTransferability.new
        data = {}
        data['Transferable'] = stub[:transferable] unless stub[:transferable].nil?
        data
      end
    end

    # Operation Stubber for DeleteDomain
    class DeleteDomain
      def self.default(visited=[])
        {
          operation_id: 'operation_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['OperationId'] = stub[:operation_id] unless stub[:operation_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteTagsForDomain
    class DeleteTagsForDomain
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisableDomainAutoRenew
    class DisableDomainAutoRenew
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisableDomainTransferLock
    class DisableDomainTransferLock
      def self.default(visited=[])
        {
          operation_id: 'operation_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['OperationId'] = stub[:operation_id] unless stub[:operation_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for EnableDomainAutoRenew
    class EnableDomainAutoRenew
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for EnableDomainTransferLock
    class EnableDomainTransferLock
      def self.default(visited=[])
        {
          operation_id: 'operation_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['OperationId'] = stub[:operation_id] unless stub[:operation_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetContactReachabilityStatus
    class GetContactReachabilityStatus
      def self.default(visited=[])
        {
          domain_name: 'domain_name',
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['domainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetDomainDetail
    class GetDomainDetail
      def self.default(visited=[])
        {
          domain_name: 'domain_name',
          nameservers: NameserverList.default(visited),
          auto_renew: false,
          admin_contact: ContactDetail.default(visited),
          registrant_contact: ContactDetail.default(visited),
          tech_contact: ContactDetail.default(visited),
          admin_privacy: false,
          registrant_privacy: false,
          tech_privacy: false,
          registrar_name: 'registrar_name',
          who_is_server: 'who_is_server',
          registrar_url: 'registrar_url',
          abuse_contact_email: 'abuse_contact_email',
          abuse_contact_phone: 'abuse_contact_phone',
          registry_domain_id: 'registry_domain_id',
          creation_date: Time.now,
          updated_date: Time.now,
          expiration_date: Time.now,
          reseller: 'reseller',
          dns_sec: 'dns_sec',
          status_list: DomainStatusList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DomainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['Nameservers'] = Stubs::NameserverList.stub(stub[:nameservers]) unless stub[:nameservers].nil?
        data['AutoRenew'] = stub[:auto_renew] unless stub[:auto_renew].nil?
        data['AdminContact'] = Stubs::ContactDetail.stub(stub[:admin_contact]) unless stub[:admin_contact].nil?
        data['RegistrantContact'] = Stubs::ContactDetail.stub(stub[:registrant_contact]) unless stub[:registrant_contact].nil?
        data['TechContact'] = Stubs::ContactDetail.stub(stub[:tech_contact]) unless stub[:tech_contact].nil?
        data['AdminPrivacy'] = stub[:admin_privacy] unless stub[:admin_privacy].nil?
        data['RegistrantPrivacy'] = stub[:registrant_privacy] unless stub[:registrant_privacy].nil?
        data['TechPrivacy'] = stub[:tech_privacy] unless stub[:tech_privacy].nil?
        data['RegistrarName'] = stub[:registrar_name] unless stub[:registrar_name].nil?
        data['WhoIsServer'] = stub[:who_is_server] unless stub[:who_is_server].nil?
        data['RegistrarUrl'] = stub[:registrar_url] unless stub[:registrar_url].nil?
        data['AbuseContactEmail'] = stub[:abuse_contact_email] unless stub[:abuse_contact_email].nil?
        data['AbuseContactPhone'] = stub[:abuse_contact_phone] unless stub[:abuse_contact_phone].nil?
        data['RegistryDomainId'] = stub[:registry_domain_id] unless stub[:registry_domain_id].nil?
        data['CreationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['UpdatedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:updated_date]).to_i unless stub[:updated_date].nil?
        data['ExpirationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:expiration_date]).to_i unless stub[:expiration_date].nil?
        data['Reseller'] = stub[:reseller] unless stub[:reseller].nil?
        data['DnsSec'] = stub[:dns_sec] unless stub[:dns_sec].nil?
        data['StatusList'] = Stubs::DomainStatusList.stub(stub[:status_list]) unless stub[:status_list].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DomainStatusList
    class DomainStatusList
      def self.default(visited=[])
        return nil if visited.include?('DomainStatusList')
        visited = visited + ['DomainStatusList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ContactDetail
    class ContactDetail
      def self.default(visited=[])
        return nil if visited.include?('ContactDetail')
        visited = visited + ['ContactDetail']
        {
          first_name: 'first_name',
          last_name: 'last_name',
          contact_type: 'contact_type',
          organization_name: 'organization_name',
          address_line1: 'address_line1',
          address_line2: 'address_line2',
          city: 'city',
          state: 'state',
          country_code: 'country_code',
          zip_code: 'zip_code',
          phone_number: 'phone_number',
          email: 'email',
          fax: 'fax',
          extra_params: ExtraParamList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ContactDetail.new
        data = {}
        data['FirstName'] = stub[:first_name] unless stub[:first_name].nil?
        data['LastName'] = stub[:last_name] unless stub[:last_name].nil?
        data['ContactType'] = stub[:contact_type] unless stub[:contact_type].nil?
        data['OrganizationName'] = stub[:organization_name] unless stub[:organization_name].nil?
        data['AddressLine1'] = stub[:address_line1] unless stub[:address_line1].nil?
        data['AddressLine2'] = stub[:address_line2] unless stub[:address_line2].nil?
        data['City'] = stub[:city] unless stub[:city].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['CountryCode'] = stub[:country_code] unless stub[:country_code].nil?
        data['ZipCode'] = stub[:zip_code] unless stub[:zip_code].nil?
        data['PhoneNumber'] = stub[:phone_number] unless stub[:phone_number].nil?
        data['Email'] = stub[:email] unless stub[:email].nil?
        data['Fax'] = stub[:fax] unless stub[:fax].nil?
        data['ExtraParams'] = Stubs::ExtraParamList.stub(stub[:extra_params]) unless stub[:extra_params].nil?
        data
      end
    end

    # List Stubber for ExtraParamList
    class ExtraParamList
      def self.default(visited=[])
        return nil if visited.include?('ExtraParamList')
        visited = visited + ['ExtraParamList']
        [
          ExtraParam.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ExtraParam.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ExtraParam
    class ExtraParam
      def self.default(visited=[])
        return nil if visited.include?('ExtraParam')
        visited = visited + ['ExtraParam']
        {
          name: 'name',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::ExtraParam.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # List Stubber for NameserverList
    class NameserverList
      def self.default(visited=[])
        return nil if visited.include?('NameserverList')
        visited = visited + ['NameserverList']
        [
          Nameserver.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Nameserver.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Nameserver
    class Nameserver
      def self.default(visited=[])
        return nil if visited.include?('Nameserver')
        visited = visited + ['Nameserver']
        {
          name: 'name',
          glue_ips: GlueIpList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Nameserver.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['GlueIps'] = Stubs::GlueIpList.stub(stub[:glue_ips]) unless stub[:glue_ips].nil?
        data
      end
    end

    # List Stubber for GlueIpList
    class GlueIpList
      def self.default(visited=[])
        return nil if visited.include?('GlueIpList')
        visited = visited + ['GlueIpList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetDomainSuggestions
    class GetDomainSuggestions
      def self.default(visited=[])
        {
          suggestions_list: DomainSuggestionsList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SuggestionsList'] = Stubs::DomainSuggestionsList.stub(stub[:suggestions_list]) unless stub[:suggestions_list].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DomainSuggestionsList
    class DomainSuggestionsList
      def self.default(visited=[])
        return nil if visited.include?('DomainSuggestionsList')
        visited = visited + ['DomainSuggestionsList']
        [
          DomainSuggestion.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DomainSuggestion.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DomainSuggestion
    class DomainSuggestion
      def self.default(visited=[])
        return nil if visited.include?('DomainSuggestion')
        visited = visited + ['DomainSuggestion']
        {
          domain_name: 'domain_name',
          availability: 'availability',
        }
      end

      def self.stub(stub)
        stub ||= Types::DomainSuggestion.new
        data = {}
        data['DomainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['Availability'] = stub[:availability] unless stub[:availability].nil?
        data
      end
    end

    # Operation Stubber for GetOperationDetail
    class GetOperationDetail
      def self.default(visited=[])
        {
          operation_id: 'operation_id',
          status: 'status',
          message: 'message',
          domain_name: 'domain_name',
          type: 'type',
          submitted_date: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['OperationId'] = stub[:operation_id] unless stub[:operation_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['DomainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['SubmittedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:submitted_date]).to_i unless stub[:submitted_date].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListDomains
    class ListDomains
      def self.default(visited=[])
        {
          domains: DomainSummaryList.default(visited),
          next_page_marker: 'next_page_marker',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Domains'] = Stubs::DomainSummaryList.stub(stub[:domains]) unless stub[:domains].nil?
        data['NextPageMarker'] = stub[:next_page_marker] unless stub[:next_page_marker].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DomainSummaryList
    class DomainSummaryList
      def self.default(visited=[])
        return nil if visited.include?('DomainSummaryList')
        visited = visited + ['DomainSummaryList']
        [
          DomainSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DomainSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DomainSummary
    class DomainSummary
      def self.default(visited=[])
        return nil if visited.include?('DomainSummary')
        visited = visited + ['DomainSummary']
        {
          domain_name: 'domain_name',
          auto_renew: false,
          transfer_lock: false,
          expiry: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::DomainSummary.new
        data = {}
        data['DomainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['AutoRenew'] = stub[:auto_renew] unless stub[:auto_renew].nil?
        data['TransferLock'] = stub[:transfer_lock] unless stub[:transfer_lock].nil?
        data['Expiry'] = Hearth::TimeHelper.to_epoch_seconds(stub[:expiry]).to_i unless stub[:expiry].nil?
        data
      end
    end

    # Operation Stubber for ListOperations
    class ListOperations
      def self.default(visited=[])
        {
          operations: OperationSummaryList.default(visited),
          next_page_marker: 'next_page_marker',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Operations'] = Stubs::OperationSummaryList.stub(stub[:operations]) unless stub[:operations].nil?
        data['NextPageMarker'] = stub[:next_page_marker] unless stub[:next_page_marker].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for OperationSummaryList
    class OperationSummaryList
      def self.default(visited=[])
        return nil if visited.include?('OperationSummaryList')
        visited = visited + ['OperationSummaryList']
        [
          OperationSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::OperationSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for OperationSummary
    class OperationSummary
      def self.default(visited=[])
        return nil if visited.include?('OperationSummary')
        visited = visited + ['OperationSummary']
        {
          operation_id: 'operation_id',
          status: 'status',
          type: 'type',
          submitted_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::OperationSummary.new
        data = {}
        data['OperationId'] = stub[:operation_id] unless stub[:operation_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['SubmittedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:submitted_date]).to_i unless stub[:submitted_date].nil?
        data
      end
    end

    # Operation Stubber for ListPrices
    class ListPrices
      def self.default(visited=[])
        {
          prices: DomainPriceList.default(visited),
          next_page_marker: 'next_page_marker',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Prices'] = Stubs::DomainPriceList.stub(stub[:prices]) unless stub[:prices].nil?
        data['NextPageMarker'] = stub[:next_page_marker] unless stub[:next_page_marker].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DomainPriceList
    class DomainPriceList
      def self.default(visited=[])
        return nil if visited.include?('DomainPriceList')
        visited = visited + ['DomainPriceList']
        [
          DomainPrice.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DomainPrice.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DomainPrice
    class DomainPrice
      def self.default(visited=[])
        return nil if visited.include?('DomainPrice')
        visited = visited + ['DomainPrice']
        {
          name: 'name',
          registration_price: PriceWithCurrency.default(visited),
          transfer_price: PriceWithCurrency.default(visited),
          renewal_price: PriceWithCurrency.default(visited),
          change_ownership_price: PriceWithCurrency.default(visited),
          restoration_price: PriceWithCurrency.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DomainPrice.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['RegistrationPrice'] = Stubs::PriceWithCurrency.stub(stub[:registration_price]) unless stub[:registration_price].nil?
        data['TransferPrice'] = Stubs::PriceWithCurrency.stub(stub[:transfer_price]) unless stub[:transfer_price].nil?
        data['RenewalPrice'] = Stubs::PriceWithCurrency.stub(stub[:renewal_price]) unless stub[:renewal_price].nil?
        data['ChangeOwnershipPrice'] = Stubs::PriceWithCurrency.stub(stub[:change_ownership_price]) unless stub[:change_ownership_price].nil?
        data['RestorationPrice'] = Stubs::PriceWithCurrency.stub(stub[:restoration_price]) unless stub[:restoration_price].nil?
        data
      end
    end

    # Structure Stubber for PriceWithCurrency
    class PriceWithCurrency
      def self.default(visited=[])
        return nil if visited.include?('PriceWithCurrency')
        visited = visited + ['PriceWithCurrency']
        {
          price: 1.0,
          currency: 'currency',
        }
      end

      def self.stub(stub)
        stub ||= Types::PriceWithCurrency.new
        data = {}
        data['Price'] = Hearth::NumberHelper.serialize(stub[:price])
        data['Currency'] = stub[:currency] unless stub[:currency].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForDomain
    class ListTagsForDomain
      def self.default(visited=[])
        {
          tag_list: TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TagList'] = Stubs::TagList.stub(stub[:tag_list]) unless stub[:tag_list].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
        [
          Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Tag.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Tag
    class Tag
      def self.default(visited=[])
        return nil if visited.include?('Tag')
        visited = visited + ['Tag']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Tag.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for RegisterDomain
    class RegisterDomain
      def self.default(visited=[])
        {
          operation_id: 'operation_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['OperationId'] = stub[:operation_id] unless stub[:operation_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RejectDomainTransferFromAnotherAwsAccount
    class RejectDomainTransferFromAnotherAwsAccount
      def self.default(visited=[])
        {
          operation_id: 'operation_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['OperationId'] = stub[:operation_id] unless stub[:operation_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RenewDomain
    class RenewDomain
      def self.default(visited=[])
        {
          operation_id: 'operation_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['OperationId'] = stub[:operation_id] unless stub[:operation_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ResendContactReachabilityEmail
    class ResendContactReachabilityEmail
      def self.default(visited=[])
        {
          domain_name: 'domain_name',
          email_address: 'email_address',
          is_already_verified: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['domainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['emailAddress'] = stub[:email_address] unless stub[:email_address].nil?
        data['isAlreadyVerified'] = stub[:is_already_verified] unless stub[:is_already_verified].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RetrieveDomainAuthCode
    class RetrieveDomainAuthCode
      def self.default(visited=[])
        {
          auth_code: 'auth_code',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AuthCode'] = stub[:auth_code] unless stub[:auth_code].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for TransferDomain
    class TransferDomain
      def self.default(visited=[])
        {
          operation_id: 'operation_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['OperationId'] = stub[:operation_id] unless stub[:operation_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for TransferDomainToAnotherAwsAccount
    class TransferDomainToAnotherAwsAccount
      def self.default(visited=[])
        {
          operation_id: 'operation_id',
          password: 'password',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['OperationId'] = stub[:operation_id] unless stub[:operation_id].nil?
        data['Password'] = stub[:password] unless stub[:password].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateDomainContact
    class UpdateDomainContact
      def self.default(visited=[])
        {
          operation_id: 'operation_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['OperationId'] = stub[:operation_id] unless stub[:operation_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateDomainContactPrivacy
    class UpdateDomainContactPrivacy
      def self.default(visited=[])
        {
          operation_id: 'operation_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['OperationId'] = stub[:operation_id] unless stub[:operation_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateDomainNameservers
    class UpdateDomainNameservers
      def self.default(visited=[])
        {
          operation_id: 'operation_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['OperationId'] = stub[:operation_id] unless stub[:operation_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateTagsForDomain
    class UpdateTagsForDomain
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ViewBilling
    class ViewBilling
      def self.default(visited=[])
        {
          next_page_marker: 'next_page_marker',
          billing_records: BillingRecords.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextPageMarker'] = stub[:next_page_marker] unless stub[:next_page_marker].nil?
        data['BillingRecords'] = Stubs::BillingRecords.stub(stub[:billing_records]) unless stub[:billing_records].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for BillingRecords
    class BillingRecords
      def self.default(visited=[])
        return nil if visited.include?('BillingRecords')
        visited = visited + ['BillingRecords']
        [
          BillingRecord.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BillingRecord.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BillingRecord
    class BillingRecord
      def self.default(visited=[])
        return nil if visited.include?('BillingRecord')
        visited = visited + ['BillingRecord']
        {
          domain_name: 'domain_name',
          operation: 'operation',
          invoice_id: 'invoice_id',
          bill_date: Time.now,
          price: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::BillingRecord.new
        data = {}
        data['DomainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['Operation'] = stub[:operation] unless stub[:operation].nil?
        data['InvoiceId'] = stub[:invoice_id] unless stub[:invoice_id].nil?
        data['BillDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:bill_date]).to_i unless stub[:bill_date].nil?
        data['Price'] = Hearth::NumberHelper.serialize(stub[:price])
        data
      end
    end
  end
end
