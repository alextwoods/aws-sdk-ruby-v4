# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ServiceQuotas
  module Stubs

    # Operation Stubber for AssociateServiceQuotaTemplate
    class AssociateServiceQuotaTemplate
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteServiceQuotaIncreaseRequestFromTemplate
    class DeleteServiceQuotaIncreaseRequestFromTemplate
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisassociateServiceQuotaTemplate
    class DisassociateServiceQuotaTemplate
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetAWSDefaultServiceQuota
    class GetAWSDefaultServiceQuota
      def self.default(visited=[])
        {
          quota: Stubs::ServiceQuota.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Quota'] = Stubs::ServiceQuota.stub(stub[:quota]) unless stub[:quota].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ServiceQuota
    class ServiceQuota
      def self.default(visited=[])
        return nil if visited.include?('ServiceQuota')
        visited = visited + ['ServiceQuota']
        {
          service_code: 'service_code',
          service_name: 'service_name',
          quota_arn: 'quota_arn',
          quota_code: 'quota_code',
          quota_name: 'quota_name',
          value: 1.0,
          unit: 'unit',
          adjustable: false,
          global_quota: false,
          usage_metric: Stubs::MetricInfo.default(visited),
          period: Stubs::QuotaPeriod.default(visited),
          error_reason: Stubs::ErrorReason.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ServiceQuota.new
        data = {}
        data['ServiceCode'] = stub[:service_code] unless stub[:service_code].nil?
        data['ServiceName'] = stub[:service_name] unless stub[:service_name].nil?
        data['QuotaArn'] = stub[:quota_arn] unless stub[:quota_arn].nil?
        data['QuotaCode'] = stub[:quota_code] unless stub[:quota_code].nil?
        data['QuotaName'] = stub[:quota_name] unless stub[:quota_name].nil?
        data['Value'] = Hearth::NumberHelper.serialize(stub[:value])
        data['Unit'] = stub[:unit] unless stub[:unit].nil?
        data['Adjustable'] = stub[:adjustable] unless stub[:adjustable].nil?
        data['GlobalQuota'] = stub[:global_quota] unless stub[:global_quota].nil?
        data['UsageMetric'] = Stubs::MetricInfo.stub(stub[:usage_metric]) unless stub[:usage_metric].nil?
        data['Period'] = Stubs::QuotaPeriod.stub(stub[:period]) unless stub[:period].nil?
        data['ErrorReason'] = Stubs::ErrorReason.stub(stub[:error_reason]) unless stub[:error_reason].nil?
        data
      end
    end

    # Structure Stubber for ErrorReason
    class ErrorReason
      def self.default(visited=[])
        return nil if visited.include?('ErrorReason')
        visited = visited + ['ErrorReason']
        {
          error_code: 'error_code',
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::ErrorReason.new
        data = {}
        data['ErrorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # Structure Stubber for QuotaPeriod
    class QuotaPeriod
      def self.default(visited=[])
        return nil if visited.include?('QuotaPeriod')
        visited = visited + ['QuotaPeriod']
        {
          period_value: 1,
          period_unit: 'period_unit',
        }
      end

      def self.stub(stub)
        stub ||= Types::QuotaPeriod.new
        data = {}
        data['PeriodValue'] = stub[:period_value] unless stub[:period_value].nil?
        data['PeriodUnit'] = stub[:period_unit] unless stub[:period_unit].nil?
        data
      end
    end

    # Structure Stubber for MetricInfo
    class MetricInfo
      def self.default(visited=[])
        return nil if visited.include?('MetricInfo')
        visited = visited + ['MetricInfo']
        {
          metric_namespace: 'metric_namespace',
          metric_name: 'metric_name',
          metric_dimensions: Stubs::MetricDimensionsMapDefinition.default(visited),
          metric_statistic_recommendation: 'metric_statistic_recommendation',
        }
      end

      def self.stub(stub)
        stub ||= Types::MetricInfo.new
        data = {}
        data['MetricNamespace'] = stub[:metric_namespace] unless stub[:metric_namespace].nil?
        data['MetricName'] = stub[:metric_name] unless stub[:metric_name].nil?
        data['MetricDimensions'] = Stubs::MetricDimensionsMapDefinition.stub(stub[:metric_dimensions]) unless stub[:metric_dimensions].nil?
        data['MetricStatisticRecommendation'] = stub[:metric_statistic_recommendation] unless stub[:metric_statistic_recommendation].nil?
        data
      end
    end

    # Map Stubber for MetricDimensionsMapDefinition
    class MetricDimensionsMapDefinition
      def self.default(visited=[])
        return nil if visited.include?('MetricDimensionsMapDefinition')
        visited = visited + ['MetricDimensionsMapDefinition']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for GetAssociationForServiceQuotaTemplate
    class GetAssociationForServiceQuotaTemplate
      def self.default(visited=[])
        {
          service_quota_template_association_status: 'service_quota_template_association_status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ServiceQuotaTemplateAssociationStatus'] = stub[:service_quota_template_association_status] unless stub[:service_quota_template_association_status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetRequestedServiceQuotaChange
    class GetRequestedServiceQuotaChange
      def self.default(visited=[])
        {
          requested_quota: Stubs::RequestedServiceQuotaChange.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RequestedQuota'] = Stubs::RequestedServiceQuotaChange.stub(stub[:requested_quota]) unless stub[:requested_quota].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for RequestedServiceQuotaChange
    class RequestedServiceQuotaChange
      def self.default(visited=[])
        return nil if visited.include?('RequestedServiceQuotaChange')
        visited = visited + ['RequestedServiceQuotaChange']
        {
          id: 'id',
          case_id: 'case_id',
          service_code: 'service_code',
          service_name: 'service_name',
          quota_code: 'quota_code',
          quota_name: 'quota_name',
          desired_value: 1.0,
          status: 'status',
          created: Time.now,
          last_updated: Time.now,
          requester: 'requester',
          quota_arn: 'quota_arn',
          global_quota: false,
          unit: 'unit',
        }
      end

      def self.stub(stub)
        stub ||= Types::RequestedServiceQuotaChange.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['CaseId'] = stub[:case_id] unless stub[:case_id].nil?
        data['ServiceCode'] = stub[:service_code] unless stub[:service_code].nil?
        data['ServiceName'] = stub[:service_name] unless stub[:service_name].nil?
        data['QuotaCode'] = stub[:quota_code] unless stub[:quota_code].nil?
        data['QuotaName'] = stub[:quota_name] unless stub[:quota_name].nil?
        data['DesiredValue'] = Hearth::NumberHelper.serialize(stub[:desired_value])
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Created'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created]).to_i unless stub[:created].nil?
        data['LastUpdated'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated]).to_i unless stub[:last_updated].nil?
        data['Requester'] = stub[:requester] unless stub[:requester].nil?
        data['QuotaArn'] = stub[:quota_arn] unless stub[:quota_arn].nil?
        data['GlobalQuota'] = stub[:global_quota] unless stub[:global_quota].nil?
        data['Unit'] = stub[:unit] unless stub[:unit].nil?
        data
      end
    end

    # Operation Stubber for GetServiceQuota
    class GetServiceQuota
      def self.default(visited=[])
        {
          quota: Stubs::ServiceQuota.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Quota'] = Stubs::ServiceQuota.stub(stub[:quota]) unless stub[:quota].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetServiceQuotaIncreaseRequestFromTemplate
    class GetServiceQuotaIncreaseRequestFromTemplate
      def self.default(visited=[])
        {
          service_quota_increase_request_in_template: Stubs::ServiceQuotaIncreaseRequestInTemplate.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ServiceQuotaIncreaseRequestInTemplate'] = Stubs::ServiceQuotaIncreaseRequestInTemplate.stub(stub[:service_quota_increase_request_in_template]) unless stub[:service_quota_increase_request_in_template].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ServiceQuotaIncreaseRequestInTemplate
    class ServiceQuotaIncreaseRequestInTemplate
      def self.default(visited=[])
        return nil if visited.include?('ServiceQuotaIncreaseRequestInTemplate')
        visited = visited + ['ServiceQuotaIncreaseRequestInTemplate']
        {
          service_code: 'service_code',
          service_name: 'service_name',
          quota_code: 'quota_code',
          quota_name: 'quota_name',
          desired_value: 1.0,
          aws_region: 'aws_region',
          unit: 'unit',
          global_quota: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::ServiceQuotaIncreaseRequestInTemplate.new
        data = {}
        data['ServiceCode'] = stub[:service_code] unless stub[:service_code].nil?
        data['ServiceName'] = stub[:service_name] unless stub[:service_name].nil?
        data['QuotaCode'] = stub[:quota_code] unless stub[:quota_code].nil?
        data['QuotaName'] = stub[:quota_name] unless stub[:quota_name].nil?
        data['DesiredValue'] = Hearth::NumberHelper.serialize(stub[:desired_value])
        data['AwsRegion'] = stub[:aws_region] unless stub[:aws_region].nil?
        data['Unit'] = stub[:unit] unless stub[:unit].nil?
        data['GlobalQuota'] = stub[:global_quota] unless stub[:global_quota].nil?
        data
      end
    end

    # Operation Stubber for ListAWSDefaultServiceQuotas
    class ListAWSDefaultServiceQuotas
      def self.default(visited=[])
        {
          next_token: 'next_token',
          quotas: Stubs::ServiceQuotaListDefinition.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Quotas'] = Stubs::ServiceQuotaListDefinition.stub(stub[:quotas]) unless stub[:quotas].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ServiceQuotaListDefinition
    class ServiceQuotaListDefinition
      def self.default(visited=[])
        return nil if visited.include?('ServiceQuotaListDefinition')
        visited = visited + ['ServiceQuotaListDefinition']
        [
          Stubs::ServiceQuota.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ServiceQuota.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListRequestedServiceQuotaChangeHistory
    class ListRequestedServiceQuotaChangeHistory
      def self.default(visited=[])
        {
          next_token: 'next_token',
          requested_quotas: Stubs::RequestedServiceQuotaChangeHistoryListDefinition.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['RequestedQuotas'] = Stubs::RequestedServiceQuotaChangeHistoryListDefinition.stub(stub[:requested_quotas]) unless stub[:requested_quotas].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for RequestedServiceQuotaChangeHistoryListDefinition
    class RequestedServiceQuotaChangeHistoryListDefinition
      def self.default(visited=[])
        return nil if visited.include?('RequestedServiceQuotaChangeHistoryListDefinition')
        visited = visited + ['RequestedServiceQuotaChangeHistoryListDefinition']
        [
          Stubs::RequestedServiceQuotaChange.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RequestedServiceQuotaChange.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListRequestedServiceQuotaChangeHistoryByQuota
    class ListRequestedServiceQuotaChangeHistoryByQuota
      def self.default(visited=[])
        {
          next_token: 'next_token',
          requested_quotas: Stubs::RequestedServiceQuotaChangeHistoryListDefinition.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['RequestedQuotas'] = Stubs::RequestedServiceQuotaChangeHistoryListDefinition.stub(stub[:requested_quotas]) unless stub[:requested_quotas].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListServiceQuotaIncreaseRequestsInTemplate
    class ListServiceQuotaIncreaseRequestsInTemplate
      def self.default(visited=[])
        {
          service_quota_increase_request_in_template_list: Stubs::ServiceQuotaIncreaseRequestInTemplateList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ServiceQuotaIncreaseRequestInTemplateList'] = Stubs::ServiceQuotaIncreaseRequestInTemplateList.stub(stub[:service_quota_increase_request_in_template_list]) unless stub[:service_quota_increase_request_in_template_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ServiceQuotaIncreaseRequestInTemplateList
    class ServiceQuotaIncreaseRequestInTemplateList
      def self.default(visited=[])
        return nil if visited.include?('ServiceQuotaIncreaseRequestInTemplateList')
        visited = visited + ['ServiceQuotaIncreaseRequestInTemplateList']
        [
          Stubs::ServiceQuotaIncreaseRequestInTemplate.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ServiceQuotaIncreaseRequestInTemplate.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListServiceQuotas
    class ListServiceQuotas
      def self.default(visited=[])
        {
          next_token: 'next_token',
          quotas: Stubs::ServiceQuotaListDefinition.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Quotas'] = Stubs::ServiceQuotaListDefinition.stub(stub[:quotas]) unless stub[:quotas].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListServices
    class ListServices
      def self.default(visited=[])
        {
          next_token: 'next_token',
          services: Stubs::ServiceInfoListDefinition.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Services'] = Stubs::ServiceInfoListDefinition.stub(stub[:services]) unless stub[:services].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ServiceInfoListDefinition
    class ServiceInfoListDefinition
      def self.default(visited=[])
        return nil if visited.include?('ServiceInfoListDefinition')
        visited = visited + ['ServiceInfoListDefinition']
        [
          Stubs::ServiceInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ServiceInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ServiceInfo
    class ServiceInfo
      def self.default(visited=[])
        return nil if visited.include?('ServiceInfo')
        visited = visited + ['ServiceInfo']
        {
          service_code: 'service_code',
          service_name: 'service_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::ServiceInfo.new
        data = {}
        data['ServiceCode'] = stub[:service_code] unless stub[:service_code].nil?
        data['ServiceName'] = stub[:service_name] unless stub[:service_name].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: Stubs::OutputTags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Tags'] = Stubs::OutputTags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for OutputTags
    class OutputTags
      def self.default(visited=[])
        return nil if visited.include?('OutputTags')
        visited = visited + ['OutputTags']
        [
          Stubs::Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Tag.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Tag
    class Tag
      def self.default(visited=[])
        return nil if visited.include?('Tag')
        visited = visited + ['Tag']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Tag.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for PutServiceQuotaIncreaseRequestIntoTemplate
    class PutServiceQuotaIncreaseRequestIntoTemplate
      def self.default(visited=[])
        {
          service_quota_increase_request_in_template: Stubs::ServiceQuotaIncreaseRequestInTemplate.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ServiceQuotaIncreaseRequestInTemplate'] = Stubs::ServiceQuotaIncreaseRequestInTemplate.stub(stub[:service_quota_increase_request_in_template]) unless stub[:service_quota_increase_request_in_template].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RequestServiceQuotaIncrease
    class RequestServiceQuotaIncrease
      def self.default(visited=[])
        {
          requested_quota: Stubs::RequestedServiceQuotaChange.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RequestedQuota'] = Stubs::RequestedServiceQuotaChange.stub(stub[:requested_quota]) unless stub[:requested_quota].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
