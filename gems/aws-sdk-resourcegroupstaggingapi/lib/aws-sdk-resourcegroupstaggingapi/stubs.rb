# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::ResourceGroupsTaggingAPI
  module Stubs

    # Operation Stubber for DescribeReportCreation
    class DescribeReportCreation
      def self.default(visited=[])
        {
          status: 'status',
          s3_location: 's3_location',
          start_date: 'start_date',
          error_message: 'error_message',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['S3Location'] = stub[:s3_location] unless stub[:s3_location].nil?
        data['StartDate'] = stub[:start_date] unless stub[:start_date].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetComplianceSummary
    class GetComplianceSummary
      def self.default(visited=[])
        {
          summary_list: SummaryList.default(visited),
          pagination_token: 'pagination_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SummaryList'] = SummaryList.stub(stub[:summary_list]) unless stub[:summary_list].nil?
        data['PaginationToken'] = stub[:pagination_token] unless stub[:pagination_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for SummaryList
    class SummaryList
      def self.default(visited=[])
        return nil if visited.include?('SummaryList')
        visited = visited + ['SummaryList']
        [
          Summary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Summary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Summary
    class Summary
      def self.default(visited=[])
        return nil if visited.include?('Summary')
        visited = visited + ['Summary']
        {
          last_updated: 'last_updated',
          target_id: 'target_id',
          target_id_type: 'target_id_type',
          region: 'region',
          resource_type: 'resource_type',
          non_compliant_resources: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Summary.new
        data = {}
        data['LastUpdated'] = stub[:last_updated] unless stub[:last_updated].nil?
        data['TargetId'] = stub[:target_id] unless stub[:target_id].nil?
        data['TargetIdType'] = stub[:target_id_type] unless stub[:target_id_type].nil?
        data['Region'] = stub[:region] unless stub[:region].nil?
        data['ResourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['NonCompliantResources'] = stub[:non_compliant_resources] unless stub[:non_compliant_resources].nil?
        data
      end
    end

    # Operation Stubber for GetResources
    class GetResources
      def self.default(visited=[])
        {
          pagination_token: 'pagination_token',
          resource_tag_mapping_list: ResourceTagMappingList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PaginationToken'] = stub[:pagination_token] unless stub[:pagination_token].nil?
        data['ResourceTagMappingList'] = ResourceTagMappingList.stub(stub[:resource_tag_mapping_list]) unless stub[:resource_tag_mapping_list].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ResourceTagMappingList
    class ResourceTagMappingList
      def self.default(visited=[])
        return nil if visited.include?('ResourceTagMappingList')
        visited = visited + ['ResourceTagMappingList']
        [
          ResourceTagMapping.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ResourceTagMapping.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ResourceTagMapping
    class ResourceTagMapping
      def self.default(visited=[])
        return nil if visited.include?('ResourceTagMapping')
        visited = visited + ['ResourceTagMapping']
        {
          resource_arn: 'resource_arn',
          tags: TagList.default(visited),
          compliance_details: ComplianceDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceTagMapping.new
        data = {}
        data['ResourceARN'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['Tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['ComplianceDetails'] = ComplianceDetails.stub(stub[:compliance_details]) unless stub[:compliance_details].nil?
        data
      end
    end

    # Structure Stubber for ComplianceDetails
    class ComplianceDetails
      def self.default(visited=[])
        return nil if visited.include?('ComplianceDetails')
        visited = visited + ['ComplianceDetails']
        {
          noncompliant_keys: TagKeyList.default(visited),
          keys_with_noncompliant_values: TagKeyList.default(visited),
          compliance_status: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::ComplianceDetails.new
        data = {}
        data['NoncompliantKeys'] = TagKeyList.stub(stub[:noncompliant_keys]) unless stub[:noncompliant_keys].nil?
        data['KeysWithNoncompliantValues'] = TagKeyList.stub(stub[:keys_with_noncompliant_values]) unless stub[:keys_with_noncompliant_values].nil?
        data['ComplianceStatus'] = stub[:compliance_status] unless stub[:compliance_status].nil?
        data
      end
    end

    # List Stubber for TagKeyList
    class TagKeyList
      def self.default(visited=[])
        return nil if visited.include?('TagKeyList')
        visited = visited + ['TagKeyList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
        [
          Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Tag.stub(element) unless element.nil?
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

    # Operation Stubber for GetTagKeys
    class GetTagKeys
      def self.default(visited=[])
        {
          pagination_token: 'pagination_token',
          tag_keys: TagKeyList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PaginationToken'] = stub[:pagination_token] unless stub[:pagination_token].nil?
        data['TagKeys'] = TagKeyList.stub(stub[:tag_keys]) unless stub[:tag_keys].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetTagValues
    class GetTagValues
      def self.default(visited=[])
        {
          pagination_token: 'pagination_token',
          tag_values: TagValuesOutputList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PaginationToken'] = stub[:pagination_token] unless stub[:pagination_token].nil?
        data['TagValues'] = TagValuesOutputList.stub(stub[:tag_values]) unless stub[:tag_values].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TagValuesOutputList
    class TagValuesOutputList
      def self.default(visited=[])
        return nil if visited.include?('TagValuesOutputList')
        visited = visited + ['TagValuesOutputList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for StartReportCreation
    class StartReportCreation
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for TagResources
    class TagResources
      def self.default(visited=[])
        {
          failed_resources_map: FailedResourcesMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FailedResourcesMap'] = FailedResourcesMap.stub(stub[:failed_resources_map]) unless stub[:failed_resources_map].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Map Stubber for FailedResourcesMap
    class FailedResourcesMap
      def self.default(visited=[])
        return nil if visited.include?('FailedResourcesMap')
        visited = visited + ['FailedResourcesMap']
        {
          test_key: FailureInfo.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = FailureInfo.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for FailureInfo
    class FailureInfo
      def self.default(visited=[])
        return nil if visited.include?('FailureInfo')
        visited = visited + ['FailureInfo']
        {
          status_code: 1,
          error_code: 'error_code',
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::FailureInfo.new
        data = {}
        data['StatusCode'] = stub[:status_code] unless stub[:status_code].nil?
        data['ErrorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # Operation Stubber for UntagResources
    class UntagResources
      def self.default(visited=[])
        {
          failed_resources_map: FailedResourcesMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FailedResourcesMap'] = FailedResourcesMap.stub(stub[:failed_resources_map]) unless stub[:failed_resources_map].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
