# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::LicenseManager
  module Validators

    class AcceptGrantInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcceptGrantInput, context: context)
        Hearth::Validator.validate!(input[:grant_arn], ::String, context: "#{context}[:grant_arn]")
      end
    end

    class AcceptGrantOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcceptGrantOutput, context: context)
        Hearth::Validator.validate!(input[:grant_arn], ::String, context: "#{context}[:grant_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AllowedOperationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ArnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AuthorizationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuthorizationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AutomatedDiscoveryInformation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutomatedDiscoveryInformation, context: context)
        Hearth::Validator.validate!(input[:last_run_time], ::Time, context: "#{context}[:last_run_time]")
      end
    end

    class BorrowConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BorrowConfiguration, context: context)
        Hearth::Validator.validate!(input[:allow_early_check_in], ::TrueClass, ::FalseClass, context: "#{context}[:allow_early_check_in]")
        Hearth::Validator.validate!(input[:max_time_to_live_in_minutes], ::Integer, context: "#{context}[:max_time_to_live_in_minutes]")
      end
    end

    class CheckInLicenseInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CheckInLicenseInput, context: context)
        Hearth::Validator.validate!(input[:license_consumption_token], ::String, context: "#{context}[:license_consumption_token]")
        Hearth::Validator.validate!(input[:beneficiary], ::String, context: "#{context}[:beneficiary]")
      end
    end

    class CheckInLicenseOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CheckInLicenseOutput, context: context)
      end
    end

    class CheckoutBorrowLicenseInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CheckoutBorrowLicenseInput, context: context)
        Hearth::Validator.validate!(input[:license_arn], ::String, context: "#{context}[:license_arn]")
        Validators::EntitlementDataList.validate!(input[:entitlements], context: "#{context}[:entitlements]") unless input[:entitlements].nil?
        Hearth::Validator.validate!(input[:digital_signature_method], ::String, context: "#{context}[:digital_signature_method]")
        Hearth::Validator.validate!(input[:node_id], ::String, context: "#{context}[:node_id]")
        Validators::MetadataList.validate!(input[:checkout_metadata], context: "#{context}[:checkout_metadata]") unless input[:checkout_metadata].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CheckoutBorrowLicenseOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CheckoutBorrowLicenseOutput, context: context)
        Hearth::Validator.validate!(input[:license_arn], ::String, context: "#{context}[:license_arn]")
        Hearth::Validator.validate!(input[:license_consumption_token], ::String, context: "#{context}[:license_consumption_token]")
        Validators::EntitlementDataList.validate!(input[:entitlements_allowed], context: "#{context}[:entitlements_allowed]") unless input[:entitlements_allowed].nil?
        Hearth::Validator.validate!(input[:node_id], ::String, context: "#{context}[:node_id]")
        Hearth::Validator.validate!(input[:signed_token], ::String, context: "#{context}[:signed_token]")
        Hearth::Validator.validate!(input[:issued_at], ::String, context: "#{context}[:issued_at]")
        Hearth::Validator.validate!(input[:expiration], ::String, context: "#{context}[:expiration]")
        Validators::MetadataList.validate!(input[:checkout_metadata], context: "#{context}[:checkout_metadata]") unless input[:checkout_metadata].nil?
      end
    end

    class CheckoutLicenseInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CheckoutLicenseInput, context: context)
        Hearth::Validator.validate!(input[:product_sku], ::String, context: "#{context}[:product_sku]")
        Hearth::Validator.validate!(input[:checkout_type], ::String, context: "#{context}[:checkout_type]")
        Hearth::Validator.validate!(input[:key_fingerprint], ::String, context: "#{context}[:key_fingerprint]")
        Validators::EntitlementDataList.validate!(input[:entitlements], context: "#{context}[:entitlements]") unless input[:entitlements].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:beneficiary], ::String, context: "#{context}[:beneficiary]")
        Hearth::Validator.validate!(input[:node_id], ::String, context: "#{context}[:node_id]")
      end
    end

    class CheckoutLicenseOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CheckoutLicenseOutput, context: context)
        Hearth::Validator.validate!(input[:checkout_type], ::String, context: "#{context}[:checkout_type]")
        Hearth::Validator.validate!(input[:license_consumption_token], ::String, context: "#{context}[:license_consumption_token]")
        Validators::EntitlementDataList.validate!(input[:entitlements_allowed], context: "#{context}[:entitlements_allowed]") unless input[:entitlements_allowed].nil?
        Hearth::Validator.validate!(input[:signed_token], ::String, context: "#{context}[:signed_token]")
        Hearth::Validator.validate!(input[:node_id], ::String, context: "#{context}[:node_id]")
        Hearth::Validator.validate!(input[:issued_at], ::String, context: "#{context}[:issued_at]")
        Hearth::Validator.validate!(input[:expiration], ::String, context: "#{context}[:expiration]")
        Hearth::Validator.validate!(input[:license_arn], ::String, context: "#{context}[:license_arn]")
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ConsumedLicenseSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConsumedLicenseSummary, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:consumed_licenses], ::Integer, context: "#{context}[:consumed_licenses]")
      end
    end

    class ConsumedLicenseSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ConsumedLicenseSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConsumptionConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConsumptionConfiguration, context: context)
        Hearth::Validator.validate!(input[:renew_type], ::String, context: "#{context}[:renew_type]")
        Validators::ProvisionalConfiguration.validate!(input[:provisional_configuration], context: "#{context}[:provisional_configuration]") unless input[:provisional_configuration].nil?
        Validators::BorrowConfiguration.validate!(input[:borrow_configuration], context: "#{context}[:borrow_configuration]") unless input[:borrow_configuration].nil?
      end
    end

    class CreateGrantInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateGrantInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:grant_name], ::String, context: "#{context}[:grant_name]")
        Hearth::Validator.validate!(input[:license_arn], ::String, context: "#{context}[:license_arn]")
        Validators::PrincipalArnList.validate!(input[:principals], context: "#{context}[:principals]") unless input[:principals].nil?
        Hearth::Validator.validate!(input[:home_region], ::String, context: "#{context}[:home_region]")
        Validators::AllowedOperationList.validate!(input[:allowed_operations], context: "#{context}[:allowed_operations]") unless input[:allowed_operations].nil?
      end
    end

    class CreateGrantOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateGrantOutput, context: context)
        Hearth::Validator.validate!(input[:grant_arn], ::String, context: "#{context}[:grant_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class CreateGrantVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateGrantVersionInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:grant_arn], ::String, context: "#{context}[:grant_arn]")
        Hearth::Validator.validate!(input[:grant_name], ::String, context: "#{context}[:grant_name]")
        Validators::AllowedOperationList.validate!(input[:allowed_operations], context: "#{context}[:allowed_operations]") unless input[:allowed_operations].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_reason], ::String, context: "#{context}[:status_reason]")
        Hearth::Validator.validate!(input[:source_version], ::String, context: "#{context}[:source_version]")
      end
    end

    class CreateGrantVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateGrantVersionOutput, context: context)
        Hearth::Validator.validate!(input[:grant_arn], ::String, context: "#{context}[:grant_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class CreateLicenseConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLicenseConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:license_counting_type], ::String, context: "#{context}[:license_counting_type]")
        Hearth::Validator.validate!(input[:license_count], ::Integer, context: "#{context}[:license_count]")
        Hearth::Validator.validate!(input[:license_count_hard_limit], ::TrueClass, ::FalseClass, context: "#{context}[:license_count_hard_limit]")
        Validators::StringList.validate!(input[:license_rules], context: "#{context}[:license_rules]") unless input[:license_rules].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:disassociate_when_not_found], ::TrueClass, ::FalseClass, context: "#{context}[:disassociate_when_not_found]")
        Validators::ProductInformationList.validate!(input[:product_information_list], context: "#{context}[:product_information_list]") unless input[:product_information_list].nil?
      end
    end

    class CreateLicenseConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLicenseConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:license_configuration_arn], ::String, context: "#{context}[:license_configuration_arn]")
      end
    end

    class CreateLicenseConversionTaskForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLicenseConversionTaskForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::LicenseConversionContext.validate!(input[:source_license_context], context: "#{context}[:source_license_context]") unless input[:source_license_context].nil?
        Validators::LicenseConversionContext.validate!(input[:destination_license_context], context: "#{context}[:destination_license_context]") unless input[:destination_license_context].nil?
      end
    end

    class CreateLicenseConversionTaskForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLicenseConversionTaskForResourceOutput, context: context)
        Hearth::Validator.validate!(input[:license_conversion_task_id], ::String, context: "#{context}[:license_conversion_task_id]")
      end
    end

    class CreateLicenseInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLicenseInput, context: context)
        Hearth::Validator.validate!(input[:license_name], ::String, context: "#{context}[:license_name]")
        Hearth::Validator.validate!(input[:product_name], ::String, context: "#{context}[:product_name]")
        Hearth::Validator.validate!(input[:product_sku], ::String, context: "#{context}[:product_sku]")
        Validators::Issuer.validate!(input[:issuer], context: "#{context}[:issuer]") unless input[:issuer].nil?
        Hearth::Validator.validate!(input[:home_region], ::String, context: "#{context}[:home_region]")
        Validators::DatetimeRange.validate!(input[:validity], context: "#{context}[:validity]") unless input[:validity].nil?
        Validators::EntitlementList.validate!(input[:entitlements], context: "#{context}[:entitlements]") unless input[:entitlements].nil?
        Hearth::Validator.validate!(input[:beneficiary], ::String, context: "#{context}[:beneficiary]")
        Validators::ConsumptionConfiguration.validate!(input[:consumption_configuration], context: "#{context}[:consumption_configuration]") unless input[:consumption_configuration].nil?
        Validators::MetadataList.validate!(input[:license_metadata], context: "#{context}[:license_metadata]") unless input[:license_metadata].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreateLicenseManagerReportGeneratorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLicenseManagerReportGeneratorInput, context: context)
        Hearth::Validator.validate!(input[:report_generator_name], ::String, context: "#{context}[:report_generator_name]")
        Validators::ReportTypeList.validate!(input[:type], context: "#{context}[:type]") unless input[:type].nil?
        Validators::ReportContext.validate!(input[:report_context], context: "#{context}[:report_context]") unless input[:report_context].nil?
        Validators::ReportFrequency.validate!(input[:report_frequency], context: "#{context}[:report_frequency]") unless input[:report_frequency].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateLicenseManagerReportGeneratorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLicenseManagerReportGeneratorOutput, context: context)
        Hearth::Validator.validate!(input[:license_manager_report_generator_arn], ::String, context: "#{context}[:license_manager_report_generator_arn]")
      end
    end

    class CreateLicenseOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLicenseOutput, context: context)
        Hearth::Validator.validate!(input[:license_arn], ::String, context: "#{context}[:license_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class CreateLicenseVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLicenseVersionInput, context: context)
        Hearth::Validator.validate!(input[:license_arn], ::String, context: "#{context}[:license_arn]")
        Hearth::Validator.validate!(input[:license_name], ::String, context: "#{context}[:license_name]")
        Hearth::Validator.validate!(input[:product_name], ::String, context: "#{context}[:product_name]")
        Validators::Issuer.validate!(input[:issuer], context: "#{context}[:issuer]") unless input[:issuer].nil?
        Hearth::Validator.validate!(input[:home_region], ::String, context: "#{context}[:home_region]")
        Validators::DatetimeRange.validate!(input[:validity], context: "#{context}[:validity]") unless input[:validity].nil?
        Validators::MetadataList.validate!(input[:license_metadata], context: "#{context}[:license_metadata]") unless input[:license_metadata].nil?
        Validators::EntitlementList.validate!(input[:entitlements], context: "#{context}[:entitlements]") unless input[:entitlements].nil?
        Validators::ConsumptionConfiguration.validate!(input[:consumption_configuration], context: "#{context}[:consumption_configuration]") unless input[:consumption_configuration].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:source_version], ::String, context: "#{context}[:source_version]")
      end
    end

    class CreateLicenseVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLicenseVersionOutput, context: context)
        Hearth::Validator.validate!(input[:license_arn], ::String, context: "#{context}[:license_arn]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class CreateTokenInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTokenInput, context: context)
        Hearth::Validator.validate!(input[:license_arn], ::String, context: "#{context}[:license_arn]")
        Validators::ArnList.validate!(input[:role_arns], context: "#{context}[:role_arns]") unless input[:role_arns].nil?
        Hearth::Validator.validate!(input[:expiration_in_days], ::Integer, context: "#{context}[:expiration_in_days]")
        Validators::MaxSize3StringList.validate!(input[:token_properties], context: "#{context}[:token_properties]") unless input[:token_properties].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreateTokenOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTokenOutput, context: context)
        Hearth::Validator.validate!(input[:token_id], ::String, context: "#{context}[:token_id]")
        Hearth::Validator.validate!(input[:token_type], ::String, context: "#{context}[:token_type]")
        Hearth::Validator.validate!(input[:token], ::String, context: "#{context}[:token]")
      end
    end

    class DatetimeRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatetimeRange, context: context)
        Hearth::Validator.validate!(input[:begin], ::String, context: "#{context}[:begin]")
        Hearth::Validator.validate!(input[:end], ::String, context: "#{context}[:end]")
      end
    end

    class DeleteGrantInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteGrantInput, context: context)
        Hearth::Validator.validate!(input[:grant_arn], ::String, context: "#{context}[:grant_arn]")
        Hearth::Validator.validate!(input[:status_reason], ::String, context: "#{context}[:status_reason]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class DeleteGrantOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteGrantOutput, context: context)
        Hearth::Validator.validate!(input[:grant_arn], ::String, context: "#{context}[:grant_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class DeleteLicenseConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLicenseConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:license_configuration_arn], ::String, context: "#{context}[:license_configuration_arn]")
      end
    end

    class DeleteLicenseConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLicenseConfigurationOutput, context: context)
      end
    end

    class DeleteLicenseInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLicenseInput, context: context)
        Hearth::Validator.validate!(input[:license_arn], ::String, context: "#{context}[:license_arn]")
        Hearth::Validator.validate!(input[:source_version], ::String, context: "#{context}[:source_version]")
      end
    end

    class DeleteLicenseManagerReportGeneratorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLicenseManagerReportGeneratorInput, context: context)
        Hearth::Validator.validate!(input[:license_manager_report_generator_arn], ::String, context: "#{context}[:license_manager_report_generator_arn]")
      end
    end

    class DeleteLicenseManagerReportGeneratorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLicenseManagerReportGeneratorOutput, context: context)
      end
    end

    class DeleteLicenseOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLicenseOutput, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:deletion_date], ::String, context: "#{context}[:deletion_date]")
      end
    end

    class DeleteTokenInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTokenInput, context: context)
        Hearth::Validator.validate!(input[:token_id], ::String, context: "#{context}[:token_id]")
      end
    end

    class DeleteTokenOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTokenOutput, context: context)
      end
    end

    class Entitlement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Entitlement, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:max_count], ::Integer, context: "#{context}[:max_count]")
        Hearth::Validator.validate!(input[:overage], ::TrueClass, ::FalseClass, context: "#{context}[:overage]")
        Hearth::Validator.validate!(input[:unit], ::String, context: "#{context}[:unit]")
        Hearth::Validator.validate!(input[:allow_check_in], ::TrueClass, ::FalseClass, context: "#{context}[:allow_check_in]")
      end
    end

    class EntitlementData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EntitlementData, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:unit], ::String, context: "#{context}[:unit]")
      end
    end

    class EntitlementDataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::EntitlementData.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EntitlementList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Entitlement.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EntitlementNotAllowedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EntitlementNotAllowedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class EntitlementUsage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EntitlementUsage, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:consumed_value], ::String, context: "#{context}[:consumed_value]")
        Hearth::Validator.validate!(input[:max_count], ::String, context: "#{context}[:max_count]")
        Hearth::Validator.validate!(input[:unit], ::String, context: "#{context}[:unit]")
      end
    end

    class EntitlementUsageList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::EntitlementUsage.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ExtendLicenseConsumptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExtendLicenseConsumptionInput, context: context)
        Hearth::Validator.validate!(input[:license_consumption_token], ::String, context: "#{context}[:license_consumption_token]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class ExtendLicenseConsumptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExtendLicenseConsumptionOutput, context: context)
        Hearth::Validator.validate!(input[:license_consumption_token], ::String, context: "#{context}[:license_consumption_token]")
        Hearth::Validator.validate!(input[:expiration], ::String, context: "#{context}[:expiration]")
      end
    end

    class FailedDependencyException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FailedDependencyException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
      end
    end

    class Filter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Filter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::FilterValues.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class FilterLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FilterLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class FilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Filter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FilterValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Filters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Filter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GetAccessTokenInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAccessTokenInput, context: context)
        Hearth::Validator.validate!(input[:token], ::String, context: "#{context}[:token]")
        Validators::MaxSize3StringList.validate!(input[:token_properties], context: "#{context}[:token_properties]") unless input[:token_properties].nil?
      end
    end

    class GetAccessTokenOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAccessTokenOutput, context: context)
        Hearth::Validator.validate!(input[:access_token], ::String, context: "#{context}[:access_token]")
      end
    end

    class GetGrantInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetGrantInput, context: context)
        Hearth::Validator.validate!(input[:grant_arn], ::String, context: "#{context}[:grant_arn]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class GetGrantOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetGrantOutput, context: context)
        Validators::Grant.validate!(input[:grant], context: "#{context}[:grant]") unless input[:grant].nil?
      end
    end

    class GetLicenseConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLicenseConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:license_configuration_arn], ::String, context: "#{context}[:license_configuration_arn]")
      end
    end

    class GetLicenseConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLicenseConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:license_configuration_id], ::String, context: "#{context}[:license_configuration_id]")
        Hearth::Validator.validate!(input[:license_configuration_arn], ::String, context: "#{context}[:license_configuration_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:license_counting_type], ::String, context: "#{context}[:license_counting_type]")
        Validators::StringList.validate!(input[:license_rules], context: "#{context}[:license_rules]") unless input[:license_rules].nil?
        Hearth::Validator.validate!(input[:license_count], ::Integer, context: "#{context}[:license_count]")
        Hearth::Validator.validate!(input[:license_count_hard_limit], ::TrueClass, ::FalseClass, context: "#{context}[:license_count_hard_limit]")
        Hearth::Validator.validate!(input[:consumed_licenses], ::Integer, context: "#{context}[:consumed_licenses]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:owner_account_id], ::String, context: "#{context}[:owner_account_id]")
        Validators::ConsumedLicenseSummaryList.validate!(input[:consumed_license_summary_list], context: "#{context}[:consumed_license_summary_list]") unless input[:consumed_license_summary_list].nil?
        Validators::ManagedResourceSummaryList.validate!(input[:managed_resource_summary_list], context: "#{context}[:managed_resource_summary_list]") unless input[:managed_resource_summary_list].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::ProductInformationList.validate!(input[:product_information_list], context: "#{context}[:product_information_list]") unless input[:product_information_list].nil?
        Validators::AutomatedDiscoveryInformation.validate!(input[:automated_discovery_information], context: "#{context}[:automated_discovery_information]") unless input[:automated_discovery_information].nil?
        Hearth::Validator.validate!(input[:disassociate_when_not_found], ::TrueClass, ::FalseClass, context: "#{context}[:disassociate_when_not_found]")
      end
    end

    class GetLicenseConversionTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLicenseConversionTaskInput, context: context)
        Hearth::Validator.validate!(input[:license_conversion_task_id], ::String, context: "#{context}[:license_conversion_task_id]")
      end
    end

    class GetLicenseConversionTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLicenseConversionTaskOutput, context: context)
        Hearth::Validator.validate!(input[:license_conversion_task_id], ::String, context: "#{context}[:license_conversion_task_id]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::LicenseConversionContext.validate!(input[:source_license_context], context: "#{context}[:source_license_context]") unless input[:source_license_context].nil?
        Validators::LicenseConversionContext.validate!(input[:destination_license_context], context: "#{context}[:destination_license_context]") unless input[:destination_license_context].nil?
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:license_conversion_time], ::Time, context: "#{context}[:license_conversion_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
      end
    end

    class GetLicenseInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLicenseInput, context: context)
        Hearth::Validator.validate!(input[:license_arn], ::String, context: "#{context}[:license_arn]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class GetLicenseManagerReportGeneratorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLicenseManagerReportGeneratorInput, context: context)
        Hearth::Validator.validate!(input[:license_manager_report_generator_arn], ::String, context: "#{context}[:license_manager_report_generator_arn]")
      end
    end

    class GetLicenseManagerReportGeneratorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLicenseManagerReportGeneratorOutput, context: context)
        Validators::ReportGenerator.validate!(input[:report_generator], context: "#{context}[:report_generator]") unless input[:report_generator].nil?
      end
    end

    class GetLicenseOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLicenseOutput, context: context)
        Validators::License.validate!(input[:license], context: "#{context}[:license]") unless input[:license].nil?
      end
    end

    class GetLicenseUsageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLicenseUsageInput, context: context)
        Hearth::Validator.validate!(input[:license_arn], ::String, context: "#{context}[:license_arn]")
      end
    end

    class GetLicenseUsageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLicenseUsageOutput, context: context)
        Validators::LicenseUsage.validate!(input[:license_usage], context: "#{context}[:license_usage]") unless input[:license_usage].nil?
      end
    end

    class GetServiceSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetServiceSettingsInput, context: context)
      end
    end

    class GetServiceSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetServiceSettingsOutput, context: context)
        Hearth::Validator.validate!(input[:s3_bucket_arn], ::String, context: "#{context}[:s3_bucket_arn]")
        Hearth::Validator.validate!(input[:sns_topic_arn], ::String, context: "#{context}[:sns_topic_arn]")
        Validators::OrganizationConfiguration.validate!(input[:organization_configuration], context: "#{context}[:organization_configuration]") unless input[:organization_configuration].nil?
        Hearth::Validator.validate!(input[:enable_cross_accounts_discovery], ::TrueClass, ::FalseClass, context: "#{context}[:enable_cross_accounts_discovery]")
        Hearth::Validator.validate!(input[:license_manager_resource_share_arn], ::String, context: "#{context}[:license_manager_resource_share_arn]")
      end
    end

    class Grant
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Grant, context: context)
        Hearth::Validator.validate!(input[:grant_arn], ::String, context: "#{context}[:grant_arn]")
        Hearth::Validator.validate!(input[:grant_name], ::String, context: "#{context}[:grant_name]")
        Hearth::Validator.validate!(input[:parent_arn], ::String, context: "#{context}[:parent_arn]")
        Hearth::Validator.validate!(input[:license_arn], ::String, context: "#{context}[:license_arn]")
        Hearth::Validator.validate!(input[:grantee_principal_arn], ::String, context: "#{context}[:grantee_principal_arn]")
        Hearth::Validator.validate!(input[:home_region], ::String, context: "#{context}[:home_region]")
        Hearth::Validator.validate!(input[:grant_status], ::String, context: "#{context}[:grant_status]")
        Hearth::Validator.validate!(input[:status_reason], ::String, context: "#{context}[:status_reason]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Validators::AllowedOperationList.validate!(input[:granted_operations], context: "#{context}[:granted_operations]") unless input[:granted_operations].nil?
      end
    end

    class GrantList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Grant.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GrantedLicense
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GrantedLicense, context: context)
        Hearth::Validator.validate!(input[:license_arn], ::String, context: "#{context}[:license_arn]")
        Hearth::Validator.validate!(input[:license_name], ::String, context: "#{context}[:license_name]")
        Hearth::Validator.validate!(input[:product_name], ::String, context: "#{context}[:product_name]")
        Hearth::Validator.validate!(input[:product_sku], ::String, context: "#{context}[:product_sku]")
        Validators::IssuerDetails.validate!(input[:issuer], context: "#{context}[:issuer]") unless input[:issuer].nil?
        Hearth::Validator.validate!(input[:home_region], ::String, context: "#{context}[:home_region]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::DatetimeRange.validate!(input[:validity], context: "#{context}[:validity]") unless input[:validity].nil?
        Hearth::Validator.validate!(input[:beneficiary], ::String, context: "#{context}[:beneficiary]")
        Validators::EntitlementList.validate!(input[:entitlements], context: "#{context}[:entitlements]") unless input[:entitlements].nil?
        Validators::ConsumptionConfiguration.validate!(input[:consumption_configuration], context: "#{context}[:consumption_configuration]") unless input[:consumption_configuration].nil?
        Validators::MetadataList.validate!(input[:license_metadata], context: "#{context}[:license_metadata]") unless input[:license_metadata].nil?
        Hearth::Validator.validate!(input[:create_time], ::String, context: "#{context}[:create_time]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Validators::ReceivedMetadata.validate!(input[:received_metadata], context: "#{context}[:received_metadata]") unless input[:received_metadata].nil?
      end
    end

    class GrantedLicenseList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::GrantedLicense.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InvalidParameterValueException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidParameterValueException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidResourceStateException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidResourceStateException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InventoryFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InventoryFilter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:condition], ::String, context: "#{context}[:condition]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class InventoryFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::InventoryFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Issuer
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Issuer, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:sign_key], ::String, context: "#{context}[:sign_key]")
      end
    end

    class IssuerDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IssuerDetails, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:sign_key], ::String, context: "#{context}[:sign_key]")
        Hearth::Validator.validate!(input[:key_fingerprint], ::String, context: "#{context}[:key_fingerprint]")
      end
    end

    class License
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::License, context: context)
        Hearth::Validator.validate!(input[:license_arn], ::String, context: "#{context}[:license_arn]")
        Hearth::Validator.validate!(input[:license_name], ::String, context: "#{context}[:license_name]")
        Hearth::Validator.validate!(input[:product_name], ::String, context: "#{context}[:product_name]")
        Hearth::Validator.validate!(input[:product_sku], ::String, context: "#{context}[:product_sku]")
        Validators::IssuerDetails.validate!(input[:issuer], context: "#{context}[:issuer]") unless input[:issuer].nil?
        Hearth::Validator.validate!(input[:home_region], ::String, context: "#{context}[:home_region]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::DatetimeRange.validate!(input[:validity], context: "#{context}[:validity]") unless input[:validity].nil?
        Hearth::Validator.validate!(input[:beneficiary], ::String, context: "#{context}[:beneficiary]")
        Validators::EntitlementList.validate!(input[:entitlements], context: "#{context}[:entitlements]") unless input[:entitlements].nil?
        Validators::ConsumptionConfiguration.validate!(input[:consumption_configuration], context: "#{context}[:consumption_configuration]") unless input[:consumption_configuration].nil?
        Validators::MetadataList.validate!(input[:license_metadata], context: "#{context}[:license_metadata]") unless input[:license_metadata].nil?
        Hearth::Validator.validate!(input[:create_time], ::String, context: "#{context}[:create_time]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class LicenseConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LicenseConfiguration, context: context)
        Hearth::Validator.validate!(input[:license_configuration_id], ::String, context: "#{context}[:license_configuration_id]")
        Hearth::Validator.validate!(input[:license_configuration_arn], ::String, context: "#{context}[:license_configuration_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:license_counting_type], ::String, context: "#{context}[:license_counting_type]")
        Validators::StringList.validate!(input[:license_rules], context: "#{context}[:license_rules]") unless input[:license_rules].nil?
        Hearth::Validator.validate!(input[:license_count], ::Integer, context: "#{context}[:license_count]")
        Hearth::Validator.validate!(input[:license_count_hard_limit], ::TrueClass, ::FalseClass, context: "#{context}[:license_count_hard_limit]")
        Hearth::Validator.validate!(input[:disassociate_when_not_found], ::TrueClass, ::FalseClass, context: "#{context}[:disassociate_when_not_found]")
        Hearth::Validator.validate!(input[:consumed_licenses], ::Integer, context: "#{context}[:consumed_licenses]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:owner_account_id], ::String, context: "#{context}[:owner_account_id]")
        Validators::ConsumedLicenseSummaryList.validate!(input[:consumed_license_summary_list], context: "#{context}[:consumed_license_summary_list]") unless input[:consumed_license_summary_list].nil?
        Validators::ManagedResourceSummaryList.validate!(input[:managed_resource_summary_list], context: "#{context}[:managed_resource_summary_list]") unless input[:managed_resource_summary_list].nil?
        Validators::ProductInformationList.validate!(input[:product_information_list], context: "#{context}[:product_information_list]") unless input[:product_information_list].nil?
        Validators::AutomatedDiscoveryInformation.validate!(input[:automated_discovery_information], context: "#{context}[:automated_discovery_information]") unless input[:automated_discovery_information].nil?
      end
    end

    class LicenseConfigurationAssociation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LicenseConfigurationAssociation, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:resource_owner_id], ::String, context: "#{context}[:resource_owner_id]")
        Hearth::Validator.validate!(input[:association_time], ::Time, context: "#{context}[:association_time]")
        Hearth::Validator.validate!(input[:ami_association_scope], ::String, context: "#{context}[:ami_association_scope]")
      end
    end

    class LicenseConfigurationAssociations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LicenseConfigurationAssociation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LicenseConfigurationUsage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LicenseConfigurationUsage, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:resource_status], ::String, context: "#{context}[:resource_status]")
        Hearth::Validator.validate!(input[:resource_owner_id], ::String, context: "#{context}[:resource_owner_id]")
        Hearth::Validator.validate!(input[:association_time], ::Time, context: "#{context}[:association_time]")
        Hearth::Validator.validate!(input[:consumed_licenses], ::Integer, context: "#{context}[:consumed_licenses]")
      end
    end

    class LicenseConfigurationUsageList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LicenseConfigurationUsage.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LicenseConfigurations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LicenseConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LicenseConversionContext
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LicenseConversionContext, context: context)
        Hearth::Validator.validate!(input[:usage_operation], ::String, context: "#{context}[:usage_operation]")
      end
    end

    class LicenseConversionTask
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LicenseConversionTask, context: context)
        Hearth::Validator.validate!(input[:license_conversion_task_id], ::String, context: "#{context}[:license_conversion_task_id]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::LicenseConversionContext.validate!(input[:source_license_context], context: "#{context}[:source_license_context]") unless input[:source_license_context].nil?
        Validators::LicenseConversionContext.validate!(input[:destination_license_context], context: "#{context}[:destination_license_context]") unless input[:destination_license_context].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:license_conversion_time], ::Time, context: "#{context}[:license_conversion_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
      end
    end

    class LicenseConversionTasks
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LicenseConversionTask.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LicenseList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::License.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LicenseOperationFailure
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LicenseOperationFailure, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
        Hearth::Validator.validate!(input[:failure_time], ::Time, context: "#{context}[:failure_time]")
        Hearth::Validator.validate!(input[:operation_name], ::String, context: "#{context}[:operation_name]")
        Hearth::Validator.validate!(input[:resource_owner_id], ::String, context: "#{context}[:resource_owner_id]")
        Hearth::Validator.validate!(input[:operation_requested_by], ::String, context: "#{context}[:operation_requested_by]")
        Validators::MetadataList.validate!(input[:metadata_list], context: "#{context}[:metadata_list]") unless input[:metadata_list].nil?
      end
    end

    class LicenseOperationFailureList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LicenseOperationFailure.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LicenseSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LicenseSpecification, context: context)
        Hearth::Validator.validate!(input[:license_configuration_arn], ::String, context: "#{context}[:license_configuration_arn]")
        Hearth::Validator.validate!(input[:ami_association_scope], ::String, context: "#{context}[:ami_association_scope]")
      end
    end

    class LicenseSpecifications
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LicenseSpecification.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LicenseUsage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LicenseUsage, context: context)
        Validators::EntitlementUsageList.validate!(input[:entitlement_usages], context: "#{context}[:entitlement_usages]") unless input[:entitlement_usages].nil?
      end
    end

    class LicenseUsageException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LicenseUsageException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListAssociationsForLicenseConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAssociationsForLicenseConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:license_configuration_arn], ::String, context: "#{context}[:license_configuration_arn]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAssociationsForLicenseConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAssociationsForLicenseConfigurationOutput, context: context)
        Validators::LicenseConfigurationAssociations.validate!(input[:license_configuration_associations], context: "#{context}[:license_configuration_associations]") unless input[:license_configuration_associations].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDistributedGrantsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDistributedGrantsInput, context: context)
        Validators::ArnList.validate!(input[:grant_arns], context: "#{context}[:grant_arns]") unless input[:grant_arns].nil?
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListDistributedGrantsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDistributedGrantsOutput, context: context)
        Validators::GrantList.validate!(input[:grants], context: "#{context}[:grants]") unless input[:grants].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListFailuresForLicenseConfigurationOperationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFailuresForLicenseConfigurationOperationsInput, context: context)
        Hearth::Validator.validate!(input[:license_configuration_arn], ::String, context: "#{context}[:license_configuration_arn]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListFailuresForLicenseConfigurationOperationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFailuresForLicenseConfigurationOperationsOutput, context: context)
        Validators::LicenseOperationFailureList.validate!(input[:license_operation_failure_list], context: "#{context}[:license_operation_failure_list]") unless input[:license_operation_failure_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListLicenseConfigurationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLicenseConfigurationsInput, context: context)
        Validators::StringList.validate!(input[:license_configuration_arns], context: "#{context}[:license_configuration_arns]") unless input[:license_configuration_arns].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::Filters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class ListLicenseConfigurationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLicenseConfigurationsOutput, context: context)
        Validators::LicenseConfigurations.validate!(input[:license_configurations], context: "#{context}[:license_configurations]") unless input[:license_configurations].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListLicenseConversionTasksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLicenseConversionTasksInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Validators::Filters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class ListLicenseConversionTasksOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLicenseConversionTasksOutput, context: context)
        Validators::LicenseConversionTasks.validate!(input[:license_conversion_tasks], context: "#{context}[:license_conversion_tasks]") unless input[:license_conversion_tasks].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListLicenseManagerReportGeneratorsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLicenseManagerReportGeneratorsInput, context: context)
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListLicenseManagerReportGeneratorsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLicenseManagerReportGeneratorsOutput, context: context)
        Validators::ReportGeneratorList.validate!(input[:report_generators], context: "#{context}[:report_generators]") unless input[:report_generators].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListLicenseSpecificationsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLicenseSpecificationsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListLicenseSpecificationsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLicenseSpecificationsForResourceOutput, context: context)
        Validators::LicenseSpecifications.validate!(input[:license_specifications], context: "#{context}[:license_specifications]") unless input[:license_specifications].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListLicenseVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLicenseVersionsInput, context: context)
        Hearth::Validator.validate!(input[:license_arn], ::String, context: "#{context}[:license_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListLicenseVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLicenseVersionsOutput, context: context)
        Validators::LicenseList.validate!(input[:licenses], context: "#{context}[:licenses]") unless input[:licenses].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListLicensesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLicensesInput, context: context)
        Validators::ArnList.validate!(input[:license_arns], context: "#{context}[:license_arns]") unless input[:license_arns].nil?
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListLicensesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLicensesOutput, context: context)
        Validators::LicenseList.validate!(input[:licenses], context: "#{context}[:licenses]") unless input[:licenses].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListReceivedGrantsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListReceivedGrantsInput, context: context)
        Validators::ArnList.validate!(input[:grant_arns], context: "#{context}[:grant_arns]") unless input[:grant_arns].nil?
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListReceivedGrantsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListReceivedGrantsOutput, context: context)
        Validators::GrantList.validate!(input[:grants], context: "#{context}[:grants]") unless input[:grants].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListReceivedLicensesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListReceivedLicensesInput, context: context)
        Validators::ArnList.validate!(input[:license_arns], context: "#{context}[:license_arns]") unless input[:license_arns].nil?
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListReceivedLicensesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListReceivedLicensesOutput, context: context)
        Validators::GrantedLicenseList.validate!(input[:licenses], context: "#{context}[:licenses]") unless input[:licenses].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListResourceInventoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResourceInventoryInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::InventoryFilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class ListResourceInventoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResourceInventoryOutput, context: context)
        Validators::ResourceInventoryList.validate!(input[:resource_inventory_list], context: "#{context}[:resource_inventory_list]") unless input[:resource_inventory_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ListTokensInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTokensInput, context: context)
        Validators::StringList.validate!(input[:token_ids], context: "#{context}[:token_ids]") unless input[:token_ids].nil?
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListTokensOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTokensOutput, context: context)
        Validators::TokenList.validate!(input[:tokens], context: "#{context}[:tokens]") unless input[:tokens].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListUsageForLicenseConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListUsageForLicenseConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:license_configuration_arn], ::String, context: "#{context}[:license_configuration_arn]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::Filters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class ListUsageForLicenseConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListUsageForLicenseConfigurationOutput, context: context)
        Validators::LicenseConfigurationUsageList.validate!(input[:license_configuration_usage_list], context: "#{context}[:license_configuration_usage_list]") unless input[:license_configuration_usage_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ManagedResourceSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ManagedResourceSummary, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:association_count], ::Integer, context: "#{context}[:association_count]")
      end
    end

    class ManagedResourceSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ManagedResourceSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MaxSize3StringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Metadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Metadata, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class MetadataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Metadata.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NoEntitlementsAllowedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoEntitlementsAllowedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OrganizationConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OrganizationConfiguration, context: context)
        Hearth::Validator.validate!(input[:enable_integration], ::TrueClass, ::FalseClass, context: "#{context}[:enable_integration]")
      end
    end

    class PrincipalArnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ProductInformation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProductInformation, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Validators::ProductInformationFilterList.validate!(input[:product_information_filter_list], context: "#{context}[:product_information_filter_list]") unless input[:product_information_filter_list].nil?
      end
    end

    class ProductInformationFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProductInformationFilter, context: context)
        Hearth::Validator.validate!(input[:product_information_filter_name], ::String, context: "#{context}[:product_information_filter_name]")
        Validators::StringList.validate!(input[:product_information_filter_value], context: "#{context}[:product_information_filter_value]") unless input[:product_information_filter_value].nil?
        Hearth::Validator.validate!(input[:product_information_filter_comparator], ::String, context: "#{context}[:product_information_filter_comparator]")
      end
    end

    class ProductInformationFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ProductInformationFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ProductInformationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ProductInformation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ProvisionalConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProvisionalConfiguration, context: context)
        Hearth::Validator.validate!(input[:max_time_to_live_in_minutes], ::Integer, context: "#{context}[:max_time_to_live_in_minutes]")
      end
    end

    class RateLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RateLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ReceivedMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReceivedMetadata, context: context)
        Hearth::Validator.validate!(input[:received_status], ::String, context: "#{context}[:received_status]")
        Hearth::Validator.validate!(input[:received_status_reason], ::String, context: "#{context}[:received_status_reason]")
        Validators::AllowedOperationList.validate!(input[:allowed_operations], context: "#{context}[:allowed_operations]") unless input[:allowed_operations].nil?
      end
    end

    class RedirectException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RedirectException, context: context)
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RejectGrantInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RejectGrantInput, context: context)
        Hearth::Validator.validate!(input[:grant_arn], ::String, context: "#{context}[:grant_arn]")
      end
    end

    class RejectGrantOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RejectGrantOutput, context: context)
        Hearth::Validator.validate!(input[:grant_arn], ::String, context: "#{context}[:grant_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class ReportContext
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReportContext, context: context)
        Validators::ArnList.validate!(input[:license_configuration_arns], context: "#{context}[:license_configuration_arns]") unless input[:license_configuration_arns].nil?
      end
    end

    class ReportFrequency
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReportFrequency, context: context)
        Hearth::Validator.validate!(input[:value], ::Integer, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:period], ::String, context: "#{context}[:period]")
      end
    end

    class ReportGenerator
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReportGenerator, context: context)
        Hearth::Validator.validate!(input[:report_generator_name], ::String, context: "#{context}[:report_generator_name]")
        Validators::ReportTypeList.validate!(input[:report_type], context: "#{context}[:report_type]") unless input[:report_type].nil?
        Validators::ReportContext.validate!(input[:report_context], context: "#{context}[:report_context]") unless input[:report_context].nil?
        Validators::ReportFrequency.validate!(input[:report_frequency], context: "#{context}[:report_frequency]") unless input[:report_frequency].nil?
        Hearth::Validator.validate!(input[:license_manager_report_generator_arn], ::String, context: "#{context}[:license_manager_report_generator_arn]")
        Hearth::Validator.validate!(input[:last_run_status], ::String, context: "#{context}[:last_run_status]")
        Hearth::Validator.validate!(input[:last_run_failure_reason], ::String, context: "#{context}[:last_run_failure_reason]")
        Hearth::Validator.validate!(input[:last_report_generation_time], ::String, context: "#{context}[:last_report_generation_time]")
        Hearth::Validator.validate!(input[:report_creator_account], ::String, context: "#{context}[:report_creator_account]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::S3Location.validate!(input[:s3_location], context: "#{context}[:s3_location]") unless input[:s3_location].nil?
        Hearth::Validator.validate!(input[:create_time], ::String, context: "#{context}[:create_time]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ReportGeneratorList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ReportGenerator.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReportTypeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ResourceInventory
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceInventory, context: context)
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:platform], ::String, context: "#{context}[:platform]")
        Hearth::Validator.validate!(input[:platform_version], ::String, context: "#{context}[:platform_version]")
        Hearth::Validator.validate!(input[:resource_owning_account_id], ::String, context: "#{context}[:resource_owning_account_id]")
      end
    end

    class ResourceInventoryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ResourceInventory.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class S3Location
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3Location, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:key_prefix], ::String, context: "#{context}[:key_prefix]")
      end
    end

    class ServerInternalException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServerInternalException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class StringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class TokenData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TokenData, context: context)
        Hearth::Validator.validate!(input[:token_id], ::String, context: "#{context}[:token_id]")
        Hearth::Validator.validate!(input[:token_type], ::String, context: "#{context}[:token_type]")
        Hearth::Validator.validate!(input[:license_arn], ::String, context: "#{context}[:license_arn]")
        Hearth::Validator.validate!(input[:expiration_time], ::String, context: "#{context}[:expiration_time]")
        Validators::MaxSize3StringList.validate!(input[:token_properties], context: "#{context}[:token_properties]") unless input[:token_properties].nil?
        Validators::ArnList.validate!(input[:role_arns], context: "#{context}[:role_arns]") unless input[:role_arns].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class TokenList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TokenData.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UnsupportedDigitalSignatureMethodException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnsupportedDigitalSignatureMethodException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateLicenseConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateLicenseConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:license_configuration_arn], ::String, context: "#{context}[:license_configuration_arn]")
        Hearth::Validator.validate!(input[:license_configuration_status], ::String, context: "#{context}[:license_configuration_status]")
        Validators::StringList.validate!(input[:license_rules], context: "#{context}[:license_rules]") unless input[:license_rules].nil?
        Hearth::Validator.validate!(input[:license_count], ::Integer, context: "#{context}[:license_count]")
        Hearth::Validator.validate!(input[:license_count_hard_limit], ::TrueClass, ::FalseClass, context: "#{context}[:license_count_hard_limit]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::ProductInformationList.validate!(input[:product_information_list], context: "#{context}[:product_information_list]") unless input[:product_information_list].nil?
        Hearth::Validator.validate!(input[:disassociate_when_not_found], ::TrueClass, ::FalseClass, context: "#{context}[:disassociate_when_not_found]")
      end
    end

    class UpdateLicenseConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateLicenseConfigurationOutput, context: context)
      end
    end

    class UpdateLicenseManagerReportGeneratorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateLicenseManagerReportGeneratorInput, context: context)
        Hearth::Validator.validate!(input[:license_manager_report_generator_arn], ::String, context: "#{context}[:license_manager_report_generator_arn]")
        Hearth::Validator.validate!(input[:report_generator_name], ::String, context: "#{context}[:report_generator_name]")
        Validators::ReportTypeList.validate!(input[:type], context: "#{context}[:type]") unless input[:type].nil?
        Validators::ReportContext.validate!(input[:report_context], context: "#{context}[:report_context]") unless input[:report_context].nil?
        Validators::ReportFrequency.validate!(input[:report_frequency], context: "#{context}[:report_frequency]") unless input[:report_frequency].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class UpdateLicenseManagerReportGeneratorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateLicenseManagerReportGeneratorOutput, context: context)
      end
    end

    class UpdateLicenseSpecificationsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateLicenseSpecificationsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::LicenseSpecifications.validate!(input[:add_license_specifications], context: "#{context}[:add_license_specifications]") unless input[:add_license_specifications].nil?
        Validators::LicenseSpecifications.validate!(input[:remove_license_specifications], context: "#{context}[:remove_license_specifications]") unless input[:remove_license_specifications].nil?
      end
    end

    class UpdateLicenseSpecificationsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateLicenseSpecificationsForResourceOutput, context: context)
      end
    end

    class UpdateServiceSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateServiceSettingsInput, context: context)
        Hearth::Validator.validate!(input[:s3_bucket_arn], ::String, context: "#{context}[:s3_bucket_arn]")
        Hearth::Validator.validate!(input[:sns_topic_arn], ::String, context: "#{context}[:sns_topic_arn]")
        Validators::OrganizationConfiguration.validate!(input[:organization_configuration], context: "#{context}[:organization_configuration]") unless input[:organization_configuration].nil?
        Hearth::Validator.validate!(input[:enable_cross_accounts_discovery], ::TrueClass, ::FalseClass, context: "#{context}[:enable_cross_accounts_discovery]")
      end
    end

    class UpdateServiceSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateServiceSettingsOutput, context: context)
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

  end
end
