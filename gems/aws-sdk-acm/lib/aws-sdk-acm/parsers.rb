# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::ACM
  module Parsers

    # Operation Parser for AddTagsToCertificate
    class AddTagsToCertificate
      def self.parse(http_resp)
        data = Types::AddTagsToCertificateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for InvalidParameterException
    class InvalidParameterException
      def self.parse(http_resp)
        data = Types::InvalidParameterException.new
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

    # Error Parser for TagPolicyException
    class TagPolicyException
      def self.parse(http_resp)
        data = Types::TagPolicyException.new
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

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
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

    # Operation Parser for DeleteCertificate
    class DeleteCertificate
      def self.parse(http_resp)
        data = Types::DeleteCertificateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for ResourceInUseException
    class ResourceInUseException
      def self.parse(http_resp)
        data = Types::ResourceInUseException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DescribeCertificate
    class DescribeCertificate
      def self.parse(http_resp)
        data = Types::DescribeCertificateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.certificate = (Parsers::CertificateDetail.parse(map['Certificate']) unless map['Certificate'].nil?)
        data
      end
    end

    class CertificateDetail
      def self.parse(map)
        data = Types::CertificateDetail.new
        data.certificate_arn = map['CertificateArn']
        data.domain_name = map['DomainName']
        data.subject_alternative_names = (Parsers::DomainList.parse(map['SubjectAlternativeNames']) unless map['SubjectAlternativeNames'].nil?)
        data.domain_validation_options = (Parsers::DomainValidationList.parse(map['DomainValidationOptions']) unless map['DomainValidationOptions'].nil?)
        data.serial = map['Serial']
        data.subject = map['Subject']
        data.issuer = map['Issuer']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.issued_at = Time.at(map['IssuedAt'].to_i) if map['IssuedAt']
        data.imported_at = Time.at(map['ImportedAt'].to_i) if map['ImportedAt']
        data.status = map['Status']
        data.revoked_at = Time.at(map['RevokedAt'].to_i) if map['RevokedAt']
        data.revocation_reason = map['RevocationReason']
        data.not_before = Time.at(map['NotBefore'].to_i) if map['NotBefore']
        data.not_after = Time.at(map['NotAfter'].to_i) if map['NotAfter']
        data.key_algorithm = map['KeyAlgorithm']
        data.signature_algorithm = map['SignatureAlgorithm']
        data.in_use_by = (Parsers::InUseList.parse(map['InUseBy']) unless map['InUseBy'].nil?)
        data.failure_reason = map['FailureReason']
        data.type = map['Type']
        data.renewal_summary = (Parsers::RenewalSummary.parse(map['RenewalSummary']) unless map['RenewalSummary'].nil?)
        data.key_usages = (Parsers::KeyUsageList.parse(map['KeyUsages']) unless map['KeyUsages'].nil?)
        data.extended_key_usages = (Parsers::ExtendedKeyUsageList.parse(map['ExtendedKeyUsages']) unless map['ExtendedKeyUsages'].nil?)
        data.certificate_authority_arn = map['CertificateAuthorityArn']
        data.renewal_eligibility = map['RenewalEligibility']
        data.options = (Parsers::CertificateOptions.parse(map['Options']) unless map['Options'].nil?)
        return data
      end
    end

    class CertificateOptions
      def self.parse(map)
        data = Types::CertificateOptions.new
        data.certificate_transparency_logging_preference = map['CertificateTransparencyLoggingPreference']
        return data
      end
    end

    class ExtendedKeyUsageList
      def self.parse(list)
        list.map do |value|
          Parsers::ExtendedKeyUsage.parse(value) unless value.nil?
        end
      end
    end

    class ExtendedKeyUsage
      def self.parse(map)
        data = Types::ExtendedKeyUsage.new
        data.name = map['Name']
        data.oid = map['OID']
        return data
      end
    end

    class KeyUsageList
      def self.parse(list)
        list.map do |value|
          Parsers::KeyUsage.parse(value) unless value.nil?
        end
      end
    end

    class KeyUsage
      def self.parse(map)
        data = Types::KeyUsage.new
        data.name = map['Name']
        return data
      end
    end

    class RenewalSummary
      def self.parse(map)
        data = Types::RenewalSummary.new
        data.renewal_status = map['RenewalStatus']
        data.domain_validation_options = (Parsers::DomainValidationList.parse(map['DomainValidationOptions']) unless map['DomainValidationOptions'].nil?)
        data.renewal_status_reason = map['RenewalStatusReason']
        data.updated_at = Time.at(map['UpdatedAt'].to_i) if map['UpdatedAt']
        return data
      end
    end

    class DomainValidationList
      def self.parse(list)
        list.map do |value|
          Parsers::DomainValidation.parse(value) unless value.nil?
        end
      end
    end

    class DomainValidation
      def self.parse(map)
        data = Types::DomainValidation.new
        data.domain_name = map['DomainName']
        data.validation_emails = (Parsers::ValidationEmailList.parse(map['ValidationEmails']) unless map['ValidationEmails'].nil?)
        data.validation_domain = map['ValidationDomain']
        data.validation_status = map['ValidationStatus']
        data.resource_record = (Parsers::ResourceRecord.parse(map['ResourceRecord']) unless map['ResourceRecord'].nil?)
        data.validation_method = map['ValidationMethod']
        return data
      end
    end

    class ResourceRecord
      def self.parse(map)
        data = Types::ResourceRecord.new
        data.name = map['Name']
        data.type = map['Type']
        data.value = map['Value']
        return data
      end
    end

    class ValidationEmailList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class InUseList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class DomainList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for ExportCertificate
    class ExportCertificate
      def self.parse(http_resp)
        data = Types::ExportCertificateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.certificate = map['Certificate']
        data.certificate_chain = map['CertificateChain']
        data.private_key = map['PrivateKey']
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

    # Operation Parser for GetAccountConfiguration
    class GetAccountConfiguration
      def self.parse(http_resp)
        data = Types::GetAccountConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.expiry_events = (Parsers::ExpiryEventsConfiguration.parse(map['ExpiryEvents']) unless map['ExpiryEvents'].nil?)
        data
      end
    end

    class ExpiryEventsConfiguration
      def self.parse(map)
        data = Types::ExpiryEventsConfiguration.new
        data.days_before_expiry = map['DaysBeforeExpiry']
        return data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
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

    # Operation Parser for ImportCertificate
    class ImportCertificate
      def self.parse(http_resp)
        data = Types::ImportCertificateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.certificate_arn = map['CertificateArn']
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

    # Operation Parser for ListCertificates
    class ListCertificates
      def self.parse(http_resp)
        data = Types::ListCertificatesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.certificate_summary_list = (Parsers::CertificateSummaryList.parse(map['CertificateSummaryList']) unless map['CertificateSummaryList'].nil?)
        data
      end
    end

    class CertificateSummaryList
      def self.parse(list)
        list.map do |value|
          Parsers::CertificateSummary.parse(value) unless value.nil?
        end
      end
    end

    class CertificateSummary
      def self.parse(map)
        data = Types::CertificateSummary.new
        data.certificate_arn = map['CertificateArn']
        data.domain_name = map['DomainName']
        return data
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

    # Operation Parser for ListTagsForCertificate
    class ListTagsForCertificate
      def self.parse(http_resp)
        data = Types::ListTagsForCertificateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
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

    # Operation Parser for PutAccountConfiguration
    class PutAccountConfiguration
      def self.parse(http_resp)
        data = Types::PutAccountConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for RemoveTagsFromCertificate
    class RemoveTagsFromCertificate
      def self.parse(http_resp)
        data = Types::RemoveTagsFromCertificateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for RenewCertificate
    class RenewCertificate
      def self.parse(http_resp)
        data = Types::RenewCertificateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for RequestCertificate
    class RequestCertificate
      def self.parse(http_resp)
        data = Types::RequestCertificateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.certificate_arn = map['CertificateArn']
        data
      end
    end

    # Error Parser for InvalidDomainValidationOptionsException
    class InvalidDomainValidationOptionsException
      def self.parse(http_resp)
        data = Types::InvalidDomainValidationOptionsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for ResendValidationEmail
    class ResendValidationEmail
      def self.parse(http_resp)
        data = Types::ResendValidationEmailOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
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

    # Operation Parser for UpdateCertificateOptions
    class UpdateCertificateOptions
      def self.parse(http_resp)
        data = Types::UpdateCertificateOptionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end
  end
end
