# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::LicenseManager
  module Parsers

    # Operation Parser for AcceptGrant
    class AcceptGrant
      def self.parse(http_resp)
        data = Types::AcceptGrantOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.grant_arn = map['GrantArn']
        data.status = map['Status']
        data.version = map['Version']
        data
      end
    end

    # Error Parser for InvalidParameterValueException
    class InvalidParameterValueException
      def self.parse(http_resp)
        data = Types::InvalidParameterValueException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for RateLimitExceededException
    class RateLimitExceededException
      def self.parse(http_resp)
        data = Types::RateLimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ServerInternalException
    class ServerInternalException
      def self.parse(http_resp)
        data = Types::ServerInternalException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for AuthorizationException
    class AuthorizationException
      def self.parse(http_resp)
        data = Types::AuthorizationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
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

    # Error Parser for ResourceLimitExceededException
    class ResourceLimitExceededException
      def self.parse(http_resp)
        data = Types::ResourceLimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
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
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CheckInLicense
    class CheckInLicense
      def self.parse(http_resp)
        data = Types::CheckInLicenseOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
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
        data.message = map['Message']
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
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CheckoutBorrowLicense
    class CheckoutBorrowLicense
      def self.parse(http_resp)
        data = Types::CheckoutBorrowLicenseOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.license_arn = map['LicenseArn']
        data.license_consumption_token = map['LicenseConsumptionToken']
        data.entitlements_allowed = (EntitlementDataList.parse(map['EntitlementsAllowed']) unless map['EntitlementsAllowed'].nil?)
        data.node_id = map['NodeId']
        data.signed_token = map['SignedToken']
        data.issued_at = map['IssuedAt']
        data.expiration = map['Expiration']
        data.checkout_metadata = (MetadataList.parse(map['CheckoutMetadata']) unless map['CheckoutMetadata'].nil?)
        data
      end
    end

    class MetadataList
      def self.parse(list)
        list.map do |value|
          Metadata.parse(value) unless value.nil?
        end
      end
    end

    class Metadata
      def self.parse(map)
        data = Types::Metadata.new
        data.name = map['Name']
        data.value = map['Value']
        return data
      end
    end

    class EntitlementDataList
      def self.parse(list)
        list.map do |value|
          EntitlementData.parse(value) unless value.nil?
        end
      end
    end

    class EntitlementData
      def self.parse(map)
        data = Types::EntitlementData.new
        data.name = map['Name']
        data.value = map['Value']
        data.unit = map['Unit']
        return data
      end
    end

    # Error Parser for EntitlementNotAllowedException
    class EntitlementNotAllowedException
      def self.parse(http_resp)
        data = Types::EntitlementNotAllowedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for NoEntitlementsAllowedException
    class NoEntitlementsAllowedException
      def self.parse(http_resp)
        data = Types::NoEntitlementsAllowedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for RedirectException
    class RedirectException
      def self.parse(http_resp)
        data = Types::RedirectException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.location = map['Location']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for UnsupportedDigitalSignatureMethodException
    class UnsupportedDigitalSignatureMethodException
      def self.parse(http_resp)
        data = Types::UnsupportedDigitalSignatureMethodException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CheckoutLicense
    class CheckoutLicense
      def self.parse(http_resp)
        data = Types::CheckoutLicenseOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.checkout_type = map['CheckoutType']
        data.license_consumption_token = map['LicenseConsumptionToken']
        data.entitlements_allowed = (EntitlementDataList.parse(map['EntitlementsAllowed']) unless map['EntitlementsAllowed'].nil?)
        data.signed_token = map['SignedToken']
        data.node_id = map['NodeId']
        data.issued_at = map['IssuedAt']
        data.expiration = map['Expiration']
        data.license_arn = map['LicenseArn']
        data
      end
    end

    # Operation Parser for CreateGrant
    class CreateGrant
      def self.parse(http_resp)
        data = Types::CreateGrantOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.grant_arn = map['GrantArn']
        data.status = map['Status']
        data.version = map['Version']
        data
      end
    end

    # Operation Parser for CreateGrantVersion
    class CreateGrantVersion
      def self.parse(http_resp)
        data = Types::CreateGrantVersionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.grant_arn = map['GrantArn']
        data.status = map['Status']
        data.version = map['Version']
        data
      end
    end

    # Operation Parser for CreateLicense
    class CreateLicense
      def self.parse(http_resp)
        data = Types::CreateLicenseOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.license_arn = map['LicenseArn']
        data.status = map['Status']
        data.version = map['Version']
        data
      end
    end

    # Operation Parser for CreateLicenseConfiguration
    class CreateLicenseConfiguration
      def self.parse(http_resp)
        data = Types::CreateLicenseConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.license_configuration_arn = map['LicenseConfigurationArn']
        data
      end
    end

    # Operation Parser for CreateLicenseConversionTaskForResource
    class CreateLicenseConversionTaskForResource
      def self.parse(http_resp)
        data = Types::CreateLicenseConversionTaskForResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.license_conversion_task_id = map['LicenseConversionTaskId']
        data
      end
    end

    # Operation Parser for CreateLicenseManagerReportGenerator
    class CreateLicenseManagerReportGenerator
      def self.parse(http_resp)
        data = Types::CreateLicenseManagerReportGeneratorOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.license_manager_report_generator_arn = map['LicenseManagerReportGeneratorArn']
        data
      end
    end

    # Operation Parser for CreateLicenseVersion
    class CreateLicenseVersion
      def self.parse(http_resp)
        data = Types::CreateLicenseVersionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.license_arn = map['LicenseArn']
        data.version = map['Version']
        data.status = map['Status']
        data
      end
    end

    # Operation Parser for CreateToken
    class CreateToken
      def self.parse(http_resp)
        data = Types::CreateTokenOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.token_id = map['TokenId']
        data.token_type = map['TokenType']
        data.token = map['Token']
        data
      end
    end

    # Operation Parser for DeleteGrant
    class DeleteGrant
      def self.parse(http_resp)
        data = Types::DeleteGrantOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.grant_arn = map['GrantArn']
        data.status = map['Status']
        data.version = map['Version']
        data
      end
    end

    # Operation Parser for DeleteLicense
    class DeleteLicense
      def self.parse(http_resp)
        data = Types::DeleteLicenseOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.status = map['Status']
        data.deletion_date = map['DeletionDate']
        data
      end
    end

    # Operation Parser for DeleteLicenseConfiguration
    class DeleteLicenseConfiguration
      def self.parse(http_resp)
        data = Types::DeleteLicenseConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteLicenseManagerReportGenerator
    class DeleteLicenseManagerReportGenerator
      def self.parse(http_resp)
        data = Types::DeleteLicenseManagerReportGeneratorOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteToken
    class DeleteToken
      def self.parse(http_resp)
        data = Types::DeleteTokenOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for ExtendLicenseConsumption
    class ExtendLicenseConsumption
      def self.parse(http_resp)
        data = Types::ExtendLicenseConsumptionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.license_consumption_token = map['LicenseConsumptionToken']
        data.expiration = map['Expiration']
        data
      end
    end

    # Operation Parser for GetAccessToken
    class GetAccessToken
      def self.parse(http_resp)
        data = Types::GetAccessTokenOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.access_token = map['AccessToken']
        data
      end
    end

    # Operation Parser for GetGrant
    class GetGrant
      def self.parse(http_resp)
        data = Types::GetGrantOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.grant = (Grant.parse(map['Grant']) unless map['Grant'].nil?)
        data
      end
    end

    class Grant
      def self.parse(map)
        data = Types::Grant.new
        data.grant_arn = map['GrantArn']
        data.grant_name = map['GrantName']
        data.parent_arn = map['ParentArn']
        data.license_arn = map['LicenseArn']
        data.grantee_principal_arn = map['GranteePrincipalArn']
        data.home_region = map['HomeRegion']
        data.grant_status = map['GrantStatus']
        data.status_reason = map['StatusReason']
        data.version = map['Version']
        data.granted_operations = (AllowedOperationList.parse(map['GrantedOperations']) unless map['GrantedOperations'].nil?)
        return data
      end
    end

    class AllowedOperationList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for GetLicense
    class GetLicense
      def self.parse(http_resp)
        data = Types::GetLicenseOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.license = (License.parse(map['License']) unless map['License'].nil?)
        data
      end
    end

    class License
      def self.parse(map)
        data = Types::License.new
        data.license_arn = map['LicenseArn']
        data.license_name = map['LicenseName']
        data.product_name = map['ProductName']
        data.product_sku = map['ProductSKU']
        data.issuer = (IssuerDetails.parse(map['Issuer']) unless map['Issuer'].nil?)
        data.home_region = map['HomeRegion']
        data.status = map['Status']
        data.validity = (DatetimeRange.parse(map['Validity']) unless map['Validity'].nil?)
        data.beneficiary = map['Beneficiary']
        data.entitlements = (EntitlementList.parse(map['Entitlements']) unless map['Entitlements'].nil?)
        data.consumption_configuration = (ConsumptionConfiguration.parse(map['ConsumptionConfiguration']) unless map['ConsumptionConfiguration'].nil?)
        data.license_metadata = (MetadataList.parse(map['LicenseMetadata']) unless map['LicenseMetadata'].nil?)
        data.create_time = map['CreateTime']
        data.version = map['Version']
        return data
      end
    end

    class ConsumptionConfiguration
      def self.parse(map)
        data = Types::ConsumptionConfiguration.new
        data.renew_type = map['RenewType']
        data.provisional_configuration = (ProvisionalConfiguration.parse(map['ProvisionalConfiguration']) unless map['ProvisionalConfiguration'].nil?)
        data.borrow_configuration = (BorrowConfiguration.parse(map['BorrowConfiguration']) unless map['BorrowConfiguration'].nil?)
        return data
      end
    end

    class BorrowConfiguration
      def self.parse(map)
        data = Types::BorrowConfiguration.new
        data.allow_early_check_in = map['AllowEarlyCheckIn']
        data.max_time_to_live_in_minutes = map['MaxTimeToLiveInMinutes']
        return data
      end
    end

    class ProvisionalConfiguration
      def self.parse(map)
        data = Types::ProvisionalConfiguration.new
        data.max_time_to_live_in_minutes = map['MaxTimeToLiveInMinutes']
        return data
      end
    end

    class EntitlementList
      def self.parse(list)
        list.map do |value|
          Entitlement.parse(value) unless value.nil?
        end
      end
    end

    class Entitlement
      def self.parse(map)
        data = Types::Entitlement.new
        data.name = map['Name']
        data.value = map['Value']
        data.max_count = map['MaxCount']
        data.overage = map['Overage']
        data.unit = map['Unit']
        data.allow_check_in = map['AllowCheckIn']
        return data
      end
    end

    class DatetimeRange
      def self.parse(map)
        data = Types::DatetimeRange.new
        data.begin = map['Begin']
        data.end = map['End']
        return data
      end
    end

    class IssuerDetails
      def self.parse(map)
        data = Types::IssuerDetails.new
        data.name = map['Name']
        data.sign_key = map['SignKey']
        data.key_fingerprint = map['KeyFingerprint']
        return data
      end
    end

    # Operation Parser for GetLicenseConfiguration
    class GetLicenseConfiguration
      def self.parse(http_resp)
        data = Types::GetLicenseConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.license_configuration_id = map['LicenseConfigurationId']
        data.license_configuration_arn = map['LicenseConfigurationArn']
        data.name = map['Name']
        data.description = map['Description']
        data.license_counting_type = map['LicenseCountingType']
        data.license_rules = (StringList.parse(map['LicenseRules']) unless map['LicenseRules'].nil?)
        data.license_count = map['LicenseCount']
        data.license_count_hard_limit = map['LicenseCountHardLimit']
        data.consumed_licenses = map['ConsumedLicenses']
        data.status = map['Status']
        data.owner_account_id = map['OwnerAccountId']
        data.consumed_license_summary_list = (ConsumedLicenseSummaryList.parse(map['ConsumedLicenseSummaryList']) unless map['ConsumedLicenseSummaryList'].nil?)
        data.managed_resource_summary_list = (ManagedResourceSummaryList.parse(map['ManagedResourceSummaryList']) unless map['ManagedResourceSummaryList'].nil?)
        data.tags = (TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data.product_information_list = (ProductInformationList.parse(map['ProductInformationList']) unless map['ProductInformationList'].nil?)
        data.automated_discovery_information = (AutomatedDiscoveryInformation.parse(map['AutomatedDiscoveryInformation']) unless map['AutomatedDiscoveryInformation'].nil?)
        data.disassociate_when_not_found = map['DisassociateWhenNotFound']
        data
      end
    end

    class AutomatedDiscoveryInformation
      def self.parse(map)
        data = Types::AutomatedDiscoveryInformation.new
        data.last_run_time = Time.at(map['LastRunTime'].to_i) if map['LastRunTime']
        return data
      end
    end

    class ProductInformationList
      def self.parse(list)
        list.map do |value|
          ProductInformation.parse(value) unless value.nil?
        end
      end
    end

    class ProductInformation
      def self.parse(map)
        data = Types::ProductInformation.new
        data.resource_type = map['ResourceType']
        data.product_information_filter_list = (ProductInformationFilterList.parse(map['ProductInformationFilterList']) unless map['ProductInformationFilterList'].nil?)
        return data
      end
    end

    class ProductInformationFilterList
      def self.parse(list)
        list.map do |value|
          ProductInformationFilter.parse(value) unless value.nil?
        end
      end
    end

    class ProductInformationFilter
      def self.parse(map)
        data = Types::ProductInformationFilter.new
        data.product_information_filter_name = map['ProductInformationFilterName']
        data.product_information_filter_value = (StringList.parse(map['ProductInformationFilterValue']) unless map['ProductInformationFilterValue'].nil?)
        data.product_information_filter_comparator = map['ProductInformationFilterComparator']
        return data
      end
    end

    class StringList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class TagList
      def self.parse(list)
        list.map do |value|
          Tag.parse(value) unless value.nil?
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

    class ManagedResourceSummaryList
      def self.parse(list)
        list.map do |value|
          ManagedResourceSummary.parse(value) unless value.nil?
        end
      end
    end

    class ManagedResourceSummary
      def self.parse(map)
        data = Types::ManagedResourceSummary.new
        data.resource_type = map['ResourceType']
        data.association_count = map['AssociationCount']
        return data
      end
    end

    class ConsumedLicenseSummaryList
      def self.parse(list)
        list.map do |value|
          ConsumedLicenseSummary.parse(value) unless value.nil?
        end
      end
    end

    class ConsumedLicenseSummary
      def self.parse(map)
        data = Types::ConsumedLicenseSummary.new
        data.resource_type = map['ResourceType']
        data.consumed_licenses = map['ConsumedLicenses']
        return data
      end
    end

    # Operation Parser for GetLicenseConversionTask
    class GetLicenseConversionTask
      def self.parse(http_resp)
        data = Types::GetLicenseConversionTaskOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.license_conversion_task_id = map['LicenseConversionTaskId']
        data.resource_arn = map['ResourceArn']
        data.source_license_context = (LicenseConversionContext.parse(map['SourceLicenseContext']) unless map['SourceLicenseContext'].nil?)
        data.destination_license_context = (LicenseConversionContext.parse(map['DestinationLicenseContext']) unless map['DestinationLicenseContext'].nil?)
        data.status_message = map['StatusMessage']
        data.status = map['Status']
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        data.license_conversion_time = Time.at(map['LicenseConversionTime'].to_i) if map['LicenseConversionTime']
        data.end_time = Time.at(map['EndTime'].to_i) if map['EndTime']
        data
      end
    end

    class LicenseConversionContext
      def self.parse(map)
        data = Types::LicenseConversionContext.new
        data.usage_operation = map['UsageOperation']
        return data
      end
    end

    # Operation Parser for GetLicenseManagerReportGenerator
    class GetLicenseManagerReportGenerator
      def self.parse(http_resp)
        data = Types::GetLicenseManagerReportGeneratorOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.report_generator = (ReportGenerator.parse(map['ReportGenerator']) unless map['ReportGenerator'].nil?)
        data
      end
    end

    class ReportGenerator
      def self.parse(map)
        data = Types::ReportGenerator.new
        data.report_generator_name = map['ReportGeneratorName']
        data.report_type = (ReportTypeList.parse(map['ReportType']) unless map['ReportType'].nil?)
        data.report_context = (ReportContext.parse(map['ReportContext']) unless map['ReportContext'].nil?)
        data.report_frequency = (ReportFrequency.parse(map['ReportFrequency']) unless map['ReportFrequency'].nil?)
        data.license_manager_report_generator_arn = map['LicenseManagerReportGeneratorArn']
        data.last_run_status = map['LastRunStatus']
        data.last_run_failure_reason = map['LastRunFailureReason']
        data.last_report_generation_time = map['LastReportGenerationTime']
        data.report_creator_account = map['ReportCreatorAccount']
        data.description = map['Description']
        data.s3_location = (S3Location.parse(map['S3Location']) unless map['S3Location'].nil?)
        data.create_time = map['CreateTime']
        data.tags = (TagList.parse(map['Tags']) unless map['Tags'].nil?)
        return data
      end
    end

    class S3Location
      def self.parse(map)
        data = Types::S3Location.new
        data.bucket = map['bucket']
        data.key_prefix = map['keyPrefix']
        return data
      end
    end

    class ReportFrequency
      def self.parse(map)
        data = Types::ReportFrequency.new
        data.value = map['value']
        data.period = map['period']
        return data
      end
    end

    class ReportContext
      def self.parse(map)
        data = Types::ReportContext.new
        data.license_configuration_arns = (ArnList.parse(map['licenseConfigurationArns']) unless map['licenseConfigurationArns'].nil?)
        return data
      end
    end

    class ArnList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ReportTypeList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for GetLicenseUsage
    class GetLicenseUsage
      def self.parse(http_resp)
        data = Types::GetLicenseUsageOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.license_usage = (LicenseUsage.parse(map['LicenseUsage']) unless map['LicenseUsage'].nil?)
        data
      end
    end

    class LicenseUsage
      def self.parse(map)
        data = Types::LicenseUsage.new
        data.entitlement_usages = (EntitlementUsageList.parse(map['EntitlementUsages']) unless map['EntitlementUsages'].nil?)
        return data
      end
    end

    class EntitlementUsageList
      def self.parse(list)
        list.map do |value|
          EntitlementUsage.parse(value) unless value.nil?
        end
      end
    end

    class EntitlementUsage
      def self.parse(map)
        data = Types::EntitlementUsage.new
        data.name = map['Name']
        data.consumed_value = map['ConsumedValue']
        data.max_count = map['MaxCount']
        data.unit = map['Unit']
        return data
      end
    end

    # Operation Parser for GetServiceSettings
    class GetServiceSettings
      def self.parse(http_resp)
        data = Types::GetServiceSettingsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.s3_bucket_arn = map['S3BucketArn']
        data.sns_topic_arn = map['SnsTopicArn']
        data.organization_configuration = (OrganizationConfiguration.parse(map['OrganizationConfiguration']) unless map['OrganizationConfiguration'].nil?)
        data.enable_cross_accounts_discovery = map['EnableCrossAccountsDiscovery']
        data.license_manager_resource_share_arn = map['LicenseManagerResourceShareArn']
        data
      end
    end

    class OrganizationConfiguration
      def self.parse(map)
        data = Types::OrganizationConfiguration.new
        data.enable_integration = map['EnableIntegration']
        return data
      end
    end

    # Operation Parser for ListAssociationsForLicenseConfiguration
    class ListAssociationsForLicenseConfiguration
      def self.parse(http_resp)
        data = Types::ListAssociationsForLicenseConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.license_configuration_associations = (LicenseConfigurationAssociations.parse(map['LicenseConfigurationAssociations']) unless map['LicenseConfigurationAssociations'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class LicenseConfigurationAssociations
      def self.parse(list)
        list.map do |value|
          LicenseConfigurationAssociation.parse(value) unless value.nil?
        end
      end
    end

    class LicenseConfigurationAssociation
      def self.parse(map)
        data = Types::LicenseConfigurationAssociation.new
        data.resource_arn = map['ResourceArn']
        data.resource_type = map['ResourceType']
        data.resource_owner_id = map['ResourceOwnerId']
        data.association_time = Time.at(map['AssociationTime'].to_i) if map['AssociationTime']
        data.ami_association_scope = map['AmiAssociationScope']
        return data
      end
    end

    # Error Parser for FilterLimitExceededException
    class FilterLimitExceededException
      def self.parse(http_resp)
        data = Types::FilterLimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for ListDistributedGrants
    class ListDistributedGrants
      def self.parse(http_resp)
        data = Types::ListDistributedGrantsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.grants = (GrantList.parse(map['Grants']) unless map['Grants'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class GrantList
      def self.parse(list)
        list.map do |value|
          Grant.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListFailuresForLicenseConfigurationOperations
    class ListFailuresForLicenseConfigurationOperations
      def self.parse(http_resp)
        data = Types::ListFailuresForLicenseConfigurationOperationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.license_operation_failure_list = (LicenseOperationFailureList.parse(map['LicenseOperationFailureList']) unless map['LicenseOperationFailureList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class LicenseOperationFailureList
      def self.parse(list)
        list.map do |value|
          LicenseOperationFailure.parse(value) unless value.nil?
        end
      end
    end

    class LicenseOperationFailure
      def self.parse(map)
        data = Types::LicenseOperationFailure.new
        data.resource_arn = map['ResourceArn']
        data.resource_type = map['ResourceType']
        data.error_message = map['ErrorMessage']
        data.failure_time = Time.at(map['FailureTime'].to_i) if map['FailureTime']
        data.operation_name = map['OperationName']
        data.resource_owner_id = map['ResourceOwnerId']
        data.operation_requested_by = map['OperationRequestedBy']
        data.metadata_list = (MetadataList.parse(map['MetadataList']) unless map['MetadataList'].nil?)
        return data
      end
    end

    # Operation Parser for ListLicenseConfigurations
    class ListLicenseConfigurations
      def self.parse(http_resp)
        data = Types::ListLicenseConfigurationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.license_configurations = (LicenseConfigurations.parse(map['LicenseConfigurations']) unless map['LicenseConfigurations'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class LicenseConfigurations
      def self.parse(list)
        list.map do |value|
          LicenseConfiguration.parse(value) unless value.nil?
        end
      end
    end

    class LicenseConfiguration
      def self.parse(map)
        data = Types::LicenseConfiguration.new
        data.license_configuration_id = map['LicenseConfigurationId']
        data.license_configuration_arn = map['LicenseConfigurationArn']
        data.name = map['Name']
        data.description = map['Description']
        data.license_counting_type = map['LicenseCountingType']
        data.license_rules = (StringList.parse(map['LicenseRules']) unless map['LicenseRules'].nil?)
        data.license_count = map['LicenseCount']
        data.license_count_hard_limit = map['LicenseCountHardLimit']
        data.disassociate_when_not_found = map['DisassociateWhenNotFound']
        data.consumed_licenses = map['ConsumedLicenses']
        data.status = map['Status']
        data.owner_account_id = map['OwnerAccountId']
        data.consumed_license_summary_list = (ConsumedLicenseSummaryList.parse(map['ConsumedLicenseSummaryList']) unless map['ConsumedLicenseSummaryList'].nil?)
        data.managed_resource_summary_list = (ManagedResourceSummaryList.parse(map['ManagedResourceSummaryList']) unless map['ManagedResourceSummaryList'].nil?)
        data.product_information_list = (ProductInformationList.parse(map['ProductInformationList']) unless map['ProductInformationList'].nil?)
        data.automated_discovery_information = (AutomatedDiscoveryInformation.parse(map['AutomatedDiscoveryInformation']) unless map['AutomatedDiscoveryInformation'].nil?)
        return data
      end
    end

    # Operation Parser for ListLicenseConversionTasks
    class ListLicenseConversionTasks
      def self.parse(http_resp)
        data = Types::ListLicenseConversionTasksOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.license_conversion_tasks = (LicenseConversionTasks.parse(map['LicenseConversionTasks']) unless map['LicenseConversionTasks'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class LicenseConversionTasks
      def self.parse(list)
        list.map do |value|
          LicenseConversionTask.parse(value) unless value.nil?
        end
      end
    end

    class LicenseConversionTask
      def self.parse(map)
        data = Types::LicenseConversionTask.new
        data.license_conversion_task_id = map['LicenseConversionTaskId']
        data.resource_arn = map['ResourceArn']
        data.source_license_context = (LicenseConversionContext.parse(map['SourceLicenseContext']) unless map['SourceLicenseContext'].nil?)
        data.destination_license_context = (LicenseConversionContext.parse(map['DestinationLicenseContext']) unless map['DestinationLicenseContext'].nil?)
        data.status = map['Status']
        data.status_message = map['StatusMessage']
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        data.license_conversion_time = Time.at(map['LicenseConversionTime'].to_i) if map['LicenseConversionTime']
        data.end_time = Time.at(map['EndTime'].to_i) if map['EndTime']
        return data
      end
    end

    # Operation Parser for ListLicenseManagerReportGenerators
    class ListLicenseManagerReportGenerators
      def self.parse(http_resp)
        data = Types::ListLicenseManagerReportGeneratorsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.report_generators = (ReportGeneratorList.parse(map['ReportGenerators']) unless map['ReportGenerators'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ReportGeneratorList
      def self.parse(list)
        list.map do |value|
          ReportGenerator.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListLicenseSpecificationsForResource
    class ListLicenseSpecificationsForResource
      def self.parse(http_resp)
        data = Types::ListLicenseSpecificationsForResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.license_specifications = (LicenseSpecifications.parse(map['LicenseSpecifications']) unless map['LicenseSpecifications'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class LicenseSpecifications
      def self.parse(list)
        list.map do |value|
          LicenseSpecification.parse(value) unless value.nil?
        end
      end
    end

    class LicenseSpecification
      def self.parse(map)
        data = Types::LicenseSpecification.new
        data.license_configuration_arn = map['LicenseConfigurationArn']
        data.ami_association_scope = map['AmiAssociationScope']
        return data
      end
    end

    # Operation Parser for ListLicenseVersions
    class ListLicenseVersions
      def self.parse(http_resp)
        data = Types::ListLicenseVersionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.licenses = (LicenseList.parse(map['Licenses']) unless map['Licenses'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class LicenseList
      def self.parse(list)
        list.map do |value|
          License.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListLicenses
    class ListLicenses
      def self.parse(http_resp)
        data = Types::ListLicensesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.licenses = (LicenseList.parse(map['Licenses']) unless map['Licenses'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for ListReceivedGrants
    class ListReceivedGrants
      def self.parse(http_resp)
        data = Types::ListReceivedGrantsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.grants = (GrantList.parse(map['Grants']) unless map['Grants'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for ListReceivedLicenses
    class ListReceivedLicenses
      def self.parse(http_resp)
        data = Types::ListReceivedLicensesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.licenses = (GrantedLicenseList.parse(map['Licenses']) unless map['Licenses'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class GrantedLicenseList
      def self.parse(list)
        list.map do |value|
          GrantedLicense.parse(value) unless value.nil?
        end
      end
    end

    class GrantedLicense
      def self.parse(map)
        data = Types::GrantedLicense.new
        data.license_arn = map['LicenseArn']
        data.license_name = map['LicenseName']
        data.product_name = map['ProductName']
        data.product_sku = map['ProductSKU']
        data.issuer = (IssuerDetails.parse(map['Issuer']) unless map['Issuer'].nil?)
        data.home_region = map['HomeRegion']
        data.status = map['Status']
        data.validity = (DatetimeRange.parse(map['Validity']) unless map['Validity'].nil?)
        data.beneficiary = map['Beneficiary']
        data.entitlements = (EntitlementList.parse(map['Entitlements']) unless map['Entitlements'].nil?)
        data.consumption_configuration = (ConsumptionConfiguration.parse(map['ConsumptionConfiguration']) unless map['ConsumptionConfiguration'].nil?)
        data.license_metadata = (MetadataList.parse(map['LicenseMetadata']) unless map['LicenseMetadata'].nil?)
        data.create_time = map['CreateTime']
        data.version = map['Version']
        data.received_metadata = (ReceivedMetadata.parse(map['ReceivedMetadata']) unless map['ReceivedMetadata'].nil?)
        return data
      end
    end

    class ReceivedMetadata
      def self.parse(map)
        data = Types::ReceivedMetadata.new
        data.received_status = map['ReceivedStatus']
        data.received_status_reason = map['ReceivedStatusReason']
        data.allowed_operations = (AllowedOperationList.parse(map['AllowedOperations']) unless map['AllowedOperations'].nil?)
        return data
      end
    end

    # Operation Parser for ListResourceInventory
    class ListResourceInventory
      def self.parse(http_resp)
        data = Types::ListResourceInventoryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resource_inventory_list = (ResourceInventoryList.parse(map['ResourceInventoryList']) unless map['ResourceInventoryList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ResourceInventoryList
      def self.parse(list)
        list.map do |value|
          ResourceInventory.parse(value) unless value.nil?
        end
      end
    end

    class ResourceInventory
      def self.parse(map)
        data = Types::ResourceInventory.new
        data.resource_id = map['ResourceId']
        data.resource_type = map['ResourceType']
        data.resource_arn = map['ResourceArn']
        data.platform = map['Platform']
        data.platform_version = map['PlatformVersion']
        data.resource_owning_account_id = map['ResourceOwningAccountId']
        return data
      end
    end

    # Error Parser for FailedDependencyException
    class FailedDependencyException
      def self.parse(http_resp)
        data = Types::FailedDependencyException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.error_code = map['ErrorCode']
        data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tags = (TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    # Operation Parser for ListTokens
    class ListTokens
      def self.parse(http_resp)
        data = Types::ListTokensOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tokens = (TokenList.parse(map['Tokens']) unless map['Tokens'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class TokenList
      def self.parse(list)
        list.map do |value|
          TokenData.parse(value) unless value.nil?
        end
      end
    end

    class TokenData
      def self.parse(map)
        data = Types::TokenData.new
        data.token_id = map['TokenId']
        data.token_type = map['TokenType']
        data.license_arn = map['LicenseArn']
        data.expiration_time = map['ExpirationTime']
        data.token_properties = (MaxSize3StringList.parse(map['TokenProperties']) unless map['TokenProperties'].nil?)
        data.role_arns = (ArnList.parse(map['RoleArns']) unless map['RoleArns'].nil?)
        data.status = map['Status']
        return data
      end
    end

    class MaxSize3StringList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for ListUsageForLicenseConfiguration
    class ListUsageForLicenseConfiguration
      def self.parse(http_resp)
        data = Types::ListUsageForLicenseConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.license_configuration_usage_list = (LicenseConfigurationUsageList.parse(map['LicenseConfigurationUsageList']) unless map['LicenseConfigurationUsageList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class LicenseConfigurationUsageList
      def self.parse(list)
        list.map do |value|
          LicenseConfigurationUsage.parse(value) unless value.nil?
        end
      end
    end

    class LicenseConfigurationUsage
      def self.parse(map)
        data = Types::LicenseConfigurationUsage.new
        data.resource_arn = map['ResourceArn']
        data.resource_type = map['ResourceType']
        data.resource_status = map['ResourceStatus']
        data.resource_owner_id = map['ResourceOwnerId']
        data.association_time = Time.at(map['AssociationTime'].to_i) if map['AssociationTime']
        data.consumed_licenses = map['ConsumedLicenses']
        return data
      end
    end

    # Operation Parser for RejectGrant
    class RejectGrant
      def self.parse(http_resp)
        data = Types::RejectGrantOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.grant_arn = map['GrantArn']
        data.status = map['Status']
        data.version = map['Version']
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateLicenseConfiguration
    class UpdateLicenseConfiguration
      def self.parse(http_resp)
        data = Types::UpdateLicenseConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateLicenseManagerReportGenerator
    class UpdateLicenseManagerReportGenerator
      def self.parse(http_resp)
        data = Types::UpdateLicenseManagerReportGeneratorOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateLicenseSpecificationsForResource
    class UpdateLicenseSpecificationsForResource
      def self.parse(http_resp)
        data = Types::UpdateLicenseSpecificationsForResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for InvalidResourceStateException
    class InvalidResourceStateException
      def self.parse(http_resp)
        data = Types::InvalidResourceStateException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for LicenseUsageException
    class LicenseUsageException
      def self.parse(http_resp)
        data = Types::LicenseUsageException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for UpdateServiceSettings
    class UpdateServiceSettings
      def self.parse(http_resp)
        data = Types::UpdateServiceSettingsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end
  end
end
