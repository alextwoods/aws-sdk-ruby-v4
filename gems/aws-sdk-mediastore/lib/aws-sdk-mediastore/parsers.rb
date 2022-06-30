# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::MediaStore
  module Parsers

    # Operation Parser for CreateContainer
    class CreateContainer
      def self.parse(http_resp)
        data = Types::CreateContainerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.container = (Parsers::Container.parse(map['Container']) unless map['Container'].nil?)
        data
      end
    end

    class Container
      def self.parse(map)
        data = Types::Container.new
        data.endpoint = map['Endpoint']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.arn = map['ARN']
        data.name = map['Name']
        data.status = map['Status']
        data.access_logging_enabled = map['AccessLoggingEnabled']
        return data
      end
    end

    # Error Parser for ContainerInUseException
    class ContainerInUseException
      def self.parse(http_resp)
        data = Types::ContainerInUseException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InternalServerError
    class InternalServerError
      def self.parse(http_resp)
        data = Types::InternalServerError.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteContainer
    class DeleteContainer
      def self.parse(http_resp)
        data = Types::DeleteContainerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for ContainerNotFoundException
    class ContainerNotFoundException
      def self.parse(http_resp)
        data = Types::ContainerNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteContainerPolicy
    class DeleteContainerPolicy
      def self.parse(http_resp)
        data = Types::DeleteContainerPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for PolicyNotFoundException
    class PolicyNotFoundException
      def self.parse(http_resp)
        data = Types::PolicyNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteCorsPolicy
    class DeleteCorsPolicy
      def self.parse(http_resp)
        data = Types::DeleteCorsPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for CorsPolicyNotFoundException
    class CorsPolicyNotFoundException
      def self.parse(http_resp)
        data = Types::CorsPolicyNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteLifecyclePolicy
    class DeleteLifecyclePolicy
      def self.parse(http_resp)
        data = Types::DeleteLifecyclePolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteMetricPolicy
    class DeleteMetricPolicy
      def self.parse(http_resp)
        data = Types::DeleteMetricPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DescribeContainer
    class DescribeContainer
      def self.parse(http_resp)
        data = Types::DescribeContainerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.container = (Parsers::Container.parse(map['Container']) unless map['Container'].nil?)
        data
      end
    end

    # Operation Parser for GetContainerPolicy
    class GetContainerPolicy
      def self.parse(http_resp)
        data = Types::GetContainerPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.policy = map['Policy']
        data
      end
    end

    # Operation Parser for GetCorsPolicy
    class GetCorsPolicy
      def self.parse(http_resp)
        data = Types::GetCorsPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.cors_policy = (Parsers::CorsPolicy.parse(map['CorsPolicy']) unless map['CorsPolicy'].nil?)
        data
      end
    end

    class CorsPolicy
      def self.parse(list)
        list.map do |value|
          Parsers::CorsRule.parse(value) unless value.nil?
        end
      end
    end

    class CorsRule
      def self.parse(map)
        data = Types::CorsRule.new
        data.allowed_origins = (Parsers::AllowedOrigins.parse(map['AllowedOrigins']) unless map['AllowedOrigins'].nil?)
        data.allowed_methods = (Parsers::AllowedMethods.parse(map['AllowedMethods']) unless map['AllowedMethods'].nil?)
        data.allowed_headers = (Parsers::AllowedHeaders.parse(map['AllowedHeaders']) unless map['AllowedHeaders'].nil?)
        data.max_age_seconds = map['MaxAgeSeconds']
        data.expose_headers = (Parsers::ExposeHeaders.parse(map['ExposeHeaders']) unless map['ExposeHeaders'].nil?)
        return data
      end
    end

    class ExposeHeaders
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class AllowedHeaders
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class AllowedMethods
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class AllowedOrigins
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for GetLifecyclePolicy
    class GetLifecyclePolicy
      def self.parse(http_resp)
        data = Types::GetLifecyclePolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.lifecycle_policy = map['LifecyclePolicy']
        data
      end
    end

    # Operation Parser for GetMetricPolicy
    class GetMetricPolicy
      def self.parse(http_resp)
        data = Types::GetMetricPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.metric_policy = (Parsers::MetricPolicy.parse(map['MetricPolicy']) unless map['MetricPolicy'].nil?)
        data
      end
    end

    class MetricPolicy
      def self.parse(map)
        data = Types::MetricPolicy.new
        data.container_level_metrics = map['ContainerLevelMetrics']
        data.metric_policy_rules = (Parsers::MetricPolicyRules.parse(map['MetricPolicyRules']) unless map['MetricPolicyRules'].nil?)
        return data
      end
    end

    class MetricPolicyRules
      def self.parse(list)
        list.map do |value|
          Parsers::MetricPolicyRule.parse(value) unless value.nil?
        end
      end
    end

    class MetricPolicyRule
      def self.parse(map)
        data = Types::MetricPolicyRule.new
        data.object_group = map['ObjectGroup']
        data.object_group_name = map['ObjectGroupName']
        return data
      end
    end

    # Operation Parser for ListContainers
    class ListContainers
      def self.parse(http_resp)
        data = Types::ListContainersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.containers = (Parsers::ContainerList.parse(map['Containers']) unless map['Containers'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ContainerList
      def self.parse(list)
        list.map do |value|
          Parsers::Container.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data
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

    # Operation Parser for PutContainerPolicy
    class PutContainerPolicy
      def self.parse(http_resp)
        data = Types::PutContainerPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for PutCorsPolicy
    class PutCorsPolicy
      def self.parse(http_resp)
        data = Types::PutCorsPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for PutLifecyclePolicy
    class PutLifecyclePolicy
      def self.parse(http_resp)
        data = Types::PutLifecyclePolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for PutMetricPolicy
    class PutMetricPolicy
      def self.parse(http_resp)
        data = Types::PutMetricPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for StartAccessLogging
    class StartAccessLogging
      def self.parse(http_resp)
        data = Types::StartAccessLoggingOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for StopAccessLogging
    class StopAccessLogging
      def self.parse(http_resp)
        data = Types::StopAccessLoggingOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
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
