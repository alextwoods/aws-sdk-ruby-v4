# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::LicenseManager
  module Builders

    # Operation Builder for AcceptGrant
    class AcceptGrant
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSLicenseManager.AcceptGrant'
        data = {}
        data['GrantArn'] = input[:grant_arn] unless input[:grant_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CheckInLicense
    class CheckInLicense
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSLicenseManager.CheckInLicense'
        data = {}
        data['LicenseConsumptionToken'] = input[:license_consumption_token] unless input[:license_consumption_token].nil?
        data['Beneficiary'] = input[:beneficiary] unless input[:beneficiary].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CheckoutBorrowLicense
    class CheckoutBorrowLicense
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSLicenseManager.CheckoutBorrowLicense'
        data = {}
        data['LicenseArn'] = input[:license_arn] unless input[:license_arn].nil?
        data['Entitlements'] = Builders::EntitlementDataList.build(input[:entitlements]) unless input[:entitlements].nil?
        data['DigitalSignatureMethod'] = input[:digital_signature_method] unless input[:digital_signature_method].nil?
        data['NodeId'] = input[:node_id] unless input[:node_id].nil?
        data['CheckoutMetadata'] = Builders::MetadataList.build(input[:checkout_metadata]) unless input[:checkout_metadata].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for MetadataList
    class MetadataList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Metadata.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Metadata
    class Metadata
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # List Builder for EntitlementDataList
    class EntitlementDataList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::EntitlementData.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for EntitlementData
    class EntitlementData
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data['Unit'] = input[:unit] unless input[:unit].nil?
        data
      end
    end

    # Operation Builder for CheckoutLicense
    class CheckoutLicense
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSLicenseManager.CheckoutLicense'
        data = {}
        data['ProductSKU'] = input[:product_sku] unless input[:product_sku].nil?
        data['CheckoutType'] = input[:checkout_type] unless input[:checkout_type].nil?
        data['KeyFingerprint'] = input[:key_fingerprint] unless input[:key_fingerprint].nil?
        data['Entitlements'] = Builders::EntitlementDataList.build(input[:entitlements]) unless input[:entitlements].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        data['Beneficiary'] = input[:beneficiary] unless input[:beneficiary].nil?
        data['NodeId'] = input[:node_id] unless input[:node_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateGrant
    class CreateGrant
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSLicenseManager.CreateGrant'
        data = {}
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        data['GrantName'] = input[:grant_name] unless input[:grant_name].nil?
        data['LicenseArn'] = input[:license_arn] unless input[:license_arn].nil?
        data['Principals'] = Builders::PrincipalArnList.build(input[:principals]) unless input[:principals].nil?
        data['HomeRegion'] = input[:home_region] unless input[:home_region].nil?
        data['AllowedOperations'] = Builders::AllowedOperationList.build(input[:allowed_operations]) unless input[:allowed_operations].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for AllowedOperationList
    class AllowedOperationList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for PrincipalArnList
    class PrincipalArnList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateGrantVersion
    class CreateGrantVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSLicenseManager.CreateGrantVersion'
        data = {}
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        data['GrantArn'] = input[:grant_arn] unless input[:grant_arn].nil?
        data['GrantName'] = input[:grant_name] unless input[:grant_name].nil?
        data['AllowedOperations'] = Builders::AllowedOperationList.build(input[:allowed_operations]) unless input[:allowed_operations].nil?
        data['Status'] = input[:status] unless input[:status].nil?
        data['StatusReason'] = input[:status_reason] unless input[:status_reason].nil?
        data['SourceVersion'] = input[:source_version] unless input[:source_version].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateLicense
    class CreateLicense
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSLicenseManager.CreateLicense'
        data = {}
        data['LicenseName'] = input[:license_name] unless input[:license_name].nil?
        data['ProductName'] = input[:product_name] unless input[:product_name].nil?
        data['ProductSKU'] = input[:product_sku] unless input[:product_sku].nil?
        data['Issuer'] = Builders::Issuer.build(input[:issuer]) unless input[:issuer].nil?
        data['HomeRegion'] = input[:home_region] unless input[:home_region].nil?
        data['Validity'] = Builders::DatetimeRange.build(input[:validity]) unless input[:validity].nil?
        data['Entitlements'] = Builders::EntitlementList.build(input[:entitlements]) unless input[:entitlements].nil?
        data['Beneficiary'] = input[:beneficiary] unless input[:beneficiary].nil?
        data['ConsumptionConfiguration'] = Builders::ConsumptionConfiguration.build(input[:consumption_configuration]) unless input[:consumption_configuration].nil?
        data['LicenseMetadata'] = Builders::MetadataList.build(input[:license_metadata]) unless input[:license_metadata].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ConsumptionConfiguration
    class ConsumptionConfiguration
      def self.build(input)
        data = {}
        data['RenewType'] = input[:renew_type] unless input[:renew_type].nil?
        data['ProvisionalConfiguration'] = Builders::ProvisionalConfiguration.build(input[:provisional_configuration]) unless input[:provisional_configuration].nil?
        data['BorrowConfiguration'] = Builders::BorrowConfiguration.build(input[:borrow_configuration]) unless input[:borrow_configuration].nil?
        data
      end
    end

    # Structure Builder for BorrowConfiguration
    class BorrowConfiguration
      def self.build(input)
        data = {}
        data['AllowEarlyCheckIn'] = input[:allow_early_check_in] unless input[:allow_early_check_in].nil?
        data['MaxTimeToLiveInMinutes'] = input[:max_time_to_live_in_minutes] unless input[:max_time_to_live_in_minutes].nil?
        data
      end
    end

    # Structure Builder for ProvisionalConfiguration
    class ProvisionalConfiguration
      def self.build(input)
        data = {}
        data['MaxTimeToLiveInMinutes'] = input[:max_time_to_live_in_minutes] unless input[:max_time_to_live_in_minutes].nil?
        data
      end
    end

    # List Builder for EntitlementList
    class EntitlementList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Entitlement.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Entitlement
    class Entitlement
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data['MaxCount'] = input[:max_count] unless input[:max_count].nil?
        data['Overage'] = input[:overage] unless input[:overage].nil?
        data['Unit'] = input[:unit] unless input[:unit].nil?
        data['AllowCheckIn'] = input[:allow_check_in] unless input[:allow_check_in].nil?
        data
      end
    end

    # Structure Builder for DatetimeRange
    class DatetimeRange
      def self.build(input)
        data = {}
        data['Begin'] = input[:begin] unless input[:begin].nil?
        data['End'] = input[:end] unless input[:end].nil?
        data
      end
    end

    # Structure Builder for Issuer
    class Issuer
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['SignKey'] = input[:sign_key] unless input[:sign_key].nil?
        data
      end
    end

    # Operation Builder for CreateLicenseConfiguration
    class CreateLicenseConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSLicenseManager.CreateLicenseConfiguration'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['LicenseCountingType'] = input[:license_counting_type] unless input[:license_counting_type].nil?
        data['LicenseCount'] = input[:license_count] unless input[:license_count].nil?
        data['LicenseCountHardLimit'] = input[:license_count_hard_limit] unless input[:license_count_hard_limit].nil?
        data['LicenseRules'] = Builders::StringList.build(input[:license_rules]) unless input[:license_rules].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['DisassociateWhenNotFound'] = input[:disassociate_when_not_found] unless input[:disassociate_when_not_found].nil?
        data['ProductInformationList'] = Builders::ProductInformationList.build(input[:product_information_list]) unless input[:product_information_list].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ProductInformationList
    class ProductInformationList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ProductInformation.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ProductInformation
    class ProductInformation
      def self.build(input)
        data = {}
        data['ResourceType'] = input[:resource_type] unless input[:resource_type].nil?
        data['ProductInformationFilterList'] = Builders::ProductInformationFilterList.build(input[:product_information_filter_list]) unless input[:product_information_filter_list].nil?
        data
      end
    end

    # List Builder for ProductInformationFilterList
    class ProductInformationFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ProductInformationFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ProductInformationFilter
    class ProductInformationFilter
      def self.build(input)
        data = {}
        data['ProductInformationFilterName'] = input[:product_information_filter_name] unless input[:product_information_filter_name].nil?
        data['ProductInformationFilterValue'] = Builders::StringList.build(input[:product_information_filter_value]) unless input[:product_information_filter_value].nil?
        data['ProductInformationFilterComparator'] = input[:product_information_filter_comparator] unless input[:product_information_filter_comparator].nil?
        data
      end
    end

    # List Builder for StringList
    class StringList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
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

    # Operation Builder for CreateLicenseConversionTaskForResource
    class CreateLicenseConversionTaskForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSLicenseManager.CreateLicenseConversionTaskForResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['SourceLicenseContext'] = Builders::LicenseConversionContext.build(input[:source_license_context]) unless input[:source_license_context].nil?
        data['DestinationLicenseContext'] = Builders::LicenseConversionContext.build(input[:destination_license_context]) unless input[:destination_license_context].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for LicenseConversionContext
    class LicenseConversionContext
      def self.build(input)
        data = {}
        data['UsageOperation'] = input[:usage_operation] unless input[:usage_operation].nil?
        data
      end
    end

    # Operation Builder for CreateLicenseManagerReportGenerator
    class CreateLicenseManagerReportGenerator
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSLicenseManager.CreateLicenseManagerReportGenerator'
        data = {}
        data['ReportGeneratorName'] = input[:report_generator_name] unless input[:report_generator_name].nil?
        data['Type'] = Builders::ReportTypeList.build(input[:type]) unless input[:type].nil?
        data['ReportContext'] = Builders::ReportContext.build(input[:report_context]) unless input[:report_context].nil?
        data['ReportFrequency'] = Builders::ReportFrequency.build(input[:report_frequency]) unless input[:report_frequency].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ReportFrequency
    class ReportFrequency
      def self.build(input)
        data = {}
        data['value'] = input[:value] unless input[:value].nil?
        data['period'] = input[:period] unless input[:period].nil?
        data
      end
    end

    # Structure Builder for ReportContext
    class ReportContext
      def self.build(input)
        data = {}
        data['licenseConfigurationArns'] = Builders::ArnList.build(input[:license_configuration_arns]) unless input[:license_configuration_arns].nil?
        data
      end
    end

    # List Builder for ArnList
    class ArnList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for ReportTypeList
    class ReportTypeList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateLicenseVersion
    class CreateLicenseVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSLicenseManager.CreateLicenseVersion'
        data = {}
        data['LicenseArn'] = input[:license_arn] unless input[:license_arn].nil?
        data['LicenseName'] = input[:license_name] unless input[:license_name].nil?
        data['ProductName'] = input[:product_name] unless input[:product_name].nil?
        data['Issuer'] = Builders::Issuer.build(input[:issuer]) unless input[:issuer].nil?
        data['HomeRegion'] = input[:home_region] unless input[:home_region].nil?
        data['Validity'] = Builders::DatetimeRange.build(input[:validity]) unless input[:validity].nil?
        data['LicenseMetadata'] = Builders::MetadataList.build(input[:license_metadata]) unless input[:license_metadata].nil?
        data['Entitlements'] = Builders::EntitlementList.build(input[:entitlements]) unless input[:entitlements].nil?
        data['ConsumptionConfiguration'] = Builders::ConsumptionConfiguration.build(input[:consumption_configuration]) unless input[:consumption_configuration].nil?
        data['Status'] = input[:status] unless input[:status].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        data['SourceVersion'] = input[:source_version] unless input[:source_version].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateToken
    class CreateToken
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSLicenseManager.CreateToken'
        data = {}
        data['LicenseArn'] = input[:license_arn] unless input[:license_arn].nil?
        data['RoleArns'] = Builders::ArnList.build(input[:role_arns]) unless input[:role_arns].nil?
        data['ExpirationInDays'] = input[:expiration_in_days] unless input[:expiration_in_days].nil?
        data['TokenProperties'] = Builders::MaxSize3StringList.build(input[:token_properties]) unless input[:token_properties].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for MaxSize3StringList
    class MaxSize3StringList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DeleteGrant
    class DeleteGrant
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSLicenseManager.DeleteGrant'
        data = {}
        data['GrantArn'] = input[:grant_arn] unless input[:grant_arn].nil?
        data['StatusReason'] = input[:status_reason] unless input[:status_reason].nil?
        data['Version'] = input[:version] unless input[:version].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteLicense
    class DeleteLicense
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSLicenseManager.DeleteLicense'
        data = {}
        data['LicenseArn'] = input[:license_arn] unless input[:license_arn].nil?
        data['SourceVersion'] = input[:source_version] unless input[:source_version].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteLicenseConfiguration
    class DeleteLicenseConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSLicenseManager.DeleteLicenseConfiguration'
        data = {}
        data['LicenseConfigurationArn'] = input[:license_configuration_arn] unless input[:license_configuration_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteLicenseManagerReportGenerator
    class DeleteLicenseManagerReportGenerator
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSLicenseManager.DeleteLicenseManagerReportGenerator'
        data = {}
        data['LicenseManagerReportGeneratorArn'] = input[:license_manager_report_generator_arn] unless input[:license_manager_report_generator_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteToken
    class DeleteToken
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSLicenseManager.DeleteToken'
        data = {}
        data['TokenId'] = input[:token_id] unless input[:token_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ExtendLicenseConsumption
    class ExtendLicenseConsumption
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSLicenseManager.ExtendLicenseConsumption'
        data = {}
        data['LicenseConsumptionToken'] = input[:license_consumption_token] unless input[:license_consumption_token].nil?
        data['DryRun'] = input[:dry_run] unless input[:dry_run].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetAccessToken
    class GetAccessToken
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSLicenseManager.GetAccessToken'
        data = {}
        data['Token'] = input[:token] unless input[:token].nil?
        data['TokenProperties'] = Builders::MaxSize3StringList.build(input[:token_properties]) unless input[:token_properties].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetGrant
    class GetGrant
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSLicenseManager.GetGrant'
        data = {}
        data['GrantArn'] = input[:grant_arn] unless input[:grant_arn].nil?
        data['Version'] = input[:version] unless input[:version].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetLicense
    class GetLicense
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSLicenseManager.GetLicense'
        data = {}
        data['LicenseArn'] = input[:license_arn] unless input[:license_arn].nil?
        data['Version'] = input[:version] unless input[:version].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetLicenseConfiguration
    class GetLicenseConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSLicenseManager.GetLicenseConfiguration'
        data = {}
        data['LicenseConfigurationArn'] = input[:license_configuration_arn] unless input[:license_configuration_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetLicenseConversionTask
    class GetLicenseConversionTask
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSLicenseManager.GetLicenseConversionTask'
        data = {}
        data['LicenseConversionTaskId'] = input[:license_conversion_task_id] unless input[:license_conversion_task_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetLicenseManagerReportGenerator
    class GetLicenseManagerReportGenerator
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSLicenseManager.GetLicenseManagerReportGenerator'
        data = {}
        data['LicenseManagerReportGeneratorArn'] = input[:license_manager_report_generator_arn] unless input[:license_manager_report_generator_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetLicenseUsage
    class GetLicenseUsage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSLicenseManager.GetLicenseUsage'
        data = {}
        data['LicenseArn'] = input[:license_arn] unless input[:license_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetServiceSettings
    class GetServiceSettings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSLicenseManager.GetServiceSettings'
        data = {}
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListAssociationsForLicenseConfiguration
    class ListAssociationsForLicenseConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSLicenseManager.ListAssociationsForLicenseConfiguration'
        data = {}
        data['LicenseConfigurationArn'] = input[:license_configuration_arn] unless input[:license_configuration_arn].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListDistributedGrants
    class ListDistributedGrants
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSLicenseManager.ListDistributedGrants'
        data = {}
        data['GrantArns'] = Builders::ArnList.build(input[:grant_arns]) unless input[:grant_arns].nil?
        data['Filters'] = Builders::FilterList.build(input[:filters]) unless input[:filters].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for FilterList
    class FilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Filter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Filter
    class Filter
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Values'] = Builders::FilterValues.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # List Builder for FilterValues
    class FilterValues
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListFailuresForLicenseConfigurationOperations
    class ListFailuresForLicenseConfigurationOperations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSLicenseManager.ListFailuresForLicenseConfigurationOperations'
        data = {}
        data['LicenseConfigurationArn'] = input[:license_configuration_arn] unless input[:license_configuration_arn].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListLicenseConfigurations
    class ListLicenseConfigurations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSLicenseManager.ListLicenseConfigurations'
        data = {}
        data['LicenseConfigurationArns'] = Builders::StringList.build(input[:license_configuration_arns]) unless input[:license_configuration_arns].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['Filters'] = Builders::Filters.build(input[:filters]) unless input[:filters].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for Filters
    class Filters
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Filter.build(element) unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListLicenseConversionTasks
    class ListLicenseConversionTasks
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSLicenseManager.ListLicenseConversionTasks'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['Filters'] = Builders::Filters.build(input[:filters]) unless input[:filters].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListLicenseManagerReportGenerators
    class ListLicenseManagerReportGenerators
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSLicenseManager.ListLicenseManagerReportGenerators'
        data = {}
        data['Filters'] = Builders::FilterList.build(input[:filters]) unless input[:filters].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListLicenseSpecificationsForResource
    class ListLicenseSpecificationsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSLicenseManager.ListLicenseSpecificationsForResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListLicenseVersions
    class ListLicenseVersions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSLicenseManager.ListLicenseVersions'
        data = {}
        data['LicenseArn'] = input[:license_arn] unless input[:license_arn].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListLicenses
    class ListLicenses
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSLicenseManager.ListLicenses'
        data = {}
        data['LicenseArns'] = Builders::ArnList.build(input[:license_arns]) unless input[:license_arns].nil?
        data['Filters'] = Builders::FilterList.build(input[:filters]) unless input[:filters].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListReceivedGrants
    class ListReceivedGrants
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSLicenseManager.ListReceivedGrants'
        data = {}
        data['GrantArns'] = Builders::ArnList.build(input[:grant_arns]) unless input[:grant_arns].nil?
        data['Filters'] = Builders::FilterList.build(input[:filters]) unless input[:filters].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListReceivedLicenses
    class ListReceivedLicenses
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSLicenseManager.ListReceivedLicenses'
        data = {}
        data['LicenseArns'] = Builders::ArnList.build(input[:license_arns]) unless input[:license_arns].nil?
        data['Filters'] = Builders::FilterList.build(input[:filters]) unless input[:filters].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListResourceInventory
    class ListResourceInventory
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSLicenseManager.ListResourceInventory'
        data = {}
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['Filters'] = Builders::InventoryFilterList.build(input[:filters]) unless input[:filters].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for InventoryFilterList
    class InventoryFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::InventoryFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for InventoryFilter
    class InventoryFilter
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Condition'] = input[:condition] unless input[:condition].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSLicenseManager.ListTagsForResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTokens
    class ListTokens
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSLicenseManager.ListTokens'
        data = {}
        data['TokenIds'] = Builders::StringList.build(input[:token_ids]) unless input[:token_ids].nil?
        data['Filters'] = Builders::FilterList.build(input[:filters]) unless input[:filters].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListUsageForLicenseConfiguration
    class ListUsageForLicenseConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSLicenseManager.ListUsageForLicenseConfiguration'
        data = {}
        data['LicenseConfigurationArn'] = input[:license_configuration_arn] unless input[:license_configuration_arn].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['Filters'] = Builders::Filters.build(input[:filters]) unless input[:filters].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RejectGrant
    class RejectGrant
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSLicenseManager.RejectGrant'
        data = {}
        data['GrantArn'] = input[:grant_arn] unless input[:grant_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSLicenseManager.TagResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSLicenseManager.UntagResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['TagKeys'] = Builders::TagKeyList.build(input[:tag_keys]) unless input[:tag_keys].nil?
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

    # Operation Builder for UpdateLicenseConfiguration
    class UpdateLicenseConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSLicenseManager.UpdateLicenseConfiguration'
        data = {}
        data['LicenseConfigurationArn'] = input[:license_configuration_arn] unless input[:license_configuration_arn].nil?
        data['LicenseConfigurationStatus'] = input[:license_configuration_status] unless input[:license_configuration_status].nil?
        data['LicenseRules'] = Builders::StringList.build(input[:license_rules]) unless input[:license_rules].nil?
        data['LicenseCount'] = input[:license_count] unless input[:license_count].nil?
        data['LicenseCountHardLimit'] = input[:license_count_hard_limit] unless input[:license_count_hard_limit].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['ProductInformationList'] = Builders::ProductInformationList.build(input[:product_information_list]) unless input[:product_information_list].nil?
        data['DisassociateWhenNotFound'] = input[:disassociate_when_not_found] unless input[:disassociate_when_not_found].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateLicenseManagerReportGenerator
    class UpdateLicenseManagerReportGenerator
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSLicenseManager.UpdateLicenseManagerReportGenerator'
        data = {}
        data['LicenseManagerReportGeneratorArn'] = input[:license_manager_report_generator_arn] unless input[:license_manager_report_generator_arn].nil?
        data['ReportGeneratorName'] = input[:report_generator_name] unless input[:report_generator_name].nil?
        data['Type'] = Builders::ReportTypeList.build(input[:type]) unless input[:type].nil?
        data['ReportContext'] = Builders::ReportContext.build(input[:report_context]) unless input[:report_context].nil?
        data['ReportFrequency'] = Builders::ReportFrequency.build(input[:report_frequency]) unless input[:report_frequency].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateLicenseSpecificationsForResource
    class UpdateLicenseSpecificationsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSLicenseManager.UpdateLicenseSpecificationsForResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['AddLicenseSpecifications'] = Builders::LicenseSpecifications.build(input[:add_license_specifications]) unless input[:add_license_specifications].nil?
        data['RemoveLicenseSpecifications'] = Builders::LicenseSpecifications.build(input[:remove_license_specifications]) unless input[:remove_license_specifications].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for LicenseSpecifications
    class LicenseSpecifications
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::LicenseSpecification.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for LicenseSpecification
    class LicenseSpecification
      def self.build(input)
        data = {}
        data['LicenseConfigurationArn'] = input[:license_configuration_arn] unless input[:license_configuration_arn].nil?
        data['AmiAssociationScope'] = input[:ami_association_scope] unless input[:ami_association_scope].nil?
        data
      end
    end

    # Operation Builder for UpdateServiceSettings
    class UpdateServiceSettings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSLicenseManager.UpdateServiceSettings'
        data = {}
        data['S3BucketArn'] = input[:s3_bucket_arn] unless input[:s3_bucket_arn].nil?
        data['SnsTopicArn'] = input[:sns_topic_arn] unless input[:sns_topic_arn].nil?
        data['OrganizationConfiguration'] = Builders::OrganizationConfiguration.build(input[:organization_configuration]) unless input[:organization_configuration].nil?
        data['EnableCrossAccountsDiscovery'] = input[:enable_cross_accounts_discovery] unless input[:enable_cross_accounts_discovery].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for OrganizationConfiguration
    class OrganizationConfiguration
      def self.build(input)
        data = {}
        data['EnableIntegration'] = input[:enable_integration] unless input[:enable_integration].nil?
        data
      end
    end
  end
end
