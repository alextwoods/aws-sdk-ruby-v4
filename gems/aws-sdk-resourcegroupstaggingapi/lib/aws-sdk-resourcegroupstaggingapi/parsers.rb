# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ResourceGroupsTaggingAPI
  module Parsers

    # Operation Parser for DescribeReportCreation
    class DescribeReportCreation
      def self.parse(http_resp)
        data = Types::DescribeReportCreationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.status = map['Status']
        data.s3_location = map['S3Location']
        data.start_date = map['StartDate']
        data.error_message = map['ErrorMessage']
        data
      end
    end

    # Error Parser for ConstraintViolationException
    class ConstraintViolationException
      def self.parse(http_resp)
        data = Types::ConstraintViolationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InternalServiceException
    class InternalServiceException
      def self.parse(http_resp)
        data = Types::InternalServiceException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidParameterException
    class InvalidParameterException
      def self.parse(http_resp)
        data = Types::InvalidParameterException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ThrottledException
    class ThrottledException
      def self.parse(http_resp)
        data = Types::ThrottledException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for GetComplianceSummary
    class GetComplianceSummary
      def self.parse(http_resp)
        data = Types::GetComplianceSummaryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.summary_list = (Parsers::SummaryList.parse(map['SummaryList']) unless map['SummaryList'].nil?)
        data.pagination_token = map['PaginationToken']
        data
      end
    end

    class SummaryList
      def self.parse(list)
        list.map do |value|
          Parsers::Summary.parse(value) unless value.nil?
        end
      end
    end

    class Summary
      def self.parse(map)
        data = Types::Summary.new
        data.last_updated = map['LastUpdated']
        data.target_id = map['TargetId']
        data.target_id_type = map['TargetIdType']
        data.region = map['Region']
        data.resource_type = map['ResourceType']
        data.non_compliant_resources = map['NonCompliantResources']
        return data
      end
    end

    # Operation Parser for GetResources
    class GetResources
      def self.parse(http_resp)
        data = Types::GetResourcesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.pagination_token = map['PaginationToken']
        data.resource_tag_mapping_list = (Parsers::ResourceTagMappingList.parse(map['ResourceTagMappingList']) unless map['ResourceTagMappingList'].nil?)
        data
      end
    end

    class ResourceTagMappingList
      def self.parse(list)
        list.map do |value|
          Parsers::ResourceTagMapping.parse(value) unless value.nil?
        end
      end
    end

    class ResourceTagMapping
      def self.parse(map)
        data = Types::ResourceTagMapping.new
        data.resource_arn = map['ResourceARN']
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data.compliance_details = (Parsers::ComplianceDetails.parse(map['ComplianceDetails']) unless map['ComplianceDetails'].nil?)
        return data
      end
    end

    class ComplianceDetails
      def self.parse(map)
        data = Types::ComplianceDetails.new
        data.noncompliant_keys = (Parsers::TagKeyList.parse(map['NoncompliantKeys']) unless map['NoncompliantKeys'].nil?)
        data.keys_with_noncompliant_values = (Parsers::TagKeyList.parse(map['KeysWithNoncompliantValues']) unless map['KeysWithNoncompliantValues'].nil?)
        data.compliance_status = map['ComplianceStatus']
        return data
      end
    end

    class TagKeyList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class TagList
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

    # Error Parser for PaginationTokenExpiredException
    class PaginationTokenExpiredException
      def self.parse(http_resp)
        data = Types::PaginationTokenExpiredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for GetTagKeys
    class GetTagKeys
      def self.parse(http_resp)
        data = Types::GetTagKeysOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.pagination_token = map['PaginationToken']
        data.tag_keys = (Parsers::TagKeyList.parse(map['TagKeys']) unless map['TagKeys'].nil?)
        data
      end
    end

    # Operation Parser for GetTagValues
    class GetTagValues
      def self.parse(http_resp)
        data = Types::GetTagValuesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.pagination_token = map['PaginationToken']
        data.tag_values = (Parsers::TagValuesOutputList.parse(map['TagValues']) unless map['TagValues'].nil?)
        data
      end
    end

    class TagValuesOutputList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for StartReportCreation
    class StartReportCreation
      def self.parse(http_resp)
        data = Types::StartReportCreationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for ConcurrentModificationException
    class ConcurrentModificationException
      def self.parse(http_resp)
        data = Types::ConcurrentModificationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for TagResources
    class TagResources
      def self.parse(http_resp)
        data = Types::TagResourcesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.failed_resources_map = (Parsers::FailedResourcesMap.parse(map['FailedResourcesMap']) unless map['FailedResourcesMap'].nil?)
        data
      end
    end

    class FailedResourcesMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::FailureInfo.parse(value) unless value.nil?
        end
        data
      end
    end

    class FailureInfo
      def self.parse(map)
        data = Types::FailureInfo.new
        data.status_code = map['StatusCode']
        data.error_code = map['ErrorCode']
        data.error_message = map['ErrorMessage']
        return data
      end
    end

    # Operation Parser for UntagResources
    class UntagResources
      def self.parse(http_resp)
        data = Types::UntagResourcesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.failed_resources_map = (Parsers::FailedResourcesMap.parse(map['FailedResourcesMap']) unless map['FailedResourcesMap'].nil?)
        data
      end
    end
  end
end
