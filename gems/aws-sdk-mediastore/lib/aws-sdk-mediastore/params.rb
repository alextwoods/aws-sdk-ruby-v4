# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MediaStore
  module Params

    module AllowedHeaders
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AllowedMethods
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AllowedOrigins
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Container
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Container, context: context)
        type = Types::Container.new
        type.endpoint = params[:endpoint]
        type.creation_time = params[:creation_time]
        type.arn = params[:arn]
        type.name = params[:name]
        type.status = params[:status]
        type.access_logging_enabled = params[:access_logging_enabled]
        type
      end
    end

    module ContainerInUseException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContainerInUseException, context: context)
        type = Types::ContainerInUseException.new
        type.message = params[:message]
        type
      end
    end

    module ContainerList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Container.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ContainerNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContainerNotFoundException, context: context)
        type = Types::ContainerNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module CorsPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CorsRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CorsPolicyNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CorsPolicyNotFoundException, context: context)
        type = Types::CorsPolicyNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module CorsRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CorsRule, context: context)
        type = Types::CorsRule.new
        type.allowed_origins = AllowedOrigins.build(params[:allowed_origins], context: "#{context}[:allowed_origins]") unless params[:allowed_origins].nil?
        type.allowed_methods = AllowedMethods.build(params[:allowed_methods], context: "#{context}[:allowed_methods]") unless params[:allowed_methods].nil?
        type.allowed_headers = AllowedHeaders.build(params[:allowed_headers], context: "#{context}[:allowed_headers]") unless params[:allowed_headers].nil?
        type.max_age_seconds = params[:max_age_seconds]
        type.expose_headers = ExposeHeaders.build(params[:expose_headers], context: "#{context}[:expose_headers]") unless params[:expose_headers].nil?
        type
      end
    end

    module CreateContainerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateContainerInput, context: context)
        type = Types::CreateContainerInput.new
        type.container_name = params[:container_name]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateContainerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateContainerOutput, context: context)
        type = Types::CreateContainerOutput.new
        type.container = Container.build(params[:container], context: "#{context}[:container]") unless params[:container].nil?
        type
      end
    end

    module DeleteContainerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteContainerInput, context: context)
        type = Types::DeleteContainerInput.new
        type.container_name = params[:container_name]
        type
      end
    end

    module DeleteContainerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteContainerOutput, context: context)
        type = Types::DeleteContainerOutput.new
        type
      end
    end

    module DeleteContainerPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteContainerPolicyInput, context: context)
        type = Types::DeleteContainerPolicyInput.new
        type.container_name = params[:container_name]
        type
      end
    end

    module DeleteContainerPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteContainerPolicyOutput, context: context)
        type = Types::DeleteContainerPolicyOutput.new
        type
      end
    end

    module DeleteCorsPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCorsPolicyInput, context: context)
        type = Types::DeleteCorsPolicyInput.new
        type.container_name = params[:container_name]
        type
      end
    end

    module DeleteCorsPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCorsPolicyOutput, context: context)
        type = Types::DeleteCorsPolicyOutput.new
        type
      end
    end

    module DeleteLifecyclePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLifecyclePolicyInput, context: context)
        type = Types::DeleteLifecyclePolicyInput.new
        type.container_name = params[:container_name]
        type
      end
    end

    module DeleteLifecyclePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLifecyclePolicyOutput, context: context)
        type = Types::DeleteLifecyclePolicyOutput.new
        type
      end
    end

    module DeleteMetricPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMetricPolicyInput, context: context)
        type = Types::DeleteMetricPolicyInput.new
        type.container_name = params[:container_name]
        type
      end
    end

    module DeleteMetricPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMetricPolicyOutput, context: context)
        type = Types::DeleteMetricPolicyOutput.new
        type
      end
    end

    module DescribeContainerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeContainerInput, context: context)
        type = Types::DescribeContainerInput.new
        type.container_name = params[:container_name]
        type
      end
    end

    module DescribeContainerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeContainerOutput, context: context)
        type = Types::DescribeContainerOutput.new
        type.container = Container.build(params[:container], context: "#{context}[:container]") unless params[:container].nil?
        type
      end
    end

    module ExposeHeaders
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module GetContainerPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetContainerPolicyInput, context: context)
        type = Types::GetContainerPolicyInput.new
        type.container_name = params[:container_name]
        type
      end
    end

    module GetContainerPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetContainerPolicyOutput, context: context)
        type = Types::GetContainerPolicyOutput.new
        type.policy = params[:policy]
        type
      end
    end

    module GetCorsPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCorsPolicyInput, context: context)
        type = Types::GetCorsPolicyInput.new
        type.container_name = params[:container_name]
        type
      end
    end

    module GetCorsPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCorsPolicyOutput, context: context)
        type = Types::GetCorsPolicyOutput.new
        type.cors_policy = CorsPolicy.build(params[:cors_policy], context: "#{context}[:cors_policy]") unless params[:cors_policy].nil?
        type
      end
    end

    module GetLifecyclePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLifecyclePolicyInput, context: context)
        type = Types::GetLifecyclePolicyInput.new
        type.container_name = params[:container_name]
        type
      end
    end

    module GetLifecyclePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLifecyclePolicyOutput, context: context)
        type = Types::GetLifecyclePolicyOutput.new
        type.lifecycle_policy = params[:lifecycle_policy]
        type
      end
    end

    module GetMetricPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMetricPolicyInput, context: context)
        type = Types::GetMetricPolicyInput.new
        type.container_name = params[:container_name]
        type
      end
    end

    module GetMetricPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMetricPolicyOutput, context: context)
        type = Types::GetMetricPolicyOutput.new
        type.metric_policy = MetricPolicy.build(params[:metric_policy], context: "#{context}[:metric_policy]") unless params[:metric_policy].nil?
        type
      end
    end

    module InternalServerError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerError, context: context)
        type = Types::InternalServerError.new
        type.message = params[:message]
        type
      end
    end

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ListContainersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListContainersInput, context: context)
        type = Types::ListContainersInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListContainersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListContainersOutput, context: context)
        type = Types::ListContainersOutput.new
        type.containers = ContainerList.build(params[:containers], context: "#{context}[:containers]") unless params[:containers].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource = params[:resource]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module MetricPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MetricPolicy, context: context)
        type = Types::MetricPolicy.new
        type.container_level_metrics = params[:container_level_metrics]
        type.metric_policy_rules = MetricPolicyRules.build(params[:metric_policy_rules], context: "#{context}[:metric_policy_rules]") unless params[:metric_policy_rules].nil?
        type
      end
    end

    module MetricPolicyRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MetricPolicyRule, context: context)
        type = Types::MetricPolicyRule.new
        type.object_group = params[:object_group]
        type.object_group_name = params[:object_group_name]
        type
      end
    end

    module MetricPolicyRules
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MetricPolicyRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PolicyNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PolicyNotFoundException, context: context)
        type = Types::PolicyNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module PutContainerPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutContainerPolicyInput, context: context)
        type = Types::PutContainerPolicyInput.new
        type.container_name = params[:container_name]
        type.policy = params[:policy]
        type
      end
    end

    module PutContainerPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutContainerPolicyOutput, context: context)
        type = Types::PutContainerPolicyOutput.new
        type
      end
    end

    module PutCorsPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutCorsPolicyInput, context: context)
        type = Types::PutCorsPolicyInput.new
        type.container_name = params[:container_name]
        type.cors_policy = CorsPolicy.build(params[:cors_policy], context: "#{context}[:cors_policy]") unless params[:cors_policy].nil?
        type
      end
    end

    module PutCorsPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutCorsPolicyOutput, context: context)
        type = Types::PutCorsPolicyOutput.new
        type
      end
    end

    module PutLifecyclePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutLifecyclePolicyInput, context: context)
        type = Types::PutLifecyclePolicyInput.new
        type.container_name = params[:container_name]
        type.lifecycle_policy = params[:lifecycle_policy]
        type
      end
    end

    module PutLifecyclePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutLifecyclePolicyOutput, context: context)
        type = Types::PutLifecyclePolicyOutput.new
        type
      end
    end

    module PutMetricPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutMetricPolicyInput, context: context)
        type = Types::PutMetricPolicyInput.new
        type.container_name = params[:container_name]
        type.metric_policy = MetricPolicy.build(params[:metric_policy], context: "#{context}[:metric_policy]") unless params[:metric_policy].nil?
        type
      end
    end

    module PutMetricPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutMetricPolicyOutput, context: context)
        type = Types::PutMetricPolicyOutput.new
        type
      end
    end

    module StartAccessLoggingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartAccessLoggingInput, context: context)
        type = Types::StartAccessLoggingInput.new
        type.container_name = params[:container_name]
        type
      end
    end

    module StartAccessLoggingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartAccessLoggingOutput, context: context)
        type = Types::StartAccessLoggingOutput.new
        type
      end
    end

    module StopAccessLoggingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopAccessLoggingInput, context: context)
        type = Types::StopAccessLoggingInput.new
        type.container_name = params[:container_name]
        type
      end
    end

    module StopAccessLoggingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopAccessLoggingOutput, context: context)
        type = Types::StopAccessLoggingOutput.new
        type
      end
    end

    module Tag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource = params[:resource]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource = params[:resource]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type
      end
    end

  end
end
