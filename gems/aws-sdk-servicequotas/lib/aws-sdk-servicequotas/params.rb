# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::ServiceQuotas
  module Params

    module AWSServiceAccessNotEnabledException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AWSServiceAccessNotEnabledException, context: context)
        type = Types::AWSServiceAccessNotEnabledException.new
        type.message = params[:message]
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

    module AssociateServiceQuotaTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateServiceQuotaTemplateInput, context: context)
        type = Types::AssociateServiceQuotaTemplateInput.new
        type
      end
    end

    module AssociateServiceQuotaTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateServiceQuotaTemplateOutput, context: context)
        type = Types::AssociateServiceQuotaTemplateOutput.new
        type
      end
    end

    module DeleteServiceQuotaIncreaseRequestFromTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteServiceQuotaIncreaseRequestFromTemplateInput, context: context)
        type = Types::DeleteServiceQuotaIncreaseRequestFromTemplateInput.new
        type.service_code = params[:service_code]
        type.quota_code = params[:quota_code]
        type.aws_region = params[:aws_region]
        type
      end
    end

    module DeleteServiceQuotaIncreaseRequestFromTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteServiceQuotaIncreaseRequestFromTemplateOutput, context: context)
        type = Types::DeleteServiceQuotaIncreaseRequestFromTemplateOutput.new
        type
      end
    end

    module DependencyAccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DependencyAccessDeniedException, context: context)
        type = Types::DependencyAccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module DisassociateServiceQuotaTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateServiceQuotaTemplateInput, context: context)
        type = Types::DisassociateServiceQuotaTemplateInput.new
        type
      end
    end

    module DisassociateServiceQuotaTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateServiceQuotaTemplateOutput, context: context)
        type = Types::DisassociateServiceQuotaTemplateOutput.new
        type
      end
    end

    module ErrorReason
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ErrorReason, context: context)
        type = Types::ErrorReason.new
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type
      end
    end

    module GetAWSDefaultServiceQuotaInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAWSDefaultServiceQuotaInput, context: context)
        type = Types::GetAWSDefaultServiceQuotaInput.new
        type.service_code = params[:service_code]
        type.quota_code = params[:quota_code]
        type
      end
    end

    module GetAWSDefaultServiceQuotaOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAWSDefaultServiceQuotaOutput, context: context)
        type = Types::GetAWSDefaultServiceQuotaOutput.new
        type.quota = ServiceQuota.build(params[:quota], context: "#{context}[:quota]") unless params[:quota].nil?
        type
      end
    end

    module GetAssociationForServiceQuotaTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAssociationForServiceQuotaTemplateInput, context: context)
        type = Types::GetAssociationForServiceQuotaTemplateInput.new
        type
      end
    end

    module GetAssociationForServiceQuotaTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAssociationForServiceQuotaTemplateOutput, context: context)
        type = Types::GetAssociationForServiceQuotaTemplateOutput.new
        type.service_quota_template_association_status = params[:service_quota_template_association_status]
        type
      end
    end

    module GetRequestedServiceQuotaChangeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRequestedServiceQuotaChangeInput, context: context)
        type = Types::GetRequestedServiceQuotaChangeInput.new
        type.request_id = params[:request_id]
        type
      end
    end

    module GetRequestedServiceQuotaChangeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRequestedServiceQuotaChangeOutput, context: context)
        type = Types::GetRequestedServiceQuotaChangeOutput.new
        type.requested_quota = RequestedServiceQuotaChange.build(params[:requested_quota], context: "#{context}[:requested_quota]") unless params[:requested_quota].nil?
        type
      end
    end

    module GetServiceQuotaIncreaseRequestFromTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetServiceQuotaIncreaseRequestFromTemplateInput, context: context)
        type = Types::GetServiceQuotaIncreaseRequestFromTemplateInput.new
        type.service_code = params[:service_code]
        type.quota_code = params[:quota_code]
        type.aws_region = params[:aws_region]
        type
      end
    end

    module GetServiceQuotaIncreaseRequestFromTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetServiceQuotaIncreaseRequestFromTemplateOutput, context: context)
        type = Types::GetServiceQuotaIncreaseRequestFromTemplateOutput.new
        type.service_quota_increase_request_in_template = ServiceQuotaIncreaseRequestInTemplate.build(params[:service_quota_increase_request_in_template], context: "#{context}[:service_quota_increase_request_in_template]") unless params[:service_quota_increase_request_in_template].nil?
        type
      end
    end

    module GetServiceQuotaInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetServiceQuotaInput, context: context)
        type = Types::GetServiceQuotaInput.new
        type.service_code = params[:service_code]
        type.quota_code = params[:quota_code]
        type
      end
    end

    module GetServiceQuotaOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetServiceQuotaOutput, context: context)
        type = Types::GetServiceQuotaOutput.new
        type.quota = ServiceQuota.build(params[:quota], context: "#{context}[:quota]") unless params[:quota].nil?
        type
      end
    end

    module IllegalArgumentException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IllegalArgumentException, context: context)
        type = Types::IllegalArgumentException.new
        type.message = params[:message]
        type
      end
    end

    module InputTagKeys
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module InputTags
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InvalidPaginationTokenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidPaginationTokenException, context: context)
        type = Types::InvalidPaginationTokenException.new
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

    module ListAWSDefaultServiceQuotasInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAWSDefaultServiceQuotasInput, context: context)
        type = Types::ListAWSDefaultServiceQuotasInput.new
        type.service_code = params[:service_code]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListAWSDefaultServiceQuotasOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAWSDefaultServiceQuotasOutput, context: context)
        type = Types::ListAWSDefaultServiceQuotasOutput.new
        type.next_token = params[:next_token]
        type.quotas = ServiceQuotaListDefinition.build(params[:quotas], context: "#{context}[:quotas]") unless params[:quotas].nil?
        type
      end
    end

    module ListRequestedServiceQuotaChangeHistoryByQuotaInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRequestedServiceQuotaChangeHistoryByQuotaInput, context: context)
        type = Types::ListRequestedServiceQuotaChangeHistoryByQuotaInput.new
        type.service_code = params[:service_code]
        type.quota_code = params[:quota_code]
        type.status = params[:status]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListRequestedServiceQuotaChangeHistoryByQuotaOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRequestedServiceQuotaChangeHistoryByQuotaOutput, context: context)
        type = Types::ListRequestedServiceQuotaChangeHistoryByQuotaOutput.new
        type.next_token = params[:next_token]
        type.requested_quotas = RequestedServiceQuotaChangeHistoryListDefinition.build(params[:requested_quotas], context: "#{context}[:requested_quotas]") unless params[:requested_quotas].nil?
        type
      end
    end

    module ListRequestedServiceQuotaChangeHistoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRequestedServiceQuotaChangeHistoryInput, context: context)
        type = Types::ListRequestedServiceQuotaChangeHistoryInput.new
        type.service_code = params[:service_code]
        type.status = params[:status]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListRequestedServiceQuotaChangeHistoryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRequestedServiceQuotaChangeHistoryOutput, context: context)
        type = Types::ListRequestedServiceQuotaChangeHistoryOutput.new
        type.next_token = params[:next_token]
        type.requested_quotas = RequestedServiceQuotaChangeHistoryListDefinition.build(params[:requested_quotas], context: "#{context}[:requested_quotas]") unless params[:requested_quotas].nil?
        type
      end
    end

    module ListServiceQuotaIncreaseRequestsInTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListServiceQuotaIncreaseRequestsInTemplateInput, context: context)
        type = Types::ListServiceQuotaIncreaseRequestsInTemplateInput.new
        type.service_code = params[:service_code]
        type.aws_region = params[:aws_region]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListServiceQuotaIncreaseRequestsInTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListServiceQuotaIncreaseRequestsInTemplateOutput, context: context)
        type = Types::ListServiceQuotaIncreaseRequestsInTemplateOutput.new
        type.service_quota_increase_request_in_template_list = ServiceQuotaIncreaseRequestInTemplateList.build(params[:service_quota_increase_request_in_template_list], context: "#{context}[:service_quota_increase_request_in_template_list]") unless params[:service_quota_increase_request_in_template_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListServiceQuotasInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListServiceQuotasInput, context: context)
        type = Types::ListServiceQuotasInput.new
        type.service_code = params[:service_code]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListServiceQuotasOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListServiceQuotasOutput, context: context)
        type = Types::ListServiceQuotasOutput.new
        type.next_token = params[:next_token]
        type.quotas = ServiceQuotaListDefinition.build(params[:quotas], context: "#{context}[:quotas]") unless params[:quotas].nil?
        type
      end
    end

    module ListServicesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListServicesInput, context: context)
        type = Types::ListServicesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListServicesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListServicesOutput, context: context)
        type = Types::ListServicesOutput.new
        type.next_token = params[:next_token]
        type.services = ServiceInfoListDefinition.build(params[:services], context: "#{context}[:services]") unless params[:services].nil?
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
        type.tags = OutputTags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module MetricDimensionsMapDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module MetricInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MetricInfo, context: context)
        type = Types::MetricInfo.new
        type.metric_namespace = params[:metric_namespace]
        type.metric_name = params[:metric_name]
        type.metric_dimensions = MetricDimensionsMapDefinition.build(params[:metric_dimensions], context: "#{context}[:metric_dimensions]") unless params[:metric_dimensions].nil?
        type.metric_statistic_recommendation = params[:metric_statistic_recommendation]
        type
      end
    end

    module NoAvailableOrganizationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NoAvailableOrganizationException, context: context)
        type = Types::NoAvailableOrganizationException.new
        type.message = params[:message]
        type
      end
    end

    module NoSuchResourceException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NoSuchResourceException, context: context)
        type = Types::NoSuchResourceException.new
        type.message = params[:message]
        type
      end
    end

    module OrganizationNotInAllFeaturesModeException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OrganizationNotInAllFeaturesModeException, context: context)
        type = Types::OrganizationNotInAllFeaturesModeException.new
        type.message = params[:message]
        type
      end
    end

    module OutputTags
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PutServiceQuotaIncreaseRequestIntoTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutServiceQuotaIncreaseRequestIntoTemplateInput, context: context)
        type = Types::PutServiceQuotaIncreaseRequestIntoTemplateInput.new
        type.quota_code = params[:quota_code]
        type.service_code = params[:service_code]
        type.aws_region = params[:aws_region]
        type.desired_value = params[:desired_value]
        type
      end
    end

    module PutServiceQuotaIncreaseRequestIntoTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutServiceQuotaIncreaseRequestIntoTemplateOutput, context: context)
        type = Types::PutServiceQuotaIncreaseRequestIntoTemplateOutput.new
        type.service_quota_increase_request_in_template = ServiceQuotaIncreaseRequestInTemplate.build(params[:service_quota_increase_request_in_template], context: "#{context}[:service_quota_increase_request_in_template]") unless params[:service_quota_increase_request_in_template].nil?
        type
      end
    end

    module QuotaExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QuotaExceededException, context: context)
        type = Types::QuotaExceededException.new
        type.message = params[:message]
        type
      end
    end

    module QuotaPeriod
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QuotaPeriod, context: context)
        type = Types::QuotaPeriod.new
        type.period_value = params[:period_value]
        type.period_unit = params[:period_unit]
        type
      end
    end

    module RequestServiceQuotaIncreaseInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RequestServiceQuotaIncreaseInput, context: context)
        type = Types::RequestServiceQuotaIncreaseInput.new
        type.service_code = params[:service_code]
        type.quota_code = params[:quota_code]
        type.desired_value = params[:desired_value]
        type
      end
    end

    module RequestServiceQuotaIncreaseOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RequestServiceQuotaIncreaseOutput, context: context)
        type = Types::RequestServiceQuotaIncreaseOutput.new
        type.requested_quota = RequestedServiceQuotaChange.build(params[:requested_quota], context: "#{context}[:requested_quota]") unless params[:requested_quota].nil?
        type
      end
    end

    module RequestedServiceQuotaChange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RequestedServiceQuotaChange, context: context)
        type = Types::RequestedServiceQuotaChange.new
        type.id = params[:id]
        type.case_id = params[:case_id]
        type.service_code = params[:service_code]
        type.service_name = params[:service_name]
        type.quota_code = params[:quota_code]
        type.quota_name = params[:quota_name]
        type.desired_value = params[:desired_value]
        type.status = params[:status]
        type.created = params[:created]
        type.last_updated = params[:last_updated]
        type.requester = params[:requester]
        type.quota_arn = params[:quota_arn]
        type.global_quota = params[:global_quota]
        type.unit = params[:unit]
        type
      end
    end

    module RequestedServiceQuotaChangeHistoryListDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RequestedServiceQuotaChange.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceAlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceAlreadyExistsException, context: context)
        type = Types::ResourceAlreadyExistsException.new
        type.message = params[:message]
        type
      end
    end

    module ServiceException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceException, context: context)
        type = Types::ServiceException.new
        type.message = params[:message]
        type
      end
    end

    module ServiceInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceInfo, context: context)
        type = Types::ServiceInfo.new
        type.service_code = params[:service_code]
        type.service_name = params[:service_name]
        type
      end
    end

    module ServiceInfoListDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ServiceInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ServiceQuota
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceQuota, context: context)
        type = Types::ServiceQuota.new
        type.service_code = params[:service_code]
        type.service_name = params[:service_name]
        type.quota_arn = params[:quota_arn]
        type.quota_code = params[:quota_code]
        type.quota_name = params[:quota_name]
        type.value = params[:value]
        type.unit = params[:unit]
        type.adjustable = params[:adjustable]
        type.global_quota = params[:global_quota]
        type.usage_metric = MetricInfo.build(params[:usage_metric], context: "#{context}[:usage_metric]") unless params[:usage_metric].nil?
        type.period = QuotaPeriod.build(params[:period], context: "#{context}[:period]") unless params[:period].nil?
        type.error_reason = ErrorReason.build(params[:error_reason], context: "#{context}[:error_reason]") unless params[:error_reason].nil?
        type
      end
    end

    module ServiceQuotaIncreaseRequestInTemplate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceQuotaIncreaseRequestInTemplate, context: context)
        type = Types::ServiceQuotaIncreaseRequestInTemplate.new
        type.service_code = params[:service_code]
        type.service_name = params[:service_name]
        type.quota_code = params[:quota_code]
        type.quota_name = params[:quota_name]
        type.desired_value = params[:desired_value]
        type.aws_region = params[:aws_region]
        type.unit = params[:unit]
        type.global_quota = params[:global_quota]
        type
      end
    end

    module ServiceQuotaIncreaseRequestInTemplateList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ServiceQuotaIncreaseRequestInTemplate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ServiceQuotaListDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ServiceQuota.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ServiceQuotaTemplateNotInUseException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceQuotaTemplateNotInUseException, context: context)
        type = Types::ServiceQuotaTemplateNotInUseException.new
        type.message = params[:message]
        type
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

    module TagPolicyViolationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagPolicyViolationException, context: context)
        type = Types::TagPolicyViolationException.new
        type.message = params[:message]
        type
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = InputTags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module TemplatesNotAvailableInRegionException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TemplatesNotAvailableInRegionException, context: context)
        type = Types::TemplatesNotAvailableInRegionException.new
        type.message = params[:message]
        type
      end
    end

    module TooManyRequestsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyRequestsException, context: context)
        type = Types::TooManyRequestsException.new
        type.message = params[:message]
        type
      end
    end

    module TooManyTagsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyTagsException, context: context)
        type = Types::TooManyTagsException.new
        type.message = params[:message]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = InputTagKeys.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
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

  end
end
