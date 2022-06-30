# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::ResourceGroupsTaggingAPI
  module Builders

    # Operation Builder for DescribeReportCreation
    class DescribeReportCreation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ResourceGroupsTaggingAPI_20170126.DescribeReportCreation'
        data = {}
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetComplianceSummary
    class GetComplianceSummary
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ResourceGroupsTaggingAPI_20170126.GetComplianceSummary'
        data = {}
        data['TargetIdFilters'] = Builders::TargetIdFilterList.build(input[:target_id_filters]) unless input[:target_id_filters].nil?
        data['RegionFilters'] = Builders::RegionFilterList.build(input[:region_filters]) unless input[:region_filters].nil?
        data['ResourceTypeFilters'] = Builders::ResourceTypeFilterList.build(input[:resource_type_filters]) unless input[:resource_type_filters].nil?
        data['TagKeyFilters'] = Builders::TagKeyFilterList.build(input[:tag_key_filters]) unless input[:tag_key_filters].nil?
        data['GroupBy'] = Builders::GroupBy.build(input[:group_by]) unless input[:group_by].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['PaginationToken'] = input[:pagination_token] unless input[:pagination_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for GroupBy
    class GroupBy
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for TagKeyFilterList
    class TagKeyFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for ResourceTypeFilterList
    class ResourceTypeFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for RegionFilterList
    class RegionFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for TargetIdFilterList
    class TargetIdFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for GetResources
    class GetResources
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ResourceGroupsTaggingAPI_20170126.GetResources'
        data = {}
        data['PaginationToken'] = input[:pagination_token] unless input[:pagination_token].nil?
        data['TagFilters'] = Builders::TagFilterList.build(input[:tag_filters]) unless input[:tag_filters].nil?
        data['ResourcesPerPage'] = input[:resources_per_page] unless input[:resources_per_page].nil?
        data['TagsPerPage'] = input[:tags_per_page] unless input[:tags_per_page].nil?
        data['ResourceTypeFilters'] = Builders::ResourceTypeFilterList.build(input[:resource_type_filters]) unless input[:resource_type_filters].nil?
        data['IncludeComplianceDetails'] = input[:include_compliance_details] unless input[:include_compliance_details].nil?
        data['ExcludeCompliantResources'] = input[:exclude_compliant_resources] unless input[:exclude_compliant_resources].nil?
        data['ResourceARNList'] = Builders::ResourceARNListForGet.build(input[:resource_arn_list]) unless input[:resource_arn_list].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ResourceARNListForGet
    class ResourceARNListForGet
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for TagFilterList
    class TagFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::TagFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for TagFilter
    class TagFilter
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Values'] = Builders::TagValueList.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # List Builder for TagValueList
    class TagValueList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for GetTagKeys
    class GetTagKeys
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ResourceGroupsTaggingAPI_20170126.GetTagKeys'
        data = {}
        data['PaginationToken'] = input[:pagination_token] unless input[:pagination_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetTagValues
    class GetTagValues
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ResourceGroupsTaggingAPI_20170126.GetTagValues'
        data = {}
        data['PaginationToken'] = input[:pagination_token] unless input[:pagination_token].nil?
        data['Key'] = input[:key] unless input[:key].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartReportCreation
    class StartReportCreation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ResourceGroupsTaggingAPI_20170126.StartReportCreation'
        data = {}
        data['S3Bucket'] = input[:s3_bucket] unless input[:s3_bucket].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResources
    class TagResources
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ResourceGroupsTaggingAPI_20170126.TagResources'
        data = {}
        data['ResourceARNList'] = Builders::ResourceARNListForTagUntag.build(input[:resource_arn_list]) unless input[:resource_arn_list].nil?
        data['Tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for TagMap
    class TagMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Builder for ResourceARNListForTagUntag
    class ResourceARNListForTagUntag
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UntagResources
    class UntagResources
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ResourceGroupsTaggingAPI_20170126.UntagResources'
        data = {}
        data['ResourceARNList'] = Builders::ResourceARNListForTagUntag.build(input[:resource_arn_list]) unless input[:resource_arn_list].nil?
        data['TagKeys'] = Builders::TagKeyListForUntag.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagKeyListForUntag
    class TagKeyListForUntag
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
