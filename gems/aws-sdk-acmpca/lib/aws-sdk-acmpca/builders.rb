# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ACMPCA
  module Builders

    # Operation Builder for CreateCertificateAuthority
    class CreateCertificateAuthority
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ACMPrivateCA.CreateCertificateAuthority'
        data = {}
        data['CertificateAuthorityConfiguration'] = Builders::CertificateAuthorityConfiguration.build(input[:certificate_authority_configuration]) unless input[:certificate_authority_configuration].nil?
        data['RevocationConfiguration'] = Builders::RevocationConfiguration.build(input[:revocation_configuration]) unless input[:revocation_configuration].nil?
        data['CertificateAuthorityType'] = input[:certificate_authority_type] unless input[:certificate_authority_type].nil?
        data['IdempotencyToken'] = input[:idempotency_token] unless input[:idempotency_token].nil?
        data['KeyStorageSecurityStandard'] = input[:key_storage_security_standard] unless input[:key_storage_security_standard].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
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

    # Structure Builder for RevocationConfiguration
    class RevocationConfiguration
      def self.build(input)
        data = {}
        data['CrlConfiguration'] = Builders::CrlConfiguration.build(input[:crl_configuration]) unless input[:crl_configuration].nil?
        data['OcspConfiguration'] = Builders::OcspConfiguration.build(input[:ocsp_configuration]) unless input[:ocsp_configuration].nil?
        data
      end
    end

    # Structure Builder for OcspConfiguration
    class OcspConfiguration
      def self.build(input)
        data = {}
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data['OcspCustomCname'] = input[:ocsp_custom_cname] unless input[:ocsp_custom_cname].nil?
        data
      end
    end

    # Structure Builder for CrlConfiguration
    class CrlConfiguration
      def self.build(input)
        data = {}
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data['ExpirationInDays'] = input[:expiration_in_days] unless input[:expiration_in_days].nil?
        data['CustomCname'] = input[:custom_cname] unless input[:custom_cname].nil?
        data['S3BucketName'] = input[:s3_bucket_name] unless input[:s3_bucket_name].nil?
        data['S3ObjectAcl'] = input[:s3_object_acl] unless input[:s3_object_acl].nil?
        data
      end
    end

    # Structure Builder for CertificateAuthorityConfiguration
    class CertificateAuthorityConfiguration
      def self.build(input)
        data = {}
        data['KeyAlgorithm'] = input[:key_algorithm] unless input[:key_algorithm].nil?
        data['SigningAlgorithm'] = input[:signing_algorithm] unless input[:signing_algorithm].nil?
        data['Subject'] = Builders::ASN1Subject.build(input[:subject]) unless input[:subject].nil?
        data['CsrExtensions'] = Builders::CsrExtensions.build(input[:csr_extensions]) unless input[:csr_extensions].nil?
        data
      end
    end

    # Structure Builder for CsrExtensions
    class CsrExtensions
      def self.build(input)
        data = {}
        data['KeyUsage'] = Builders::KeyUsage.build(input[:key_usage]) unless input[:key_usage].nil?
        data['SubjectInformationAccess'] = Builders::AccessDescriptionList.build(input[:subject_information_access]) unless input[:subject_information_access].nil?
        data
      end
    end

    # List Builder for AccessDescriptionList
    class AccessDescriptionList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AccessDescription.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AccessDescription
    class AccessDescription
      def self.build(input)
        data = {}
        data['AccessMethod'] = Builders::AccessMethod.build(input[:access_method]) unless input[:access_method].nil?
        data['AccessLocation'] = Builders::GeneralName.build(input[:access_location]) unless input[:access_location].nil?
        data
      end
    end

    # Structure Builder for GeneralName
    class GeneralName
      def self.build(input)
        data = {}
        data['OtherName'] = Builders::OtherName.build(input[:other_name]) unless input[:other_name].nil?
        data['Rfc822Name'] = input[:rfc822_name] unless input[:rfc822_name].nil?
        data['DnsName'] = input[:dns_name] unless input[:dns_name].nil?
        data['DirectoryName'] = Builders::ASN1Subject.build(input[:directory_name]) unless input[:directory_name].nil?
        data['EdiPartyName'] = Builders::EdiPartyName.build(input[:edi_party_name]) unless input[:edi_party_name].nil?
        data['UniformResourceIdentifier'] = input[:uniform_resource_identifier] unless input[:uniform_resource_identifier].nil?
        data['IpAddress'] = input[:ip_address] unless input[:ip_address].nil?
        data['RegisteredId'] = input[:registered_id] unless input[:registered_id].nil?
        data
      end
    end

    # Structure Builder for EdiPartyName
    class EdiPartyName
      def self.build(input)
        data = {}
        data['PartyName'] = input[:party_name] unless input[:party_name].nil?
        data['NameAssigner'] = input[:name_assigner] unless input[:name_assigner].nil?
        data
      end
    end

    # Structure Builder for ASN1Subject
    class ASN1Subject
      def self.build(input)
        data = {}
        data['Country'] = input[:country] unless input[:country].nil?
        data['Organization'] = input[:organization] unless input[:organization].nil?
        data['OrganizationalUnit'] = input[:organizational_unit] unless input[:organizational_unit].nil?
        data['DistinguishedNameQualifier'] = input[:distinguished_name_qualifier] unless input[:distinguished_name_qualifier].nil?
        data['State'] = input[:state] unless input[:state].nil?
        data['CommonName'] = input[:common_name] unless input[:common_name].nil?
        data['SerialNumber'] = input[:serial_number] unless input[:serial_number].nil?
        data['Locality'] = input[:locality] unless input[:locality].nil?
        data['Title'] = input[:title] unless input[:title].nil?
        data['Surname'] = input[:surname] unless input[:surname].nil?
        data['GivenName'] = input[:given_name] unless input[:given_name].nil?
        data['Initials'] = input[:initials] unless input[:initials].nil?
        data['Pseudonym'] = input[:pseudonym] unless input[:pseudonym].nil?
        data['GenerationQualifier'] = input[:generation_qualifier] unless input[:generation_qualifier].nil?
        data['CustomAttributes'] = Builders::CustomAttributeList.build(input[:custom_attributes]) unless input[:custom_attributes].nil?
        data
      end
    end

    # List Builder for CustomAttributeList
    class CustomAttributeList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::CustomAttribute.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CustomAttribute
    class CustomAttribute
      def self.build(input)
        data = {}
        data['ObjectIdentifier'] = input[:object_identifier] unless input[:object_identifier].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Structure Builder for OtherName
    class OtherName
      def self.build(input)
        data = {}
        data['TypeId'] = input[:type_id] unless input[:type_id].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Structure Builder for AccessMethod
    class AccessMethod
      def self.build(input)
        data = {}
        data['CustomObjectIdentifier'] = input[:custom_object_identifier] unless input[:custom_object_identifier].nil?
        data['AccessMethodType'] = input[:access_method_type] unless input[:access_method_type].nil?
        data
      end
    end

    # Structure Builder for KeyUsage
    class KeyUsage
      def self.build(input)
        data = {}
        data['DigitalSignature'] = input[:digital_signature] unless input[:digital_signature].nil?
        data['NonRepudiation'] = input[:non_repudiation] unless input[:non_repudiation].nil?
        data['KeyEncipherment'] = input[:key_encipherment] unless input[:key_encipherment].nil?
        data['DataEncipherment'] = input[:data_encipherment] unless input[:data_encipherment].nil?
        data['KeyAgreement'] = input[:key_agreement] unless input[:key_agreement].nil?
        data['KeyCertSign'] = input[:key_cert_sign] unless input[:key_cert_sign].nil?
        data['CRLSign'] = input[:crl_sign] unless input[:crl_sign].nil?
        data['EncipherOnly'] = input[:encipher_only] unless input[:encipher_only].nil?
        data['DecipherOnly'] = input[:decipher_only] unless input[:decipher_only].nil?
        data
      end
    end

    # Operation Builder for CreateCertificateAuthorityAuditReport
    class CreateCertificateAuthorityAuditReport
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ACMPrivateCA.CreateCertificateAuthorityAuditReport'
        data = {}
        data['CertificateAuthorityArn'] = input[:certificate_authority_arn] unless input[:certificate_authority_arn].nil?
        data['S3BucketName'] = input[:s3_bucket_name] unless input[:s3_bucket_name].nil?
        data['AuditReportResponseFormat'] = input[:audit_report_response_format] unless input[:audit_report_response_format].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreatePermission
    class CreatePermission
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ACMPrivateCA.CreatePermission'
        data = {}
        data['CertificateAuthorityArn'] = input[:certificate_authority_arn] unless input[:certificate_authority_arn].nil?
        data['Principal'] = input[:principal] unless input[:principal].nil?
        data['SourceAccount'] = input[:source_account] unless input[:source_account].nil?
        data['Actions'] = Builders::ActionList.build(input[:actions]) unless input[:actions].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ActionList
    class ActionList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DeleteCertificateAuthority
    class DeleteCertificateAuthority
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ACMPrivateCA.DeleteCertificateAuthority'
        data = {}
        data['CertificateAuthorityArn'] = input[:certificate_authority_arn] unless input[:certificate_authority_arn].nil?
        data['PermanentDeletionTimeInDays'] = input[:permanent_deletion_time_in_days] unless input[:permanent_deletion_time_in_days].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeletePermission
    class DeletePermission
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ACMPrivateCA.DeletePermission'
        data = {}
        data['CertificateAuthorityArn'] = input[:certificate_authority_arn] unless input[:certificate_authority_arn].nil?
        data['Principal'] = input[:principal] unless input[:principal].nil?
        data['SourceAccount'] = input[:source_account] unless input[:source_account].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeletePolicy
    class DeletePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ACMPrivateCA.DeletePolicy'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeCertificateAuthority
    class DescribeCertificateAuthority
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ACMPrivateCA.DescribeCertificateAuthority'
        data = {}
        data['CertificateAuthorityArn'] = input[:certificate_authority_arn] unless input[:certificate_authority_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeCertificateAuthorityAuditReport
    class DescribeCertificateAuthorityAuditReport
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ACMPrivateCA.DescribeCertificateAuthorityAuditReport'
        data = {}
        data['CertificateAuthorityArn'] = input[:certificate_authority_arn] unless input[:certificate_authority_arn].nil?
        data['AuditReportId'] = input[:audit_report_id] unless input[:audit_report_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetCertificate
    class GetCertificate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ACMPrivateCA.GetCertificate'
        data = {}
        data['CertificateAuthorityArn'] = input[:certificate_authority_arn] unless input[:certificate_authority_arn].nil?
        data['CertificateArn'] = input[:certificate_arn] unless input[:certificate_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetCertificateAuthorityCertificate
    class GetCertificateAuthorityCertificate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ACMPrivateCA.GetCertificateAuthorityCertificate'
        data = {}
        data['CertificateAuthorityArn'] = input[:certificate_authority_arn] unless input[:certificate_authority_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetCertificateAuthorityCsr
    class GetCertificateAuthorityCsr
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ACMPrivateCA.GetCertificateAuthorityCsr'
        data = {}
        data['CertificateAuthorityArn'] = input[:certificate_authority_arn] unless input[:certificate_authority_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetPolicy
    class GetPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ACMPrivateCA.GetPolicy'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ImportCertificateAuthorityCertificate
    class ImportCertificateAuthorityCertificate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ACMPrivateCA.ImportCertificateAuthorityCertificate'
        data = {}
        data['CertificateAuthorityArn'] = input[:certificate_authority_arn] unless input[:certificate_authority_arn].nil?
        data['Certificate'] = Base64::encode64(input[:certificate]).strip unless input[:certificate].nil?
        data['CertificateChain'] = Base64::encode64(input[:certificate_chain]).strip unless input[:certificate_chain].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for IssueCertificate
    class IssueCertificate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ACMPrivateCA.IssueCertificate'
        data = {}
        data['ApiPassthrough'] = Builders::ApiPassthrough.build(input[:api_passthrough]) unless input[:api_passthrough].nil?
        data['CertificateAuthorityArn'] = input[:certificate_authority_arn] unless input[:certificate_authority_arn].nil?
        data['Csr'] = Base64::encode64(input[:csr]).strip unless input[:csr].nil?
        data['SigningAlgorithm'] = input[:signing_algorithm] unless input[:signing_algorithm].nil?
        data['TemplateArn'] = input[:template_arn] unless input[:template_arn].nil?
        data['Validity'] = Builders::Validity.build(input[:validity]) unless input[:validity].nil?
        data['ValidityNotBefore'] = Builders::Validity.build(input[:validity_not_before]) unless input[:validity_not_before].nil?
        data['IdempotencyToken'] = input[:idempotency_token] unless input[:idempotency_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for Validity
    class Validity
      def self.build(input)
        data = {}
        data['Value'] = input[:value] unless input[:value].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # Structure Builder for ApiPassthrough
    class ApiPassthrough
      def self.build(input)
        data = {}
        data['Extensions'] = Builders::Extensions.build(input[:extensions]) unless input[:extensions].nil?
        data['Subject'] = Builders::ASN1Subject.build(input[:subject]) unless input[:subject].nil?
        data
      end
    end

    # Structure Builder for Extensions
    class Extensions
      def self.build(input)
        data = {}
        data['CertificatePolicies'] = Builders::CertificatePolicyList.build(input[:certificate_policies]) unless input[:certificate_policies].nil?
        data['ExtendedKeyUsage'] = Builders::ExtendedKeyUsageList.build(input[:extended_key_usage]) unless input[:extended_key_usage].nil?
        data['KeyUsage'] = Builders::KeyUsage.build(input[:key_usage]) unless input[:key_usage].nil?
        data['SubjectAlternativeNames'] = Builders::GeneralNameList.build(input[:subject_alternative_names]) unless input[:subject_alternative_names].nil?
        data['CustomExtensions'] = Builders::CustomExtensionList.build(input[:custom_extensions]) unless input[:custom_extensions].nil?
        data
      end
    end

    # List Builder for CustomExtensionList
    class CustomExtensionList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::CustomExtension.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CustomExtension
    class CustomExtension
      def self.build(input)
        data = {}
        data['ObjectIdentifier'] = input[:object_identifier] unless input[:object_identifier].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data['Critical'] = input[:critical] unless input[:critical].nil?
        data
      end
    end

    # List Builder for GeneralNameList
    class GeneralNameList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::GeneralName.build(element) unless element.nil?
        end
        data
      end
    end

    # List Builder for ExtendedKeyUsageList
    class ExtendedKeyUsageList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ExtendedKeyUsage.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ExtendedKeyUsage
    class ExtendedKeyUsage
      def self.build(input)
        data = {}
        data['ExtendedKeyUsageType'] = input[:extended_key_usage_type] unless input[:extended_key_usage_type].nil?
        data['ExtendedKeyUsageObjectIdentifier'] = input[:extended_key_usage_object_identifier] unless input[:extended_key_usage_object_identifier].nil?
        data
      end
    end

    # List Builder for CertificatePolicyList
    class CertificatePolicyList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::PolicyInformation.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for PolicyInformation
    class PolicyInformation
      def self.build(input)
        data = {}
        data['CertPolicyId'] = input[:cert_policy_id] unless input[:cert_policy_id].nil?
        data['PolicyQualifiers'] = Builders::PolicyQualifierInfoList.build(input[:policy_qualifiers]) unless input[:policy_qualifiers].nil?
        data
      end
    end

    # List Builder for PolicyQualifierInfoList
    class PolicyQualifierInfoList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::PolicyQualifierInfo.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for PolicyQualifierInfo
    class PolicyQualifierInfo
      def self.build(input)
        data = {}
        data['PolicyQualifierId'] = input[:policy_qualifier_id] unless input[:policy_qualifier_id].nil?
        data['Qualifier'] = Builders::Qualifier.build(input[:qualifier]) unless input[:qualifier].nil?
        data
      end
    end

    # Structure Builder for Qualifier
    class Qualifier
      def self.build(input)
        data = {}
        data['CpsUri'] = input[:cps_uri] unless input[:cps_uri].nil?
        data
      end
    end

    # Operation Builder for ListCertificateAuthorities
    class ListCertificateAuthorities
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ACMPrivateCA.ListCertificateAuthorities'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['ResourceOwner'] = input[:resource_owner] unless input[:resource_owner].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListPermissions
    class ListPermissions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ACMPrivateCA.ListPermissions'
        data = {}
        data['CertificateAuthorityArn'] = input[:certificate_authority_arn] unless input[:certificate_authority_arn].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTags
    class ListTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ACMPrivateCA.ListTags'
        data = {}
        data['CertificateAuthorityArn'] = input[:certificate_authority_arn] unless input[:certificate_authority_arn].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutPolicy
    class PutPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ACMPrivateCA.PutPolicy'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Policy'] = input[:policy] unless input[:policy].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RestoreCertificateAuthority
    class RestoreCertificateAuthority
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ACMPrivateCA.RestoreCertificateAuthority'
        data = {}
        data['CertificateAuthorityArn'] = input[:certificate_authority_arn] unless input[:certificate_authority_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RevokeCertificate
    class RevokeCertificate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ACMPrivateCA.RevokeCertificate'
        data = {}
        data['CertificateAuthorityArn'] = input[:certificate_authority_arn] unless input[:certificate_authority_arn].nil?
        data['CertificateSerial'] = input[:certificate_serial] unless input[:certificate_serial].nil?
        data['RevocationReason'] = input[:revocation_reason] unless input[:revocation_reason].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagCertificateAuthority
    class TagCertificateAuthority
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ACMPrivateCA.TagCertificateAuthority'
        data = {}
        data['CertificateAuthorityArn'] = input[:certificate_authority_arn] unless input[:certificate_authority_arn].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagCertificateAuthority
    class UntagCertificateAuthority
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ACMPrivateCA.UntagCertificateAuthority'
        data = {}
        data['CertificateAuthorityArn'] = input[:certificate_authority_arn] unless input[:certificate_authority_arn].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateCertificateAuthority
    class UpdateCertificateAuthority
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ACMPrivateCA.UpdateCertificateAuthority'
        data = {}
        data['CertificateAuthorityArn'] = input[:certificate_authority_arn] unless input[:certificate_authority_arn].nil?
        data['RevocationConfiguration'] = Builders::RevocationConfiguration.build(input[:revocation_configuration]) unless input[:revocation_configuration].nil?
        data['Status'] = input[:status] unless input[:status].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
