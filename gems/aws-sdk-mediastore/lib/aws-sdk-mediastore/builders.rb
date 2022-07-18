# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MediaStore
  module Builders

    # Operation Builder for CreateContainer
    class CreateContainer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MediaStore_20170901.CreateContainer'
        data = {}
        data['ContainerName'] = input[:container_name] unless input[:container_name].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Tag.build(element) unless element.nil?
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

    # Operation Builder for DeleteContainer
    class DeleteContainer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MediaStore_20170901.DeleteContainer'
        data = {}
        data['ContainerName'] = input[:container_name] unless input[:container_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteContainerPolicy
    class DeleteContainerPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MediaStore_20170901.DeleteContainerPolicy'
        data = {}
        data['ContainerName'] = input[:container_name] unless input[:container_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteCorsPolicy
    class DeleteCorsPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MediaStore_20170901.DeleteCorsPolicy'
        data = {}
        data['ContainerName'] = input[:container_name] unless input[:container_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteLifecyclePolicy
    class DeleteLifecyclePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MediaStore_20170901.DeleteLifecyclePolicy'
        data = {}
        data['ContainerName'] = input[:container_name] unless input[:container_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteMetricPolicy
    class DeleteMetricPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MediaStore_20170901.DeleteMetricPolicy'
        data = {}
        data['ContainerName'] = input[:container_name] unless input[:container_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeContainer
    class DescribeContainer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MediaStore_20170901.DescribeContainer'
        data = {}
        data['ContainerName'] = input[:container_name] unless input[:container_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetContainerPolicy
    class GetContainerPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MediaStore_20170901.GetContainerPolicy'
        data = {}
        data['ContainerName'] = input[:container_name] unless input[:container_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetCorsPolicy
    class GetCorsPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MediaStore_20170901.GetCorsPolicy'
        data = {}
        data['ContainerName'] = input[:container_name] unless input[:container_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetLifecyclePolicy
    class GetLifecyclePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MediaStore_20170901.GetLifecyclePolicy'
        data = {}
        data['ContainerName'] = input[:container_name] unless input[:container_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetMetricPolicy
    class GetMetricPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MediaStore_20170901.GetMetricPolicy'
        data = {}
        data['ContainerName'] = input[:container_name] unless input[:container_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListContainers
    class ListContainers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MediaStore_20170901.ListContainers'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MediaStore_20170901.ListTagsForResource'
        data = {}
        data['Resource'] = input[:resource] unless input[:resource].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutContainerPolicy
    class PutContainerPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MediaStore_20170901.PutContainerPolicy'
        data = {}
        data['ContainerName'] = input[:container_name] unless input[:container_name].nil?
        data['Policy'] = input[:policy] unless input[:policy].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutCorsPolicy
    class PutCorsPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MediaStore_20170901.PutCorsPolicy'
        data = {}
        data['ContainerName'] = input[:container_name] unless input[:container_name].nil?
        data['CorsPolicy'] = Builders::CorsPolicy.build(input[:cors_policy]) unless input[:cors_policy].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for CorsPolicy
    class CorsPolicy
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::CorsRule.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CorsRule
    class CorsRule
      def self.build(input)
        data = {}
        data['AllowedOrigins'] = Builders::AllowedOrigins.build(input[:allowed_origins]) unless input[:allowed_origins].nil?
        data['AllowedMethods'] = Builders::AllowedMethods.build(input[:allowed_methods]) unless input[:allowed_methods].nil?
        data['AllowedHeaders'] = Builders::AllowedHeaders.build(input[:allowed_headers]) unless input[:allowed_headers].nil?
        data['MaxAgeSeconds'] = input[:max_age_seconds] unless input[:max_age_seconds].nil?
        data['ExposeHeaders'] = Builders::ExposeHeaders.build(input[:expose_headers]) unless input[:expose_headers].nil?
        data
      end
    end

    # List Builder for ExposeHeaders
    class ExposeHeaders
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for AllowedHeaders
    class AllowedHeaders
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for AllowedMethods
    class AllowedMethods
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for AllowedOrigins
    class AllowedOrigins
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for PutLifecyclePolicy
    class PutLifecyclePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MediaStore_20170901.PutLifecyclePolicy'
        data = {}
        data['ContainerName'] = input[:container_name] unless input[:container_name].nil?
        data['LifecyclePolicy'] = input[:lifecycle_policy] unless input[:lifecycle_policy].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutMetricPolicy
    class PutMetricPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MediaStore_20170901.PutMetricPolicy'
        data = {}
        data['ContainerName'] = input[:container_name] unless input[:container_name].nil?
        data['MetricPolicy'] = Builders::MetricPolicy.build(input[:metric_policy]) unless input[:metric_policy].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for MetricPolicy
    class MetricPolicy
      def self.build(input)
        data = {}
        data['ContainerLevelMetrics'] = input[:container_level_metrics] unless input[:container_level_metrics].nil?
        data['MetricPolicyRules'] = Builders::MetricPolicyRules.build(input[:metric_policy_rules]) unless input[:metric_policy_rules].nil?
        data
      end
    end

    # List Builder for MetricPolicyRules
    class MetricPolicyRules
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::MetricPolicyRule.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for MetricPolicyRule
    class MetricPolicyRule
      def self.build(input)
        data = {}
        data['ObjectGroup'] = input[:object_group] unless input[:object_group].nil?
        data['ObjectGroupName'] = input[:object_group_name] unless input[:object_group_name].nil?
        data
      end
    end

    # Operation Builder for StartAccessLogging
    class StartAccessLogging
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MediaStore_20170901.StartAccessLogging'
        data = {}
        data['ContainerName'] = input[:container_name] unless input[:container_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopAccessLogging
    class StopAccessLogging
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MediaStore_20170901.StopAccessLogging'
        data = {}
        data['ContainerName'] = input[:container_name] unless input[:container_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MediaStore_20170901.TagResource'
        data = {}
        data['Resource'] = input[:resource] unless input[:resource].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MediaStore_20170901.UntagResource'
        data = {}
        data['Resource'] = input[:resource] unless input[:resource].nil?
        data['TagKeys'] = Builders::TagKeyList.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
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
