# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::ServiceQuotas
  module Builders

    # Operation Builder for AssociateServiceQuotaTemplate
    class AssociateServiceQuotaTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ServiceQuotasV20190624.AssociateServiceQuotaTemplate'
        data = {}
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteServiceQuotaIncreaseRequestFromTemplate
    class DeleteServiceQuotaIncreaseRequestFromTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ServiceQuotasV20190624.DeleteServiceQuotaIncreaseRequestFromTemplate'
        data = {}
        data['ServiceCode'] = input[:service_code] unless input[:service_code].nil?
        data['QuotaCode'] = input[:quota_code] unless input[:quota_code].nil?
        data['AwsRegion'] = input[:aws_region] unless input[:aws_region].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisassociateServiceQuotaTemplate
    class DisassociateServiceQuotaTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ServiceQuotasV20190624.DisassociateServiceQuotaTemplate'
        data = {}
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetAWSDefaultServiceQuota
    class GetAWSDefaultServiceQuota
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ServiceQuotasV20190624.GetAWSDefaultServiceQuota'
        data = {}
        data['ServiceCode'] = input[:service_code] unless input[:service_code].nil?
        data['QuotaCode'] = input[:quota_code] unless input[:quota_code].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetAssociationForServiceQuotaTemplate
    class GetAssociationForServiceQuotaTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ServiceQuotasV20190624.GetAssociationForServiceQuotaTemplate'
        data = {}
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetRequestedServiceQuotaChange
    class GetRequestedServiceQuotaChange
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ServiceQuotasV20190624.GetRequestedServiceQuotaChange'
        data = {}
        data['RequestId'] = input[:request_id] unless input[:request_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetServiceQuota
    class GetServiceQuota
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ServiceQuotasV20190624.GetServiceQuota'
        data = {}
        data['ServiceCode'] = input[:service_code] unless input[:service_code].nil?
        data['QuotaCode'] = input[:quota_code] unless input[:quota_code].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetServiceQuotaIncreaseRequestFromTemplate
    class GetServiceQuotaIncreaseRequestFromTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ServiceQuotasV20190624.GetServiceQuotaIncreaseRequestFromTemplate'
        data = {}
        data['ServiceCode'] = input[:service_code] unless input[:service_code].nil?
        data['QuotaCode'] = input[:quota_code] unless input[:quota_code].nil?
        data['AwsRegion'] = input[:aws_region] unless input[:aws_region].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListAWSDefaultServiceQuotas
    class ListAWSDefaultServiceQuotas
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ServiceQuotasV20190624.ListAWSDefaultServiceQuotas'
        data = {}
        data['ServiceCode'] = input[:service_code] unless input[:service_code].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListRequestedServiceQuotaChangeHistory
    class ListRequestedServiceQuotaChangeHistory
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ServiceQuotasV20190624.ListRequestedServiceQuotaChangeHistory'
        data = {}
        data['ServiceCode'] = input[:service_code] unless input[:service_code].nil?
        data['Status'] = input[:status] unless input[:status].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListRequestedServiceQuotaChangeHistoryByQuota
    class ListRequestedServiceQuotaChangeHistoryByQuota
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ServiceQuotasV20190624.ListRequestedServiceQuotaChangeHistoryByQuota'
        data = {}
        data['ServiceCode'] = input[:service_code] unless input[:service_code].nil?
        data['QuotaCode'] = input[:quota_code] unless input[:quota_code].nil?
        data['Status'] = input[:status] unless input[:status].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListServiceQuotaIncreaseRequestsInTemplate
    class ListServiceQuotaIncreaseRequestsInTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ServiceQuotasV20190624.ListServiceQuotaIncreaseRequestsInTemplate'
        data = {}
        data['ServiceCode'] = input[:service_code] unless input[:service_code].nil?
        data['AwsRegion'] = input[:aws_region] unless input[:aws_region].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListServiceQuotas
    class ListServiceQuotas
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ServiceQuotasV20190624.ListServiceQuotas'
        data = {}
        data['ServiceCode'] = input[:service_code] unless input[:service_code].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListServices
    class ListServices
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ServiceQuotasV20190624.ListServices'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ServiceQuotasV20190624.ListTagsForResource'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutServiceQuotaIncreaseRequestIntoTemplate
    class PutServiceQuotaIncreaseRequestIntoTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ServiceQuotasV20190624.PutServiceQuotaIncreaseRequestIntoTemplate'
        data = {}
        data['QuotaCode'] = input[:quota_code] unless input[:quota_code].nil?
        data['ServiceCode'] = input[:service_code] unless input[:service_code].nil?
        data['AwsRegion'] = input[:aws_region] unless input[:aws_region].nil?
        data['DesiredValue'] = Hearth::NumberHelper.serialize(input[:desired_value]) unless input[:desired_value].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RequestServiceQuotaIncrease
    class RequestServiceQuotaIncrease
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ServiceQuotasV20190624.RequestServiceQuotaIncrease'
        data = {}
        data['ServiceCode'] = input[:service_code] unless input[:service_code].nil?
        data['QuotaCode'] = input[:quota_code] unless input[:quota_code].nil?
        data['DesiredValue'] = Hearth::NumberHelper.serialize(input[:desired_value]) unless input[:desired_value].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ServiceQuotasV20190624.TagResource'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Tags'] = InputTags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for InputTags
    class InputTags
      def self.build(input)
        data = []
        input.each do |element|
          data << Tag.build(element) unless element.nil?
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

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ServiceQuotasV20190624.UntagResource'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['TagKeys'] = InputTagKeys.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for InputTagKeys
    class InputTagKeys
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end
  end
end
