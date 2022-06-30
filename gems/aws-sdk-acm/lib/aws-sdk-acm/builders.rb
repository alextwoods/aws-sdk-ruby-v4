# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::ACM
  module Builders

    # Operation Builder for AddTagsToCertificate
    class AddTagsToCertificate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CertificateManager.AddTagsToCertificate'
        data = {}
        data['CertificateArn'] = input[:certificate_arn] unless input[:certificate_arn].nil?
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

    # Operation Builder for DeleteCertificate
    class DeleteCertificate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CertificateManager.DeleteCertificate'
        data = {}
        data['CertificateArn'] = input[:certificate_arn] unless input[:certificate_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeCertificate
    class DescribeCertificate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CertificateManager.DescribeCertificate'
        data = {}
        data['CertificateArn'] = input[:certificate_arn] unless input[:certificate_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ExportCertificate
    class ExportCertificate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CertificateManager.ExportCertificate'
        data = {}
        data['CertificateArn'] = input[:certificate_arn] unless input[:certificate_arn].nil?
        data['Passphrase'] = Base64::encode64(input[:passphrase]).strip unless input[:passphrase].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetAccountConfiguration
    class GetAccountConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CertificateManager.GetAccountConfiguration'
        data = {}
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetCertificate
    class GetCertificate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CertificateManager.GetCertificate'
        data = {}
        data['CertificateArn'] = input[:certificate_arn] unless input[:certificate_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ImportCertificate
    class ImportCertificate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CertificateManager.ImportCertificate'
        data = {}
        data['CertificateArn'] = input[:certificate_arn] unless input[:certificate_arn].nil?
        data['Certificate'] = Base64::encode64(input[:certificate]).strip unless input[:certificate].nil?
        data['PrivateKey'] = Base64::encode64(input[:private_key]).strip unless input[:private_key].nil?
        data['CertificateChain'] = Base64::encode64(input[:certificate_chain]).strip unless input[:certificate_chain].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListCertificates
    class ListCertificates
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CertificateManager.ListCertificates'
        data = {}
        data['CertificateStatuses'] = Builders::CertificateStatuses.build(input[:certificate_statuses]) unless input[:certificate_statuses].nil?
        data['Includes'] = Builders::Filters.build(input[:includes]) unless input[:includes].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxItems'] = input[:max_items] unless input[:max_items].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for Filters
    class Filters
      def self.build(input)
        data = {}
        data['extendedKeyUsage'] = Builders::ExtendedKeyUsageFilterList.build(input[:extended_key_usage]) unless input[:extended_key_usage].nil?
        data['keyUsage'] = Builders::KeyUsageFilterList.build(input[:key_usage]) unless input[:key_usage].nil?
        data['keyTypes'] = Builders::KeyAlgorithmList.build(input[:key_types]) unless input[:key_types].nil?
        data
      end
    end

    # List Builder for KeyAlgorithmList
    class KeyAlgorithmList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for KeyUsageFilterList
    class KeyUsageFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for ExtendedKeyUsageFilterList
    class ExtendedKeyUsageFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for CertificateStatuses
    class CertificateStatuses
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListTagsForCertificate
    class ListTagsForCertificate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CertificateManager.ListTagsForCertificate'
        data = {}
        data['CertificateArn'] = input[:certificate_arn] unless input[:certificate_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutAccountConfiguration
    class PutAccountConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CertificateManager.PutAccountConfiguration'
        data = {}
        data['ExpiryEvents'] = Builders::ExpiryEventsConfiguration.build(input[:expiry_events]) unless input[:expiry_events].nil?
        data['IdempotencyToken'] = input[:idempotency_token] unless input[:idempotency_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ExpiryEventsConfiguration
    class ExpiryEventsConfiguration
      def self.build(input)
        data = {}
        data['DaysBeforeExpiry'] = input[:days_before_expiry] unless input[:days_before_expiry].nil?
        data
      end
    end

    # Operation Builder for RemoveTagsFromCertificate
    class RemoveTagsFromCertificate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CertificateManager.RemoveTagsFromCertificate'
        data = {}
        data['CertificateArn'] = input[:certificate_arn] unless input[:certificate_arn].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RenewCertificate
    class RenewCertificate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CertificateManager.RenewCertificate'
        data = {}
        data['CertificateArn'] = input[:certificate_arn] unless input[:certificate_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RequestCertificate
    class RequestCertificate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CertificateManager.RequestCertificate'
        data = {}
        data['DomainName'] = input[:domain_name] unless input[:domain_name].nil?
        data['ValidationMethod'] = input[:validation_method] unless input[:validation_method].nil?
        data['SubjectAlternativeNames'] = Builders::DomainList.build(input[:subject_alternative_names]) unless input[:subject_alternative_names].nil?
        data['IdempotencyToken'] = input[:idempotency_token] unless input[:idempotency_token].nil?
        data['DomainValidationOptions'] = Builders::DomainValidationOptionList.build(input[:domain_validation_options]) unless input[:domain_validation_options].nil?
        data['Options'] = Builders::CertificateOptions.build(input[:options]) unless input[:options].nil?
        data['CertificateAuthorityArn'] = input[:certificate_authority_arn] unless input[:certificate_authority_arn].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for CertificateOptions
    class CertificateOptions
      def self.build(input)
        data = {}
        data['CertificateTransparencyLoggingPreference'] = input[:certificate_transparency_logging_preference] unless input[:certificate_transparency_logging_preference].nil?
        data
      end
    end

    # List Builder for DomainValidationOptionList
    class DomainValidationOptionList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::DomainValidationOption.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DomainValidationOption
    class DomainValidationOption
      def self.build(input)
        data = {}
        data['DomainName'] = input[:domain_name] unless input[:domain_name].nil?
        data['ValidationDomain'] = input[:validation_domain] unless input[:validation_domain].nil?
        data
      end
    end

    # List Builder for DomainList
    class DomainList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ResendValidationEmail
    class ResendValidationEmail
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CertificateManager.ResendValidationEmail'
        data = {}
        data['CertificateArn'] = input[:certificate_arn] unless input[:certificate_arn].nil?
        data['Domain'] = input[:domain] unless input[:domain].nil?
        data['ValidationDomain'] = input[:validation_domain] unless input[:validation_domain].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateCertificateOptions
    class UpdateCertificateOptions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CertificateManager.UpdateCertificateOptions'
        data = {}
        data['CertificateArn'] = input[:certificate_arn] unless input[:certificate_arn].nil?
        data['Options'] = Builders::CertificateOptions.build(input[:options]) unless input[:options].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
