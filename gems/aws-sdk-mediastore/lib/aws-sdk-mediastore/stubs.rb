# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MediaStore
  module Stubs

    # Operation Stubber for CreateContainer
    class CreateContainer
      def self.default(visited=[])
        {
          container: Stubs::Container.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Container'] = Stubs::Container.stub(stub[:container]) unless stub[:container].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Container
    class Container
      def self.default(visited=[])
        return nil if visited.include?('Container')
        visited = visited + ['Container']
        {
          endpoint: 'endpoint',
          creation_time: Time.now,
          arn: 'arn',
          name: 'name',
          status: 'status',
          access_logging_enabled: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::Container.new
        data = {}
        data['Endpoint'] = stub[:endpoint] unless stub[:endpoint].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['ARN'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['AccessLoggingEnabled'] = stub[:access_logging_enabled] unless stub[:access_logging_enabled].nil?
        data
      end
    end

    # Operation Stubber for DeleteContainer
    class DeleteContainer
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

    # Operation Stubber for DeleteContainerPolicy
    class DeleteContainerPolicy
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

    # Operation Stubber for DeleteCorsPolicy
    class DeleteCorsPolicy
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

    # Operation Stubber for DeleteLifecyclePolicy
    class DeleteLifecyclePolicy
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

    # Operation Stubber for DeleteMetricPolicy
    class DeleteMetricPolicy
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

    # Operation Stubber for DescribeContainer
    class DescribeContainer
      def self.default(visited=[])
        {
          container: Stubs::Container.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Container'] = Stubs::Container.stub(stub[:container]) unless stub[:container].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetContainerPolicy
    class GetContainerPolicy
      def self.default(visited=[])
        {
          policy: 'policy',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Policy'] = stub[:policy] unless stub[:policy].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetCorsPolicy
    class GetCorsPolicy
      def self.default(visited=[])
        {
          cors_policy: Stubs::CorsPolicy.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CorsPolicy'] = Stubs::CorsPolicy.stub(stub[:cors_policy]) unless stub[:cors_policy].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for CorsPolicy
    class CorsPolicy
      def self.default(visited=[])
        return nil if visited.include?('CorsPolicy')
        visited = visited + ['CorsPolicy']
        [
          Stubs::CorsRule.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::CorsRule.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CorsRule
    class CorsRule
      def self.default(visited=[])
        return nil if visited.include?('CorsRule')
        visited = visited + ['CorsRule']
        {
          allowed_origins: Stubs::AllowedOrigins.default(visited),
          allowed_methods: Stubs::AllowedMethods.default(visited),
          allowed_headers: Stubs::AllowedHeaders.default(visited),
          max_age_seconds: 1,
          expose_headers: Stubs::ExposeHeaders.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CorsRule.new
        data = {}
        data['AllowedOrigins'] = Stubs::AllowedOrigins.stub(stub[:allowed_origins]) unless stub[:allowed_origins].nil?
        data['AllowedMethods'] = Stubs::AllowedMethods.stub(stub[:allowed_methods]) unless stub[:allowed_methods].nil?
        data['AllowedHeaders'] = Stubs::AllowedHeaders.stub(stub[:allowed_headers]) unless stub[:allowed_headers].nil?
        data['MaxAgeSeconds'] = stub[:max_age_seconds] unless stub[:max_age_seconds].nil?
        data['ExposeHeaders'] = Stubs::ExposeHeaders.stub(stub[:expose_headers]) unless stub[:expose_headers].nil?
        data
      end
    end

    # List Stubber for ExposeHeaders
    class ExposeHeaders
      def self.default(visited=[])
        return nil if visited.include?('ExposeHeaders')
        visited = visited + ['ExposeHeaders']
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

    # List Stubber for AllowedHeaders
    class AllowedHeaders
      def self.default(visited=[])
        return nil if visited.include?('AllowedHeaders')
        visited = visited + ['AllowedHeaders']
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

    # List Stubber for AllowedMethods
    class AllowedMethods
      def self.default(visited=[])
        return nil if visited.include?('AllowedMethods')
        visited = visited + ['AllowedMethods']
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

    # List Stubber for AllowedOrigins
    class AllowedOrigins
      def self.default(visited=[])
        return nil if visited.include?('AllowedOrigins')
        visited = visited + ['AllowedOrigins']
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

    # Operation Stubber for GetLifecyclePolicy
    class GetLifecyclePolicy
      def self.default(visited=[])
        {
          lifecycle_policy: 'lifecycle_policy',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['LifecyclePolicy'] = stub[:lifecycle_policy] unless stub[:lifecycle_policy].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetMetricPolicy
    class GetMetricPolicy
      def self.default(visited=[])
        {
          metric_policy: Stubs::MetricPolicy.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['MetricPolicy'] = Stubs::MetricPolicy.stub(stub[:metric_policy]) unless stub[:metric_policy].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for MetricPolicy
    class MetricPolicy
      def self.default(visited=[])
        return nil if visited.include?('MetricPolicy')
        visited = visited + ['MetricPolicy']
        {
          container_level_metrics: 'container_level_metrics',
          metric_policy_rules: Stubs::MetricPolicyRules.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MetricPolicy.new
        data = {}
        data['ContainerLevelMetrics'] = stub[:container_level_metrics] unless stub[:container_level_metrics].nil?
        data['MetricPolicyRules'] = Stubs::MetricPolicyRules.stub(stub[:metric_policy_rules]) unless stub[:metric_policy_rules].nil?
        data
      end
    end

    # List Stubber for MetricPolicyRules
    class MetricPolicyRules
      def self.default(visited=[])
        return nil if visited.include?('MetricPolicyRules')
        visited = visited + ['MetricPolicyRules']
        [
          Stubs::MetricPolicyRule.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::MetricPolicyRule.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MetricPolicyRule
    class MetricPolicyRule
      def self.default(visited=[])
        return nil if visited.include?('MetricPolicyRule')
        visited = visited + ['MetricPolicyRule']
        {
          object_group: 'object_group',
          object_group_name: 'object_group_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::MetricPolicyRule.new
        data = {}
        data['ObjectGroup'] = stub[:object_group] unless stub[:object_group].nil?
        data['ObjectGroupName'] = stub[:object_group_name] unless stub[:object_group_name].nil?
        data
      end
    end

    # Operation Stubber for ListContainers
    class ListContainers
      def self.default(visited=[])
        {
          containers: Stubs::ContainerList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Containers'] = Stubs::ContainerList.stub(stub[:containers]) unless stub[:containers].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ContainerList
    class ContainerList
      def self.default(visited=[])
        return nil if visited.include?('ContainerList')
        visited = visited + ['ContainerList']
        [
          Stubs::Container.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Container.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
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

    # Operation Stubber for PutContainerPolicy
    class PutContainerPolicy
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

    # Operation Stubber for PutCorsPolicy
    class PutCorsPolicy
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

    # Operation Stubber for PutLifecyclePolicy
    class PutLifecyclePolicy
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

    # Operation Stubber for PutMetricPolicy
    class PutMetricPolicy
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

    # Operation Stubber for StartAccessLogging
    class StartAccessLogging
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

    # Operation Stubber for StopAccessLogging
    class StopAccessLogging
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
