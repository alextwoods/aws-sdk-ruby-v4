# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ServiceQuotas
  module Parsers

    # Operation Parser for AssociateServiceQuotaTemplate
    class AssociateServiceQuotaTemplate
      def self.parse(http_resp)
        data = Types::AssociateServiceQuotaTemplateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
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

    # Error Parser for TemplatesNotAvailableInRegionException
    class TemplatesNotAvailableInRegionException
      def self.parse(http_resp)
        data = Types::TemplatesNotAvailableInRegionException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for NoAvailableOrganizationException
    class NoAvailableOrganizationException
      def self.parse(http_resp)
        data = Types::NoAvailableOrganizationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ServiceException
    class ServiceException
      def self.parse(http_resp)
        data = Types::ServiceException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for TooManyRequestsException
    class TooManyRequestsException
      def self.parse(http_resp)
        data = Types::TooManyRequestsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for DependencyAccessDeniedException
    class DependencyAccessDeniedException
      def self.parse(http_resp)
        data = Types::DependencyAccessDeniedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for OrganizationNotInAllFeaturesModeException
    class OrganizationNotInAllFeaturesModeException
      def self.parse(http_resp)
        data = Types::OrganizationNotInAllFeaturesModeException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for AWSServiceAccessNotEnabledException
    class AWSServiceAccessNotEnabledException
      def self.parse(http_resp)
        data = Types::AWSServiceAccessNotEnabledException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteServiceQuotaIncreaseRequestFromTemplate
    class DeleteServiceQuotaIncreaseRequestFromTemplate
      def self.parse(http_resp)
        data = Types::DeleteServiceQuotaIncreaseRequestFromTemplateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for IllegalArgumentException
    class IllegalArgumentException
      def self.parse(http_resp)
        data = Types::IllegalArgumentException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for NoSuchResourceException
    class NoSuchResourceException
      def self.parse(http_resp)
        data = Types::NoSuchResourceException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DisassociateServiceQuotaTemplate
    class DisassociateServiceQuotaTemplate
      def self.parse(http_resp)
        data = Types::DisassociateServiceQuotaTemplateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for ServiceQuotaTemplateNotInUseException
    class ServiceQuotaTemplateNotInUseException
      def self.parse(http_resp)
        data = Types::ServiceQuotaTemplateNotInUseException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for GetAWSDefaultServiceQuota
    class GetAWSDefaultServiceQuota
      def self.parse(http_resp)
        data = Types::GetAWSDefaultServiceQuotaOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.quota = (Parsers::ServiceQuota.parse(map['Quota']) unless map['Quota'].nil?)
        data
      end
    end

    class ServiceQuota
      def self.parse(map)
        data = Types::ServiceQuota.new
        data.service_code = map['ServiceCode']
        data.service_name = map['ServiceName']
        data.quota_arn = map['QuotaArn']
        data.quota_code = map['QuotaCode']
        data.quota_name = map['QuotaName']
        data.value = Hearth::NumberHelper.deserialize(map['Value'])
        data.unit = map['Unit']
        data.adjustable = map['Adjustable']
        data.global_quota = map['GlobalQuota']
        data.usage_metric = (Parsers::MetricInfo.parse(map['UsageMetric']) unless map['UsageMetric'].nil?)
        data.period = (Parsers::QuotaPeriod.parse(map['Period']) unless map['Period'].nil?)
        data.error_reason = (Parsers::ErrorReason.parse(map['ErrorReason']) unless map['ErrorReason'].nil?)
        return data
      end
    end

    class ErrorReason
      def self.parse(map)
        data = Types::ErrorReason.new
        data.error_code = map['ErrorCode']
        data.error_message = map['ErrorMessage']
        return data
      end
    end

    class QuotaPeriod
      def self.parse(map)
        data = Types::QuotaPeriod.new
        data.period_value = map['PeriodValue']
        data.period_unit = map['PeriodUnit']
        return data
      end
    end

    class MetricInfo
      def self.parse(map)
        data = Types::MetricInfo.new
        data.metric_namespace = map['MetricNamespace']
        data.metric_name = map['MetricName']
        data.metric_dimensions = (Parsers::MetricDimensionsMapDefinition.parse(map['MetricDimensions']) unless map['MetricDimensions'].nil?)
        data.metric_statistic_recommendation = map['MetricStatisticRecommendation']
        return data
      end
    end

    class MetricDimensionsMapDefinition
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetAssociationForServiceQuotaTemplate
    class GetAssociationForServiceQuotaTemplate
      def self.parse(http_resp)
        data = Types::GetAssociationForServiceQuotaTemplateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.service_quota_template_association_status = map['ServiceQuotaTemplateAssociationStatus']
        data
      end
    end

    # Operation Parser for GetRequestedServiceQuotaChange
    class GetRequestedServiceQuotaChange
      def self.parse(http_resp)
        data = Types::GetRequestedServiceQuotaChangeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.requested_quota = (Parsers::RequestedServiceQuotaChange.parse(map['RequestedQuota']) unless map['RequestedQuota'].nil?)
        data
      end
    end

    class RequestedServiceQuotaChange
      def self.parse(map)
        data = Types::RequestedServiceQuotaChange.new
        data.id = map['Id']
        data.case_id = map['CaseId']
        data.service_code = map['ServiceCode']
        data.service_name = map['ServiceName']
        data.quota_code = map['QuotaCode']
        data.quota_name = map['QuotaName']
        data.desired_value = Hearth::NumberHelper.deserialize(map['DesiredValue'])
        data.status = map['Status']
        data.created = Time.at(map['Created'].to_i) if map['Created']
        data.last_updated = Time.at(map['LastUpdated'].to_i) if map['LastUpdated']
        data.requester = map['Requester']
        data.quota_arn = map['QuotaArn']
        data.global_quota = map['GlobalQuota']
        data.unit = map['Unit']
        return data
      end
    end

    # Operation Parser for GetServiceQuota
    class GetServiceQuota
      def self.parse(http_resp)
        data = Types::GetServiceQuotaOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.quota = (Parsers::ServiceQuota.parse(map['Quota']) unless map['Quota'].nil?)
        data
      end
    end

    # Operation Parser for GetServiceQuotaIncreaseRequestFromTemplate
    class GetServiceQuotaIncreaseRequestFromTemplate
      def self.parse(http_resp)
        data = Types::GetServiceQuotaIncreaseRequestFromTemplateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.service_quota_increase_request_in_template = (Parsers::ServiceQuotaIncreaseRequestInTemplate.parse(map['ServiceQuotaIncreaseRequestInTemplate']) unless map['ServiceQuotaIncreaseRequestInTemplate'].nil?)
        data
      end
    end

    class ServiceQuotaIncreaseRequestInTemplate
      def self.parse(map)
        data = Types::ServiceQuotaIncreaseRequestInTemplate.new
        data.service_code = map['ServiceCode']
        data.service_name = map['ServiceName']
        data.quota_code = map['QuotaCode']
        data.quota_name = map['QuotaName']
        data.desired_value = Hearth::NumberHelper.deserialize(map['DesiredValue'])
        data.aws_region = map['AwsRegion']
        data.unit = map['Unit']
        data.global_quota = map['GlobalQuota']
        return data
      end
    end

    # Operation Parser for ListAWSDefaultServiceQuotas
    class ListAWSDefaultServiceQuotas
      def self.parse(http_resp)
        data = Types::ListAWSDefaultServiceQuotasOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.quotas = (Parsers::ServiceQuotaListDefinition.parse(map['Quotas']) unless map['Quotas'].nil?)
        data
      end
    end

    class ServiceQuotaListDefinition
      def self.parse(list)
        list.map do |value|
          Parsers::ServiceQuota.parse(value) unless value.nil?
        end
      end
    end

    # Error Parser for InvalidPaginationTokenException
    class InvalidPaginationTokenException
      def self.parse(http_resp)
        data = Types::InvalidPaginationTokenException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for ListRequestedServiceQuotaChangeHistory
    class ListRequestedServiceQuotaChangeHistory
      def self.parse(http_resp)
        data = Types::ListRequestedServiceQuotaChangeHistoryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.requested_quotas = (Parsers::RequestedServiceQuotaChangeHistoryListDefinition.parse(map['RequestedQuotas']) unless map['RequestedQuotas'].nil?)
        data
      end
    end

    class RequestedServiceQuotaChangeHistoryListDefinition
      def self.parse(list)
        list.map do |value|
          Parsers::RequestedServiceQuotaChange.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListRequestedServiceQuotaChangeHistoryByQuota
    class ListRequestedServiceQuotaChangeHistoryByQuota
      def self.parse(http_resp)
        data = Types::ListRequestedServiceQuotaChangeHistoryByQuotaOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.requested_quotas = (Parsers::RequestedServiceQuotaChangeHistoryListDefinition.parse(map['RequestedQuotas']) unless map['RequestedQuotas'].nil?)
        data
      end
    end

    # Operation Parser for ListServiceQuotaIncreaseRequestsInTemplate
    class ListServiceQuotaIncreaseRequestsInTemplate
      def self.parse(http_resp)
        data = Types::ListServiceQuotaIncreaseRequestsInTemplateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.service_quota_increase_request_in_template_list = (Parsers::ServiceQuotaIncreaseRequestInTemplateList.parse(map['ServiceQuotaIncreaseRequestInTemplateList']) unless map['ServiceQuotaIncreaseRequestInTemplateList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ServiceQuotaIncreaseRequestInTemplateList
      def self.parse(list)
        list.map do |value|
          Parsers::ServiceQuotaIncreaseRequestInTemplate.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListServiceQuotas
    class ListServiceQuotas
      def self.parse(http_resp)
        data = Types::ListServiceQuotasOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.quotas = (Parsers::ServiceQuotaListDefinition.parse(map['Quotas']) unless map['Quotas'].nil?)
        data
      end
    end

    # Operation Parser for ListServices
    class ListServices
      def self.parse(http_resp)
        data = Types::ListServicesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.services = (Parsers::ServiceInfoListDefinition.parse(map['Services']) unless map['Services'].nil?)
        data
      end
    end

    class ServiceInfoListDefinition
      def self.parse(list)
        list.map do |value|
          Parsers::ServiceInfo.parse(value) unless value.nil?
        end
      end
    end

    class ServiceInfo
      def self.parse(map)
        data = Types::ServiceInfo.new
        data.service_code = map['ServiceCode']
        data.service_name = map['ServiceName']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tags = (Parsers::OutputTags.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    class OutputTags
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

    # Operation Parser for PutServiceQuotaIncreaseRequestIntoTemplate
    class PutServiceQuotaIncreaseRequestIntoTemplate
      def self.parse(http_resp)
        data = Types::PutServiceQuotaIncreaseRequestIntoTemplateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.service_quota_increase_request_in_template = (Parsers::ServiceQuotaIncreaseRequestInTemplate.parse(map['ServiceQuotaIncreaseRequestInTemplate']) unless map['ServiceQuotaIncreaseRequestInTemplate'].nil?)
        data
      end
    end

    # Error Parser for QuotaExceededException
    class QuotaExceededException
      def self.parse(http_resp)
        data = Types::QuotaExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for RequestServiceQuotaIncrease
    class RequestServiceQuotaIncrease
      def self.parse(http_resp)
        data = Types::RequestServiceQuotaIncreaseOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.requested_quota = (Parsers::RequestedServiceQuotaChange.parse(map['RequestedQuota']) unless map['RequestedQuota'].nil?)
        data
      end
    end

    # Error Parser for ResourceAlreadyExistsException
    class ResourceAlreadyExistsException
      def self.parse(http_resp)
        data = Types::ResourceAlreadyExistsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
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

    # Error Parser for TooManyTagsException
    class TooManyTagsException
      def self.parse(http_resp)
        data = Types::TooManyTagsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for TagPolicyViolationException
    class TagPolicyViolationException
      def self.parse(http_resp)
        data = Types::TagPolicyViolationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
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
  end
end
