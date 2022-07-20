# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::LicenseManager
  module Params

    module AcceptGrantInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcceptGrantInput, context: context)
        type = Types::AcceptGrantInput.new
        type.grant_arn = params[:grant_arn]
        type
      end
    end

    module AcceptGrantOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcceptGrantOutput, context: context)
        type = Types::AcceptGrantOutput.new
        type.grant_arn = params[:grant_arn]
        type.status = params[:status]
        type.version = params[:version]
        type
      end
    end

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module AllowedOperationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ArnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AuthorizationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuthorizationException, context: context)
        type = Types::AuthorizationException.new
        type.message = params[:message]
        type
      end
    end

    module AutomatedDiscoveryInformation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutomatedDiscoveryInformation, context: context)
        type = Types::AutomatedDiscoveryInformation.new
        type.last_run_time = params[:last_run_time]
        type
      end
    end

    module BorrowConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BorrowConfiguration, context: context)
        type = Types::BorrowConfiguration.new
        type.allow_early_check_in = params[:allow_early_check_in]
        type.max_time_to_live_in_minutes = params[:max_time_to_live_in_minutes]
        type
      end
    end

    module CheckInLicenseInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CheckInLicenseInput, context: context)
        type = Types::CheckInLicenseInput.new
        type.license_consumption_token = params[:license_consumption_token]
        type.beneficiary = params[:beneficiary]
        type
      end
    end

    module CheckInLicenseOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CheckInLicenseOutput, context: context)
        type = Types::CheckInLicenseOutput.new
        type
      end
    end

    module CheckoutBorrowLicenseInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CheckoutBorrowLicenseInput, context: context)
        type = Types::CheckoutBorrowLicenseInput.new
        type.license_arn = params[:license_arn]
        type.entitlements = EntitlementDataList.build(params[:entitlements], context: "#{context}[:entitlements]") unless params[:entitlements].nil?
        type.digital_signature_method = params[:digital_signature_method]
        type.node_id = params[:node_id]
        type.checkout_metadata = MetadataList.build(params[:checkout_metadata], context: "#{context}[:checkout_metadata]") unless params[:checkout_metadata].nil?
        type.client_token = params[:client_token]
        type
      end
    end

    module CheckoutBorrowLicenseOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CheckoutBorrowLicenseOutput, context: context)
        type = Types::CheckoutBorrowLicenseOutput.new
        type.license_arn = params[:license_arn]
        type.license_consumption_token = params[:license_consumption_token]
        type.entitlements_allowed = EntitlementDataList.build(params[:entitlements_allowed], context: "#{context}[:entitlements_allowed]") unless params[:entitlements_allowed].nil?
        type.node_id = params[:node_id]
        type.signed_token = params[:signed_token]
        type.issued_at = params[:issued_at]
        type.expiration = params[:expiration]
        type.checkout_metadata = MetadataList.build(params[:checkout_metadata], context: "#{context}[:checkout_metadata]") unless params[:checkout_metadata].nil?
        type
      end
    end

    module CheckoutLicenseInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CheckoutLicenseInput, context: context)
        type = Types::CheckoutLicenseInput.new
        type.product_sku = params[:product_sku]
        type.checkout_type = params[:checkout_type]
        type.key_fingerprint = params[:key_fingerprint]
        type.entitlements = EntitlementDataList.build(params[:entitlements], context: "#{context}[:entitlements]") unless params[:entitlements].nil?
        type.client_token = params[:client_token]
        type.beneficiary = params[:beneficiary]
        type.node_id = params[:node_id]
        type
      end
    end

    module CheckoutLicenseOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CheckoutLicenseOutput, context: context)
        type = Types::CheckoutLicenseOutput.new
        type.checkout_type = params[:checkout_type]
        type.license_consumption_token = params[:license_consumption_token]
        type.entitlements_allowed = EntitlementDataList.build(params[:entitlements_allowed], context: "#{context}[:entitlements_allowed]") unless params[:entitlements_allowed].nil?
        type.signed_token = params[:signed_token]
        type.node_id = params[:node_id]
        type.issued_at = params[:issued_at]
        type.expiration = params[:expiration]
        type.license_arn = params[:license_arn]
        type
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type
      end
    end

    module ConsumedLicenseSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConsumedLicenseSummary, context: context)
        type = Types::ConsumedLicenseSummary.new
        type.resource_type = params[:resource_type]
        type.consumed_licenses = params[:consumed_licenses]
        type
      end
    end

    module ConsumedLicenseSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ConsumedLicenseSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConsumptionConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConsumptionConfiguration, context: context)
        type = Types::ConsumptionConfiguration.new
        type.renew_type = params[:renew_type]
        type.provisional_configuration = ProvisionalConfiguration.build(params[:provisional_configuration], context: "#{context}[:provisional_configuration]") unless params[:provisional_configuration].nil?
        type.borrow_configuration = BorrowConfiguration.build(params[:borrow_configuration], context: "#{context}[:borrow_configuration]") unless params[:borrow_configuration].nil?
        type
      end
    end

    module CreateGrantInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateGrantInput, context: context)
        type = Types::CreateGrantInput.new
        type.client_token = params[:client_token]
        type.grant_name = params[:grant_name]
        type.license_arn = params[:license_arn]
        type.principals = PrincipalArnList.build(params[:principals], context: "#{context}[:principals]") unless params[:principals].nil?
        type.home_region = params[:home_region]
        type.allowed_operations = AllowedOperationList.build(params[:allowed_operations], context: "#{context}[:allowed_operations]") unless params[:allowed_operations].nil?
        type
      end
    end

    module CreateGrantOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateGrantOutput, context: context)
        type = Types::CreateGrantOutput.new
        type.grant_arn = params[:grant_arn]
        type.status = params[:status]
        type.version = params[:version]
        type
      end
    end

    module CreateGrantVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateGrantVersionInput, context: context)
        type = Types::CreateGrantVersionInput.new
        type.client_token = params[:client_token]
        type.grant_arn = params[:grant_arn]
        type.grant_name = params[:grant_name]
        type.allowed_operations = AllowedOperationList.build(params[:allowed_operations], context: "#{context}[:allowed_operations]") unless params[:allowed_operations].nil?
        type.status = params[:status]
        type.status_reason = params[:status_reason]
        type.source_version = params[:source_version]
        type
      end
    end

    module CreateGrantVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateGrantVersionOutput, context: context)
        type = Types::CreateGrantVersionOutput.new
        type.grant_arn = params[:grant_arn]
        type.status = params[:status]
        type.version = params[:version]
        type
      end
    end

    module CreateLicenseConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLicenseConfigurationInput, context: context)
        type = Types::CreateLicenseConfigurationInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.license_counting_type = params[:license_counting_type]
        type.license_count = params[:license_count]
        type.license_count_hard_limit = params[:license_count_hard_limit]
        type.license_rules = StringList.build(params[:license_rules], context: "#{context}[:license_rules]") unless params[:license_rules].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.disassociate_when_not_found = params[:disassociate_when_not_found]
        type.product_information_list = ProductInformationList.build(params[:product_information_list], context: "#{context}[:product_information_list]") unless params[:product_information_list].nil?
        type
      end
    end

    module CreateLicenseConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLicenseConfigurationOutput, context: context)
        type = Types::CreateLicenseConfigurationOutput.new
        type.license_configuration_arn = params[:license_configuration_arn]
        type
      end
    end

    module CreateLicenseConversionTaskForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLicenseConversionTaskForResourceInput, context: context)
        type = Types::CreateLicenseConversionTaskForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.source_license_context = LicenseConversionContext.build(params[:source_license_context], context: "#{context}[:source_license_context]") unless params[:source_license_context].nil?
        type.destination_license_context = LicenseConversionContext.build(params[:destination_license_context], context: "#{context}[:destination_license_context]") unless params[:destination_license_context].nil?
        type
      end
    end

    module CreateLicenseConversionTaskForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLicenseConversionTaskForResourceOutput, context: context)
        type = Types::CreateLicenseConversionTaskForResourceOutput.new
        type.license_conversion_task_id = params[:license_conversion_task_id]
        type
      end
    end

    module CreateLicenseInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLicenseInput, context: context)
        type = Types::CreateLicenseInput.new
        type.license_name = params[:license_name]
        type.product_name = params[:product_name]
        type.product_sku = params[:product_sku]
        type.issuer = Issuer.build(params[:issuer], context: "#{context}[:issuer]") unless params[:issuer].nil?
        type.home_region = params[:home_region]
        type.validity = DatetimeRange.build(params[:validity], context: "#{context}[:validity]") unless params[:validity].nil?
        type.entitlements = EntitlementList.build(params[:entitlements], context: "#{context}[:entitlements]") unless params[:entitlements].nil?
        type.beneficiary = params[:beneficiary]
        type.consumption_configuration = ConsumptionConfiguration.build(params[:consumption_configuration], context: "#{context}[:consumption_configuration]") unless params[:consumption_configuration].nil?
        type.license_metadata = MetadataList.build(params[:license_metadata], context: "#{context}[:license_metadata]") unless params[:license_metadata].nil?
        type.client_token = params[:client_token]
        type
      end
    end

    module CreateLicenseManagerReportGeneratorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLicenseManagerReportGeneratorInput, context: context)
        type = Types::CreateLicenseManagerReportGeneratorInput.new
        type.report_generator_name = params[:report_generator_name]
        type.type = ReportTypeList.build(params[:type], context: "#{context}[:type]") unless params[:type].nil?
        type.report_context = ReportContext.build(params[:report_context], context: "#{context}[:report_context]") unless params[:report_context].nil?
        type.report_frequency = ReportFrequency.build(params[:report_frequency], context: "#{context}[:report_frequency]") unless params[:report_frequency].nil?
        type.client_token = params[:client_token]
        type.description = params[:description]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateLicenseManagerReportGeneratorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLicenseManagerReportGeneratorOutput, context: context)
        type = Types::CreateLicenseManagerReportGeneratorOutput.new
        type.license_manager_report_generator_arn = params[:license_manager_report_generator_arn]
        type
      end
    end

    module CreateLicenseOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLicenseOutput, context: context)
        type = Types::CreateLicenseOutput.new
        type.license_arn = params[:license_arn]
        type.status = params[:status]
        type.version = params[:version]
        type
      end
    end

    module CreateLicenseVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLicenseVersionInput, context: context)
        type = Types::CreateLicenseVersionInput.new
        type.license_arn = params[:license_arn]
        type.license_name = params[:license_name]
        type.product_name = params[:product_name]
        type.issuer = Issuer.build(params[:issuer], context: "#{context}[:issuer]") unless params[:issuer].nil?
        type.home_region = params[:home_region]
        type.validity = DatetimeRange.build(params[:validity], context: "#{context}[:validity]") unless params[:validity].nil?
        type.license_metadata = MetadataList.build(params[:license_metadata], context: "#{context}[:license_metadata]") unless params[:license_metadata].nil?
        type.entitlements = EntitlementList.build(params[:entitlements], context: "#{context}[:entitlements]") unless params[:entitlements].nil?
        type.consumption_configuration = ConsumptionConfiguration.build(params[:consumption_configuration], context: "#{context}[:consumption_configuration]") unless params[:consumption_configuration].nil?
        type.status = params[:status]
        type.client_token = params[:client_token]
        type.source_version = params[:source_version]
        type
      end
    end

    module CreateLicenseVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLicenseVersionOutput, context: context)
        type = Types::CreateLicenseVersionOutput.new
        type.license_arn = params[:license_arn]
        type.version = params[:version]
        type.status = params[:status]
        type
      end
    end

    module CreateTokenInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTokenInput, context: context)
        type = Types::CreateTokenInput.new
        type.license_arn = params[:license_arn]
        type.role_arns = ArnList.build(params[:role_arns], context: "#{context}[:role_arns]") unless params[:role_arns].nil?
        type.expiration_in_days = params[:expiration_in_days]
        type.token_properties = MaxSize3StringList.build(params[:token_properties], context: "#{context}[:token_properties]") unless params[:token_properties].nil?
        type.client_token = params[:client_token]
        type
      end
    end

    module CreateTokenOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTokenOutput, context: context)
        type = Types::CreateTokenOutput.new
        type.token_id = params[:token_id]
        type.token_type = params[:token_type]
        type.token = params[:token]
        type
      end
    end

    module DatetimeRange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatetimeRange, context: context)
        type = Types::DatetimeRange.new
        type.begin = params[:begin]
        type.end = params[:end]
        type
      end
    end

    module DeleteGrantInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteGrantInput, context: context)
        type = Types::DeleteGrantInput.new
        type.grant_arn = params[:grant_arn]
        type.status_reason = params[:status_reason]
        type.version = params[:version]
        type
      end
    end

    module DeleteGrantOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteGrantOutput, context: context)
        type = Types::DeleteGrantOutput.new
        type.grant_arn = params[:grant_arn]
        type.status = params[:status]
        type.version = params[:version]
        type
      end
    end

    module DeleteLicenseConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLicenseConfigurationInput, context: context)
        type = Types::DeleteLicenseConfigurationInput.new
        type.license_configuration_arn = params[:license_configuration_arn]
        type
      end
    end

    module DeleteLicenseConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLicenseConfigurationOutput, context: context)
        type = Types::DeleteLicenseConfigurationOutput.new
        type
      end
    end

    module DeleteLicenseInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLicenseInput, context: context)
        type = Types::DeleteLicenseInput.new
        type.license_arn = params[:license_arn]
        type.source_version = params[:source_version]
        type
      end
    end

    module DeleteLicenseManagerReportGeneratorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLicenseManagerReportGeneratorInput, context: context)
        type = Types::DeleteLicenseManagerReportGeneratorInput.new
        type.license_manager_report_generator_arn = params[:license_manager_report_generator_arn]
        type
      end
    end

    module DeleteLicenseManagerReportGeneratorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLicenseManagerReportGeneratorOutput, context: context)
        type = Types::DeleteLicenseManagerReportGeneratorOutput.new
        type
      end
    end

    module DeleteLicenseOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLicenseOutput, context: context)
        type = Types::DeleteLicenseOutput.new
        type.status = params[:status]
        type.deletion_date = params[:deletion_date]
        type
      end
    end

    module DeleteTokenInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTokenInput, context: context)
        type = Types::DeleteTokenInput.new
        type.token_id = params[:token_id]
        type
      end
    end

    module DeleteTokenOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTokenOutput, context: context)
        type = Types::DeleteTokenOutput.new
        type
      end
    end

    module Entitlement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Entitlement, context: context)
        type = Types::Entitlement.new
        type.name = params[:name]
        type.value = params[:value]
        type.max_count = params[:max_count]
        type.overage = params[:overage]
        type.unit = params[:unit]
        type.allow_check_in = params[:allow_check_in]
        type
      end
    end

    module EntitlementData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EntitlementData, context: context)
        type = Types::EntitlementData.new
        type.name = params[:name]
        type.value = params[:value]
        type.unit = params[:unit]
        type
      end
    end

    module EntitlementDataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EntitlementData.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EntitlementList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Entitlement.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EntitlementNotAllowedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EntitlementNotAllowedException, context: context)
        type = Types::EntitlementNotAllowedException.new
        type.message = params[:message]
        type
      end
    end

    module EntitlementUsage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EntitlementUsage, context: context)
        type = Types::EntitlementUsage.new
        type.name = params[:name]
        type.consumed_value = params[:consumed_value]
        type.max_count = params[:max_count]
        type.unit = params[:unit]
        type
      end
    end

    module EntitlementUsageList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EntitlementUsage.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ExtendLicenseConsumptionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExtendLicenseConsumptionInput, context: context)
        type = Types::ExtendLicenseConsumptionInput.new
        type.license_consumption_token = params[:license_consumption_token]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module ExtendLicenseConsumptionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExtendLicenseConsumptionOutput, context: context)
        type = Types::ExtendLicenseConsumptionOutput.new
        type.license_consumption_token = params[:license_consumption_token]
        type.expiration = params[:expiration]
        type
      end
    end

    module FailedDependencyException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FailedDependencyException, context: context)
        type = Types::FailedDependencyException.new
        type.message = params[:message]
        type.error_code = params[:error_code]
        type
      end
    end

    module Filter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Filter, context: context)
        type = Types::Filter.new
        type.name = params[:name]
        type.values = FilterValues.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module FilterLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FilterLimitExceededException, context: context)
        type = Types::FilterLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module FilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Filter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FilterValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Filters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Filter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GetAccessTokenInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAccessTokenInput, context: context)
        type = Types::GetAccessTokenInput.new
        type.token = params[:token]
        type.token_properties = MaxSize3StringList.build(params[:token_properties], context: "#{context}[:token_properties]") unless params[:token_properties].nil?
        type
      end
    end

    module GetAccessTokenOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAccessTokenOutput, context: context)
        type = Types::GetAccessTokenOutput.new
        type.access_token = params[:access_token]
        type
      end
    end

    module GetGrantInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetGrantInput, context: context)
        type = Types::GetGrantInput.new
        type.grant_arn = params[:grant_arn]
        type.version = params[:version]
        type
      end
    end

    module GetGrantOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetGrantOutput, context: context)
        type = Types::GetGrantOutput.new
        type.grant = Grant.build(params[:grant], context: "#{context}[:grant]") unless params[:grant].nil?
        type
      end
    end

    module GetLicenseConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLicenseConfigurationInput, context: context)
        type = Types::GetLicenseConfigurationInput.new
        type.license_configuration_arn = params[:license_configuration_arn]
        type
      end
    end

    module GetLicenseConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLicenseConfigurationOutput, context: context)
        type = Types::GetLicenseConfigurationOutput.new
        type.license_configuration_id = params[:license_configuration_id]
        type.license_configuration_arn = params[:license_configuration_arn]
        type.name = params[:name]
        type.description = params[:description]
        type.license_counting_type = params[:license_counting_type]
        type.license_rules = StringList.build(params[:license_rules], context: "#{context}[:license_rules]") unless params[:license_rules].nil?
        type.license_count = params[:license_count]
        type.license_count_hard_limit = params[:license_count_hard_limit]
        type.consumed_licenses = params[:consumed_licenses]
        type.status = params[:status]
        type.owner_account_id = params[:owner_account_id]
        type.consumed_license_summary_list = ConsumedLicenseSummaryList.build(params[:consumed_license_summary_list], context: "#{context}[:consumed_license_summary_list]") unless params[:consumed_license_summary_list].nil?
        type.managed_resource_summary_list = ManagedResourceSummaryList.build(params[:managed_resource_summary_list], context: "#{context}[:managed_resource_summary_list]") unless params[:managed_resource_summary_list].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.product_information_list = ProductInformationList.build(params[:product_information_list], context: "#{context}[:product_information_list]") unless params[:product_information_list].nil?
        type.automated_discovery_information = AutomatedDiscoveryInformation.build(params[:automated_discovery_information], context: "#{context}[:automated_discovery_information]") unless params[:automated_discovery_information].nil?
        type.disassociate_when_not_found = params[:disassociate_when_not_found]
        type
      end
    end

    module GetLicenseConversionTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLicenseConversionTaskInput, context: context)
        type = Types::GetLicenseConversionTaskInput.new
        type.license_conversion_task_id = params[:license_conversion_task_id]
        type
      end
    end

    module GetLicenseConversionTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLicenseConversionTaskOutput, context: context)
        type = Types::GetLicenseConversionTaskOutput.new
        type.license_conversion_task_id = params[:license_conversion_task_id]
        type.resource_arn = params[:resource_arn]
        type.source_license_context = LicenseConversionContext.build(params[:source_license_context], context: "#{context}[:source_license_context]") unless params[:source_license_context].nil?
        type.destination_license_context = LicenseConversionContext.build(params[:destination_license_context], context: "#{context}[:destination_license_context]") unless params[:destination_license_context].nil?
        type.status_message = params[:status_message]
        type.status = params[:status]
        type.start_time = params[:start_time]
        type.license_conversion_time = params[:license_conversion_time]
        type.end_time = params[:end_time]
        type
      end
    end

    module GetLicenseInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLicenseInput, context: context)
        type = Types::GetLicenseInput.new
        type.license_arn = params[:license_arn]
        type.version = params[:version]
        type
      end
    end

    module GetLicenseManagerReportGeneratorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLicenseManagerReportGeneratorInput, context: context)
        type = Types::GetLicenseManagerReportGeneratorInput.new
        type.license_manager_report_generator_arn = params[:license_manager_report_generator_arn]
        type
      end
    end

    module GetLicenseManagerReportGeneratorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLicenseManagerReportGeneratorOutput, context: context)
        type = Types::GetLicenseManagerReportGeneratorOutput.new
        type.report_generator = ReportGenerator.build(params[:report_generator], context: "#{context}[:report_generator]") unless params[:report_generator].nil?
        type
      end
    end

    module GetLicenseOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLicenseOutput, context: context)
        type = Types::GetLicenseOutput.new
        type.license = License.build(params[:license], context: "#{context}[:license]") unless params[:license].nil?
        type
      end
    end

    module GetLicenseUsageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLicenseUsageInput, context: context)
        type = Types::GetLicenseUsageInput.new
        type.license_arn = params[:license_arn]
        type
      end
    end

    module GetLicenseUsageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLicenseUsageOutput, context: context)
        type = Types::GetLicenseUsageOutput.new
        type.license_usage = LicenseUsage.build(params[:license_usage], context: "#{context}[:license_usage]") unless params[:license_usage].nil?
        type
      end
    end

    module GetServiceSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetServiceSettingsInput, context: context)
        type = Types::GetServiceSettingsInput.new
        type
      end
    end

    module GetServiceSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetServiceSettingsOutput, context: context)
        type = Types::GetServiceSettingsOutput.new
        type.s3_bucket_arn = params[:s3_bucket_arn]
        type.sns_topic_arn = params[:sns_topic_arn]
        type.organization_configuration = OrganizationConfiguration.build(params[:organization_configuration], context: "#{context}[:organization_configuration]") unless params[:organization_configuration].nil?
        type.enable_cross_accounts_discovery = params[:enable_cross_accounts_discovery]
        type.license_manager_resource_share_arn = params[:license_manager_resource_share_arn]
        type
      end
    end

    module Grant
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Grant, context: context)
        type = Types::Grant.new
        type.grant_arn = params[:grant_arn]
        type.grant_name = params[:grant_name]
        type.parent_arn = params[:parent_arn]
        type.license_arn = params[:license_arn]
        type.grantee_principal_arn = params[:grantee_principal_arn]
        type.home_region = params[:home_region]
        type.grant_status = params[:grant_status]
        type.status_reason = params[:status_reason]
        type.version = params[:version]
        type.granted_operations = AllowedOperationList.build(params[:granted_operations], context: "#{context}[:granted_operations]") unless params[:granted_operations].nil?
        type
      end
    end

    module GrantList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Grant.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GrantedLicense
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GrantedLicense, context: context)
        type = Types::GrantedLicense.new
        type.license_arn = params[:license_arn]
        type.license_name = params[:license_name]
        type.product_name = params[:product_name]
        type.product_sku = params[:product_sku]
        type.issuer = IssuerDetails.build(params[:issuer], context: "#{context}[:issuer]") unless params[:issuer].nil?
        type.home_region = params[:home_region]
        type.status = params[:status]
        type.validity = DatetimeRange.build(params[:validity], context: "#{context}[:validity]") unless params[:validity].nil?
        type.beneficiary = params[:beneficiary]
        type.entitlements = EntitlementList.build(params[:entitlements], context: "#{context}[:entitlements]") unless params[:entitlements].nil?
        type.consumption_configuration = ConsumptionConfiguration.build(params[:consumption_configuration], context: "#{context}[:consumption_configuration]") unless params[:consumption_configuration].nil?
        type.license_metadata = MetadataList.build(params[:license_metadata], context: "#{context}[:license_metadata]") unless params[:license_metadata].nil?
        type.create_time = params[:create_time]
        type.version = params[:version]
        type.received_metadata = ReceivedMetadata.build(params[:received_metadata], context: "#{context}[:received_metadata]") unless params[:received_metadata].nil?
        type
      end
    end

    module GrantedLicenseList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GrantedLicense.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InvalidParameterValueException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidParameterValueException, context: context)
        type = Types::InvalidParameterValueException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidResourceStateException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidResourceStateException, context: context)
        type = Types::InvalidResourceStateException.new
        type.message = params[:message]
        type
      end
    end

    module InventoryFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InventoryFilter, context: context)
        type = Types::InventoryFilter.new
        type.name = params[:name]
        type.condition = params[:condition]
        type.value = params[:value]
        type
      end
    end

    module InventoryFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InventoryFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Issuer
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Issuer, context: context)
        type = Types::Issuer.new
        type.name = params[:name]
        type.sign_key = params[:sign_key]
        type
      end
    end

    module IssuerDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IssuerDetails, context: context)
        type = Types::IssuerDetails.new
        type.name = params[:name]
        type.sign_key = params[:sign_key]
        type.key_fingerprint = params[:key_fingerprint]
        type
      end
    end

    module License
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::License, context: context)
        type = Types::License.new
        type.license_arn = params[:license_arn]
        type.license_name = params[:license_name]
        type.product_name = params[:product_name]
        type.product_sku = params[:product_sku]
        type.issuer = IssuerDetails.build(params[:issuer], context: "#{context}[:issuer]") unless params[:issuer].nil?
        type.home_region = params[:home_region]
        type.status = params[:status]
        type.validity = DatetimeRange.build(params[:validity], context: "#{context}[:validity]") unless params[:validity].nil?
        type.beneficiary = params[:beneficiary]
        type.entitlements = EntitlementList.build(params[:entitlements], context: "#{context}[:entitlements]") unless params[:entitlements].nil?
        type.consumption_configuration = ConsumptionConfiguration.build(params[:consumption_configuration], context: "#{context}[:consumption_configuration]") unless params[:consumption_configuration].nil?
        type.license_metadata = MetadataList.build(params[:license_metadata], context: "#{context}[:license_metadata]") unless params[:license_metadata].nil?
        type.create_time = params[:create_time]
        type.version = params[:version]
        type
      end
    end

    module LicenseConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LicenseConfiguration, context: context)
        type = Types::LicenseConfiguration.new
        type.license_configuration_id = params[:license_configuration_id]
        type.license_configuration_arn = params[:license_configuration_arn]
        type.name = params[:name]
        type.description = params[:description]
        type.license_counting_type = params[:license_counting_type]
        type.license_rules = StringList.build(params[:license_rules], context: "#{context}[:license_rules]") unless params[:license_rules].nil?
        type.license_count = params[:license_count]
        type.license_count_hard_limit = params[:license_count_hard_limit]
        type.disassociate_when_not_found = params[:disassociate_when_not_found]
        type.consumed_licenses = params[:consumed_licenses]
        type.status = params[:status]
        type.owner_account_id = params[:owner_account_id]
        type.consumed_license_summary_list = ConsumedLicenseSummaryList.build(params[:consumed_license_summary_list], context: "#{context}[:consumed_license_summary_list]") unless params[:consumed_license_summary_list].nil?
        type.managed_resource_summary_list = ManagedResourceSummaryList.build(params[:managed_resource_summary_list], context: "#{context}[:managed_resource_summary_list]") unless params[:managed_resource_summary_list].nil?
        type.product_information_list = ProductInformationList.build(params[:product_information_list], context: "#{context}[:product_information_list]") unless params[:product_information_list].nil?
        type.automated_discovery_information = AutomatedDiscoveryInformation.build(params[:automated_discovery_information], context: "#{context}[:automated_discovery_information]") unless params[:automated_discovery_information].nil?
        type
      end
    end

    module LicenseConfigurationAssociation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LicenseConfigurationAssociation, context: context)
        type = Types::LicenseConfigurationAssociation.new
        type.resource_arn = params[:resource_arn]
        type.resource_type = params[:resource_type]
        type.resource_owner_id = params[:resource_owner_id]
        type.association_time = params[:association_time]
        type.ami_association_scope = params[:ami_association_scope]
        type
      end
    end

    module LicenseConfigurationAssociations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LicenseConfigurationAssociation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LicenseConfigurationUsage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LicenseConfigurationUsage, context: context)
        type = Types::LicenseConfigurationUsage.new
        type.resource_arn = params[:resource_arn]
        type.resource_type = params[:resource_type]
        type.resource_status = params[:resource_status]
        type.resource_owner_id = params[:resource_owner_id]
        type.association_time = params[:association_time]
        type.consumed_licenses = params[:consumed_licenses]
        type
      end
    end

    module LicenseConfigurationUsageList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LicenseConfigurationUsage.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LicenseConfigurations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LicenseConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LicenseConversionContext
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LicenseConversionContext, context: context)
        type = Types::LicenseConversionContext.new
        type.usage_operation = params[:usage_operation]
        type
      end
    end

    module LicenseConversionTask
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LicenseConversionTask, context: context)
        type = Types::LicenseConversionTask.new
        type.license_conversion_task_id = params[:license_conversion_task_id]
        type.resource_arn = params[:resource_arn]
        type.source_license_context = LicenseConversionContext.build(params[:source_license_context], context: "#{context}[:source_license_context]") unless params[:source_license_context].nil?
        type.destination_license_context = LicenseConversionContext.build(params[:destination_license_context], context: "#{context}[:destination_license_context]") unless params[:destination_license_context].nil?
        type.status = params[:status]
        type.status_message = params[:status_message]
        type.start_time = params[:start_time]
        type.license_conversion_time = params[:license_conversion_time]
        type.end_time = params[:end_time]
        type
      end
    end

    module LicenseConversionTasks
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LicenseConversionTask.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LicenseList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << License.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LicenseOperationFailure
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LicenseOperationFailure, context: context)
        type = Types::LicenseOperationFailure.new
        type.resource_arn = params[:resource_arn]
        type.resource_type = params[:resource_type]
        type.error_message = params[:error_message]
        type.failure_time = params[:failure_time]
        type.operation_name = params[:operation_name]
        type.resource_owner_id = params[:resource_owner_id]
        type.operation_requested_by = params[:operation_requested_by]
        type.metadata_list = MetadataList.build(params[:metadata_list], context: "#{context}[:metadata_list]") unless params[:metadata_list].nil?
        type
      end
    end

    module LicenseOperationFailureList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LicenseOperationFailure.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LicenseSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LicenseSpecification, context: context)
        type = Types::LicenseSpecification.new
        type.license_configuration_arn = params[:license_configuration_arn]
        type.ami_association_scope = params[:ami_association_scope]
        type
      end
    end

    module LicenseSpecifications
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LicenseSpecification.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LicenseUsage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LicenseUsage, context: context)
        type = Types::LicenseUsage.new
        type.entitlement_usages = EntitlementUsageList.build(params[:entitlement_usages], context: "#{context}[:entitlement_usages]") unless params[:entitlement_usages].nil?
        type
      end
    end

    module LicenseUsageException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LicenseUsageException, context: context)
        type = Types::LicenseUsageException.new
        type.message = params[:message]
        type
      end
    end

    module ListAssociationsForLicenseConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAssociationsForLicenseConfigurationInput, context: context)
        type = Types::ListAssociationsForLicenseConfigurationInput.new
        type.license_configuration_arn = params[:license_configuration_arn]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAssociationsForLicenseConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAssociationsForLicenseConfigurationOutput, context: context)
        type = Types::ListAssociationsForLicenseConfigurationOutput.new
        type.license_configuration_associations = LicenseConfigurationAssociations.build(params[:license_configuration_associations], context: "#{context}[:license_configuration_associations]") unless params[:license_configuration_associations].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDistributedGrantsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDistributedGrantsInput, context: context)
        type = Types::ListDistributedGrantsInput.new
        type.grant_arns = ArnList.build(params[:grant_arns], context: "#{context}[:grant_arns]") unless params[:grant_arns].nil?
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListDistributedGrantsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDistributedGrantsOutput, context: context)
        type = Types::ListDistributedGrantsOutput.new
        type.grants = GrantList.build(params[:grants], context: "#{context}[:grants]") unless params[:grants].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListFailuresForLicenseConfigurationOperationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFailuresForLicenseConfigurationOperationsInput, context: context)
        type = Types::ListFailuresForLicenseConfigurationOperationsInput.new
        type.license_configuration_arn = params[:license_configuration_arn]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListFailuresForLicenseConfigurationOperationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFailuresForLicenseConfigurationOperationsOutput, context: context)
        type = Types::ListFailuresForLicenseConfigurationOperationsOutput.new
        type.license_operation_failure_list = LicenseOperationFailureList.build(params[:license_operation_failure_list], context: "#{context}[:license_operation_failure_list]") unless params[:license_operation_failure_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListLicenseConfigurationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLicenseConfigurationsInput, context: context)
        type = Types::ListLicenseConfigurationsInput.new
        type.license_configuration_arns = StringList.build(params[:license_configuration_arns], context: "#{context}[:license_configuration_arns]") unless params[:license_configuration_arns].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.filters = Filters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module ListLicenseConfigurationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLicenseConfigurationsOutput, context: context)
        type = Types::ListLicenseConfigurationsOutput.new
        type.license_configurations = LicenseConfigurations.build(params[:license_configurations], context: "#{context}[:license_configurations]") unless params[:license_configurations].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListLicenseConversionTasksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLicenseConversionTasksInput, context: context)
        type = Types::ListLicenseConversionTasksInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.filters = Filters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module ListLicenseConversionTasksOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLicenseConversionTasksOutput, context: context)
        type = Types::ListLicenseConversionTasksOutput.new
        type.license_conversion_tasks = LicenseConversionTasks.build(params[:license_conversion_tasks], context: "#{context}[:license_conversion_tasks]") unless params[:license_conversion_tasks].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListLicenseManagerReportGeneratorsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLicenseManagerReportGeneratorsInput, context: context)
        type = Types::ListLicenseManagerReportGeneratorsInput.new
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListLicenseManagerReportGeneratorsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLicenseManagerReportGeneratorsOutput, context: context)
        type = Types::ListLicenseManagerReportGeneratorsOutput.new
        type.report_generators = ReportGeneratorList.build(params[:report_generators], context: "#{context}[:report_generators]") unless params[:report_generators].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListLicenseSpecificationsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLicenseSpecificationsForResourceInput, context: context)
        type = Types::ListLicenseSpecificationsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListLicenseSpecificationsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLicenseSpecificationsForResourceOutput, context: context)
        type = Types::ListLicenseSpecificationsForResourceOutput.new
        type.license_specifications = LicenseSpecifications.build(params[:license_specifications], context: "#{context}[:license_specifications]") unless params[:license_specifications].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListLicenseVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLicenseVersionsInput, context: context)
        type = Types::ListLicenseVersionsInput.new
        type.license_arn = params[:license_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListLicenseVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLicenseVersionsOutput, context: context)
        type = Types::ListLicenseVersionsOutput.new
        type.licenses = LicenseList.build(params[:licenses], context: "#{context}[:licenses]") unless params[:licenses].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListLicensesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLicensesInput, context: context)
        type = Types::ListLicensesInput.new
        type.license_arns = ArnList.build(params[:license_arns], context: "#{context}[:license_arns]") unless params[:license_arns].nil?
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListLicensesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLicensesOutput, context: context)
        type = Types::ListLicensesOutput.new
        type.licenses = LicenseList.build(params[:licenses], context: "#{context}[:licenses]") unless params[:licenses].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListReceivedGrantsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListReceivedGrantsInput, context: context)
        type = Types::ListReceivedGrantsInput.new
        type.grant_arns = ArnList.build(params[:grant_arns], context: "#{context}[:grant_arns]") unless params[:grant_arns].nil?
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListReceivedGrantsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListReceivedGrantsOutput, context: context)
        type = Types::ListReceivedGrantsOutput.new
        type.grants = GrantList.build(params[:grants], context: "#{context}[:grants]") unless params[:grants].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListReceivedLicensesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListReceivedLicensesInput, context: context)
        type = Types::ListReceivedLicensesInput.new
        type.license_arns = ArnList.build(params[:license_arns], context: "#{context}[:license_arns]") unless params[:license_arns].nil?
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListReceivedLicensesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListReceivedLicensesOutput, context: context)
        type = Types::ListReceivedLicensesOutput.new
        type.licenses = GrantedLicenseList.build(params[:licenses], context: "#{context}[:licenses]") unless params[:licenses].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListResourceInventoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResourceInventoryInput, context: context)
        type = Types::ListResourceInventoryInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.filters = InventoryFilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module ListResourceInventoryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResourceInventoryOutput, context: context)
        type = Types::ListResourceInventoryOutput.new
        type.resource_inventory_list = ResourceInventoryList.build(params[:resource_inventory_list], context: "#{context}[:resource_inventory_list]") unless params[:resource_inventory_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ListTokensInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTokensInput, context: context)
        type = Types::ListTokensInput.new
        type.token_ids = StringList.build(params[:token_ids], context: "#{context}[:token_ids]") unless params[:token_ids].nil?
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListTokensOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTokensOutput, context: context)
        type = Types::ListTokensOutput.new
        type.tokens = TokenList.build(params[:tokens], context: "#{context}[:tokens]") unless params[:tokens].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListUsageForLicenseConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListUsageForLicenseConfigurationInput, context: context)
        type = Types::ListUsageForLicenseConfigurationInput.new
        type.license_configuration_arn = params[:license_configuration_arn]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.filters = Filters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module ListUsageForLicenseConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListUsageForLicenseConfigurationOutput, context: context)
        type = Types::ListUsageForLicenseConfigurationOutput.new
        type.license_configuration_usage_list = LicenseConfigurationUsageList.build(params[:license_configuration_usage_list], context: "#{context}[:license_configuration_usage_list]") unless params[:license_configuration_usage_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ManagedResourceSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ManagedResourceSummary, context: context)
        type = Types::ManagedResourceSummary.new
        type.resource_type = params[:resource_type]
        type.association_count = params[:association_count]
        type
      end
    end

    module ManagedResourceSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ManagedResourceSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MaxSize3StringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Metadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Metadata, context: context)
        type = Types::Metadata.new
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module MetadataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Metadata.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NoEntitlementsAllowedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NoEntitlementsAllowedException, context: context)
        type = Types::NoEntitlementsAllowedException.new
        type.message = params[:message]
        type
      end
    end

    module OrganizationConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OrganizationConfiguration, context: context)
        type = Types::OrganizationConfiguration.new
        type.enable_integration = params[:enable_integration]
        type
      end
    end

    module PrincipalArnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ProductInformation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProductInformation, context: context)
        type = Types::ProductInformation.new
        type.resource_type = params[:resource_type]
        type.product_information_filter_list = ProductInformationFilterList.build(params[:product_information_filter_list], context: "#{context}[:product_information_filter_list]") unless params[:product_information_filter_list].nil?
        type
      end
    end

    module ProductInformationFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProductInformationFilter, context: context)
        type = Types::ProductInformationFilter.new
        type.product_information_filter_name = params[:product_information_filter_name]
        type.product_information_filter_value = StringList.build(params[:product_information_filter_value], context: "#{context}[:product_information_filter_value]") unless params[:product_information_filter_value].nil?
        type.product_information_filter_comparator = params[:product_information_filter_comparator]
        type
      end
    end

    module ProductInformationFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProductInformationFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ProductInformationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProductInformation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ProvisionalConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProvisionalConfiguration, context: context)
        type = Types::ProvisionalConfiguration.new
        type.max_time_to_live_in_minutes = params[:max_time_to_live_in_minutes]
        type
      end
    end

    module RateLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RateLimitExceededException, context: context)
        type = Types::RateLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ReceivedMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReceivedMetadata, context: context)
        type = Types::ReceivedMetadata.new
        type.received_status = params[:received_status]
        type.received_status_reason = params[:received_status_reason]
        type.allowed_operations = AllowedOperationList.build(params[:allowed_operations], context: "#{context}[:allowed_operations]") unless params[:allowed_operations].nil?
        type
      end
    end

    module RedirectException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RedirectException, context: context)
        type = Types::RedirectException.new
        type.location = params[:location]
        type.message = params[:message]
        type
      end
    end

    module RejectGrantInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RejectGrantInput, context: context)
        type = Types::RejectGrantInput.new
        type.grant_arn = params[:grant_arn]
        type
      end
    end

    module RejectGrantOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RejectGrantOutput, context: context)
        type = Types::RejectGrantOutput.new
        type.grant_arn = params[:grant_arn]
        type.status = params[:status]
        type.version = params[:version]
        type
      end
    end

    module ReportContext
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReportContext, context: context)
        type = Types::ReportContext.new
        type.license_configuration_arns = ArnList.build(params[:license_configuration_arns], context: "#{context}[:license_configuration_arns]") unless params[:license_configuration_arns].nil?
        type
      end
    end

    module ReportFrequency
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReportFrequency, context: context)
        type = Types::ReportFrequency.new
        type.value = params[:value]
        type.period = params[:period]
        type
      end
    end

    module ReportGenerator
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReportGenerator, context: context)
        type = Types::ReportGenerator.new
        type.report_generator_name = params[:report_generator_name]
        type.report_type = ReportTypeList.build(params[:report_type], context: "#{context}[:report_type]") unless params[:report_type].nil?
        type.report_context = ReportContext.build(params[:report_context], context: "#{context}[:report_context]") unless params[:report_context].nil?
        type.report_frequency = ReportFrequency.build(params[:report_frequency], context: "#{context}[:report_frequency]") unless params[:report_frequency].nil?
        type.license_manager_report_generator_arn = params[:license_manager_report_generator_arn]
        type.last_run_status = params[:last_run_status]
        type.last_run_failure_reason = params[:last_run_failure_reason]
        type.last_report_generation_time = params[:last_report_generation_time]
        type.report_creator_account = params[:report_creator_account]
        type.description = params[:description]
        type.s3_location = S3Location.build(params[:s3_location], context: "#{context}[:s3_location]") unless params[:s3_location].nil?
        type.create_time = params[:create_time]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ReportGeneratorList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReportGenerator.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReportTypeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ResourceInventory
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceInventory, context: context)
        type = Types::ResourceInventory.new
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type.resource_arn = params[:resource_arn]
        type.platform = params[:platform]
        type.platform_version = params[:platform_version]
        type.resource_owning_account_id = params[:resource_owning_account_id]
        type
      end
    end

    module ResourceInventoryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResourceInventory.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceLimitExceededException, context: context)
        type = Types::ResourceLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module S3Location
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3Location, context: context)
        type = Types::S3Location.new
        type.bucket = params[:bucket]
        type.key_prefix = params[:key_prefix]
        type
      end
    end

    module ServerInternalException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServerInternalException, context: context)
        type = Types::ServerInternalException.new
        type.message = params[:message]
        type
      end
    end

    module StringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Tag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type
      end
    end

    module TokenData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TokenData, context: context)
        type = Types::TokenData.new
        type.token_id = params[:token_id]
        type.token_type = params[:token_type]
        type.license_arn = params[:license_arn]
        type.expiration_time = params[:expiration_time]
        type.token_properties = MaxSize3StringList.build(params[:token_properties], context: "#{context}[:token_properties]") unless params[:token_properties].nil?
        type.role_arns = ArnList.build(params[:role_arns], context: "#{context}[:role_arns]") unless params[:role_arns].nil?
        type.status = params[:status]
        type
      end
    end

    module TokenList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TokenData.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UnsupportedDigitalSignatureMethodException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnsupportedDigitalSignatureMethodException, context: context)
        type = Types::UnsupportedDigitalSignatureMethodException.new
        type.message = params[:message]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type
      end
    end

    module UpdateLicenseConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateLicenseConfigurationInput, context: context)
        type = Types::UpdateLicenseConfigurationInput.new
        type.license_configuration_arn = params[:license_configuration_arn]
        type.license_configuration_status = params[:license_configuration_status]
        type.license_rules = StringList.build(params[:license_rules], context: "#{context}[:license_rules]") unless params[:license_rules].nil?
        type.license_count = params[:license_count]
        type.license_count_hard_limit = params[:license_count_hard_limit]
        type.name = params[:name]
        type.description = params[:description]
        type.product_information_list = ProductInformationList.build(params[:product_information_list], context: "#{context}[:product_information_list]") unless params[:product_information_list].nil?
        type.disassociate_when_not_found = params[:disassociate_when_not_found]
        type
      end
    end

    module UpdateLicenseConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateLicenseConfigurationOutput, context: context)
        type = Types::UpdateLicenseConfigurationOutput.new
        type
      end
    end

    module UpdateLicenseManagerReportGeneratorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateLicenseManagerReportGeneratorInput, context: context)
        type = Types::UpdateLicenseManagerReportGeneratorInput.new
        type.license_manager_report_generator_arn = params[:license_manager_report_generator_arn]
        type.report_generator_name = params[:report_generator_name]
        type.type = ReportTypeList.build(params[:type], context: "#{context}[:type]") unless params[:type].nil?
        type.report_context = ReportContext.build(params[:report_context], context: "#{context}[:report_context]") unless params[:report_context].nil?
        type.report_frequency = ReportFrequency.build(params[:report_frequency], context: "#{context}[:report_frequency]") unless params[:report_frequency].nil?
        type.client_token = params[:client_token]
        type.description = params[:description]
        type
      end
    end

    module UpdateLicenseManagerReportGeneratorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateLicenseManagerReportGeneratorOutput, context: context)
        type = Types::UpdateLicenseManagerReportGeneratorOutput.new
        type
      end
    end

    module UpdateLicenseSpecificationsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateLicenseSpecificationsForResourceInput, context: context)
        type = Types::UpdateLicenseSpecificationsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.add_license_specifications = LicenseSpecifications.build(params[:add_license_specifications], context: "#{context}[:add_license_specifications]") unless params[:add_license_specifications].nil?
        type.remove_license_specifications = LicenseSpecifications.build(params[:remove_license_specifications], context: "#{context}[:remove_license_specifications]") unless params[:remove_license_specifications].nil?
        type
      end
    end

    module UpdateLicenseSpecificationsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateLicenseSpecificationsForResourceOutput, context: context)
        type = Types::UpdateLicenseSpecificationsForResourceOutput.new
        type
      end
    end

    module UpdateServiceSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateServiceSettingsInput, context: context)
        type = Types::UpdateServiceSettingsInput.new
        type.s3_bucket_arn = params[:s3_bucket_arn]
        type.sns_topic_arn = params[:sns_topic_arn]
        type.organization_configuration = OrganizationConfiguration.build(params[:organization_configuration], context: "#{context}[:organization_configuration]") unless params[:organization_configuration].nil?
        type.enable_cross_accounts_discovery = params[:enable_cross_accounts_discovery]
        type
      end
    end

    module UpdateServiceSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateServiceSettingsOutput, context: context)
        type = Types::UpdateServiceSettingsOutput.new
        type
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type
      end
    end

  end
end
