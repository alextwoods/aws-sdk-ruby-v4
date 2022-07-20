# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::ACMPCA
  module Stubs

    # Operation Stubber for CreateCertificateAuthority
    class CreateCertificateAuthority
      def self.default(visited=[])
        {
          certificate_authority_arn: 'certificate_authority_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CertificateAuthorityArn'] = stub[:certificate_authority_arn] unless stub[:certificate_authority_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateCertificateAuthorityAuditReport
    class CreateCertificateAuthorityAuditReport
      def self.default(visited=[])
        {
          audit_report_id: 'audit_report_id',
          s3_key: 's3_key',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AuditReportId'] = stub[:audit_report_id] unless stub[:audit_report_id].nil?
        data['S3Key'] = stub[:s3_key] unless stub[:s3_key].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreatePermission
    class CreatePermission
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteCertificateAuthority
    class DeleteCertificateAuthority
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeletePermission
    class DeletePermission
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeletePolicy
    class DeletePolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeCertificateAuthority
    class DescribeCertificateAuthority
      def self.default(visited=[])
        {
          certificate_authority: CertificateAuthority.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CertificateAuthority'] = CertificateAuthority.stub(stub[:certificate_authority]) unless stub[:certificate_authority].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for CertificateAuthority
    class CertificateAuthority
      def self.default(visited=[])
        return nil if visited.include?('CertificateAuthority')
        visited = visited + ['CertificateAuthority']
        {
          arn: 'arn',
          owner_account: 'owner_account',
          created_at: Time.now,
          last_state_change_at: Time.now,
          type: 'type',
          serial: 'serial',
          status: 'status',
          not_before: Time.now,
          not_after: Time.now,
          failure_reason: 'failure_reason',
          certificate_authority_configuration: CertificateAuthorityConfiguration.default(visited),
          revocation_configuration: RevocationConfiguration.default(visited),
          restorable_until: Time.now,
          key_storage_security_standard: 'key_storage_security_standard',
        }
      end

      def self.stub(stub)
        stub ||= Types::CertificateAuthority.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['OwnerAccount'] = stub[:owner_account] unless stub[:owner_account].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['LastStateChangeAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_state_change_at]).to_i unless stub[:last_state_change_at].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Serial'] = stub[:serial] unless stub[:serial].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['NotBefore'] = Hearth::TimeHelper.to_epoch_seconds(stub[:not_before]).to_i unless stub[:not_before].nil?
        data['NotAfter'] = Hearth::TimeHelper.to_epoch_seconds(stub[:not_after]).to_i unless stub[:not_after].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['CertificateAuthorityConfiguration'] = CertificateAuthorityConfiguration.stub(stub[:certificate_authority_configuration]) unless stub[:certificate_authority_configuration].nil?
        data['RevocationConfiguration'] = RevocationConfiguration.stub(stub[:revocation_configuration]) unless stub[:revocation_configuration].nil?
        data['RestorableUntil'] = Hearth::TimeHelper.to_epoch_seconds(stub[:restorable_until]).to_i unless stub[:restorable_until].nil?
        data['KeyStorageSecurityStandard'] = stub[:key_storage_security_standard] unless stub[:key_storage_security_standard].nil?
        data
      end
    end

    # Structure Stubber for RevocationConfiguration
    class RevocationConfiguration
      def self.default(visited=[])
        return nil if visited.include?('RevocationConfiguration')
        visited = visited + ['RevocationConfiguration']
        {
          crl_configuration: CrlConfiguration.default(visited),
          ocsp_configuration: OcspConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RevocationConfiguration.new
        data = {}
        data['CrlConfiguration'] = CrlConfiguration.stub(stub[:crl_configuration]) unless stub[:crl_configuration].nil?
        data['OcspConfiguration'] = OcspConfiguration.stub(stub[:ocsp_configuration]) unless stub[:ocsp_configuration].nil?
        data
      end
    end

    # Structure Stubber for OcspConfiguration
    class OcspConfiguration
      def self.default(visited=[])
        return nil if visited.include?('OcspConfiguration')
        visited = visited + ['OcspConfiguration']
        {
          enabled: false,
          ocsp_custom_cname: 'ocsp_custom_cname',
        }
      end

      def self.stub(stub)
        stub ||= Types::OcspConfiguration.new
        data = {}
        data['Enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['OcspCustomCname'] = stub[:ocsp_custom_cname] unless stub[:ocsp_custom_cname].nil?
        data
      end
    end

    # Structure Stubber for CrlConfiguration
    class CrlConfiguration
      def self.default(visited=[])
        return nil if visited.include?('CrlConfiguration')
        visited = visited + ['CrlConfiguration']
        {
          enabled: false,
          expiration_in_days: 1,
          custom_cname: 'custom_cname',
          s3_bucket_name: 's3_bucket_name',
          s3_object_acl: 's3_object_acl',
        }
      end

      def self.stub(stub)
        stub ||= Types::CrlConfiguration.new
        data = {}
        data['Enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['ExpirationInDays'] = stub[:expiration_in_days] unless stub[:expiration_in_days].nil?
        data['CustomCname'] = stub[:custom_cname] unless stub[:custom_cname].nil?
        data['S3BucketName'] = stub[:s3_bucket_name] unless stub[:s3_bucket_name].nil?
        data['S3ObjectAcl'] = stub[:s3_object_acl] unless stub[:s3_object_acl].nil?
        data
      end
    end

    # Structure Stubber for CertificateAuthorityConfiguration
    class CertificateAuthorityConfiguration
      def self.default(visited=[])
        return nil if visited.include?('CertificateAuthorityConfiguration')
        visited = visited + ['CertificateAuthorityConfiguration']
        {
          key_algorithm: 'key_algorithm',
          signing_algorithm: 'signing_algorithm',
          subject: ASN1Subject.default(visited),
          csr_extensions: CsrExtensions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CertificateAuthorityConfiguration.new
        data = {}
        data['KeyAlgorithm'] = stub[:key_algorithm] unless stub[:key_algorithm].nil?
        data['SigningAlgorithm'] = stub[:signing_algorithm] unless stub[:signing_algorithm].nil?
        data['Subject'] = ASN1Subject.stub(stub[:subject]) unless stub[:subject].nil?
        data['CsrExtensions'] = CsrExtensions.stub(stub[:csr_extensions]) unless stub[:csr_extensions].nil?
        data
      end
    end

    # Structure Stubber for CsrExtensions
    class CsrExtensions
      def self.default(visited=[])
        return nil if visited.include?('CsrExtensions')
        visited = visited + ['CsrExtensions']
        {
          key_usage: KeyUsage.default(visited),
          subject_information_access: AccessDescriptionList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CsrExtensions.new
        data = {}
        data['KeyUsage'] = KeyUsage.stub(stub[:key_usage]) unless stub[:key_usage].nil?
        data['SubjectInformationAccess'] = AccessDescriptionList.stub(stub[:subject_information_access]) unless stub[:subject_information_access].nil?
        data
      end
    end

    # List Stubber for AccessDescriptionList
    class AccessDescriptionList
      def self.default(visited=[])
        return nil if visited.include?('AccessDescriptionList')
        visited = visited + ['AccessDescriptionList']
        [
          AccessDescription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AccessDescription.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AccessDescription
    class AccessDescription
      def self.default(visited=[])
        return nil if visited.include?('AccessDescription')
        visited = visited + ['AccessDescription']
        {
          access_method: AccessMethod.default(visited),
          access_location: GeneralName.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AccessDescription.new
        data = {}
        data['AccessMethod'] = AccessMethod.stub(stub[:access_method]) unless stub[:access_method].nil?
        data['AccessLocation'] = GeneralName.stub(stub[:access_location]) unless stub[:access_location].nil?
        data
      end
    end

    # Structure Stubber for GeneralName
    class GeneralName
      def self.default(visited=[])
        return nil if visited.include?('GeneralName')
        visited = visited + ['GeneralName']
        {
          other_name: OtherName.default(visited),
          rfc822_name: 'rfc822_name',
          dns_name: 'dns_name',
          directory_name: ASN1Subject.default(visited),
          edi_party_name: EdiPartyName.default(visited),
          uniform_resource_identifier: 'uniform_resource_identifier',
          ip_address: 'ip_address',
          registered_id: 'registered_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::GeneralName.new
        data = {}
        data['OtherName'] = OtherName.stub(stub[:other_name]) unless stub[:other_name].nil?
        data['Rfc822Name'] = stub[:rfc822_name] unless stub[:rfc822_name].nil?
        data['DnsName'] = stub[:dns_name] unless stub[:dns_name].nil?
        data['DirectoryName'] = ASN1Subject.stub(stub[:directory_name]) unless stub[:directory_name].nil?
        data['EdiPartyName'] = EdiPartyName.stub(stub[:edi_party_name]) unless stub[:edi_party_name].nil?
        data['UniformResourceIdentifier'] = stub[:uniform_resource_identifier] unless stub[:uniform_resource_identifier].nil?
        data['IpAddress'] = stub[:ip_address] unless stub[:ip_address].nil?
        data['RegisteredId'] = stub[:registered_id] unless stub[:registered_id].nil?
        data
      end
    end

    # Structure Stubber for EdiPartyName
    class EdiPartyName
      def self.default(visited=[])
        return nil if visited.include?('EdiPartyName')
        visited = visited + ['EdiPartyName']
        {
          party_name: 'party_name',
          name_assigner: 'name_assigner',
        }
      end

      def self.stub(stub)
        stub ||= Types::EdiPartyName.new
        data = {}
        data['PartyName'] = stub[:party_name] unless stub[:party_name].nil?
        data['NameAssigner'] = stub[:name_assigner] unless stub[:name_assigner].nil?
        data
      end
    end

    # Structure Stubber for ASN1Subject
    class ASN1Subject
      def self.default(visited=[])
        return nil if visited.include?('ASN1Subject')
        visited = visited + ['ASN1Subject']
        {
          country: 'country',
          organization: 'organization',
          organizational_unit: 'organizational_unit',
          distinguished_name_qualifier: 'distinguished_name_qualifier',
          state: 'state',
          common_name: 'common_name',
          serial_number: 'serial_number',
          locality: 'locality',
          title: 'title',
          surname: 'surname',
          given_name: 'given_name',
          initials: 'initials',
          pseudonym: 'pseudonym',
          generation_qualifier: 'generation_qualifier',
          custom_attributes: CustomAttributeList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ASN1Subject.new
        data = {}
        data['Country'] = stub[:country] unless stub[:country].nil?
        data['Organization'] = stub[:organization] unless stub[:organization].nil?
        data['OrganizationalUnit'] = stub[:organizational_unit] unless stub[:organizational_unit].nil?
        data['DistinguishedNameQualifier'] = stub[:distinguished_name_qualifier] unless stub[:distinguished_name_qualifier].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['CommonName'] = stub[:common_name] unless stub[:common_name].nil?
        data['SerialNumber'] = stub[:serial_number] unless stub[:serial_number].nil?
        data['Locality'] = stub[:locality] unless stub[:locality].nil?
        data['Title'] = stub[:title] unless stub[:title].nil?
        data['Surname'] = stub[:surname] unless stub[:surname].nil?
        data['GivenName'] = stub[:given_name] unless stub[:given_name].nil?
        data['Initials'] = stub[:initials] unless stub[:initials].nil?
        data['Pseudonym'] = stub[:pseudonym] unless stub[:pseudonym].nil?
        data['GenerationQualifier'] = stub[:generation_qualifier] unless stub[:generation_qualifier].nil?
        data['CustomAttributes'] = CustomAttributeList.stub(stub[:custom_attributes]) unless stub[:custom_attributes].nil?
        data
      end
    end

    # List Stubber for CustomAttributeList
    class CustomAttributeList
      def self.default(visited=[])
        return nil if visited.include?('CustomAttributeList')
        visited = visited + ['CustomAttributeList']
        [
          CustomAttribute.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CustomAttribute.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CustomAttribute
    class CustomAttribute
      def self.default(visited=[])
        return nil if visited.include?('CustomAttribute')
        visited = visited + ['CustomAttribute']
        {
          object_identifier: 'object_identifier',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::CustomAttribute.new
        data = {}
        data['ObjectIdentifier'] = stub[:object_identifier] unless stub[:object_identifier].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Structure Stubber for OtherName
    class OtherName
      def self.default(visited=[])
        return nil if visited.include?('OtherName')
        visited = visited + ['OtherName']
        {
          type_id: 'type_id',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::OtherName.new
        data = {}
        data['TypeId'] = stub[:type_id] unless stub[:type_id].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Structure Stubber for AccessMethod
    class AccessMethod
      def self.default(visited=[])
        return nil if visited.include?('AccessMethod')
        visited = visited + ['AccessMethod']
        {
          custom_object_identifier: 'custom_object_identifier',
          access_method_type: 'access_method_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::AccessMethod.new
        data = {}
        data['CustomObjectIdentifier'] = stub[:custom_object_identifier] unless stub[:custom_object_identifier].nil?
        data['AccessMethodType'] = stub[:access_method_type] unless stub[:access_method_type].nil?
        data
      end
    end

    # Structure Stubber for KeyUsage
    class KeyUsage
      def self.default(visited=[])
        return nil if visited.include?('KeyUsage')
        visited = visited + ['KeyUsage']
        {
          digital_signature: false,
          non_repudiation: false,
          key_encipherment: false,
          data_encipherment: false,
          key_agreement: false,
          key_cert_sign: false,
          crl_sign: false,
          encipher_only: false,
          decipher_only: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::KeyUsage.new
        data = {}
        data['DigitalSignature'] = stub[:digital_signature] unless stub[:digital_signature].nil?
        data['NonRepudiation'] = stub[:non_repudiation] unless stub[:non_repudiation].nil?
        data['KeyEncipherment'] = stub[:key_encipherment] unless stub[:key_encipherment].nil?
        data['DataEncipherment'] = stub[:data_encipherment] unless stub[:data_encipherment].nil?
        data['KeyAgreement'] = stub[:key_agreement] unless stub[:key_agreement].nil?
        data['KeyCertSign'] = stub[:key_cert_sign] unless stub[:key_cert_sign].nil?
        data['CRLSign'] = stub[:crl_sign] unless stub[:crl_sign].nil?
        data['EncipherOnly'] = stub[:encipher_only] unless stub[:encipher_only].nil?
        data['DecipherOnly'] = stub[:decipher_only] unless stub[:decipher_only].nil?
        data
      end
    end

    # Operation Stubber for DescribeCertificateAuthorityAuditReport
    class DescribeCertificateAuthorityAuditReport
      def self.default(visited=[])
        {
          audit_report_status: 'audit_report_status',
          s3_bucket_name: 's3_bucket_name',
          s3_key: 's3_key',
          created_at: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AuditReportStatus'] = stub[:audit_report_status] unless stub[:audit_report_status].nil?
        data['S3BucketName'] = stub[:s3_bucket_name] unless stub[:s3_bucket_name].nil?
        data['S3Key'] = stub[:s3_key] unless stub[:s3_key].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
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
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetCertificateAuthorityCertificate
    class GetCertificateAuthorityCertificate
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
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetCertificateAuthorityCsr
    class GetCertificateAuthorityCsr
      def self.default(visited=[])
        {
          csr: 'csr',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Csr'] = stub[:csr] unless stub[:csr].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetPolicy
    class GetPolicy
      def self.default(visited=[])
        {
          policy: 'policy',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Policy'] = stub[:policy] unless stub[:policy].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ImportCertificateAuthorityCertificate
    class ImportCertificateAuthorityCertificate
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for IssueCertificate
    class IssueCertificate
      def self.default(visited=[])
        {
          certificate_arn: 'certificate_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CertificateArn'] = stub[:certificate_arn] unless stub[:certificate_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListCertificateAuthorities
    class ListCertificateAuthorities
      def self.default(visited=[])
        {
          certificate_authorities: CertificateAuthorities.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CertificateAuthorities'] = CertificateAuthorities.stub(stub[:certificate_authorities]) unless stub[:certificate_authorities].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for CertificateAuthorities
    class CertificateAuthorities
      def self.default(visited=[])
        return nil if visited.include?('CertificateAuthorities')
        visited = visited + ['CertificateAuthorities']
        [
          CertificateAuthority.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CertificateAuthority.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListPermissions
    class ListPermissions
      def self.default(visited=[])
        {
          permissions: PermissionList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Permissions'] = PermissionList.stub(stub[:permissions]) unless stub[:permissions].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for PermissionList
    class PermissionList
      def self.default(visited=[])
        return nil if visited.include?('PermissionList')
        visited = visited + ['PermissionList']
        [
          Permission.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Permission.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Permission
    class Permission
      def self.default(visited=[])
        return nil if visited.include?('Permission')
        visited = visited + ['Permission']
        {
          certificate_authority_arn: 'certificate_authority_arn',
          created_at: Time.now,
          principal: 'principal',
          source_account: 'source_account',
          actions: ActionList.default(visited),
          policy: 'policy',
        }
      end

      def self.stub(stub)
        stub ||= Types::Permission.new
        data = {}
        data['CertificateAuthorityArn'] = stub[:certificate_authority_arn] unless stub[:certificate_authority_arn].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['Principal'] = stub[:principal] unless stub[:principal].nil?
        data['SourceAccount'] = stub[:source_account] unless stub[:source_account].nil?
        data['Actions'] = ActionList.stub(stub[:actions]) unless stub[:actions].nil?
        data['Policy'] = stub[:policy] unless stub[:policy].nil?
        data
      end
    end

    # List Stubber for ActionList
    class ActionList
      def self.default(visited=[])
        return nil if visited.include?('ActionList')
        visited = visited + ['ActionList']
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

    # Operation Stubber for ListTags
    class ListTags
      def self.default(visited=[])
        {
          tags: TagList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
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
          data << Tag.stub(element) unless element.nil?
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

    # Operation Stubber for PutPolicy
    class PutPolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RestoreCertificateAuthority
    class RestoreCertificateAuthority
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RevokeCertificate
    class RevokeCertificate
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for TagCertificateAuthority
    class TagCertificateAuthority
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagCertificateAuthority
    class UntagCertificateAuthority
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateCertificateAuthority
    class UpdateCertificateAuthority
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
