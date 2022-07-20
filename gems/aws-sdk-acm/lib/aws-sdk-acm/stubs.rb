# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ACM
  module Stubs

    # Operation Stubber for AddTagsToCertificate
    class AddTagsToCertificate
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

    # Operation Stubber for DeleteCertificate
    class DeleteCertificate
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

    # Operation Stubber for DescribeCertificate
    class DescribeCertificate
      def self.default(visited=[])
        {
          certificate: CertificateDetail.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Certificate'] = Stubs::CertificateDetail.stub(stub[:certificate]) unless stub[:certificate].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for CertificateDetail
    class CertificateDetail
      def self.default(visited=[])
        return nil if visited.include?('CertificateDetail')
        visited = visited + ['CertificateDetail']
        {
          certificate_arn: 'certificate_arn',
          domain_name: 'domain_name',
          subject_alternative_names: DomainList.default(visited),
          domain_validation_options: DomainValidationList.default(visited),
          serial: 'serial',
          subject: 'subject',
          issuer: 'issuer',
          created_at: Time.now,
          issued_at: Time.now,
          imported_at: Time.now,
          status: 'status',
          revoked_at: Time.now,
          revocation_reason: 'revocation_reason',
          not_before: Time.now,
          not_after: Time.now,
          key_algorithm: 'key_algorithm',
          signature_algorithm: 'signature_algorithm',
          in_use_by: InUseList.default(visited),
          failure_reason: 'failure_reason',
          type: 'type',
          renewal_summary: RenewalSummary.default(visited),
          key_usages: KeyUsageList.default(visited),
          extended_key_usages: ExtendedKeyUsageList.default(visited),
          certificate_authority_arn: 'certificate_authority_arn',
          renewal_eligibility: 'renewal_eligibility',
          options: CertificateOptions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CertificateDetail.new
        data = {}
        data['CertificateArn'] = stub[:certificate_arn] unless stub[:certificate_arn].nil?
        data['DomainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['SubjectAlternativeNames'] = Stubs::DomainList.stub(stub[:subject_alternative_names]) unless stub[:subject_alternative_names].nil?
        data['DomainValidationOptions'] = Stubs::DomainValidationList.stub(stub[:domain_validation_options]) unless stub[:domain_validation_options].nil?
        data['Serial'] = stub[:serial] unless stub[:serial].nil?
        data['Subject'] = stub[:subject] unless stub[:subject].nil?
        data['Issuer'] = stub[:issuer] unless stub[:issuer].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['IssuedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:issued_at]).to_i unless stub[:issued_at].nil?
        data['ImportedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:imported_at]).to_i unless stub[:imported_at].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['RevokedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:revoked_at]).to_i unless stub[:revoked_at].nil?
        data['RevocationReason'] = stub[:revocation_reason] unless stub[:revocation_reason].nil?
        data['NotBefore'] = Hearth::TimeHelper.to_epoch_seconds(stub[:not_before]).to_i unless stub[:not_before].nil?
        data['NotAfter'] = Hearth::TimeHelper.to_epoch_seconds(stub[:not_after]).to_i unless stub[:not_after].nil?
        data['KeyAlgorithm'] = stub[:key_algorithm] unless stub[:key_algorithm].nil?
        data['SignatureAlgorithm'] = stub[:signature_algorithm] unless stub[:signature_algorithm].nil?
        data['InUseBy'] = Stubs::InUseList.stub(stub[:in_use_by]) unless stub[:in_use_by].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['RenewalSummary'] = Stubs::RenewalSummary.stub(stub[:renewal_summary]) unless stub[:renewal_summary].nil?
        data['KeyUsages'] = Stubs::KeyUsageList.stub(stub[:key_usages]) unless stub[:key_usages].nil?
        data['ExtendedKeyUsages'] = Stubs::ExtendedKeyUsageList.stub(stub[:extended_key_usages]) unless stub[:extended_key_usages].nil?
        data['CertificateAuthorityArn'] = stub[:certificate_authority_arn] unless stub[:certificate_authority_arn].nil?
        data['RenewalEligibility'] = stub[:renewal_eligibility] unless stub[:renewal_eligibility].nil?
        data['Options'] = Stubs::CertificateOptions.stub(stub[:options]) unless stub[:options].nil?
        data
      end
    end

    # Structure Stubber for CertificateOptions
    class CertificateOptions
      def self.default(visited=[])
        return nil if visited.include?('CertificateOptions')
        visited = visited + ['CertificateOptions']
        {
          certificate_transparency_logging_preference: 'certificate_transparency_logging_preference',
        }
      end

      def self.stub(stub)
        stub ||= Types::CertificateOptions.new
        data = {}
        data['CertificateTransparencyLoggingPreference'] = stub[:certificate_transparency_logging_preference] unless stub[:certificate_transparency_logging_preference].nil?
        data
      end
    end

    # List Stubber for ExtendedKeyUsageList
    class ExtendedKeyUsageList
      def self.default(visited=[])
        return nil if visited.include?('ExtendedKeyUsageList')
        visited = visited + ['ExtendedKeyUsageList']
        [
          ExtendedKeyUsage.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ExtendedKeyUsage.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ExtendedKeyUsage
    class ExtendedKeyUsage
      def self.default(visited=[])
        return nil if visited.include?('ExtendedKeyUsage')
        visited = visited + ['ExtendedKeyUsage']
        {
          name: 'name',
          oid: 'oid',
        }
      end

      def self.stub(stub)
        stub ||= Types::ExtendedKeyUsage.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['OID'] = stub[:oid] unless stub[:oid].nil?
        data
      end
    end

    # List Stubber for KeyUsageList
    class KeyUsageList
      def self.default(visited=[])
        return nil if visited.include?('KeyUsageList')
        visited = visited + ['KeyUsageList']
        [
          KeyUsage.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::KeyUsage.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for KeyUsage
    class KeyUsage
      def self.default(visited=[])
        return nil if visited.include?('KeyUsage')
        visited = visited + ['KeyUsage']
        {
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::KeyUsage.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Structure Stubber for RenewalSummary
    class RenewalSummary
      def self.default(visited=[])
        return nil if visited.include?('RenewalSummary')
        visited = visited + ['RenewalSummary']
        {
          renewal_status: 'renewal_status',
          domain_validation_options: DomainValidationList.default(visited),
          renewal_status_reason: 'renewal_status_reason',
          updated_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::RenewalSummary.new
        data = {}
        data['RenewalStatus'] = stub[:renewal_status] unless stub[:renewal_status].nil?
        data['DomainValidationOptions'] = Stubs::DomainValidationList.stub(stub[:domain_validation_options]) unless stub[:domain_validation_options].nil?
        data['RenewalStatusReason'] = stub[:renewal_status_reason] unless stub[:renewal_status_reason].nil?
        data['UpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:updated_at]).to_i unless stub[:updated_at].nil?
        data
      end
    end

    # List Stubber for DomainValidationList
    class DomainValidationList
      def self.default(visited=[])
        return nil if visited.include?('DomainValidationList')
        visited = visited + ['DomainValidationList']
        [
          DomainValidation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DomainValidation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DomainValidation
    class DomainValidation
      def self.default(visited=[])
        return nil if visited.include?('DomainValidation')
        visited = visited + ['DomainValidation']
        {
          domain_name: 'domain_name',
          validation_emails: ValidationEmailList.default(visited),
          validation_domain: 'validation_domain',
          validation_status: 'validation_status',
          resource_record: ResourceRecord.default(visited),
          validation_method: 'validation_method',
        }
      end

      def self.stub(stub)
        stub ||= Types::DomainValidation.new
        data = {}
        data['DomainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['ValidationEmails'] = Stubs::ValidationEmailList.stub(stub[:validation_emails]) unless stub[:validation_emails].nil?
        data['ValidationDomain'] = stub[:validation_domain] unless stub[:validation_domain].nil?
        data['ValidationStatus'] = stub[:validation_status] unless stub[:validation_status].nil?
        data['ResourceRecord'] = Stubs::ResourceRecord.stub(stub[:resource_record]) unless stub[:resource_record].nil?
        data['ValidationMethod'] = stub[:validation_method] unless stub[:validation_method].nil?
        data
      end
    end

    # Structure Stubber for ResourceRecord
    class ResourceRecord
      def self.default(visited=[])
        return nil if visited.include?('ResourceRecord')
        visited = visited + ['ResourceRecord']
        {
          name: 'name',
          type: 'type',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceRecord.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # List Stubber for ValidationEmailList
    class ValidationEmailList
      def self.default(visited=[])
        return nil if visited.include?('ValidationEmailList')
        visited = visited + ['ValidationEmailList']
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

    # List Stubber for InUseList
    class InUseList
      def self.default(visited=[])
        return nil if visited.include?('InUseList')
        visited = visited + ['InUseList']
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

    # List Stubber for DomainList
    class DomainList
      def self.default(visited=[])
        return nil if visited.include?('DomainList')
        visited = visited + ['DomainList']
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

    # Operation Stubber for ExportCertificate
    class ExportCertificate
      def self.default(visited=[])
        {
          certificate: 'certificate',
          certificate_chain: 'certificate_chain',
          private_key: 'private_key',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Certificate'] = stub[:certificate] unless stub[:certificate].nil?
        data['CertificateChain'] = stub[:certificate_chain] unless stub[:certificate_chain].nil?
        data['PrivateKey'] = stub[:private_key] unless stub[:private_key].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetAccountConfiguration
    class GetAccountConfiguration
      def self.default(visited=[])
        {
          expiry_events: ExpiryEventsConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ExpiryEvents'] = Stubs::ExpiryEventsConfiguration.stub(stub[:expiry_events]) unless stub[:expiry_events].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ExpiryEventsConfiguration
    class ExpiryEventsConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ExpiryEventsConfiguration')
        visited = visited + ['ExpiryEventsConfiguration']
        {
          days_before_expiry: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ExpiryEventsConfiguration.new
        data = {}
        data['DaysBeforeExpiry'] = stub[:days_before_expiry] unless stub[:days_before_expiry].nil?
        data
      end
    end

    # Operation Stubber for GetCertificate
    class GetCertificate
      def self.default(visited=[])
        {
          certificate: 'certificate',
          certificate_chain: 'certificate_chain',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Certificate'] = stub[:certificate] unless stub[:certificate].nil?
        data['CertificateChain'] = stub[:certificate_chain] unless stub[:certificate_chain].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ImportCertificate
    class ImportCertificate
      def self.default(visited=[])
        {
          certificate_arn: 'certificate_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CertificateArn'] = stub[:certificate_arn] unless stub[:certificate_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListCertificates
    class ListCertificates
      def self.default(visited=[])
        {
          next_token: 'next_token',
          certificate_summary_list: CertificateSummaryList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['CertificateSummaryList'] = Stubs::CertificateSummaryList.stub(stub[:certificate_summary_list]) unless stub[:certificate_summary_list].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for CertificateSummaryList
    class CertificateSummaryList
      def self.default(visited=[])
        return nil if visited.include?('CertificateSummaryList')
        visited = visited + ['CertificateSummaryList']
        [
          CertificateSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::CertificateSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CertificateSummary
    class CertificateSummary
      def self.default(visited=[])
        return nil if visited.include?('CertificateSummary')
        visited = visited + ['CertificateSummary']
        {
          certificate_arn: 'certificate_arn',
          domain_name: 'domain_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::CertificateSummary.new
        data = {}
        data['CertificateArn'] = stub[:certificate_arn] unless stub[:certificate_arn].nil?
        data['DomainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForCertificate
    class ListTagsForCertificate
      def self.default(visited=[])
        {
          tags: TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
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

    # Operation Stubber for PutAccountConfiguration
    class PutAccountConfiguration
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

    # Operation Stubber for RemoveTagsFromCertificate
    class RemoveTagsFromCertificate
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

    # Operation Stubber for RenewCertificate
    class RenewCertificate
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

    # Operation Stubber for RequestCertificate
    class RequestCertificate
      def self.default(visited=[])
        {
          certificate_arn: 'certificate_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CertificateArn'] = stub[:certificate_arn] unless stub[:certificate_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ResendValidationEmail
    class ResendValidationEmail
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

    # Operation Stubber for UpdateCertificateOptions
    class UpdateCertificateOptions
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
  end
end
