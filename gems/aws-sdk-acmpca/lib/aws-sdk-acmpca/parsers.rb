# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ACMPCA
  module Parsers

    # Operation Parser for CreateCertificateAuthority
    class CreateCertificateAuthority
      def self.parse(http_resp)
        data = Types::CreateCertificateAuthorityOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.certificate_authority_arn = map['CertificateAuthorityArn']
        data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidPolicyException
    class InvalidPolicyException
      def self.parse(http_resp)
        data = Types::InvalidPolicyException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidTagException
    class InvalidTagException
      def self.parse(http_resp)
        data = Types::InvalidTagException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidArgsException
    class InvalidArgsException
      def self.parse(http_resp)
        data = Types::InvalidArgsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CreateCertificateAuthorityAuditReport
    class CreateCertificateAuthorityAuditReport
      def self.parse(http_resp)
        data = Types::CreateCertificateAuthorityAuditReportOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.audit_report_id = map['AuditReportId']
        data.s3_key = map['S3Key']
        data
      end
    end

    # Error Parser for RequestFailedException
    class RequestFailedException
      def self.parse(http_resp)
        data = Types::RequestFailedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidStateException
    class InvalidStateException
      def self.parse(http_resp)
        data = Types::InvalidStateException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidArnException
    class InvalidArnException
      def self.parse(http_resp)
        data = Types::InvalidArnException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for RequestInProgressException
    class RequestInProgressException
      def self.parse(http_resp)
        data = Types::RequestInProgressException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CreatePermission
    class CreatePermission
      def self.parse(http_resp)
        data = Types::CreatePermissionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for PermissionAlreadyExistsException
    class PermissionAlreadyExistsException
      def self.parse(http_resp)
        data = Types::PermissionAlreadyExistsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DeleteCertificateAuthority
    class DeleteCertificateAuthority
      def self.parse(http_resp)
        data = Types::DeleteCertificateAuthorityOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for ConcurrentModificationException
    class ConcurrentModificationException
      def self.parse(http_resp)
        data = Types::ConcurrentModificationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DeletePermission
    class DeletePermission
      def self.parse(http_resp)
        data = Types::DeletePermissionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeletePolicy
    class DeletePolicy
      def self.parse(http_resp)
        data = Types::DeletePolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for LockoutPreventedException
    class LockoutPreventedException
      def self.parse(http_resp)
        data = Types::LockoutPreventedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DescribeCertificateAuthority
    class DescribeCertificateAuthority
      def self.parse(http_resp)
        data = Types::DescribeCertificateAuthorityOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.certificate_authority = (Parsers::CertificateAuthority.parse(map['CertificateAuthority']) unless map['CertificateAuthority'].nil?)
        data
      end
    end

    class CertificateAuthority
      def self.parse(map)
        data = Types::CertificateAuthority.new
        data.arn = map['Arn']
        data.owner_account = map['OwnerAccount']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.last_state_change_at = Time.at(map['LastStateChangeAt'].to_i) if map['LastStateChangeAt']
        data.type = map['Type']
        data.serial = map['Serial']
        data.status = map['Status']
        data.not_before = Time.at(map['NotBefore'].to_i) if map['NotBefore']
        data.not_after = Time.at(map['NotAfter'].to_i) if map['NotAfter']
        data.failure_reason = map['FailureReason']
        data.certificate_authority_configuration = (Parsers::CertificateAuthorityConfiguration.parse(map['CertificateAuthorityConfiguration']) unless map['CertificateAuthorityConfiguration'].nil?)
        data.revocation_configuration = (Parsers::RevocationConfiguration.parse(map['RevocationConfiguration']) unless map['RevocationConfiguration'].nil?)
        data.restorable_until = Time.at(map['RestorableUntil'].to_i) if map['RestorableUntil']
        data.key_storage_security_standard = map['KeyStorageSecurityStandard']
        return data
      end
    end

    class RevocationConfiguration
      def self.parse(map)
        data = Types::RevocationConfiguration.new
        data.crl_configuration = (Parsers::CrlConfiguration.parse(map['CrlConfiguration']) unless map['CrlConfiguration'].nil?)
        data.ocsp_configuration = (Parsers::OcspConfiguration.parse(map['OcspConfiguration']) unless map['OcspConfiguration'].nil?)
        return data
      end
    end

    class OcspConfiguration
      def self.parse(map)
        data = Types::OcspConfiguration.new
        data.enabled = map['Enabled']
        data.ocsp_custom_cname = map['OcspCustomCname']
        return data
      end
    end

    class CrlConfiguration
      def self.parse(map)
        data = Types::CrlConfiguration.new
        data.enabled = map['Enabled']
        data.expiration_in_days = map['ExpirationInDays']
        data.custom_cname = map['CustomCname']
        data.s3_bucket_name = map['S3BucketName']
        data.s3_object_acl = map['S3ObjectAcl']
        return data
      end
    end

    class CertificateAuthorityConfiguration
      def self.parse(map)
        data = Types::CertificateAuthorityConfiguration.new
        data.key_algorithm = map['KeyAlgorithm']
        data.signing_algorithm = map['SigningAlgorithm']
        data.subject = (Parsers::ASN1Subject.parse(map['Subject']) unless map['Subject'].nil?)
        data.csr_extensions = (Parsers::CsrExtensions.parse(map['CsrExtensions']) unless map['CsrExtensions'].nil?)
        return data
      end
    end

    class CsrExtensions
      def self.parse(map)
        data = Types::CsrExtensions.new
        data.key_usage = (Parsers::KeyUsage.parse(map['KeyUsage']) unless map['KeyUsage'].nil?)
        data.subject_information_access = (Parsers::AccessDescriptionList.parse(map['SubjectInformationAccess']) unless map['SubjectInformationAccess'].nil?)
        return data
      end
    end

    class AccessDescriptionList
      def self.parse(list)
        list.map do |value|
          Parsers::AccessDescription.parse(value) unless value.nil?
        end
      end
    end

    class AccessDescription
      def self.parse(map)
        data = Types::AccessDescription.new
        data.access_method = (Parsers::AccessMethod.parse(map['AccessMethod']) unless map['AccessMethod'].nil?)
        data.access_location = (Parsers::GeneralName.parse(map['AccessLocation']) unless map['AccessLocation'].nil?)
        return data
      end
    end

    class GeneralName
      def self.parse(map)
        data = Types::GeneralName.new
        data.other_name = (Parsers::OtherName.parse(map['OtherName']) unless map['OtherName'].nil?)
        data.rfc822_name = map['Rfc822Name']
        data.dns_name = map['DnsName']
        data.directory_name = (Parsers::ASN1Subject.parse(map['DirectoryName']) unless map['DirectoryName'].nil?)
        data.edi_party_name = (Parsers::EdiPartyName.parse(map['EdiPartyName']) unless map['EdiPartyName'].nil?)
        data.uniform_resource_identifier = map['UniformResourceIdentifier']
        data.ip_address = map['IpAddress']
        data.registered_id = map['RegisteredId']
        return data
      end
    end

    class EdiPartyName
      def self.parse(map)
        data = Types::EdiPartyName.new
        data.party_name = map['PartyName']
        data.name_assigner = map['NameAssigner']
        return data
      end
    end

    class ASN1Subject
      def self.parse(map)
        data = Types::ASN1Subject.new
        data.country = map['Country']
        data.organization = map['Organization']
        data.organizational_unit = map['OrganizationalUnit']
        data.distinguished_name_qualifier = map['DistinguishedNameQualifier']
        data.state = map['State']
        data.common_name = map['CommonName']
        data.serial_number = map['SerialNumber']
        data.locality = map['Locality']
        data.title = map['Title']
        data.surname = map['Surname']
        data.given_name = map['GivenName']
        data.initials = map['Initials']
        data.pseudonym = map['Pseudonym']
        data.generation_qualifier = map['GenerationQualifier']
        data.custom_attributes = (Parsers::CustomAttributeList.parse(map['CustomAttributes']) unless map['CustomAttributes'].nil?)
        return data
      end
    end

    class CustomAttributeList
      def self.parse(list)
        list.map do |value|
          Parsers::CustomAttribute.parse(value) unless value.nil?
        end
      end
    end

    class CustomAttribute
      def self.parse(map)
        data = Types::CustomAttribute.new
        data.object_identifier = map['ObjectIdentifier']
        data.value = map['Value']
        return data
      end
    end

    class OtherName
      def self.parse(map)
        data = Types::OtherName.new
        data.type_id = map['TypeId']
        data.value = map['Value']
        return data
      end
    end

    class AccessMethod
      def self.parse(map)
        data = Types::AccessMethod.new
        data.custom_object_identifier = map['CustomObjectIdentifier']
        data.access_method_type = map['AccessMethodType']
        return data
      end
    end

    class KeyUsage
      def self.parse(map)
        data = Types::KeyUsage.new
        data.digital_signature = map['DigitalSignature']
        data.non_repudiation = map['NonRepudiation']
        data.key_encipherment = map['KeyEncipherment']
        data.data_encipherment = map['DataEncipherment']
        data.key_agreement = map['KeyAgreement']
        data.key_cert_sign = map['KeyCertSign']
        data.crl_sign = map['CRLSign']
        data.encipher_only = map['EncipherOnly']
        data.decipher_only = map['DecipherOnly']
        return data
      end
    end

    # Operation Parser for DescribeCertificateAuthorityAuditReport
    class DescribeCertificateAuthorityAuditReport
      def self.parse(http_resp)
        data = Types::DescribeCertificateAuthorityAuditReportOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.audit_report_status = map['AuditReportStatus']
        data.s3_bucket_name = map['S3BucketName']
        data.s3_key = map['S3Key']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data
      end
    end

    # Operation Parser for GetCertificate
    class GetCertificate
      def self.parse(http_resp)
        data = Types::GetCertificateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.certificate = map['Certificate']
        data.certificate_chain = map['CertificateChain']
        data
      end
    end

    # Operation Parser for GetCertificateAuthorityCertificate
    class GetCertificateAuthorityCertificate
      def self.parse(http_resp)
        data = Types::GetCertificateAuthorityCertificateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.certificate = map['Certificate']
        data.certificate_chain = map['CertificateChain']
        data
      end
    end

    # Operation Parser for GetCertificateAuthorityCsr
    class GetCertificateAuthorityCsr
      def self.parse(http_resp)
        data = Types::GetCertificateAuthorityCsrOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.csr = map['Csr']
        data
      end
    end

    # Operation Parser for GetPolicy
    class GetPolicy
      def self.parse(http_resp)
        data = Types::GetPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.policy = map['Policy']
        data
      end
    end

    # Operation Parser for ImportCertificateAuthorityCertificate
    class ImportCertificateAuthorityCertificate
      def self.parse(http_resp)
        data = Types::ImportCertificateAuthorityCertificateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for CertificateMismatchException
    class CertificateMismatchException
      def self.parse(http_resp)
        data = Types::CertificateMismatchException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidRequestException
    class InvalidRequestException
      def self.parse(http_resp)
        data = Types::InvalidRequestException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for MalformedCertificateException
    class MalformedCertificateException
      def self.parse(http_resp)
        data = Types::MalformedCertificateException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for IssueCertificate
    class IssueCertificate
      def self.parse(http_resp)
        data = Types::IssueCertificateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.certificate_arn = map['CertificateArn']
        data
      end
    end

    # Error Parser for MalformedCSRException
    class MalformedCSRException
      def self.parse(http_resp)
        data = Types::MalformedCSRException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for ListCertificateAuthorities
    class ListCertificateAuthorities
      def self.parse(http_resp)
        data = Types::ListCertificateAuthoritiesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.certificate_authorities = (Parsers::CertificateAuthorities.parse(map['CertificateAuthorities']) unless map['CertificateAuthorities'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class CertificateAuthorities
      def self.parse(list)
        list.map do |value|
          Parsers::CertificateAuthority.parse(value) unless value.nil?
        end
      end
    end

    # Error Parser for InvalidNextTokenException
    class InvalidNextTokenException
      def self.parse(http_resp)
        data = Types::InvalidNextTokenException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for ListPermissions
    class ListPermissions
      def self.parse(http_resp)
        data = Types::ListPermissionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.permissions = (Parsers::PermissionList.parse(map['Permissions']) unless map['Permissions'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class PermissionList
      def self.parse(list)
        list.map do |value|
          Parsers::Permission.parse(value) unless value.nil?
        end
      end
    end

    class Permission
      def self.parse(map)
        data = Types::Permission.new
        data.certificate_authority_arn = map['CertificateAuthorityArn']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.principal = map['Principal']
        data.source_account = map['SourceAccount']
        data.actions = (Parsers::ActionList.parse(map['Actions']) unless map['Actions'].nil?)
        data.policy = map['Policy']
        return data
      end
    end

    class ActionList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for ListTags
    class ListTags
      def self.parse(http_resp)
        data = Types::ListTagsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data.next_token = map['NextToken']
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

    # Operation Parser for PutPolicy
    class PutPolicy
      def self.parse(http_resp)
        data = Types::PutPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for RestoreCertificateAuthority
    class RestoreCertificateAuthority
      def self.parse(http_resp)
        data = Types::RestoreCertificateAuthorityOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for RevokeCertificate
    class RevokeCertificate
      def self.parse(http_resp)
        data = Types::RevokeCertificateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for RequestAlreadyProcessedException
    class RequestAlreadyProcessedException
      def self.parse(http_resp)
        data = Types::RequestAlreadyProcessedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for TagCertificateAuthority
    class TagCertificateAuthority
      def self.parse(http_resp)
        data = Types::TagCertificateAuthorityOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for TooManyTagsException
    class TooManyTagsException
      def self.parse(http_resp)
        data = Types::TooManyTagsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for UntagCertificateAuthority
    class UntagCertificateAuthority
      def self.parse(http_resp)
        data = Types::UntagCertificateAuthorityOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateCertificateAuthority
    class UpdateCertificateAuthority
      def self.parse(http_resp)
        data = Types::UpdateCertificateAuthorityOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end
  end
end
