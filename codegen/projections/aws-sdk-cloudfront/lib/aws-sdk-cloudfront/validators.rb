# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::Cloudfront
  module Validators

    class AccessControlAllowHeadersList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AccessControlAllowMethodsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AccessControlAllowOriginsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AccessControlExposeHeadersList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AliasList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Aliases
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Aliases, context: context)
        Hearth::Validator.validate!(input[:quantity], ::Integer, context: "#{context}[:quantity]")
        Validators::AliasList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
      end
    end

    class AllowedMethods
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AllowedMethods, context: context)
        Hearth::Validator.validate!(input[:quantity], ::Integer, context: "#{context}[:quantity]")
        Validators::MethodsList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Validators::CachedMethods.validate!(input[:cached_methods], context: "#{context}[:cached_methods]") unless input[:cached_methods].nil?
      end
    end

    class AssociateAliasInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateAliasInput, context: context)
        Hearth::Validator.validate!(input[:target_distribution_id], ::String, context: "#{context}[:target_distribution_id]")
        Hearth::Validator.validate!(input[:alias], ::String, context: "#{context}[:alias]")
      end
    end

    class AwsAccountNumberList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CacheBehavior
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CacheBehavior, context: context)
        Hearth::Validator.validate!(input[:path_pattern], ::String, context: "#{context}[:path_pattern]")
        Hearth::Validator.validate!(input[:target_origin_id], ::String, context: "#{context}[:target_origin_id]")
        Validators::TrustedSigners.validate!(input[:trusted_signers], context: "#{context}[:trusted_signers]") unless input[:trusted_signers].nil?
        Validators::TrustedKeyGroups.validate!(input[:trusted_key_groups], context: "#{context}[:trusted_key_groups]") unless input[:trusted_key_groups].nil?
        Hearth::Validator.validate!(input[:viewer_protocol_policy], ::String, context: "#{context}[:viewer_protocol_policy]")
        Validators::AllowedMethods.validate!(input[:allowed_methods], context: "#{context}[:allowed_methods]") unless input[:allowed_methods].nil?
        Hearth::Validator.validate!(input[:smooth_streaming], ::TrueClass, ::FalseClass, context: "#{context}[:smooth_streaming]")
        Hearth::Validator.validate!(input[:compress], ::TrueClass, ::FalseClass, context: "#{context}[:compress]")
        Validators::LambdaFunctionAssociations.validate!(input[:lambda_function_associations], context: "#{context}[:lambda_function_associations]") unless input[:lambda_function_associations].nil?
        Validators::FunctionAssociations.validate!(input[:function_associations], context: "#{context}[:function_associations]") unless input[:function_associations].nil?
        Hearth::Validator.validate!(input[:field_level_encryption_id], ::String, context: "#{context}[:field_level_encryption_id]")
        Hearth::Validator.validate!(input[:realtime_log_config_arn], ::String, context: "#{context}[:realtime_log_config_arn]")
        Hearth::Validator.validate!(input[:cache_policy_id], ::String, context: "#{context}[:cache_policy_id]")
        Hearth::Validator.validate!(input[:origin_request_policy_id], ::String, context: "#{context}[:origin_request_policy_id]")
        Hearth::Validator.validate!(input[:response_headers_policy_id], ::String, context: "#{context}[:response_headers_policy_id]")
        Validators::ForwardedValues.validate!(input[:forwarded_values], context: "#{context}[:forwarded_values]") unless input[:forwarded_values].nil?
        Hearth::Validator.validate!(input[:min_ttl], ::Integer, context: "#{context}[:min_ttl]")
        Hearth::Validator.validate!(input[:default_ttl], ::Integer, context: "#{context}[:default_ttl]")
        Hearth::Validator.validate!(input[:max_ttl], ::Integer, context: "#{context}[:max_ttl]")
      end
    end

    class CacheBehaviorList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::CacheBehavior.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CacheBehaviors
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CacheBehaviors, context: context)
        Hearth::Validator.validate!(input[:quantity], ::Integer, context: "#{context}[:quantity]")
        Validators::CacheBehaviorList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
      end
    end

    class CachePolicyConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CachePolicyConfig, context: context)
        Hearth::Validator.validate!(input[:comment], ::String, context: "#{context}[:comment]")
        Hearth::Validator.validate!(input[:member_name], ::String, context: "#{context}[:member_name]")
        Hearth::Validator.validate!(input[:default_ttl], ::Integer, context: "#{context}[:default_ttl]")
        Hearth::Validator.validate!(input[:max_ttl], ::Integer, context: "#{context}[:max_ttl]")
        Hearth::Validator.validate!(input[:min_ttl], ::Integer, context: "#{context}[:min_ttl]")
        Validators::ParametersInCacheKeyAndForwardedToOrigin.validate!(input[:parameters_in_cache_key_and_forwarded_to_origin], context: "#{context}[:parameters_in_cache_key_and_forwarded_to_origin]") unless input[:parameters_in_cache_key_and_forwarded_to_origin].nil?
      end
    end

    class CachePolicyCookiesConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CachePolicyCookiesConfig, context: context)
        Hearth::Validator.validate!(input[:cookie_behavior], ::String, context: "#{context}[:cookie_behavior]")
        Validators::CookieNames.validate!(input[:cookies], context: "#{context}[:cookies]") unless input[:cookies].nil?
      end
    end

    class CachePolicyHeadersConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CachePolicyHeadersConfig, context: context)
        Hearth::Validator.validate!(input[:header_behavior], ::String, context: "#{context}[:header_behavior]")
        Validators::Headers.validate!(input[:headers], context: "#{context}[:headers]") unless input[:headers].nil?
      end
    end

    class CachePolicyQueryStringsConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CachePolicyQueryStringsConfig, context: context)
        Hearth::Validator.validate!(input[:query_string_behavior], ::String, context: "#{context}[:query_string_behavior]")
        Validators::QueryStringNames.validate!(input[:query_strings], context: "#{context}[:query_strings]") unless input[:query_strings].nil?
      end
    end

    class CachedMethods
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CachedMethods, context: context)
        Hearth::Validator.validate!(input[:quantity], ::Integer, context: "#{context}[:quantity]")
        Validators::MethodsList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
      end
    end

    class CloudFrontOriginAccessIdentityConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudFrontOriginAccessIdentityConfig, context: context)
        Hearth::Validator.validate!(input[:caller_reference], ::String, context: "#{context}[:caller_reference]")
        Hearth::Validator.validate!(input[:comment], ::String, context: "#{context}[:comment]")
      end
    end

    class ContentTypeProfile
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContentTypeProfile, context: context)
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        Hearth::Validator.validate!(input[:profile_id], ::String, context: "#{context}[:profile_id]")
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
      end
    end

    class ContentTypeProfileConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContentTypeProfileConfig, context: context)
        Hearth::Validator.validate!(input[:forward_when_content_type_is_unknown], ::TrueClass, ::FalseClass, context: "#{context}[:forward_when_content_type_is_unknown]")
        Validators::ContentTypeProfiles.validate!(input[:content_type_profiles], context: "#{context}[:content_type_profiles]") unless input[:content_type_profiles].nil?
      end
    end

    class ContentTypeProfileList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ContentTypeProfile.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ContentTypeProfiles
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContentTypeProfiles, context: context)
        Hearth::Validator.validate!(input[:quantity], ::Integer, context: "#{context}[:quantity]")
        Validators::ContentTypeProfileList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
      end
    end

    class CookieNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CookieNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CookieNames, context: context)
        Hearth::Validator.validate!(input[:quantity], ::Integer, context: "#{context}[:quantity]")
        Validators::CookieNameList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
      end
    end

    class CookiePreference
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CookiePreference, context: context)
        Hearth::Validator.validate!(input[:forward], ::String, context: "#{context}[:forward]")
        Validators::CookieNames.validate!(input[:whitelisted_names], context: "#{context}[:whitelisted_names]") unless input[:whitelisted_names].nil?
      end
    end

    class CreateCachePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCachePolicyInput, context: context)
        Validators::CachePolicyConfig.validate!(input[:cache_policy_config], context: "#{context}[:cache_policy_config]") unless input[:cache_policy_config].nil?
      end
    end

    class CreateCloudFrontOriginAccessIdentityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCloudFrontOriginAccessIdentityInput, context: context)
        Validators::CloudFrontOriginAccessIdentityConfig.validate!(input[:cloud_front_origin_access_identity_config], context: "#{context}[:cloud_front_origin_access_identity_config]") unless input[:cloud_front_origin_access_identity_config].nil?
      end
    end

    class CreateDistributionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDistributionInput, context: context)
        Validators::DistributionConfig.validate!(input[:distribution_config], context: "#{context}[:distribution_config]") unless input[:distribution_config].nil?
      end
    end

    class CreateDistributionWithTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDistributionWithTagsInput, context: context)
        Validators::DistributionConfigWithTags.validate!(input[:distribution_config_with_tags], context: "#{context}[:distribution_config_with_tags]") unless input[:distribution_config_with_tags].nil?
      end
    end

    class CreateFieldLevelEncryptionConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFieldLevelEncryptionConfigInput, context: context)
        Validators::FieldLevelEncryptionConfig.validate!(input[:field_level_encryption_config], context: "#{context}[:field_level_encryption_config]") unless input[:field_level_encryption_config].nil?
      end
    end

    class CreateFieldLevelEncryptionProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFieldLevelEncryptionProfileInput, context: context)
        Validators::FieldLevelEncryptionProfileConfig.validate!(input[:field_level_encryption_profile_config], context: "#{context}[:field_level_encryption_profile_config]") unless input[:field_level_encryption_profile_config].nil?
      end
    end

    class CreateFunctionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFunctionInput, context: context)
        Hearth::Validator.validate!(input[:member_name], ::String, context: "#{context}[:member_name]")
        Validators::FunctionConfig.validate!(input[:function_config], context: "#{context}[:function_config]") unless input[:function_config].nil?
        Hearth::Validator.validate!(input[:function_code], ::String, context: "#{context}[:function_code]")
      end
    end

    class CreateInvalidationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateInvalidationInput, context: context)
        Hearth::Validator.validate!(input[:distribution_id], ::String, context: "#{context}[:distribution_id]")
        Validators::InvalidationBatch.validate!(input[:invalidation_batch], context: "#{context}[:invalidation_batch]") unless input[:invalidation_batch].nil?
      end
    end

    class CreateKeyGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateKeyGroupInput, context: context)
        Validators::KeyGroupConfig.validate!(input[:key_group_config], context: "#{context}[:key_group_config]") unless input[:key_group_config].nil?
      end
    end

    class CreateMonitoringSubscriptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMonitoringSubscriptionInput, context: context)
        Hearth::Validator.validate!(input[:distribution_id], ::String, context: "#{context}[:distribution_id]")
        Validators::MonitoringSubscription.validate!(input[:monitoring_subscription], context: "#{context}[:monitoring_subscription]") unless input[:monitoring_subscription].nil?
      end
    end

    class CreateOriginRequestPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateOriginRequestPolicyInput, context: context)
        Validators::OriginRequestPolicyConfig.validate!(input[:origin_request_policy_config], context: "#{context}[:origin_request_policy_config]") unless input[:origin_request_policy_config].nil?
      end
    end

    class CreatePublicKeyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePublicKeyInput, context: context)
        Validators::PublicKeyConfig.validate!(input[:public_key_config], context: "#{context}[:public_key_config]") unless input[:public_key_config].nil?
      end
    end

    class CreateRealtimeLogConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRealtimeLogConfigInput, context: context)
        Validators::EndPointList.validate!(input[:end_points], context: "#{context}[:end_points]") unless input[:end_points].nil?
        Validators::FieldList.validate!(input[:fields], context: "#{context}[:fields]") unless input[:fields].nil?
        Hearth::Validator.validate!(input[:member_name], ::String, context: "#{context}[:member_name]")
        Hearth::Validator.validate!(input[:sampling_rate], ::Integer, context: "#{context}[:sampling_rate]")
      end
    end

    class CreateResponseHeadersPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateResponseHeadersPolicyInput, context: context)
        Validators::ResponseHeadersPolicyConfig.validate!(input[:response_headers_policy_config], context: "#{context}[:response_headers_policy_config]") unless input[:response_headers_policy_config].nil?
      end
    end

    class CreateStreamingDistributionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateStreamingDistributionInput, context: context)
        Validators::StreamingDistributionConfig.validate!(input[:streaming_distribution_config], context: "#{context}[:streaming_distribution_config]") unless input[:streaming_distribution_config].nil?
      end
    end

    class CreateStreamingDistributionWithTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateStreamingDistributionWithTagsInput, context: context)
        Validators::StreamingDistributionConfigWithTags.validate!(input[:streaming_distribution_config_with_tags], context: "#{context}[:streaming_distribution_config_with_tags]") unless input[:streaming_distribution_config_with_tags].nil?
      end
    end

    class CustomErrorResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomErrorResponse, context: context)
        Hearth::Validator.validate!(input[:error_code], ::Integer, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:response_page_path], ::String, context: "#{context}[:response_page_path]")
        Hearth::Validator.validate!(input[:response_code], ::String, context: "#{context}[:response_code]")
        Hearth::Validator.validate!(input[:error_caching_min_ttl], ::Integer, context: "#{context}[:error_caching_min_ttl]")
      end
    end

    class CustomErrorResponseList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::CustomErrorResponse.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CustomErrorResponses
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomErrorResponses, context: context)
        Hearth::Validator.validate!(input[:quantity], ::Integer, context: "#{context}[:quantity]")
        Validators::CustomErrorResponseList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
      end
    end

    class CustomHeaders
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomHeaders, context: context)
        Hearth::Validator.validate!(input[:quantity], ::Integer, context: "#{context}[:quantity]")
        Validators::OriginCustomHeadersList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
      end
    end

    class CustomOriginConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomOriginConfig, context: context)
        Hearth::Validator.validate!(input[:http_port], ::Integer, context: "#{context}[:http_port]")
        Hearth::Validator.validate!(input[:https_port], ::Integer, context: "#{context}[:https_port]")
        Hearth::Validator.validate!(input[:origin_protocol_policy], ::String, context: "#{context}[:origin_protocol_policy]")
        Validators::OriginSslProtocols.validate!(input[:origin_ssl_protocols], context: "#{context}[:origin_ssl_protocols]") unless input[:origin_ssl_protocols].nil?
        Hearth::Validator.validate!(input[:origin_read_timeout], ::Integer, context: "#{context}[:origin_read_timeout]")
        Hearth::Validator.validate!(input[:origin_keepalive_timeout], ::Integer, context: "#{context}[:origin_keepalive_timeout]")
      end
    end

    class DefaultCacheBehavior
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DefaultCacheBehavior, context: context)
        Hearth::Validator.validate!(input[:target_origin_id], ::String, context: "#{context}[:target_origin_id]")
        Validators::TrustedSigners.validate!(input[:trusted_signers], context: "#{context}[:trusted_signers]") unless input[:trusted_signers].nil?
        Validators::TrustedKeyGroups.validate!(input[:trusted_key_groups], context: "#{context}[:trusted_key_groups]") unless input[:trusted_key_groups].nil?
        Hearth::Validator.validate!(input[:viewer_protocol_policy], ::String, context: "#{context}[:viewer_protocol_policy]")
        Validators::AllowedMethods.validate!(input[:allowed_methods], context: "#{context}[:allowed_methods]") unless input[:allowed_methods].nil?
        Hearth::Validator.validate!(input[:smooth_streaming], ::TrueClass, ::FalseClass, context: "#{context}[:smooth_streaming]")
        Hearth::Validator.validate!(input[:compress], ::TrueClass, ::FalseClass, context: "#{context}[:compress]")
        Validators::LambdaFunctionAssociations.validate!(input[:lambda_function_associations], context: "#{context}[:lambda_function_associations]") unless input[:lambda_function_associations].nil?
        Validators::FunctionAssociations.validate!(input[:function_associations], context: "#{context}[:function_associations]") unless input[:function_associations].nil?
        Hearth::Validator.validate!(input[:field_level_encryption_id], ::String, context: "#{context}[:field_level_encryption_id]")
        Hearth::Validator.validate!(input[:realtime_log_config_arn], ::String, context: "#{context}[:realtime_log_config_arn]")
        Hearth::Validator.validate!(input[:cache_policy_id], ::String, context: "#{context}[:cache_policy_id]")
        Hearth::Validator.validate!(input[:origin_request_policy_id], ::String, context: "#{context}[:origin_request_policy_id]")
        Hearth::Validator.validate!(input[:response_headers_policy_id], ::String, context: "#{context}[:response_headers_policy_id]")
        Validators::ForwardedValues.validate!(input[:forwarded_values], context: "#{context}[:forwarded_values]") unless input[:forwarded_values].nil?
        Hearth::Validator.validate!(input[:min_ttl], ::Integer, context: "#{context}[:min_ttl]")
        Hearth::Validator.validate!(input[:default_ttl], ::Integer, context: "#{context}[:default_ttl]")
        Hearth::Validator.validate!(input[:max_ttl], ::Integer, context: "#{context}[:max_ttl]")
      end
    end

    class DeleteCachePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCachePolicyInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:if_match], ::String, context: "#{context}[:if_match]")
      end
    end

    class DeleteCloudFrontOriginAccessIdentityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCloudFrontOriginAccessIdentityInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:if_match], ::String, context: "#{context}[:if_match]")
      end
    end

    class DeleteDistributionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDistributionInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:if_match], ::String, context: "#{context}[:if_match]")
      end
    end

    class DeleteFieldLevelEncryptionConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFieldLevelEncryptionConfigInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:if_match], ::String, context: "#{context}[:if_match]")
      end
    end

    class DeleteFieldLevelEncryptionProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFieldLevelEncryptionProfileInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:if_match], ::String, context: "#{context}[:if_match]")
      end
    end

    class DeleteFunctionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFunctionInput, context: context)
        Hearth::Validator.validate!(input[:member_name], ::String, context: "#{context}[:member_name]")
        Hearth::Validator.validate!(input[:if_match], ::String, context: "#{context}[:if_match]")
      end
    end

    class DeleteKeyGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteKeyGroupInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:if_match], ::String, context: "#{context}[:if_match]")
      end
    end

    class DeleteMonitoringSubscriptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMonitoringSubscriptionInput, context: context)
        Hearth::Validator.validate!(input[:distribution_id], ::String, context: "#{context}[:distribution_id]")
      end
    end

    class DeleteOriginRequestPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteOriginRequestPolicyInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:if_match], ::String, context: "#{context}[:if_match]")
      end
    end

    class DeletePublicKeyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePublicKeyInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:if_match], ::String, context: "#{context}[:if_match]")
      end
    end

    class DeleteRealtimeLogConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRealtimeLogConfigInput, context: context)
        Hearth::Validator.validate!(input[:member_name], ::String, context: "#{context}[:member_name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class DeleteResponseHeadersPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteResponseHeadersPolicyInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:if_match], ::String, context: "#{context}[:if_match]")
      end
    end

    class DeleteStreamingDistributionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteStreamingDistributionInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:if_match], ::String, context: "#{context}[:if_match]")
      end
    end

    class DescribeFunctionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFunctionInput, context: context)
        Hearth::Validator.validate!(input[:member_name], ::String, context: "#{context}[:member_name]")
        Hearth::Validator.validate!(input[:stage], ::String, context: "#{context}[:stage]")
      end
    end

    class DistributionConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DistributionConfig, context: context)
        Hearth::Validator.validate!(input[:caller_reference], ::String, context: "#{context}[:caller_reference]")
        Validators::Aliases.validate!(input[:aliases], context: "#{context}[:aliases]") unless input[:aliases].nil?
        Hearth::Validator.validate!(input[:default_root_object], ::String, context: "#{context}[:default_root_object]")
        Validators::Origins.validate!(input[:origins], context: "#{context}[:origins]") unless input[:origins].nil?
        Validators::OriginGroups.validate!(input[:origin_groups], context: "#{context}[:origin_groups]") unless input[:origin_groups].nil?
        Validators::DefaultCacheBehavior.validate!(input[:default_cache_behavior], context: "#{context}[:default_cache_behavior]") unless input[:default_cache_behavior].nil?
        Validators::CacheBehaviors.validate!(input[:cache_behaviors], context: "#{context}[:cache_behaviors]") unless input[:cache_behaviors].nil?
        Validators::CustomErrorResponses.validate!(input[:custom_error_responses], context: "#{context}[:custom_error_responses]") unless input[:custom_error_responses].nil?
        Hearth::Validator.validate!(input[:comment], ::String, context: "#{context}[:comment]")
        Validators::LoggingConfig.validate!(input[:logging], context: "#{context}[:logging]") unless input[:logging].nil?
        Hearth::Validator.validate!(input[:price_class], ::String, context: "#{context}[:price_class]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Validators::ViewerCertificate.validate!(input[:viewer_certificate], context: "#{context}[:viewer_certificate]") unless input[:viewer_certificate].nil?
        Validators::Restrictions.validate!(input[:restrictions], context: "#{context}[:restrictions]") unless input[:restrictions].nil?
        Hearth::Validator.validate!(input[:web_acl_id], ::String, context: "#{context}[:web_acl_id]")
        Hearth::Validator.validate!(input[:http_version], ::String, context: "#{context}[:http_version]")
        Hearth::Validator.validate!(input[:is_ipv6_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:is_ipv6_enabled]")
      end
    end

    class DistributionConfigWithTags
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DistributionConfigWithTags, context: context)
        Validators::DistributionConfig.validate!(input[:distribution_config], context: "#{context}[:distribution_config]") unless input[:distribution_config].nil?
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class EncryptionEntities
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EncryptionEntities, context: context)
        Hearth::Validator.validate!(input[:quantity], ::Integer, context: "#{context}[:quantity]")
        Validators::EncryptionEntityList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
      end
    end

    class EncryptionEntity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EncryptionEntity, context: context)
        Hearth::Validator.validate!(input[:public_key_id], ::String, context: "#{context}[:public_key_id]")
        Hearth::Validator.validate!(input[:provider_id], ::String, context: "#{context}[:provider_id]")
        Validators::FieldPatterns.validate!(input[:field_patterns], context: "#{context}[:field_patterns]") unless input[:field_patterns].nil?
      end
    end

    class EncryptionEntityList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::EncryptionEntity.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EndPoint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EndPoint, context: context)
        Hearth::Validator.validate!(input[:stream_type], ::String, context: "#{context}[:stream_type]")
        Validators::KinesisStreamConfig.validate!(input[:kinesis_stream_config], context: "#{context}[:kinesis_stream_config]") unless input[:kinesis_stream_config].nil?
      end
    end

    class EndPointList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::EndPoint.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FieldLevelEncryptionConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FieldLevelEncryptionConfig, context: context)
        Hearth::Validator.validate!(input[:caller_reference], ::String, context: "#{context}[:caller_reference]")
        Hearth::Validator.validate!(input[:comment], ::String, context: "#{context}[:comment]")
        Validators::QueryArgProfileConfig.validate!(input[:query_arg_profile_config], context: "#{context}[:query_arg_profile_config]") unless input[:query_arg_profile_config].nil?
        Validators::ContentTypeProfileConfig.validate!(input[:content_type_profile_config], context: "#{context}[:content_type_profile_config]") unless input[:content_type_profile_config].nil?
      end
    end

    class FieldLevelEncryptionProfileConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FieldLevelEncryptionProfileConfig, context: context)
        Hearth::Validator.validate!(input[:member_name], ::String, context: "#{context}[:member_name]")
        Hearth::Validator.validate!(input[:caller_reference], ::String, context: "#{context}[:caller_reference]")
        Hearth::Validator.validate!(input[:comment], ::String, context: "#{context}[:comment]")
        Validators::EncryptionEntities.validate!(input[:encryption_entities], context: "#{context}[:encryption_entities]") unless input[:encryption_entities].nil?
      end
    end

    class FieldList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class FieldPatternList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class FieldPatterns
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FieldPatterns, context: context)
        Hearth::Validator.validate!(input[:quantity], ::Integer, context: "#{context}[:quantity]")
        Validators::FieldPatternList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
      end
    end

    class ForwardedValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ForwardedValues, context: context)
        Hearth::Validator.validate!(input[:query_string], ::TrueClass, ::FalseClass, context: "#{context}[:query_string]")
        Validators::CookiePreference.validate!(input[:cookies], context: "#{context}[:cookies]") unless input[:cookies].nil?
        Validators::Headers.validate!(input[:headers], context: "#{context}[:headers]") unless input[:headers].nil?
        Validators::QueryStringCacheKeys.validate!(input[:query_string_cache_keys], context: "#{context}[:query_string_cache_keys]") unless input[:query_string_cache_keys].nil?
      end
    end

    class FunctionAssociation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FunctionAssociation, context: context)
        Hearth::Validator.validate!(input[:function_arn], ::String, context: "#{context}[:function_arn]")
        Hearth::Validator.validate!(input[:event_type], ::String, context: "#{context}[:event_type]")
      end
    end

    class FunctionAssociationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::FunctionAssociation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FunctionAssociations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FunctionAssociations, context: context)
        Hearth::Validator.validate!(input[:quantity], ::Integer, context: "#{context}[:quantity]")
        Validators::FunctionAssociationList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
      end
    end

    class FunctionConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FunctionConfig, context: context)
        Hearth::Validator.validate!(input[:comment], ::String, context: "#{context}[:comment]")
        Hearth::Validator.validate!(input[:runtime], ::String, context: "#{context}[:runtime]")
      end
    end

    class GeoRestriction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GeoRestriction, context: context)
        Hearth::Validator.validate!(input[:restriction_type], ::String, context: "#{context}[:restriction_type]")
        Hearth::Validator.validate!(input[:quantity], ::Integer, context: "#{context}[:quantity]")
        Validators::LocationList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
      end
    end

    class GetCachePolicyConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCachePolicyConfigInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetCachePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCachePolicyInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetCloudFrontOriginAccessIdentityConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCloudFrontOriginAccessIdentityConfigInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetCloudFrontOriginAccessIdentityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCloudFrontOriginAccessIdentityInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetDistributionConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDistributionConfigInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetDistributionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDistributionInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetFieldLevelEncryptionConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFieldLevelEncryptionConfigInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetFieldLevelEncryptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFieldLevelEncryptionInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetFieldLevelEncryptionProfileConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFieldLevelEncryptionProfileConfigInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetFieldLevelEncryptionProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFieldLevelEncryptionProfileInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetFunctionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFunctionInput, context: context)
        Hearth::Validator.validate!(input[:member_name], ::String, context: "#{context}[:member_name]")
        Hearth::Validator.validate!(input[:stage], ::String, context: "#{context}[:stage]")
      end
    end

    class GetInvalidationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInvalidationInput, context: context)
        Hearth::Validator.validate!(input[:distribution_id], ::String, context: "#{context}[:distribution_id]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetKeyGroupConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetKeyGroupConfigInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetKeyGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetKeyGroupInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetMonitoringSubscriptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMonitoringSubscriptionInput, context: context)
        Hearth::Validator.validate!(input[:distribution_id], ::String, context: "#{context}[:distribution_id]")
      end
    end

    class GetOriginRequestPolicyConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetOriginRequestPolicyConfigInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetOriginRequestPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetOriginRequestPolicyInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetPublicKeyConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPublicKeyConfigInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetPublicKeyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPublicKeyInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetRealtimeLogConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRealtimeLogConfigInput, context: context)
        Hearth::Validator.validate!(input[:member_name], ::String, context: "#{context}[:member_name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class GetResponseHeadersPolicyConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResponseHeadersPolicyConfigInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetResponseHeadersPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResponseHeadersPolicyInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetStreamingDistributionConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetStreamingDistributionConfigInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetStreamingDistributionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetStreamingDistributionInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class HeaderList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Headers
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Headers, context: context)
        Hearth::Validator.validate!(input[:quantity], ::Integer, context: "#{context}[:quantity]")
        Validators::HeaderList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
      end
    end

    class InvalidationBatch
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidationBatch, context: context)
        Validators::Paths.validate!(input[:paths], context: "#{context}[:paths]") unless input[:paths].nil?
        Hearth::Validator.validate!(input[:caller_reference], ::String, context: "#{context}[:caller_reference]")
      end
    end

    class KeyGroupConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KeyGroupConfig, context: context)
        Hearth::Validator.validate!(input[:member_name], ::String, context: "#{context}[:member_name]")
        Validators::PublicKeyIdList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:comment], ::String, context: "#{context}[:comment]")
      end
    end

    class KinesisStreamConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KinesisStreamConfig, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:stream_arn], ::String, context: "#{context}[:stream_arn]")
      end
    end

    class LambdaFunctionAssociation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LambdaFunctionAssociation, context: context)
        Hearth::Validator.validate!(input[:lambda_function_arn], ::String, context: "#{context}[:lambda_function_arn]")
        Hearth::Validator.validate!(input[:event_type], ::String, context: "#{context}[:event_type]")
        Hearth::Validator.validate!(input[:include_body], ::TrueClass, ::FalseClass, context: "#{context}[:include_body]")
      end
    end

    class LambdaFunctionAssociationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LambdaFunctionAssociation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LambdaFunctionAssociations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LambdaFunctionAssociations, context: context)
        Hearth::Validator.validate!(input[:quantity], ::Integer, context: "#{context}[:quantity]")
        Validators::LambdaFunctionAssociationList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
      end
    end

    class ListCachePoliciesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCachePoliciesInput, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListCloudFrontOriginAccessIdentitiesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCloudFrontOriginAccessIdentitiesInput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListConflictingAliasesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListConflictingAliasesInput, context: context)
        Hearth::Validator.validate!(input[:distribution_id], ::String, context: "#{context}[:distribution_id]")
        Hearth::Validator.validate!(input[:alias], ::String, context: "#{context}[:alias]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListDistributionsByCachePolicyIdInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDistributionsByCachePolicyIdInput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
        Hearth::Validator.validate!(input[:cache_policy_id], ::String, context: "#{context}[:cache_policy_id]")
      end
    end

    class ListDistributionsByKeyGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDistributionsByKeyGroupInput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
        Hearth::Validator.validate!(input[:key_group_id], ::String, context: "#{context}[:key_group_id]")
      end
    end

    class ListDistributionsByOriginRequestPolicyIdInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDistributionsByOriginRequestPolicyIdInput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
        Hearth::Validator.validate!(input[:origin_request_policy_id], ::String, context: "#{context}[:origin_request_policy_id]")
      end
    end

    class ListDistributionsByRealtimeLogConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDistributionsByRealtimeLogConfigInput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
        Hearth::Validator.validate!(input[:realtime_log_config_name], ::String, context: "#{context}[:realtime_log_config_name]")
        Hearth::Validator.validate!(input[:realtime_log_config_arn], ::String, context: "#{context}[:realtime_log_config_arn]")
      end
    end

    class ListDistributionsByResponseHeadersPolicyIdInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDistributionsByResponseHeadersPolicyIdInput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
        Hearth::Validator.validate!(input[:response_headers_policy_id], ::String, context: "#{context}[:response_headers_policy_id]")
      end
    end

    class ListDistributionsByWebACLIdInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDistributionsByWebACLIdInput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
        Hearth::Validator.validate!(input[:web_acl_id], ::String, context: "#{context}[:web_acl_id]")
      end
    end

    class ListDistributionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDistributionsInput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListFieldLevelEncryptionConfigsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFieldLevelEncryptionConfigsInput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListFieldLevelEncryptionProfilesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFieldLevelEncryptionProfilesInput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListFunctionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFunctionsInput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
        Hearth::Validator.validate!(input[:stage], ::String, context: "#{context}[:stage]")
      end
    end

    class ListInvalidationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListInvalidationsInput, context: context)
        Hearth::Validator.validate!(input[:distribution_id], ::String, context: "#{context}[:distribution_id]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListKeyGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListKeyGroupsInput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListOriginRequestPoliciesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListOriginRequestPoliciesInput, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListPublicKeysInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPublicKeysInput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListRealtimeLogConfigsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRealtimeLogConfigsInput, context: context)
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListResponseHeadersPoliciesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResponseHeadersPoliciesInput, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListStreamingDistributionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStreamingDistributionsInput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource], ::String, context: "#{context}[:resource]")
      end
    end

    class LocationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class LoggingConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoggingConfig, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:include_cookies], ::TrueClass, ::FalseClass, context: "#{context}[:include_cookies]")
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
      end
    end

    class MethodsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class MonitoringSubscription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MonitoringSubscription, context: context)
        Validators::RealtimeMetricsSubscriptionConfig.validate!(input[:realtime_metrics_subscription_config], context: "#{context}[:realtime_metrics_subscription_config]") unless input[:realtime_metrics_subscription_config].nil?
      end
    end

    class Origin
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Origin, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:origin_path], ::String, context: "#{context}[:origin_path]")
        Validators::CustomHeaders.validate!(input[:custom_headers], context: "#{context}[:custom_headers]") unless input[:custom_headers].nil?
        Validators::S3OriginConfig.validate!(input[:s3_origin_config], context: "#{context}[:s3_origin_config]") unless input[:s3_origin_config].nil?
        Validators::CustomOriginConfig.validate!(input[:custom_origin_config], context: "#{context}[:custom_origin_config]") unless input[:custom_origin_config].nil?
        Hearth::Validator.validate!(input[:connection_attempts], ::Integer, context: "#{context}[:connection_attempts]")
        Hearth::Validator.validate!(input[:connection_timeout], ::Integer, context: "#{context}[:connection_timeout]")
        Validators::OriginShield.validate!(input[:origin_shield], context: "#{context}[:origin_shield]") unless input[:origin_shield].nil?
      end
    end

    class OriginCustomHeader
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OriginCustomHeader, context: context)
        Hearth::Validator.validate!(input[:header_name], ::String, context: "#{context}[:header_name]")
        Hearth::Validator.validate!(input[:header_value], ::String, context: "#{context}[:header_value]")
      end
    end

    class OriginCustomHeadersList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::OriginCustomHeader.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OriginGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OriginGroup, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Validators::OriginGroupFailoverCriteria.validate!(input[:failover_criteria], context: "#{context}[:failover_criteria]") unless input[:failover_criteria].nil?
        Validators::OriginGroupMembers.validate!(input[:members], context: "#{context}[:members]") unless input[:members].nil?
      end
    end

    class OriginGroupFailoverCriteria
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OriginGroupFailoverCriteria, context: context)
        Validators::StatusCodes.validate!(input[:status_codes], context: "#{context}[:status_codes]") unless input[:status_codes].nil?
      end
    end

    class OriginGroupList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::OriginGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OriginGroupMember
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OriginGroupMember, context: context)
        Hearth::Validator.validate!(input[:origin_id], ::String, context: "#{context}[:origin_id]")
      end
    end

    class OriginGroupMemberList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::OriginGroupMember.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OriginGroupMembers
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OriginGroupMembers, context: context)
        Hearth::Validator.validate!(input[:quantity], ::Integer, context: "#{context}[:quantity]")
        Validators::OriginGroupMemberList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
      end
    end

    class OriginGroups
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OriginGroups, context: context)
        Hearth::Validator.validate!(input[:quantity], ::Integer, context: "#{context}[:quantity]")
        Validators::OriginGroupList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
      end
    end

    class OriginList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Origin.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OriginRequestPolicyConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OriginRequestPolicyConfig, context: context)
        Hearth::Validator.validate!(input[:comment], ::String, context: "#{context}[:comment]")
        Hearth::Validator.validate!(input[:member_name], ::String, context: "#{context}[:member_name]")
        Validators::OriginRequestPolicyHeadersConfig.validate!(input[:headers_config], context: "#{context}[:headers_config]") unless input[:headers_config].nil?
        Validators::OriginRequestPolicyCookiesConfig.validate!(input[:cookies_config], context: "#{context}[:cookies_config]") unless input[:cookies_config].nil?
        Validators::OriginRequestPolicyQueryStringsConfig.validate!(input[:query_strings_config], context: "#{context}[:query_strings_config]") unless input[:query_strings_config].nil?
      end
    end

    class OriginRequestPolicyCookiesConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OriginRequestPolicyCookiesConfig, context: context)
        Hearth::Validator.validate!(input[:cookie_behavior], ::String, context: "#{context}[:cookie_behavior]")
        Validators::CookieNames.validate!(input[:cookies], context: "#{context}[:cookies]") unless input[:cookies].nil?
      end
    end

    class OriginRequestPolicyHeadersConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OriginRequestPolicyHeadersConfig, context: context)
        Hearth::Validator.validate!(input[:header_behavior], ::String, context: "#{context}[:header_behavior]")
        Validators::Headers.validate!(input[:headers], context: "#{context}[:headers]") unless input[:headers].nil?
      end
    end

    class OriginRequestPolicyQueryStringsConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OriginRequestPolicyQueryStringsConfig, context: context)
        Hearth::Validator.validate!(input[:query_string_behavior], ::String, context: "#{context}[:query_string_behavior]")
        Validators::QueryStringNames.validate!(input[:query_strings], context: "#{context}[:query_strings]") unless input[:query_strings].nil?
      end
    end

    class OriginShield
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OriginShield, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:origin_shield_region], ::String, context: "#{context}[:origin_shield_region]")
      end
    end

    class OriginSslProtocols
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OriginSslProtocols, context: context)
        Hearth::Validator.validate!(input[:quantity], ::Integer, context: "#{context}[:quantity]")
        Validators::SslProtocolsList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
      end
    end

    class Origins
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Origins, context: context)
        Hearth::Validator.validate!(input[:quantity], ::Integer, context: "#{context}[:quantity]")
        Validators::OriginList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
      end
    end

    class ParametersInCacheKeyAndForwardedToOrigin
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ParametersInCacheKeyAndForwardedToOrigin, context: context)
        Hearth::Validator.validate!(input[:enable_accept_encoding_gzip], ::TrueClass, ::FalseClass, context: "#{context}[:enable_accept_encoding_gzip]")
        Hearth::Validator.validate!(input[:enable_accept_encoding_brotli], ::TrueClass, ::FalseClass, context: "#{context}[:enable_accept_encoding_brotli]")
        Validators::CachePolicyHeadersConfig.validate!(input[:headers_config], context: "#{context}[:headers_config]") unless input[:headers_config].nil?
        Validators::CachePolicyCookiesConfig.validate!(input[:cookies_config], context: "#{context}[:cookies_config]") unless input[:cookies_config].nil?
        Validators::CachePolicyQueryStringsConfig.validate!(input[:query_strings_config], context: "#{context}[:query_strings_config]") unless input[:query_strings_config].nil?
      end
    end

    class PathList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Paths
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Paths, context: context)
        Hearth::Validator.validate!(input[:quantity], ::Integer, context: "#{context}[:quantity]")
        Validators::PathList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
      end
    end

    class PublicKeyConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PublicKeyConfig, context: context)
        Hearth::Validator.validate!(input[:caller_reference], ::String, context: "#{context}[:caller_reference]")
        Hearth::Validator.validate!(input[:member_name], ::String, context: "#{context}[:member_name]")
        Hearth::Validator.validate!(input[:encoded_key], ::String, context: "#{context}[:encoded_key]")
        Hearth::Validator.validate!(input[:comment], ::String, context: "#{context}[:comment]")
      end
    end

    class PublicKeyIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PublishFunctionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PublishFunctionInput, context: context)
        Hearth::Validator.validate!(input[:member_name], ::String, context: "#{context}[:member_name]")
        Hearth::Validator.validate!(input[:if_match], ::String, context: "#{context}[:if_match]")
      end
    end

    class QueryArgProfile
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QueryArgProfile, context: context)
        Hearth::Validator.validate!(input[:query_arg], ::String, context: "#{context}[:query_arg]")
        Hearth::Validator.validate!(input[:profile_id], ::String, context: "#{context}[:profile_id]")
      end
    end

    class QueryArgProfileConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QueryArgProfileConfig, context: context)
        Hearth::Validator.validate!(input[:forward_when_query_arg_profile_is_unknown], ::TrueClass, ::FalseClass, context: "#{context}[:forward_when_query_arg_profile_is_unknown]")
        Validators::QueryArgProfiles.validate!(input[:query_arg_profiles], context: "#{context}[:query_arg_profiles]") unless input[:query_arg_profiles].nil?
      end
    end

    class QueryArgProfileList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::QueryArgProfile.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class QueryArgProfiles
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QueryArgProfiles, context: context)
        Hearth::Validator.validate!(input[:quantity], ::Integer, context: "#{context}[:quantity]")
        Validators::QueryArgProfileList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
      end
    end

    class QueryStringCacheKeys
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QueryStringCacheKeys, context: context)
        Hearth::Validator.validate!(input[:quantity], ::Integer, context: "#{context}[:quantity]")
        Validators::QueryStringCacheKeysList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
      end
    end

    class QueryStringCacheKeysList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class QueryStringNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QueryStringNames, context: context)
        Hearth::Validator.validate!(input[:quantity], ::Integer, context: "#{context}[:quantity]")
        Validators::QueryStringNamesList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
      end
    end

    class QueryStringNamesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RealtimeMetricsSubscriptionConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RealtimeMetricsSubscriptionConfig, context: context)
        Hearth::Validator.validate!(input[:realtime_metrics_subscription_status], ::String, context: "#{context}[:realtime_metrics_subscription_status]")
      end
    end

    class ResponseHeadersPolicyAccessControlAllowHeaders
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResponseHeadersPolicyAccessControlAllowHeaders, context: context)
        Hearth::Validator.validate!(input[:quantity], ::Integer, context: "#{context}[:quantity]")
        Validators::AccessControlAllowHeadersList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
      end
    end

    class ResponseHeadersPolicyAccessControlAllowMethods
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResponseHeadersPolicyAccessControlAllowMethods, context: context)
        Hearth::Validator.validate!(input[:quantity], ::Integer, context: "#{context}[:quantity]")
        Validators::AccessControlAllowMethodsList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
      end
    end

    class ResponseHeadersPolicyAccessControlAllowOrigins
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResponseHeadersPolicyAccessControlAllowOrigins, context: context)
        Hearth::Validator.validate!(input[:quantity], ::Integer, context: "#{context}[:quantity]")
        Validators::AccessControlAllowOriginsList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
      end
    end

    class ResponseHeadersPolicyAccessControlExposeHeaders
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResponseHeadersPolicyAccessControlExposeHeaders, context: context)
        Hearth::Validator.validate!(input[:quantity], ::Integer, context: "#{context}[:quantity]")
        Validators::AccessControlExposeHeadersList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
      end
    end

    class ResponseHeadersPolicyConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResponseHeadersPolicyConfig, context: context)
        Hearth::Validator.validate!(input[:comment], ::String, context: "#{context}[:comment]")
        Hearth::Validator.validate!(input[:member_name], ::String, context: "#{context}[:member_name]")
        Validators::ResponseHeadersPolicyCorsConfig.validate!(input[:cors_config], context: "#{context}[:cors_config]") unless input[:cors_config].nil?
        Validators::ResponseHeadersPolicySecurityHeadersConfig.validate!(input[:security_headers_config], context: "#{context}[:security_headers_config]") unless input[:security_headers_config].nil?
        Validators::ResponseHeadersPolicyCustomHeadersConfig.validate!(input[:custom_headers_config], context: "#{context}[:custom_headers_config]") unless input[:custom_headers_config].nil?
      end
    end

    class ResponseHeadersPolicyContentSecurityPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResponseHeadersPolicyContentSecurityPolicy, context: context)
        Hearth::Validator.validate!(input[:override], ::TrueClass, ::FalseClass, context: "#{context}[:override]")
        Hearth::Validator.validate!(input[:content_security_policy], ::String, context: "#{context}[:content_security_policy]")
      end
    end

    class ResponseHeadersPolicyContentTypeOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResponseHeadersPolicyContentTypeOptions, context: context)
        Hearth::Validator.validate!(input[:override], ::TrueClass, ::FalseClass, context: "#{context}[:override]")
      end
    end

    class ResponseHeadersPolicyCorsConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResponseHeadersPolicyCorsConfig, context: context)
        Validators::ResponseHeadersPolicyAccessControlAllowOrigins.validate!(input[:access_control_allow_origins], context: "#{context}[:access_control_allow_origins]") unless input[:access_control_allow_origins].nil?
        Validators::ResponseHeadersPolicyAccessControlAllowHeaders.validate!(input[:access_control_allow_headers], context: "#{context}[:access_control_allow_headers]") unless input[:access_control_allow_headers].nil?
        Validators::ResponseHeadersPolicyAccessControlAllowMethods.validate!(input[:access_control_allow_methods], context: "#{context}[:access_control_allow_methods]") unless input[:access_control_allow_methods].nil?
        Hearth::Validator.validate!(input[:access_control_allow_credentials], ::TrueClass, ::FalseClass, context: "#{context}[:access_control_allow_credentials]")
        Validators::ResponseHeadersPolicyAccessControlExposeHeaders.validate!(input[:access_control_expose_headers], context: "#{context}[:access_control_expose_headers]") unless input[:access_control_expose_headers].nil?
        Hearth::Validator.validate!(input[:access_control_max_age_sec], ::Integer, context: "#{context}[:access_control_max_age_sec]")
        Hearth::Validator.validate!(input[:origin_override], ::TrueClass, ::FalseClass, context: "#{context}[:origin_override]")
      end
    end

    class ResponseHeadersPolicyCustomHeader
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResponseHeadersPolicyCustomHeader, context: context)
        Hearth::Validator.validate!(input[:header], ::String, context: "#{context}[:header]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:override], ::TrueClass, ::FalseClass, context: "#{context}[:override]")
      end
    end

    class ResponseHeadersPolicyCustomHeaderList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ResponseHeadersPolicyCustomHeader.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResponseHeadersPolicyCustomHeadersConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResponseHeadersPolicyCustomHeadersConfig, context: context)
        Hearth::Validator.validate!(input[:quantity], ::Integer, context: "#{context}[:quantity]")
        Validators::ResponseHeadersPolicyCustomHeaderList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
      end
    end

    class ResponseHeadersPolicyFrameOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResponseHeadersPolicyFrameOptions, context: context)
        Hearth::Validator.validate!(input[:override], ::TrueClass, ::FalseClass, context: "#{context}[:override]")
        Hearth::Validator.validate!(input[:frame_option], ::String, context: "#{context}[:frame_option]")
      end
    end

    class ResponseHeadersPolicyReferrerPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResponseHeadersPolicyReferrerPolicy, context: context)
        Hearth::Validator.validate!(input[:override], ::TrueClass, ::FalseClass, context: "#{context}[:override]")
        Hearth::Validator.validate!(input[:referrer_policy], ::String, context: "#{context}[:referrer_policy]")
      end
    end

    class ResponseHeadersPolicySecurityHeadersConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResponseHeadersPolicySecurityHeadersConfig, context: context)
        Validators::ResponseHeadersPolicyXSSProtection.validate!(input[:xss_protection], context: "#{context}[:xss_protection]") unless input[:xss_protection].nil?
        Validators::ResponseHeadersPolicyFrameOptions.validate!(input[:frame_options], context: "#{context}[:frame_options]") unless input[:frame_options].nil?
        Validators::ResponseHeadersPolicyReferrerPolicy.validate!(input[:referrer_policy], context: "#{context}[:referrer_policy]") unless input[:referrer_policy].nil?
        Validators::ResponseHeadersPolicyContentSecurityPolicy.validate!(input[:content_security_policy], context: "#{context}[:content_security_policy]") unless input[:content_security_policy].nil?
        Validators::ResponseHeadersPolicyContentTypeOptions.validate!(input[:content_type_options], context: "#{context}[:content_type_options]") unless input[:content_type_options].nil?
        Validators::ResponseHeadersPolicyStrictTransportSecurity.validate!(input[:strict_transport_security], context: "#{context}[:strict_transport_security]") unless input[:strict_transport_security].nil?
      end
    end

    class ResponseHeadersPolicyStrictTransportSecurity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResponseHeadersPolicyStrictTransportSecurity, context: context)
        Hearth::Validator.validate!(input[:override], ::TrueClass, ::FalseClass, context: "#{context}[:override]")
        Hearth::Validator.validate!(input[:include_subdomains], ::TrueClass, ::FalseClass, context: "#{context}[:include_subdomains]")
        Hearth::Validator.validate!(input[:preload], ::TrueClass, ::FalseClass, context: "#{context}[:preload]")
        Hearth::Validator.validate!(input[:access_control_max_age_sec], ::Integer, context: "#{context}[:access_control_max_age_sec]")
      end
    end

    class ResponseHeadersPolicyXSSProtection
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResponseHeadersPolicyXSSProtection, context: context)
        Hearth::Validator.validate!(input[:override], ::TrueClass, ::FalseClass, context: "#{context}[:override]")
        Hearth::Validator.validate!(input[:protection], ::TrueClass, ::FalseClass, context: "#{context}[:protection]")
        Hearth::Validator.validate!(input[:mode_block], ::TrueClass, ::FalseClass, context: "#{context}[:mode_block]")
        Hearth::Validator.validate!(input[:report_uri], ::String, context: "#{context}[:report_uri]")
      end
    end

    class Restrictions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Restrictions, context: context)
        Validators::GeoRestriction.validate!(input[:geo_restriction], context: "#{context}[:geo_restriction]") unless input[:geo_restriction].nil?
      end
    end

    class S3Origin
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3Origin, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:origin_access_identity], ::String, context: "#{context}[:origin_access_identity]")
      end
    end

    class S3OriginConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3OriginConfig, context: context)
        Hearth::Validator.validate!(input[:origin_access_identity], ::String, context: "#{context}[:origin_access_identity]")
      end
    end

    class SslProtocolsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class StatusCodeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::Integer, context: "#{context}[#{index}]")
        end
      end
    end

    class StatusCodes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StatusCodes, context: context)
        Hearth::Validator.validate!(input[:quantity], ::Integer, context: "#{context}[:quantity]")
        Validators::StatusCodeList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
      end
    end

    class StreamingDistributionConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StreamingDistributionConfig, context: context)
        Hearth::Validator.validate!(input[:caller_reference], ::String, context: "#{context}[:caller_reference]")
        Validators::S3Origin.validate!(input[:s3_origin], context: "#{context}[:s3_origin]") unless input[:s3_origin].nil?
        Validators::Aliases.validate!(input[:aliases], context: "#{context}[:aliases]") unless input[:aliases].nil?
        Hearth::Validator.validate!(input[:comment], ::String, context: "#{context}[:comment]")
        Validators::StreamingLoggingConfig.validate!(input[:logging], context: "#{context}[:logging]") unless input[:logging].nil?
        Validators::TrustedSigners.validate!(input[:trusted_signers], context: "#{context}[:trusted_signers]") unless input[:trusted_signers].nil?
        Hearth::Validator.validate!(input[:price_class], ::String, context: "#{context}[:price_class]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class StreamingDistributionConfigWithTags
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StreamingDistributionConfigWithTags, context: context)
        Validators::StreamingDistributionConfig.validate!(input[:streaming_distribution_config], context: "#{context}[:streaming_distribution_config]") unless input[:streaming_distribution_config].nil?
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class StreamingLoggingConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StreamingLoggingConfig, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
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

    class TagKeys
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagKeys, context: context)
        Validators::TagKeyList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
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
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class Tags
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tags, context: context)
        Validators::TagList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
      end
    end

    class TestFunctionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TestFunctionInput, context: context)
        Hearth::Validator.validate!(input[:member_name], ::String, context: "#{context}[:member_name]")
        Hearth::Validator.validate!(input[:if_match], ::String, context: "#{context}[:if_match]")
        Hearth::Validator.validate!(input[:stage], ::String, context: "#{context}[:stage]")
        Hearth::Validator.validate!(input[:event_object], ::String, context: "#{context}[:event_object]")
      end
    end

    class TrustedKeyGroupIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TrustedKeyGroups
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TrustedKeyGroups, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:quantity], ::Integer, context: "#{context}[:quantity]")
        Validators::TrustedKeyGroupIdList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
      end
    end

    class TrustedSigners
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TrustedSigners, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:quantity], ::Integer, context: "#{context}[:quantity]")
        Validators::AwsAccountNumberList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource], ::String, context: "#{context}[:resource]")
        Validators::TagKeys.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UpdateCachePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateCachePolicyInput, context: context)
        Validators::CachePolicyConfig.validate!(input[:cache_policy_config], context: "#{context}[:cache_policy_config]") unless input[:cache_policy_config].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:if_match], ::String, context: "#{context}[:if_match]")
      end
    end

    class UpdateCloudFrontOriginAccessIdentityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateCloudFrontOriginAccessIdentityInput, context: context)
        Validators::CloudFrontOriginAccessIdentityConfig.validate!(input[:cloud_front_origin_access_identity_config], context: "#{context}[:cloud_front_origin_access_identity_config]") unless input[:cloud_front_origin_access_identity_config].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:if_match], ::String, context: "#{context}[:if_match]")
      end
    end

    class UpdateDistributionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDistributionInput, context: context)
        Validators::DistributionConfig.validate!(input[:distribution_config], context: "#{context}[:distribution_config]") unless input[:distribution_config].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:if_match], ::String, context: "#{context}[:if_match]")
      end
    end

    class UpdateFieldLevelEncryptionConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFieldLevelEncryptionConfigInput, context: context)
        Validators::FieldLevelEncryptionConfig.validate!(input[:field_level_encryption_config], context: "#{context}[:field_level_encryption_config]") unless input[:field_level_encryption_config].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:if_match], ::String, context: "#{context}[:if_match]")
      end
    end

    class UpdateFieldLevelEncryptionProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFieldLevelEncryptionProfileInput, context: context)
        Validators::FieldLevelEncryptionProfileConfig.validate!(input[:field_level_encryption_profile_config], context: "#{context}[:field_level_encryption_profile_config]") unless input[:field_level_encryption_profile_config].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:if_match], ::String, context: "#{context}[:if_match]")
      end
    end

    class UpdateFunctionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFunctionInput, context: context)
        Hearth::Validator.validate!(input[:member_name], ::String, context: "#{context}[:member_name]")
        Hearth::Validator.validate!(input[:if_match], ::String, context: "#{context}[:if_match]")
        Validators::FunctionConfig.validate!(input[:function_config], context: "#{context}[:function_config]") unless input[:function_config].nil?
        Hearth::Validator.validate!(input[:function_code], ::String, context: "#{context}[:function_code]")
      end
    end

    class UpdateKeyGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateKeyGroupInput, context: context)
        Validators::KeyGroupConfig.validate!(input[:key_group_config], context: "#{context}[:key_group_config]") unless input[:key_group_config].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:if_match], ::String, context: "#{context}[:if_match]")
      end
    end

    class UpdateOriginRequestPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateOriginRequestPolicyInput, context: context)
        Validators::OriginRequestPolicyConfig.validate!(input[:origin_request_policy_config], context: "#{context}[:origin_request_policy_config]") unless input[:origin_request_policy_config].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:if_match], ::String, context: "#{context}[:if_match]")
      end
    end

    class UpdatePublicKeyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePublicKeyInput, context: context)
        Validators::PublicKeyConfig.validate!(input[:public_key_config], context: "#{context}[:public_key_config]") unless input[:public_key_config].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:if_match], ::String, context: "#{context}[:if_match]")
      end
    end

    class UpdateRealtimeLogConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRealtimeLogConfigInput, context: context)
        Validators::EndPointList.validate!(input[:end_points], context: "#{context}[:end_points]") unless input[:end_points].nil?
        Validators::FieldList.validate!(input[:fields], context: "#{context}[:fields]") unless input[:fields].nil?
        Hearth::Validator.validate!(input[:member_name], ::String, context: "#{context}[:member_name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:sampling_rate], ::Integer, context: "#{context}[:sampling_rate]")
      end
    end

    class UpdateResponseHeadersPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateResponseHeadersPolicyInput, context: context)
        Validators::ResponseHeadersPolicyConfig.validate!(input[:response_headers_policy_config], context: "#{context}[:response_headers_policy_config]") unless input[:response_headers_policy_config].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:if_match], ::String, context: "#{context}[:if_match]")
      end
    end

    class UpdateStreamingDistributionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateStreamingDistributionInput, context: context)
        Validators::StreamingDistributionConfig.validate!(input[:streaming_distribution_config], context: "#{context}[:streaming_distribution_config]") unless input[:streaming_distribution_config].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:if_match], ::String, context: "#{context}[:if_match]")
      end
    end

    class ViewerCertificate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ViewerCertificate, context: context)
        Hearth::Validator.validate!(input[:cloud_front_default_certificate], ::TrueClass, ::FalseClass, context: "#{context}[:cloud_front_default_certificate]")
        Hearth::Validator.validate!(input[:iam_certificate_id], ::String, context: "#{context}[:iam_certificate_id]")
        Hearth::Validator.validate!(input[:acm_certificate_arn], ::String, context: "#{context}[:acm_certificate_arn]")
        Hearth::Validator.validate!(input[:ssl_support_method], ::String, context: "#{context}[:ssl_support_method]")
        Hearth::Validator.validate!(input[:minimum_protocol_version], ::String, context: "#{context}[:minimum_protocol_version]")
        Hearth::Validator.validate!(input[:certificate], ::String, context: "#{context}[:certificate]")
        Hearth::Validator.validate!(input[:certificate_source], ::String, context: "#{context}[:certificate_source]")
      end
    end

  end
end
