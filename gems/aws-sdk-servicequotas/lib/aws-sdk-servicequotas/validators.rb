# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ServiceQuotas
  module Validators

    class AWSServiceAccessNotEnabledException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AWSServiceAccessNotEnabledException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AssociateServiceQuotaTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateServiceQuotaTemplateInput, context: context)
      end
    end

    class AssociateServiceQuotaTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateServiceQuotaTemplateOutput, context: context)
      end
    end

    class DeleteServiceQuotaIncreaseRequestFromTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteServiceQuotaIncreaseRequestFromTemplateInput, context: context)
        Hearth::Validator.validate!(input[:service_code], ::String, context: "#{context}[:service_code]")
        Hearth::Validator.validate!(input[:quota_code], ::String, context: "#{context}[:quota_code]")
        Hearth::Validator.validate!(input[:aws_region], ::String, context: "#{context}[:aws_region]")
      end
    end

    class DeleteServiceQuotaIncreaseRequestFromTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteServiceQuotaIncreaseRequestFromTemplateOutput, context: context)
      end
    end

    class DependencyAccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DependencyAccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DisassociateServiceQuotaTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateServiceQuotaTemplateInput, context: context)
      end
    end

    class DisassociateServiceQuotaTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateServiceQuotaTemplateOutput, context: context)
      end
    end

    class ErrorReason
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ErrorReason, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class GetAWSDefaultServiceQuotaInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAWSDefaultServiceQuotaInput, context: context)
        Hearth::Validator.validate!(input[:service_code], ::String, context: "#{context}[:service_code]")
        Hearth::Validator.validate!(input[:quota_code], ::String, context: "#{context}[:quota_code]")
      end
    end

    class GetAWSDefaultServiceQuotaOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAWSDefaultServiceQuotaOutput, context: context)
        Validators::ServiceQuota.validate!(input[:quota], context: "#{context}[:quota]") unless input[:quota].nil?
      end
    end

    class GetAssociationForServiceQuotaTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAssociationForServiceQuotaTemplateInput, context: context)
      end
    end

    class GetAssociationForServiceQuotaTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAssociationForServiceQuotaTemplateOutput, context: context)
        Hearth::Validator.validate!(input[:service_quota_template_association_status], ::String, context: "#{context}[:service_quota_template_association_status]")
      end
    end

    class GetRequestedServiceQuotaChangeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRequestedServiceQuotaChangeInput, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class GetRequestedServiceQuotaChangeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRequestedServiceQuotaChangeOutput, context: context)
        Validators::RequestedServiceQuotaChange.validate!(input[:requested_quota], context: "#{context}[:requested_quota]") unless input[:requested_quota].nil?
      end
    end

    class GetServiceQuotaIncreaseRequestFromTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetServiceQuotaIncreaseRequestFromTemplateInput, context: context)
        Hearth::Validator.validate!(input[:service_code], ::String, context: "#{context}[:service_code]")
        Hearth::Validator.validate!(input[:quota_code], ::String, context: "#{context}[:quota_code]")
        Hearth::Validator.validate!(input[:aws_region], ::String, context: "#{context}[:aws_region]")
      end
    end

    class GetServiceQuotaIncreaseRequestFromTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetServiceQuotaIncreaseRequestFromTemplateOutput, context: context)
        Validators::ServiceQuotaIncreaseRequestInTemplate.validate!(input[:service_quota_increase_request_in_template], context: "#{context}[:service_quota_increase_request_in_template]") unless input[:service_quota_increase_request_in_template].nil?
      end
    end

    class GetServiceQuotaInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetServiceQuotaInput, context: context)
        Hearth::Validator.validate!(input[:service_code], ::String, context: "#{context}[:service_code]")
        Hearth::Validator.validate!(input[:quota_code], ::String, context: "#{context}[:quota_code]")
      end
    end

    class GetServiceQuotaOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetServiceQuotaOutput, context: context)
        Validators::ServiceQuota.validate!(input[:quota], context: "#{context}[:quota]") unless input[:quota].nil?
      end
    end

    class IllegalArgumentException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IllegalArgumentException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InputTagKeys
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InputTags
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InvalidPaginationTokenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidPaginationTokenException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidResourceStateException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidResourceStateException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListAWSDefaultServiceQuotasInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAWSDefaultServiceQuotasInput, context: context)
        Hearth::Validator.validate!(input[:service_code], ::String, context: "#{context}[:service_code]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListAWSDefaultServiceQuotasOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAWSDefaultServiceQuotasOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::ServiceQuotaListDefinition.validate!(input[:quotas], context: "#{context}[:quotas]") unless input[:quotas].nil?
      end
    end

    class ListRequestedServiceQuotaChangeHistoryByQuotaInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRequestedServiceQuotaChangeHistoryByQuotaInput, context: context)
        Hearth::Validator.validate!(input[:service_code], ::String, context: "#{context}[:service_code]")
        Hearth::Validator.validate!(input[:quota_code], ::String, context: "#{context}[:quota_code]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListRequestedServiceQuotaChangeHistoryByQuotaOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRequestedServiceQuotaChangeHistoryByQuotaOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::RequestedServiceQuotaChangeHistoryListDefinition.validate!(input[:requested_quotas], context: "#{context}[:requested_quotas]") unless input[:requested_quotas].nil?
      end
    end

    class ListRequestedServiceQuotaChangeHistoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRequestedServiceQuotaChangeHistoryInput, context: context)
        Hearth::Validator.validate!(input[:service_code], ::String, context: "#{context}[:service_code]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListRequestedServiceQuotaChangeHistoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRequestedServiceQuotaChangeHistoryOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::RequestedServiceQuotaChangeHistoryListDefinition.validate!(input[:requested_quotas], context: "#{context}[:requested_quotas]") unless input[:requested_quotas].nil?
      end
    end

    class ListServiceQuotaIncreaseRequestsInTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListServiceQuotaIncreaseRequestsInTemplateInput, context: context)
        Hearth::Validator.validate!(input[:service_code], ::String, context: "#{context}[:service_code]")
        Hearth::Validator.validate!(input[:aws_region], ::String, context: "#{context}[:aws_region]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListServiceQuotaIncreaseRequestsInTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListServiceQuotaIncreaseRequestsInTemplateOutput, context: context)
        Validators::ServiceQuotaIncreaseRequestInTemplateList.validate!(input[:service_quota_increase_request_in_template_list], context: "#{context}[:service_quota_increase_request_in_template_list]") unless input[:service_quota_increase_request_in_template_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListServiceQuotasInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListServiceQuotasInput, context: context)
        Hearth::Validator.validate!(input[:service_code], ::String, context: "#{context}[:service_code]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListServiceQuotasOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListServiceQuotasOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::ServiceQuotaListDefinition.validate!(input[:quotas], context: "#{context}[:quotas]") unless input[:quotas].nil?
      end
    end

    class ListServicesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListServicesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListServicesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListServicesOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::ServiceInfoListDefinition.validate!(input[:services], context: "#{context}[:services]") unless input[:services].nil?
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
        Validators::OutputTags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class MetricDimensionsMapDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class MetricInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MetricInfo, context: context)
        Hearth::Validator.validate!(input[:metric_namespace], ::String, context: "#{context}[:metric_namespace]")
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Validators::MetricDimensionsMapDefinition.validate!(input[:metric_dimensions], context: "#{context}[:metric_dimensions]") unless input[:metric_dimensions].nil?
        Hearth::Validator.validate!(input[:metric_statistic_recommendation], ::String, context: "#{context}[:metric_statistic_recommendation]")
      end
    end

    class NoAvailableOrganizationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoAvailableOrganizationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NoSuchResourceException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoSuchResourceException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OrganizationNotInAllFeaturesModeException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OrganizationNotInAllFeaturesModeException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OutputTags
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PutServiceQuotaIncreaseRequestIntoTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutServiceQuotaIncreaseRequestIntoTemplateInput, context: context)
        Hearth::Validator.validate!(input[:quota_code], ::String, context: "#{context}[:quota_code]")
        Hearth::Validator.validate!(input[:service_code], ::String, context: "#{context}[:service_code]")
        Hearth::Validator.validate!(input[:aws_region], ::String, context: "#{context}[:aws_region]")
        Hearth::Validator.validate!(input[:desired_value], ::Float, context: "#{context}[:desired_value]")
      end
    end

    class PutServiceQuotaIncreaseRequestIntoTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutServiceQuotaIncreaseRequestIntoTemplateOutput, context: context)
        Validators::ServiceQuotaIncreaseRequestInTemplate.validate!(input[:service_quota_increase_request_in_template], context: "#{context}[:service_quota_increase_request_in_template]") unless input[:service_quota_increase_request_in_template].nil?
      end
    end

    class QuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class QuotaPeriod
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QuotaPeriod, context: context)
        Hearth::Validator.validate!(input[:period_value], ::Integer, context: "#{context}[:period_value]")
        Hearth::Validator.validate!(input[:period_unit], ::String, context: "#{context}[:period_unit]")
      end
    end

    class RequestServiceQuotaIncreaseInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RequestServiceQuotaIncreaseInput, context: context)
        Hearth::Validator.validate!(input[:service_code], ::String, context: "#{context}[:service_code]")
        Hearth::Validator.validate!(input[:quota_code], ::String, context: "#{context}[:quota_code]")
        Hearth::Validator.validate!(input[:desired_value], ::Float, context: "#{context}[:desired_value]")
      end
    end

    class RequestServiceQuotaIncreaseOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RequestServiceQuotaIncreaseOutput, context: context)
        Validators::RequestedServiceQuotaChange.validate!(input[:requested_quota], context: "#{context}[:requested_quota]") unless input[:requested_quota].nil?
      end
    end

    class RequestedServiceQuotaChange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RequestedServiceQuotaChange, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:case_id], ::String, context: "#{context}[:case_id]")
        Hearth::Validator.validate!(input[:service_code], ::String, context: "#{context}[:service_code]")
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
        Hearth::Validator.validate!(input[:quota_code], ::String, context: "#{context}[:quota_code]")
        Hearth::Validator.validate!(input[:quota_name], ::String, context: "#{context}[:quota_name]")
        Hearth::Validator.validate!(input[:desired_value], ::Float, context: "#{context}[:desired_value]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:created], ::Time, context: "#{context}[:created]")
        Hearth::Validator.validate!(input[:last_updated], ::Time, context: "#{context}[:last_updated]")
        Hearth::Validator.validate!(input[:requester], ::String, context: "#{context}[:requester]")
        Hearth::Validator.validate!(input[:quota_arn], ::String, context: "#{context}[:quota_arn]")
        Hearth::Validator.validate!(input[:global_quota], ::TrueClass, ::FalseClass, context: "#{context}[:global_quota]")
        Hearth::Validator.validate!(input[:unit], ::String, context: "#{context}[:unit]")
      end
    end

    class RequestedServiceQuotaChangeHistoryListDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RequestedServiceQuotaChange.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ServiceException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ServiceInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceInfo, context: context)
        Hearth::Validator.validate!(input[:service_code], ::String, context: "#{context}[:service_code]")
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
      end
    end

    class ServiceInfoListDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ServiceInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ServiceQuota
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuota, context: context)
        Hearth::Validator.validate!(input[:service_code], ::String, context: "#{context}[:service_code]")
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
        Hearth::Validator.validate!(input[:quota_arn], ::String, context: "#{context}[:quota_arn]")
        Hearth::Validator.validate!(input[:quota_code], ::String, context: "#{context}[:quota_code]")
        Hearth::Validator.validate!(input[:quota_name], ::String, context: "#{context}[:quota_name]")
        Hearth::Validator.validate!(input[:value], ::Float, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:unit], ::String, context: "#{context}[:unit]")
        Hearth::Validator.validate!(input[:adjustable], ::TrueClass, ::FalseClass, context: "#{context}[:adjustable]")
        Hearth::Validator.validate!(input[:global_quota], ::TrueClass, ::FalseClass, context: "#{context}[:global_quota]")
        Validators::MetricInfo.validate!(input[:usage_metric], context: "#{context}[:usage_metric]") unless input[:usage_metric].nil?
        Validators::QuotaPeriod.validate!(input[:period], context: "#{context}[:period]") unless input[:period].nil?
        Validators::ErrorReason.validate!(input[:error_reason], context: "#{context}[:error_reason]") unless input[:error_reason].nil?
      end
    end

    class ServiceQuotaIncreaseRequestInTemplate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaIncreaseRequestInTemplate, context: context)
        Hearth::Validator.validate!(input[:service_code], ::String, context: "#{context}[:service_code]")
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
        Hearth::Validator.validate!(input[:quota_code], ::String, context: "#{context}[:quota_code]")
        Hearth::Validator.validate!(input[:quota_name], ::String, context: "#{context}[:quota_name]")
        Hearth::Validator.validate!(input[:desired_value], ::Float, context: "#{context}[:desired_value]")
        Hearth::Validator.validate!(input[:aws_region], ::String, context: "#{context}[:aws_region]")
        Hearth::Validator.validate!(input[:unit], ::String, context: "#{context}[:unit]")
        Hearth::Validator.validate!(input[:global_quota], ::TrueClass, ::FalseClass, context: "#{context}[:global_quota]")
      end
    end

    class ServiceQuotaIncreaseRequestInTemplateList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ServiceQuotaIncreaseRequestInTemplate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ServiceQuotaListDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ServiceQuota.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ServiceQuotaTemplateNotInUseException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaTemplateNotInUseException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagPolicyViolationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagPolicyViolationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::InputTags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class TemplatesNotAvailableInRegionException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TemplatesNotAvailableInRegionException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyRequestsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyRequestsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyTagsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyTagsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::InputTagKeys.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

  end
end
