# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MediaStore
  module Validators

    class AllowedHeaders
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AllowedMethods
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AllowedOrigins
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Container
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Container, context: context)
        Hearth::Validator.validate!(input[:endpoint], ::String, context: "#{context}[:endpoint]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:access_logging_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:access_logging_enabled]")
      end
    end

    class ContainerInUseException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContainerInUseException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ContainerList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Container.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ContainerNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContainerNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CorsPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::CorsRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CorsPolicyNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CorsPolicyNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CorsRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CorsRule, context: context)
        Validators::AllowedOrigins.validate!(input[:allowed_origins], context: "#{context}[:allowed_origins]") unless input[:allowed_origins].nil?
        Validators::AllowedMethods.validate!(input[:allowed_methods], context: "#{context}[:allowed_methods]") unless input[:allowed_methods].nil?
        Validators::AllowedHeaders.validate!(input[:allowed_headers], context: "#{context}[:allowed_headers]") unless input[:allowed_headers].nil?
        Hearth::Validator.validate!(input[:max_age_seconds], ::Integer, context: "#{context}[:max_age_seconds]")
        Validators::ExposeHeaders.validate!(input[:expose_headers], context: "#{context}[:expose_headers]") unless input[:expose_headers].nil?
      end
    end

    class CreateContainerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateContainerInput, context: context)
        Hearth::Validator.validate!(input[:container_name], ::String, context: "#{context}[:container_name]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateContainerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateContainerOutput, context: context)
        Validators::Container.validate!(input[:container], context: "#{context}[:container]") unless input[:container].nil?
      end
    end

    class DeleteContainerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteContainerInput, context: context)
        Hearth::Validator.validate!(input[:container_name], ::String, context: "#{context}[:container_name]")
      end
    end

    class DeleteContainerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteContainerOutput, context: context)
      end
    end

    class DeleteContainerPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteContainerPolicyInput, context: context)
        Hearth::Validator.validate!(input[:container_name], ::String, context: "#{context}[:container_name]")
      end
    end

    class DeleteContainerPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteContainerPolicyOutput, context: context)
      end
    end

    class DeleteCorsPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCorsPolicyInput, context: context)
        Hearth::Validator.validate!(input[:container_name], ::String, context: "#{context}[:container_name]")
      end
    end

    class DeleteCorsPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCorsPolicyOutput, context: context)
      end
    end

    class DeleteLifecyclePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLifecyclePolicyInput, context: context)
        Hearth::Validator.validate!(input[:container_name], ::String, context: "#{context}[:container_name]")
      end
    end

    class DeleteLifecyclePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLifecyclePolicyOutput, context: context)
      end
    end

    class DeleteMetricPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMetricPolicyInput, context: context)
        Hearth::Validator.validate!(input[:container_name], ::String, context: "#{context}[:container_name]")
      end
    end

    class DeleteMetricPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMetricPolicyOutput, context: context)
      end
    end

    class DescribeContainerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeContainerInput, context: context)
        Hearth::Validator.validate!(input[:container_name], ::String, context: "#{context}[:container_name]")
      end
    end

    class DescribeContainerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeContainerOutput, context: context)
        Validators::Container.validate!(input[:container], context: "#{context}[:container]") unless input[:container].nil?
      end
    end

    class ExposeHeaders
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class GetContainerPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetContainerPolicyInput, context: context)
        Hearth::Validator.validate!(input[:container_name], ::String, context: "#{context}[:container_name]")
      end
    end

    class GetContainerPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetContainerPolicyOutput, context: context)
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
      end
    end

    class GetCorsPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCorsPolicyInput, context: context)
        Hearth::Validator.validate!(input[:container_name], ::String, context: "#{context}[:container_name]")
      end
    end

    class GetCorsPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCorsPolicyOutput, context: context)
        Validators::CorsPolicy.validate!(input[:cors_policy], context: "#{context}[:cors_policy]") unless input[:cors_policy].nil?
      end
    end

    class GetLifecyclePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLifecyclePolicyInput, context: context)
        Hearth::Validator.validate!(input[:container_name], ::String, context: "#{context}[:container_name]")
      end
    end

    class GetLifecyclePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLifecyclePolicyOutput, context: context)
        Hearth::Validator.validate!(input[:lifecycle_policy], ::String, context: "#{context}[:lifecycle_policy]")
      end
    end

    class GetMetricPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMetricPolicyInput, context: context)
        Hearth::Validator.validate!(input[:container_name], ::String, context: "#{context}[:container_name]")
      end
    end

    class GetMetricPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMetricPolicyOutput, context: context)
        Validators::MetricPolicy.validate!(input[:metric_policy], context: "#{context}[:metric_policy]") unless input[:metric_policy].nil?
      end
    end

    class InternalServerError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerError, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListContainersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListContainersInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListContainersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListContainersOutput, context: context)
        Validators::ContainerList.validate!(input[:containers], context: "#{context}[:containers]") unless input[:containers].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource], ::String, context: "#{context}[:resource]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class MetricPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MetricPolicy, context: context)
        Hearth::Validator.validate!(input[:container_level_metrics], ::String, context: "#{context}[:container_level_metrics]")
        Validators::MetricPolicyRules.validate!(input[:metric_policy_rules], context: "#{context}[:metric_policy_rules]") unless input[:metric_policy_rules].nil?
      end
    end

    class MetricPolicyRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MetricPolicyRule, context: context)
        Hearth::Validator.validate!(input[:object_group], ::String, context: "#{context}[:object_group]")
        Hearth::Validator.validate!(input[:object_group_name], ::String, context: "#{context}[:object_group_name]")
      end
    end

    class MetricPolicyRules
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::MetricPolicyRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PolicyNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PolicyNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PutContainerPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutContainerPolicyInput, context: context)
        Hearth::Validator.validate!(input[:container_name], ::String, context: "#{context}[:container_name]")
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
      end
    end

    class PutContainerPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutContainerPolicyOutput, context: context)
      end
    end

    class PutCorsPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutCorsPolicyInput, context: context)
        Hearth::Validator.validate!(input[:container_name], ::String, context: "#{context}[:container_name]")
        Validators::CorsPolicy.validate!(input[:cors_policy], context: "#{context}[:cors_policy]") unless input[:cors_policy].nil?
      end
    end

    class PutCorsPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutCorsPolicyOutput, context: context)
      end
    end

    class PutLifecyclePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutLifecyclePolicyInput, context: context)
        Hearth::Validator.validate!(input[:container_name], ::String, context: "#{context}[:container_name]")
        Hearth::Validator.validate!(input[:lifecycle_policy], ::String, context: "#{context}[:lifecycle_policy]")
      end
    end

    class PutLifecyclePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutLifecyclePolicyOutput, context: context)
      end
    end

    class PutMetricPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutMetricPolicyInput, context: context)
        Hearth::Validator.validate!(input[:container_name], ::String, context: "#{context}[:container_name]")
        Validators::MetricPolicy.validate!(input[:metric_policy], context: "#{context}[:metric_policy]") unless input[:metric_policy].nil?
      end
    end

    class PutMetricPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutMetricPolicyOutput, context: context)
      end
    end

    class StartAccessLoggingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartAccessLoggingInput, context: context)
        Hearth::Validator.validate!(input[:container_name], ::String, context: "#{context}[:container_name]")
      end
    end

    class StartAccessLoggingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartAccessLoggingOutput, context: context)
      end
    end

    class StopAccessLoggingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopAccessLoggingInput, context: context)
        Hearth::Validator.validate!(input[:container_name], ::String, context: "#{context}[:container_name]")
      end
    end

    class StopAccessLoggingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopAccessLoggingOutput, context: context)
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource], ::String, context: "#{context}[:resource]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource], ::String, context: "#{context}[:resource]")
        Validators::TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

  end
end
