# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::Cloudfront
  module Params

    module AccessControlAllowHeadersList
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module AccessControlAllowMethodsList
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module AccessControlAllowOriginsList
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module AccessControlExposeHeadersList
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module AliasList
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module Aliases
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::Aliases, context: context)
        type = Types::Aliases.new
        type.quantity = params[:quantity]
        type.items = AliasList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type
      end
    end

    module AllowedMethods
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::AllowedMethods, context: context)
        type = Types::AllowedMethods.new
        type.quantity = params[:quantity]
        type.items = MethodsList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.cached_methods = CachedMethods.build(params[:cached_methods], context: "#{context}[:cached_methods]") unless params[:cached_methods].nil?
        type
      end
    end

    module AssociateAliasInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::AssociateAliasInput, context: context)
        type = Types::AssociateAliasInput.new
        type.target_distribution_id = params[:target_distribution_id]
        type.alias = params[:alias]
        type
      end
    end

    module AwsAccountNumberList
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module CacheBehavior
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::CacheBehavior, context: context)
        type = Types::CacheBehavior.new
        type.path_pattern = params[:path_pattern]
        type.target_origin_id = params[:target_origin_id]
        type.trusted_signers = TrustedSigners.build(params[:trusted_signers], context: "#{context}[:trusted_signers]") unless params[:trusted_signers].nil?
        type.trusted_key_groups = TrustedKeyGroups.build(params[:trusted_key_groups], context: "#{context}[:trusted_key_groups]") unless params[:trusted_key_groups].nil?
        type.viewer_protocol_policy = params[:viewer_protocol_policy]
        type.allowed_methods = AllowedMethods.build(params[:allowed_methods], context: "#{context}[:allowed_methods]") unless params[:allowed_methods].nil?
        type.smooth_streaming = params[:smooth_streaming]
        type.compress = params[:compress]
        type.lambda_function_associations = LambdaFunctionAssociations.build(params[:lambda_function_associations], context: "#{context}[:lambda_function_associations]") unless params[:lambda_function_associations].nil?
        type.function_associations = FunctionAssociations.build(params[:function_associations], context: "#{context}[:function_associations]") unless params[:function_associations].nil?
        type.field_level_encryption_id = params[:field_level_encryption_id]
        type.realtime_log_config_arn = params[:realtime_log_config_arn]
        type.cache_policy_id = params[:cache_policy_id]
        type.origin_request_policy_id = params[:origin_request_policy_id]
        type.response_headers_policy_id = params[:response_headers_policy_id]
        type.forwarded_values = ForwardedValues.build(params[:forwarded_values], context: "#{context}[:forwarded_values]") unless params[:forwarded_values].nil?
        type.min_ttl = params[:min_ttl]
        type.default_ttl = params[:default_ttl]
        type.max_ttl = params[:max_ttl]
        type
      end
    end

    module CacheBehaviorList
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CacheBehavior.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CacheBehaviors
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::CacheBehaviors, context: context)
        type = Types::CacheBehaviors.new
        type.quantity = params[:quantity]
        type.items = CacheBehaviorList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type
      end
    end

    module CachePolicyConfig
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::CachePolicyConfig, context: context)
        type = Types::CachePolicyConfig.new
        type.comment = params[:comment]
        type.member_name = params[:member_name]
        type.default_ttl = params[:default_ttl]
        type.max_ttl = params[:max_ttl]
        type.min_ttl = params[:min_ttl]
        type.parameters_in_cache_key_and_forwarded_to_origin = ParametersInCacheKeyAndForwardedToOrigin.build(params[:parameters_in_cache_key_and_forwarded_to_origin], context: "#{context}[:parameters_in_cache_key_and_forwarded_to_origin]") unless params[:parameters_in_cache_key_and_forwarded_to_origin].nil?
        type
      end
    end

    module CachePolicyCookiesConfig
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::CachePolicyCookiesConfig, context: context)
        type = Types::CachePolicyCookiesConfig.new
        type.cookie_behavior = params[:cookie_behavior]
        type.cookies = CookieNames.build(params[:cookies], context: "#{context}[:cookies]") unless params[:cookies].nil?
        type
      end
    end

    module CachePolicyHeadersConfig
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::CachePolicyHeadersConfig, context: context)
        type = Types::CachePolicyHeadersConfig.new
        type.header_behavior = params[:header_behavior]
        type.headers = Headers.build(params[:headers], context: "#{context}[:headers]") unless params[:headers].nil?
        type
      end
    end

    module CachePolicyQueryStringsConfig
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::CachePolicyQueryStringsConfig, context: context)
        type = Types::CachePolicyQueryStringsConfig.new
        type.query_string_behavior = params[:query_string_behavior]
        type.query_strings = QueryStringNames.build(params[:query_strings], context: "#{context}[:query_strings]") unless params[:query_strings].nil?
        type
      end
    end

    module CachedMethods
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::CachedMethods, context: context)
        type = Types::CachedMethods.new
        type.quantity = params[:quantity]
        type.items = MethodsList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type
      end
    end

    module CloudFrontOriginAccessIdentityConfig
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::CloudFrontOriginAccessIdentityConfig, context: context)
        type = Types::CloudFrontOriginAccessIdentityConfig.new
        type.caller_reference = params[:caller_reference]
        type.comment = params[:comment]
        type
      end
    end

    module ContentTypeProfile
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::ContentTypeProfile, context: context)
        type = Types::ContentTypeProfile.new
        type.format = params[:format]
        type.profile_id = params[:profile_id]
        type.content_type = params[:content_type]
        type
      end
    end

    module ContentTypeProfileConfig
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::ContentTypeProfileConfig, context: context)
        type = Types::ContentTypeProfileConfig.new
        type.forward_when_content_type_is_unknown = params[:forward_when_content_type_is_unknown]
        type.content_type_profiles = ContentTypeProfiles.build(params[:content_type_profiles], context: "#{context}[:content_type_profiles]") unless params[:content_type_profiles].nil?
        type
      end
    end

    module ContentTypeProfileList
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ContentTypeProfile.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ContentTypeProfiles
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::ContentTypeProfiles, context: context)
        type = Types::ContentTypeProfiles.new
        type.quantity = params[:quantity]
        type.items = ContentTypeProfileList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type
      end
    end

    module CookieNameList
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module CookieNames
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::CookieNames, context: context)
        type = Types::CookieNames.new
        type.quantity = params[:quantity]
        type.items = CookieNameList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type
      end
    end

    module CookiePreference
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::CookiePreference, context: context)
        type = Types::CookiePreference.new
        type.forward = params[:forward]
        type.whitelisted_names = CookieNames.build(params[:whitelisted_names], context: "#{context}[:whitelisted_names]") unless params[:whitelisted_names].nil?
        type
      end
    end

    module CreateCachePolicyInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::CreateCachePolicyInput, context: context)
        type = Types::CreateCachePolicyInput.new
        type.cache_policy_config = CachePolicyConfig.build(params[:cache_policy_config], context: "#{context}[:cache_policy_config]") unless params[:cache_policy_config].nil?
        type
      end
    end

    module CreateCloudFrontOriginAccessIdentityInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::CreateCloudFrontOriginAccessIdentityInput, context: context)
        type = Types::CreateCloudFrontOriginAccessIdentityInput.new
        type.cloud_front_origin_access_identity_config = CloudFrontOriginAccessIdentityConfig.build(params[:cloud_front_origin_access_identity_config], context: "#{context}[:cloud_front_origin_access_identity_config]") unless params[:cloud_front_origin_access_identity_config].nil?
        type
      end
    end

    module CreateDistributionInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::CreateDistributionInput, context: context)
        type = Types::CreateDistributionInput.new
        type.distribution_config = DistributionConfig.build(params[:distribution_config], context: "#{context}[:distribution_config]") unless params[:distribution_config].nil?
        type
      end
    end

    module CreateDistributionWithTagsInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::CreateDistributionWithTagsInput, context: context)
        type = Types::CreateDistributionWithTagsInput.new
        type.distribution_config_with_tags = DistributionConfigWithTags.build(params[:distribution_config_with_tags], context: "#{context}[:distribution_config_with_tags]") unless params[:distribution_config_with_tags].nil?
        type
      end
    end

    module CreateFieldLevelEncryptionConfigInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::CreateFieldLevelEncryptionConfigInput, context: context)
        type = Types::CreateFieldLevelEncryptionConfigInput.new
        type.field_level_encryption_config = FieldLevelEncryptionConfig.build(params[:field_level_encryption_config], context: "#{context}[:field_level_encryption_config]") unless params[:field_level_encryption_config].nil?
        type
      end
    end

    module CreateFieldLevelEncryptionProfileInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::CreateFieldLevelEncryptionProfileInput, context: context)
        type = Types::CreateFieldLevelEncryptionProfileInput.new
        type.field_level_encryption_profile_config = FieldLevelEncryptionProfileConfig.build(params[:field_level_encryption_profile_config], context: "#{context}[:field_level_encryption_profile_config]") unless params[:field_level_encryption_profile_config].nil?
        type
      end
    end

    module CreateFunctionInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::CreateFunctionInput, context: context)
        type = Types::CreateFunctionInput.new
        type.member_name = params[:member_name]
        type.function_config = FunctionConfig.build(params[:function_config], context: "#{context}[:function_config]") unless params[:function_config].nil?
        type.function_code = params[:function_code]
        type
      end
    end

    module CreateInvalidationInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::CreateInvalidationInput, context: context)
        type = Types::CreateInvalidationInput.new
        type.distribution_id = params[:distribution_id]
        type.invalidation_batch = InvalidationBatch.build(params[:invalidation_batch], context: "#{context}[:invalidation_batch]") unless params[:invalidation_batch].nil?
        type
      end
    end

    module CreateKeyGroupInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::CreateKeyGroupInput, context: context)
        type = Types::CreateKeyGroupInput.new
        type.key_group_config = KeyGroupConfig.build(params[:key_group_config], context: "#{context}[:key_group_config]") unless params[:key_group_config].nil?
        type
      end
    end

    module CreateMonitoringSubscriptionInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::CreateMonitoringSubscriptionInput, context: context)
        type = Types::CreateMonitoringSubscriptionInput.new
        type.distribution_id = params[:distribution_id]
        type.monitoring_subscription = MonitoringSubscription.build(params[:monitoring_subscription], context: "#{context}[:monitoring_subscription]") unless params[:monitoring_subscription].nil?
        type
      end
    end

    module CreateOriginRequestPolicyInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::CreateOriginRequestPolicyInput, context: context)
        type = Types::CreateOriginRequestPolicyInput.new
        type.origin_request_policy_config = OriginRequestPolicyConfig.build(params[:origin_request_policy_config], context: "#{context}[:origin_request_policy_config]") unless params[:origin_request_policy_config].nil?
        type
      end
    end

    module CreatePublicKeyInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::CreatePublicKeyInput, context: context)
        type = Types::CreatePublicKeyInput.new
        type.public_key_config = PublicKeyConfig.build(params[:public_key_config], context: "#{context}[:public_key_config]") unless params[:public_key_config].nil?
        type
      end
    end

    module CreateRealtimeLogConfigInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::CreateRealtimeLogConfigInput, context: context)
        type = Types::CreateRealtimeLogConfigInput.new
        type.end_points = EndPointList.build(params[:end_points], context: "#{context}[:end_points]") unless params[:end_points].nil?
        type.fields = FieldList.build(params[:fields], context: "#{context}[:fields]") unless params[:fields].nil?
        type.member_name = params[:member_name]
        type.sampling_rate = params[:sampling_rate]
        type
      end
    end

    module CreateResponseHeadersPolicyInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::CreateResponseHeadersPolicyInput, context: context)
        type = Types::CreateResponseHeadersPolicyInput.new
        type.response_headers_policy_config = ResponseHeadersPolicyConfig.build(params[:response_headers_policy_config], context: "#{context}[:response_headers_policy_config]") unless params[:response_headers_policy_config].nil?
        type
      end
    end

    module CreateStreamingDistributionInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::CreateStreamingDistributionInput, context: context)
        type = Types::CreateStreamingDistributionInput.new
        type.streaming_distribution_config = StreamingDistributionConfig.build(params[:streaming_distribution_config], context: "#{context}[:streaming_distribution_config]") unless params[:streaming_distribution_config].nil?
        type
      end
    end

    module CreateStreamingDistributionWithTagsInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::CreateStreamingDistributionWithTagsInput, context: context)
        type = Types::CreateStreamingDistributionWithTagsInput.new
        type.streaming_distribution_config_with_tags = StreamingDistributionConfigWithTags.build(params[:streaming_distribution_config_with_tags], context: "#{context}[:streaming_distribution_config_with_tags]") unless params[:streaming_distribution_config_with_tags].nil?
        type
      end
    end

    module CustomErrorResponse
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::CustomErrorResponse, context: context)
        type = Types::CustomErrorResponse.new
        type.error_code = params[:error_code]
        type.response_page_path = params[:response_page_path]
        type.response_code = params[:response_code]
        type.error_caching_min_ttl = params[:error_caching_min_ttl]
        type
      end
    end

    module CustomErrorResponseList
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CustomErrorResponse.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CustomErrorResponses
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::CustomErrorResponses, context: context)
        type = Types::CustomErrorResponses.new
        type.quantity = params[:quantity]
        type.items = CustomErrorResponseList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type
      end
    end

    module CustomHeaders
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::CustomHeaders, context: context)
        type = Types::CustomHeaders.new
        type.quantity = params[:quantity]
        type.items = OriginCustomHeadersList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type
      end
    end

    module CustomOriginConfig
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::CustomOriginConfig, context: context)
        type = Types::CustomOriginConfig.new
        type.http_port = params[:http_port]
        type.https_port = params[:https_port]
        type.origin_protocol_policy = params[:origin_protocol_policy]
        type.origin_ssl_protocols = OriginSslProtocols.build(params[:origin_ssl_protocols], context: "#{context}[:origin_ssl_protocols]") unless params[:origin_ssl_protocols].nil?
        type.origin_read_timeout = params[:origin_read_timeout]
        type.origin_keepalive_timeout = params[:origin_keepalive_timeout]
        type
      end
    end

    module DefaultCacheBehavior
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::DefaultCacheBehavior, context: context)
        type = Types::DefaultCacheBehavior.new
        type.target_origin_id = params[:target_origin_id]
        type.trusted_signers = TrustedSigners.build(params[:trusted_signers], context: "#{context}[:trusted_signers]") unless params[:trusted_signers].nil?
        type.trusted_key_groups = TrustedKeyGroups.build(params[:trusted_key_groups], context: "#{context}[:trusted_key_groups]") unless params[:trusted_key_groups].nil?
        type.viewer_protocol_policy = params[:viewer_protocol_policy]
        type.allowed_methods = AllowedMethods.build(params[:allowed_methods], context: "#{context}[:allowed_methods]") unless params[:allowed_methods].nil?
        type.smooth_streaming = params[:smooth_streaming]
        type.compress = params[:compress]
        type.lambda_function_associations = LambdaFunctionAssociations.build(params[:lambda_function_associations], context: "#{context}[:lambda_function_associations]") unless params[:lambda_function_associations].nil?
        type.function_associations = FunctionAssociations.build(params[:function_associations], context: "#{context}[:function_associations]") unless params[:function_associations].nil?
        type.field_level_encryption_id = params[:field_level_encryption_id]
        type.realtime_log_config_arn = params[:realtime_log_config_arn]
        type.cache_policy_id = params[:cache_policy_id]
        type.origin_request_policy_id = params[:origin_request_policy_id]
        type.response_headers_policy_id = params[:response_headers_policy_id]
        type.forwarded_values = ForwardedValues.build(params[:forwarded_values], context: "#{context}[:forwarded_values]") unless params[:forwarded_values].nil?
        type.min_ttl = params[:min_ttl]
        type.default_ttl = params[:default_ttl]
        type.max_ttl = params[:max_ttl]
        type
      end
    end

    module DeleteCachePolicyInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::DeleteCachePolicyInput, context: context)
        type = Types::DeleteCachePolicyInput.new
        type.id = params[:id]
        type.if_match = params[:if_match]
        type
      end
    end

    module DeleteCloudFrontOriginAccessIdentityInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::DeleteCloudFrontOriginAccessIdentityInput, context: context)
        type = Types::DeleteCloudFrontOriginAccessIdentityInput.new
        type.id = params[:id]
        type.if_match = params[:if_match]
        type
      end
    end

    module DeleteDistributionInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::DeleteDistributionInput, context: context)
        type = Types::DeleteDistributionInput.new
        type.id = params[:id]
        type.if_match = params[:if_match]
        type
      end
    end

    module DeleteFieldLevelEncryptionConfigInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::DeleteFieldLevelEncryptionConfigInput, context: context)
        type = Types::DeleteFieldLevelEncryptionConfigInput.new
        type.id = params[:id]
        type.if_match = params[:if_match]
        type
      end
    end

    module DeleteFieldLevelEncryptionProfileInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::DeleteFieldLevelEncryptionProfileInput, context: context)
        type = Types::DeleteFieldLevelEncryptionProfileInput.new
        type.id = params[:id]
        type.if_match = params[:if_match]
        type
      end
    end

    module DeleteFunctionInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::DeleteFunctionInput, context: context)
        type = Types::DeleteFunctionInput.new
        type.member_name = params[:member_name]
        type.if_match = params[:if_match]
        type
      end
    end

    module DeleteKeyGroupInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::DeleteKeyGroupInput, context: context)
        type = Types::DeleteKeyGroupInput.new
        type.id = params[:id]
        type.if_match = params[:if_match]
        type
      end
    end

    module DeleteMonitoringSubscriptionInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::DeleteMonitoringSubscriptionInput, context: context)
        type = Types::DeleteMonitoringSubscriptionInput.new
        type.distribution_id = params[:distribution_id]
        type
      end
    end

    module DeleteOriginRequestPolicyInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::DeleteOriginRequestPolicyInput, context: context)
        type = Types::DeleteOriginRequestPolicyInput.new
        type.id = params[:id]
        type.if_match = params[:if_match]
        type
      end
    end

    module DeletePublicKeyInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::DeletePublicKeyInput, context: context)
        type = Types::DeletePublicKeyInput.new
        type.id = params[:id]
        type.if_match = params[:if_match]
        type
      end
    end

    module DeleteRealtimeLogConfigInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::DeleteRealtimeLogConfigInput, context: context)
        type = Types::DeleteRealtimeLogConfigInput.new
        type.member_name = params[:member_name]
        type.arn = params[:arn]
        type
      end
    end

    module DeleteResponseHeadersPolicyInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::DeleteResponseHeadersPolicyInput, context: context)
        type = Types::DeleteResponseHeadersPolicyInput.new
        type.id = params[:id]
        type.if_match = params[:if_match]
        type
      end
    end

    module DeleteStreamingDistributionInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::DeleteStreamingDistributionInput, context: context)
        type = Types::DeleteStreamingDistributionInput.new
        type.id = params[:id]
        type.if_match = params[:if_match]
        type
      end
    end

    module DescribeFunctionInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::DescribeFunctionInput, context: context)
        type = Types::DescribeFunctionInput.new
        type.member_name = params[:member_name]
        type.stage = params[:stage]
        type
      end
    end

    module DistributionConfig
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::DistributionConfig, context: context)
        type = Types::DistributionConfig.new
        type.caller_reference = params[:caller_reference]
        type.aliases = Aliases.build(params[:aliases], context: "#{context}[:aliases]") unless params[:aliases].nil?
        type.default_root_object = params[:default_root_object]
        type.origins = Origins.build(params[:origins], context: "#{context}[:origins]") unless params[:origins].nil?
        type.origin_groups = OriginGroups.build(params[:origin_groups], context: "#{context}[:origin_groups]") unless params[:origin_groups].nil?
        type.default_cache_behavior = DefaultCacheBehavior.build(params[:default_cache_behavior], context: "#{context}[:default_cache_behavior]") unless params[:default_cache_behavior].nil?
        type.cache_behaviors = CacheBehaviors.build(params[:cache_behaviors], context: "#{context}[:cache_behaviors]") unless params[:cache_behaviors].nil?
        type.custom_error_responses = CustomErrorResponses.build(params[:custom_error_responses], context: "#{context}[:custom_error_responses]") unless params[:custom_error_responses].nil?
        type.comment = params[:comment]
        type.logging = LoggingConfig.build(params[:logging], context: "#{context}[:logging]") unless params[:logging].nil?
        type.price_class = params[:price_class]
        type.enabled = params[:enabled]
        type.viewer_certificate = ViewerCertificate.build(params[:viewer_certificate], context: "#{context}[:viewer_certificate]") unless params[:viewer_certificate].nil?
        type.restrictions = Restrictions.build(params[:restrictions], context: "#{context}[:restrictions]") unless params[:restrictions].nil?
        type.web_acl_id = params[:web_acl_id]
        type.http_version = params[:http_version]
        type.is_ipv6_enabled = params[:is_ipv6_enabled]
        type
      end
    end

    module DistributionConfigWithTags
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::DistributionConfigWithTags, context: context)
        type = Types::DistributionConfigWithTags.new
        type.distribution_config = DistributionConfig.build(params[:distribution_config], context: "#{context}[:distribution_config]") unless params[:distribution_config].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module EncryptionEntities
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::EncryptionEntities, context: context)
        type = Types::EncryptionEntities.new
        type.quantity = params[:quantity]
        type.items = EncryptionEntityList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type
      end
    end

    module EncryptionEntity
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::EncryptionEntity, context: context)
        type = Types::EncryptionEntity.new
        type.public_key_id = params[:public_key_id]
        type.provider_id = params[:provider_id]
        type.field_patterns = FieldPatterns.build(params[:field_patterns], context: "#{context}[:field_patterns]") unless params[:field_patterns].nil?
        type
      end
    end

    module EncryptionEntityList
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EncryptionEntity.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EndPoint
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::EndPoint, context: context)
        type = Types::EndPoint.new
        type.stream_type = params[:stream_type]
        type.kinesis_stream_config = KinesisStreamConfig.build(params[:kinesis_stream_config], context: "#{context}[:kinesis_stream_config]") unless params[:kinesis_stream_config].nil?
        type
      end
    end

    module EndPointList
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EndPoint.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FieldLevelEncryptionConfig
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::FieldLevelEncryptionConfig, context: context)
        type = Types::FieldLevelEncryptionConfig.new
        type.caller_reference = params[:caller_reference]
        type.comment = params[:comment]
        type.query_arg_profile_config = QueryArgProfileConfig.build(params[:query_arg_profile_config], context: "#{context}[:query_arg_profile_config]") unless params[:query_arg_profile_config].nil?
        type.content_type_profile_config = ContentTypeProfileConfig.build(params[:content_type_profile_config], context: "#{context}[:content_type_profile_config]") unless params[:content_type_profile_config].nil?
        type
      end
    end

    module FieldLevelEncryptionProfileConfig
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::FieldLevelEncryptionProfileConfig, context: context)
        type = Types::FieldLevelEncryptionProfileConfig.new
        type.member_name = params[:member_name]
        type.caller_reference = params[:caller_reference]
        type.comment = params[:comment]
        type.encryption_entities = EncryptionEntities.build(params[:encryption_entities], context: "#{context}[:encryption_entities]") unless params[:encryption_entities].nil?
        type
      end
    end

    module FieldList
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module FieldPatternList
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module FieldPatterns
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::FieldPatterns, context: context)
        type = Types::FieldPatterns.new
        type.quantity = params[:quantity]
        type.items = FieldPatternList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type
      end
    end

    module ForwardedValues
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::ForwardedValues, context: context)
        type = Types::ForwardedValues.new
        type.query_string = params[:query_string]
        type.cookies = CookiePreference.build(params[:cookies], context: "#{context}[:cookies]") unless params[:cookies].nil?
        type.headers = Headers.build(params[:headers], context: "#{context}[:headers]") unless params[:headers].nil?
        type.query_string_cache_keys = QueryStringCacheKeys.build(params[:query_string_cache_keys], context: "#{context}[:query_string_cache_keys]") unless params[:query_string_cache_keys].nil?
        type
      end
    end

    module FunctionAssociation
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::FunctionAssociation, context: context)
        type = Types::FunctionAssociation.new
        type.function_arn = params[:function_arn]
        type.event_type = params[:event_type]
        type
      end
    end

    module FunctionAssociationList
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FunctionAssociation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FunctionAssociations
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::FunctionAssociations, context: context)
        type = Types::FunctionAssociations.new
        type.quantity = params[:quantity]
        type.items = FunctionAssociationList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type
      end
    end

    module FunctionConfig
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::FunctionConfig, context: context)
        type = Types::FunctionConfig.new
        type.comment = params[:comment]
        type.runtime = params[:runtime]
        type
      end
    end

    module GeoRestriction
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::GeoRestriction, context: context)
        type = Types::GeoRestriction.new
        type.restriction_type = params[:restriction_type]
        type.quantity = params[:quantity]
        type.items = LocationList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type
      end
    end

    module GetCachePolicyConfigInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::GetCachePolicyConfigInput, context: context)
        type = Types::GetCachePolicyConfigInput.new
        type.id = params[:id]
        type
      end
    end

    module GetCachePolicyInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::GetCachePolicyInput, context: context)
        type = Types::GetCachePolicyInput.new
        type.id = params[:id]
        type
      end
    end

    module GetCloudFrontOriginAccessIdentityConfigInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::GetCloudFrontOriginAccessIdentityConfigInput, context: context)
        type = Types::GetCloudFrontOriginAccessIdentityConfigInput.new
        type.id = params[:id]
        type
      end
    end

    module GetCloudFrontOriginAccessIdentityInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::GetCloudFrontOriginAccessIdentityInput, context: context)
        type = Types::GetCloudFrontOriginAccessIdentityInput.new
        type.id = params[:id]
        type
      end
    end

    module GetDistributionConfigInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::GetDistributionConfigInput, context: context)
        type = Types::GetDistributionConfigInput.new
        type.id = params[:id]
        type
      end
    end

    module GetDistributionInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::GetDistributionInput, context: context)
        type = Types::GetDistributionInput.new
        type.id = params[:id]
        type
      end
    end

    module GetFieldLevelEncryptionConfigInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::GetFieldLevelEncryptionConfigInput, context: context)
        type = Types::GetFieldLevelEncryptionConfigInput.new
        type.id = params[:id]
        type
      end
    end

    module GetFieldLevelEncryptionInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::GetFieldLevelEncryptionInput, context: context)
        type = Types::GetFieldLevelEncryptionInput.new
        type.id = params[:id]
        type
      end
    end

    module GetFieldLevelEncryptionProfileConfigInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::GetFieldLevelEncryptionProfileConfigInput, context: context)
        type = Types::GetFieldLevelEncryptionProfileConfigInput.new
        type.id = params[:id]
        type
      end
    end

    module GetFieldLevelEncryptionProfileInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::GetFieldLevelEncryptionProfileInput, context: context)
        type = Types::GetFieldLevelEncryptionProfileInput.new
        type.id = params[:id]
        type
      end
    end

    module GetFunctionInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::GetFunctionInput, context: context)
        type = Types::GetFunctionInput.new
        type.member_name = params[:member_name]
        type.stage = params[:stage]
        type
      end
    end

    module GetInvalidationInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::GetInvalidationInput, context: context)
        type = Types::GetInvalidationInput.new
        type.distribution_id = params[:distribution_id]
        type.id = params[:id]
        type
      end
    end

    module GetKeyGroupConfigInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::GetKeyGroupConfigInput, context: context)
        type = Types::GetKeyGroupConfigInput.new
        type.id = params[:id]
        type
      end
    end

    module GetKeyGroupInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::GetKeyGroupInput, context: context)
        type = Types::GetKeyGroupInput.new
        type.id = params[:id]
        type
      end
    end

    module GetMonitoringSubscriptionInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::GetMonitoringSubscriptionInput, context: context)
        type = Types::GetMonitoringSubscriptionInput.new
        type.distribution_id = params[:distribution_id]
        type
      end
    end

    module GetOriginRequestPolicyConfigInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::GetOriginRequestPolicyConfigInput, context: context)
        type = Types::GetOriginRequestPolicyConfigInput.new
        type.id = params[:id]
        type
      end
    end

    module GetOriginRequestPolicyInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::GetOriginRequestPolicyInput, context: context)
        type = Types::GetOriginRequestPolicyInput.new
        type.id = params[:id]
        type
      end
    end

    module GetPublicKeyConfigInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::GetPublicKeyConfigInput, context: context)
        type = Types::GetPublicKeyConfigInput.new
        type.id = params[:id]
        type
      end
    end

    module GetPublicKeyInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::GetPublicKeyInput, context: context)
        type = Types::GetPublicKeyInput.new
        type.id = params[:id]
        type
      end
    end

    module GetRealtimeLogConfigInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::GetRealtimeLogConfigInput, context: context)
        type = Types::GetRealtimeLogConfigInput.new
        type.member_name = params[:member_name]
        type.arn = params[:arn]
        type
      end
    end

    module GetResponseHeadersPolicyConfigInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::GetResponseHeadersPolicyConfigInput, context: context)
        type = Types::GetResponseHeadersPolicyConfigInput.new
        type.id = params[:id]
        type
      end
    end

    module GetResponseHeadersPolicyInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::GetResponseHeadersPolicyInput, context: context)
        type = Types::GetResponseHeadersPolicyInput.new
        type.id = params[:id]
        type
      end
    end

    module GetStreamingDistributionConfigInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::GetStreamingDistributionConfigInput, context: context)
        type = Types::GetStreamingDistributionConfigInput.new
        type.id = params[:id]
        type
      end
    end

    module GetStreamingDistributionInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::GetStreamingDistributionInput, context: context)
        type = Types::GetStreamingDistributionInput.new
        type.id = params[:id]
        type
      end
    end

    module HeaderList
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module Headers
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::Headers, context: context)
        type = Types::Headers.new
        type.quantity = params[:quantity]
        type.items = HeaderList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type
      end
    end

    module InvalidationBatch
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::InvalidationBatch, context: context)
        type = Types::InvalidationBatch.new
        type.paths = Paths.build(params[:paths], context: "#{context}[:paths]") unless params[:paths].nil?
        type.caller_reference = params[:caller_reference]
        type
      end
    end

    module KeyGroupConfig
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::KeyGroupConfig, context: context)
        type = Types::KeyGroupConfig.new
        type.member_name = params[:member_name]
        type.items = PublicKeyIdList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.comment = params[:comment]
        type
      end
    end

    module KinesisStreamConfig
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::KinesisStreamConfig, context: context)
        type = Types::KinesisStreamConfig.new
        type.role_arn = params[:role_arn]
        type.stream_arn = params[:stream_arn]
        type
      end
    end

    module LambdaFunctionAssociation
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::LambdaFunctionAssociation, context: context)
        type = Types::LambdaFunctionAssociation.new
        type.lambda_function_arn = params[:lambda_function_arn]
        type.event_type = params[:event_type]
        type.include_body = params[:include_body]
        type
      end
    end

    module LambdaFunctionAssociationList
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LambdaFunctionAssociation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LambdaFunctionAssociations
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::LambdaFunctionAssociations, context: context)
        type = Types::LambdaFunctionAssociations.new
        type.quantity = params[:quantity]
        type.items = LambdaFunctionAssociationList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type
      end
    end

    module ListCachePoliciesInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::ListCachePoliciesInput, context: context)
        type = Types::ListCachePoliciesInput.new
        type.type = params[:type]
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListCloudFrontOriginAccessIdentitiesInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::ListCloudFrontOriginAccessIdentitiesInput, context: context)
        type = Types::ListCloudFrontOriginAccessIdentitiesInput.new
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListConflictingAliasesInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::ListConflictingAliasesInput, context: context)
        type = Types::ListConflictingAliasesInput.new
        type.distribution_id = params[:distribution_id]
        type.alias = params[:alias]
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListDistributionsByCachePolicyIdInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::ListDistributionsByCachePolicyIdInput, context: context)
        type = Types::ListDistributionsByCachePolicyIdInput.new
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type.cache_policy_id = params[:cache_policy_id]
        type
      end
    end

    module ListDistributionsByKeyGroupInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::ListDistributionsByKeyGroupInput, context: context)
        type = Types::ListDistributionsByKeyGroupInput.new
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type.key_group_id = params[:key_group_id]
        type
      end
    end

    module ListDistributionsByOriginRequestPolicyIdInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::ListDistributionsByOriginRequestPolicyIdInput, context: context)
        type = Types::ListDistributionsByOriginRequestPolicyIdInput.new
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type.origin_request_policy_id = params[:origin_request_policy_id]
        type
      end
    end

    module ListDistributionsByRealtimeLogConfigInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::ListDistributionsByRealtimeLogConfigInput, context: context)
        type = Types::ListDistributionsByRealtimeLogConfigInput.new
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type.realtime_log_config_name = params[:realtime_log_config_name]
        type.realtime_log_config_arn = params[:realtime_log_config_arn]
        type
      end
    end

    module ListDistributionsByResponseHeadersPolicyIdInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::ListDistributionsByResponseHeadersPolicyIdInput, context: context)
        type = Types::ListDistributionsByResponseHeadersPolicyIdInput.new
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type.response_headers_policy_id = params[:response_headers_policy_id]
        type
      end
    end

    module ListDistributionsByWebACLIdInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::ListDistributionsByWebACLIdInput, context: context)
        type = Types::ListDistributionsByWebACLIdInput.new
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type.web_acl_id = params[:web_acl_id]
        type
      end
    end

    module ListDistributionsInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::ListDistributionsInput, context: context)
        type = Types::ListDistributionsInput.new
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListFieldLevelEncryptionConfigsInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::ListFieldLevelEncryptionConfigsInput, context: context)
        type = Types::ListFieldLevelEncryptionConfigsInput.new
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListFieldLevelEncryptionProfilesInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::ListFieldLevelEncryptionProfilesInput, context: context)
        type = Types::ListFieldLevelEncryptionProfilesInput.new
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListFunctionsInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::ListFunctionsInput, context: context)
        type = Types::ListFunctionsInput.new
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type.stage = params[:stage]
        type
      end
    end

    module ListInvalidationsInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::ListInvalidationsInput, context: context)
        type = Types::ListInvalidationsInput.new
        type.distribution_id = params[:distribution_id]
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListKeyGroupsInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::ListKeyGroupsInput, context: context)
        type = Types::ListKeyGroupsInput.new
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListOriginRequestPoliciesInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::ListOriginRequestPoliciesInput, context: context)
        type = Types::ListOriginRequestPoliciesInput.new
        type.type = params[:type]
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListPublicKeysInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::ListPublicKeysInput, context: context)
        type = Types::ListPublicKeysInput.new
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListRealtimeLogConfigsInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::ListRealtimeLogConfigsInput, context: context)
        type = Types::ListRealtimeLogConfigsInput.new
        type.max_items = params[:max_items]
        type.marker = params[:marker]
        type
      end
    end

    module ListResponseHeadersPoliciesInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::ListResponseHeadersPoliciesInput, context: context)
        type = Types::ListResponseHeadersPoliciesInput.new
        type.type = params[:type]
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListStreamingDistributionsInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::ListStreamingDistributionsInput, context: context)
        type = Types::ListStreamingDistributionsInput.new
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource = params[:resource]
        type
      end
    end

    module LocationList
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module LoggingConfig
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::LoggingConfig, context: context)
        type = Types::LoggingConfig.new
        type.enabled = params[:enabled]
        type.include_cookies = params[:include_cookies]
        type.bucket = params[:bucket]
        type.prefix = params[:prefix]
        type
      end
    end

    module MethodsList
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module MonitoringSubscription
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::MonitoringSubscription, context: context)
        type = Types::MonitoringSubscription.new
        type.realtime_metrics_subscription_config = RealtimeMetricsSubscriptionConfig.build(params[:realtime_metrics_subscription_config], context: "#{context}[:realtime_metrics_subscription_config]") unless params[:realtime_metrics_subscription_config].nil?
        type
      end
    end

    module Origin
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::Origin, context: context)
        type = Types::Origin.new
        type.id = params[:id]
        type.domain_name = params[:domain_name]
        type.origin_path = params[:origin_path]
        type.custom_headers = CustomHeaders.build(params[:custom_headers], context: "#{context}[:custom_headers]") unless params[:custom_headers].nil?
        type.s3_origin_config = S3OriginConfig.build(params[:s3_origin_config], context: "#{context}[:s3_origin_config]") unless params[:s3_origin_config].nil?
        type.custom_origin_config = CustomOriginConfig.build(params[:custom_origin_config], context: "#{context}[:custom_origin_config]") unless params[:custom_origin_config].nil?
        type.connection_attempts = params[:connection_attempts]
        type.connection_timeout = params[:connection_timeout]
        type.origin_shield = OriginShield.build(params[:origin_shield], context: "#{context}[:origin_shield]") unless params[:origin_shield].nil?
        type
      end
    end

    module OriginCustomHeader
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::OriginCustomHeader, context: context)
        type = Types::OriginCustomHeader.new
        type.header_name = params[:header_name]
        type.header_value = params[:header_value]
        type
      end
    end

    module OriginCustomHeadersList
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OriginCustomHeader.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OriginGroup
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::OriginGroup, context: context)
        type = Types::OriginGroup.new
        type.id = params[:id]
        type.failover_criteria = OriginGroupFailoverCriteria.build(params[:failover_criteria], context: "#{context}[:failover_criteria]") unless params[:failover_criteria].nil?
        type.members = OriginGroupMembers.build(params[:members], context: "#{context}[:members]") unless params[:members].nil?
        type
      end
    end

    module OriginGroupFailoverCriteria
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::OriginGroupFailoverCriteria, context: context)
        type = Types::OriginGroupFailoverCriteria.new
        type.status_codes = StatusCodes.build(params[:status_codes], context: "#{context}[:status_codes]") unless params[:status_codes].nil?
        type
      end
    end

    module OriginGroupList
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OriginGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OriginGroupMember
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::OriginGroupMember, context: context)
        type = Types::OriginGroupMember.new
        type.origin_id = params[:origin_id]
        type
      end
    end

    module OriginGroupMemberList
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OriginGroupMember.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OriginGroupMembers
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::OriginGroupMembers, context: context)
        type = Types::OriginGroupMembers.new
        type.quantity = params[:quantity]
        type.items = OriginGroupMemberList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type
      end
    end

    module OriginGroups
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::OriginGroups, context: context)
        type = Types::OriginGroups.new
        type.quantity = params[:quantity]
        type.items = OriginGroupList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type
      end
    end

    module OriginList
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Origin.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OriginRequestPolicyConfig
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::OriginRequestPolicyConfig, context: context)
        type = Types::OriginRequestPolicyConfig.new
        type.comment = params[:comment]
        type.member_name = params[:member_name]
        type.headers_config = OriginRequestPolicyHeadersConfig.build(params[:headers_config], context: "#{context}[:headers_config]") unless params[:headers_config].nil?
        type.cookies_config = OriginRequestPolicyCookiesConfig.build(params[:cookies_config], context: "#{context}[:cookies_config]") unless params[:cookies_config].nil?
        type.query_strings_config = OriginRequestPolicyQueryStringsConfig.build(params[:query_strings_config], context: "#{context}[:query_strings_config]") unless params[:query_strings_config].nil?
        type
      end
    end

    module OriginRequestPolicyCookiesConfig
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::OriginRequestPolicyCookiesConfig, context: context)
        type = Types::OriginRequestPolicyCookiesConfig.new
        type.cookie_behavior = params[:cookie_behavior]
        type.cookies = CookieNames.build(params[:cookies], context: "#{context}[:cookies]") unless params[:cookies].nil?
        type
      end
    end

    module OriginRequestPolicyHeadersConfig
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::OriginRequestPolicyHeadersConfig, context: context)
        type = Types::OriginRequestPolicyHeadersConfig.new
        type.header_behavior = params[:header_behavior]
        type.headers = Headers.build(params[:headers], context: "#{context}[:headers]") unless params[:headers].nil?
        type
      end
    end

    module OriginRequestPolicyQueryStringsConfig
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::OriginRequestPolicyQueryStringsConfig, context: context)
        type = Types::OriginRequestPolicyQueryStringsConfig.new
        type.query_string_behavior = params[:query_string_behavior]
        type.query_strings = QueryStringNames.build(params[:query_strings], context: "#{context}[:query_strings]") unless params[:query_strings].nil?
        type
      end
    end

    module OriginShield
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::OriginShield, context: context)
        type = Types::OriginShield.new
        type.enabled = params[:enabled]
        type.origin_shield_region = params[:origin_shield_region]
        type
      end
    end

    module OriginSslProtocols
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::OriginSslProtocols, context: context)
        type = Types::OriginSslProtocols.new
        type.quantity = params[:quantity]
        type.items = SslProtocolsList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type
      end
    end

    module Origins
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::Origins, context: context)
        type = Types::Origins.new
        type.quantity = params[:quantity]
        type.items = OriginList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type
      end
    end

    module ParametersInCacheKeyAndForwardedToOrigin
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::ParametersInCacheKeyAndForwardedToOrigin, context: context)
        type = Types::ParametersInCacheKeyAndForwardedToOrigin.new
        type.enable_accept_encoding_gzip = params[:enable_accept_encoding_gzip]
        type.enable_accept_encoding_brotli = params[:enable_accept_encoding_brotli]
        type.headers_config = CachePolicyHeadersConfig.build(params[:headers_config], context: "#{context}[:headers_config]") unless params[:headers_config].nil?
        type.cookies_config = CachePolicyCookiesConfig.build(params[:cookies_config], context: "#{context}[:cookies_config]") unless params[:cookies_config].nil?
        type.query_strings_config = CachePolicyQueryStringsConfig.build(params[:query_strings_config], context: "#{context}[:query_strings_config]") unless params[:query_strings_config].nil?
        type
      end
    end

    module PathList
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module Paths
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::Paths, context: context)
        type = Types::Paths.new
        type.quantity = params[:quantity]
        type.items = PathList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type
      end
    end

    module PublicKeyConfig
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::PublicKeyConfig, context: context)
        type = Types::PublicKeyConfig.new
        type.caller_reference = params[:caller_reference]
        type.member_name = params[:member_name]
        type.encoded_key = params[:encoded_key]
        type.comment = params[:comment]
        type
      end
    end

    module PublicKeyIdList
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module PublishFunctionInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::PublishFunctionInput, context: context)
        type = Types::PublishFunctionInput.new
        type.member_name = params[:member_name]
        type.if_match = params[:if_match]
        type
      end
    end

    module QueryArgProfile
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::QueryArgProfile, context: context)
        type = Types::QueryArgProfile.new
        type.query_arg = params[:query_arg]
        type.profile_id = params[:profile_id]
        type
      end
    end

    module QueryArgProfileConfig
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::QueryArgProfileConfig, context: context)
        type = Types::QueryArgProfileConfig.new
        type.forward_when_query_arg_profile_is_unknown = params[:forward_when_query_arg_profile_is_unknown]
        type.query_arg_profiles = QueryArgProfiles.build(params[:query_arg_profiles], context: "#{context}[:query_arg_profiles]") unless params[:query_arg_profiles].nil?
        type
      end
    end

    module QueryArgProfileList
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << QueryArgProfile.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module QueryArgProfiles
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::QueryArgProfiles, context: context)
        type = Types::QueryArgProfiles.new
        type.quantity = params[:quantity]
        type.items = QueryArgProfileList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type
      end
    end

    module QueryStringCacheKeys
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::QueryStringCacheKeys, context: context)
        type = Types::QueryStringCacheKeys.new
        type.quantity = params[:quantity]
        type.items = QueryStringCacheKeysList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type
      end
    end

    module QueryStringCacheKeysList
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module QueryStringNames
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::QueryStringNames, context: context)
        type = Types::QueryStringNames.new
        type.quantity = params[:quantity]
        type.items = QueryStringNamesList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type
      end
    end

    module QueryStringNamesList
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module RealtimeMetricsSubscriptionConfig
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::RealtimeMetricsSubscriptionConfig, context: context)
        type = Types::RealtimeMetricsSubscriptionConfig.new
        type.realtime_metrics_subscription_status = params[:realtime_metrics_subscription_status]
        type
      end
    end

    module ResponseHeadersPolicyAccessControlAllowHeaders
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::ResponseHeadersPolicyAccessControlAllowHeaders, context: context)
        type = Types::ResponseHeadersPolicyAccessControlAllowHeaders.new
        type.quantity = params[:quantity]
        type.items = AccessControlAllowHeadersList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type
      end
    end

    module ResponseHeadersPolicyAccessControlAllowMethods
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::ResponseHeadersPolicyAccessControlAllowMethods, context: context)
        type = Types::ResponseHeadersPolicyAccessControlAllowMethods.new
        type.quantity = params[:quantity]
        type.items = AccessControlAllowMethodsList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type
      end
    end

    module ResponseHeadersPolicyAccessControlAllowOrigins
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::ResponseHeadersPolicyAccessControlAllowOrigins, context: context)
        type = Types::ResponseHeadersPolicyAccessControlAllowOrigins.new
        type.quantity = params[:quantity]
        type.items = AccessControlAllowOriginsList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type
      end
    end

    module ResponseHeadersPolicyAccessControlExposeHeaders
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::ResponseHeadersPolicyAccessControlExposeHeaders, context: context)
        type = Types::ResponseHeadersPolicyAccessControlExposeHeaders.new
        type.quantity = params[:quantity]
        type.items = AccessControlExposeHeadersList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type
      end
    end

    module ResponseHeadersPolicyConfig
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::ResponseHeadersPolicyConfig, context: context)
        type = Types::ResponseHeadersPolicyConfig.new
        type.comment = params[:comment]
        type.member_name = params[:member_name]
        type.cors_config = ResponseHeadersPolicyCorsConfig.build(params[:cors_config], context: "#{context}[:cors_config]") unless params[:cors_config].nil?
        type.security_headers_config = ResponseHeadersPolicySecurityHeadersConfig.build(params[:security_headers_config], context: "#{context}[:security_headers_config]") unless params[:security_headers_config].nil?
        type.custom_headers_config = ResponseHeadersPolicyCustomHeadersConfig.build(params[:custom_headers_config], context: "#{context}[:custom_headers_config]") unless params[:custom_headers_config].nil?
        type
      end
    end

    module ResponseHeadersPolicyContentSecurityPolicy
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::ResponseHeadersPolicyContentSecurityPolicy, context: context)
        type = Types::ResponseHeadersPolicyContentSecurityPolicy.new
        type.override = params[:override]
        type.content_security_policy = params[:content_security_policy]
        type
      end
    end

    module ResponseHeadersPolicyContentTypeOptions
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::ResponseHeadersPolicyContentTypeOptions, context: context)
        type = Types::ResponseHeadersPolicyContentTypeOptions.new
        type.override = params[:override]
        type
      end
    end

    module ResponseHeadersPolicyCorsConfig
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::ResponseHeadersPolicyCorsConfig, context: context)
        type = Types::ResponseHeadersPolicyCorsConfig.new
        type.access_control_allow_origins = ResponseHeadersPolicyAccessControlAllowOrigins.build(params[:access_control_allow_origins], context: "#{context}[:access_control_allow_origins]") unless params[:access_control_allow_origins].nil?
        type.access_control_allow_headers = ResponseHeadersPolicyAccessControlAllowHeaders.build(params[:access_control_allow_headers], context: "#{context}[:access_control_allow_headers]") unless params[:access_control_allow_headers].nil?
        type.access_control_allow_methods = ResponseHeadersPolicyAccessControlAllowMethods.build(params[:access_control_allow_methods], context: "#{context}[:access_control_allow_methods]") unless params[:access_control_allow_methods].nil?
        type.access_control_allow_credentials = params[:access_control_allow_credentials]
        type.access_control_expose_headers = ResponseHeadersPolicyAccessControlExposeHeaders.build(params[:access_control_expose_headers], context: "#{context}[:access_control_expose_headers]") unless params[:access_control_expose_headers].nil?
        type.access_control_max_age_sec = params[:access_control_max_age_sec]
        type.origin_override = params[:origin_override]
        type
      end
    end

    module ResponseHeadersPolicyCustomHeader
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::ResponseHeadersPolicyCustomHeader, context: context)
        type = Types::ResponseHeadersPolicyCustomHeader.new
        type.header = params[:header]
        type.value = params[:value]
        type.override = params[:override]
        type
      end
    end

    module ResponseHeadersPolicyCustomHeaderList
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResponseHeadersPolicyCustomHeader.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResponseHeadersPolicyCustomHeadersConfig
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::ResponseHeadersPolicyCustomHeadersConfig, context: context)
        type = Types::ResponseHeadersPolicyCustomHeadersConfig.new
        type.quantity = params[:quantity]
        type.items = ResponseHeadersPolicyCustomHeaderList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type
      end
    end

    module ResponseHeadersPolicyFrameOptions
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::ResponseHeadersPolicyFrameOptions, context: context)
        type = Types::ResponseHeadersPolicyFrameOptions.new
        type.override = params[:override]
        type.frame_option = params[:frame_option]
        type
      end
    end

    module ResponseHeadersPolicyReferrerPolicy
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::ResponseHeadersPolicyReferrerPolicy, context: context)
        type = Types::ResponseHeadersPolicyReferrerPolicy.new
        type.override = params[:override]
        type.referrer_policy = params[:referrer_policy]
        type
      end
    end

    module ResponseHeadersPolicySecurityHeadersConfig
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::ResponseHeadersPolicySecurityHeadersConfig, context: context)
        type = Types::ResponseHeadersPolicySecurityHeadersConfig.new
        type.xss_protection = ResponseHeadersPolicyXSSProtection.build(params[:xss_protection], context: "#{context}[:xss_protection]") unless params[:xss_protection].nil?
        type.frame_options = ResponseHeadersPolicyFrameOptions.build(params[:frame_options], context: "#{context}[:frame_options]") unless params[:frame_options].nil?
        type.referrer_policy = ResponseHeadersPolicyReferrerPolicy.build(params[:referrer_policy], context: "#{context}[:referrer_policy]") unless params[:referrer_policy].nil?
        type.content_security_policy = ResponseHeadersPolicyContentSecurityPolicy.build(params[:content_security_policy], context: "#{context}[:content_security_policy]") unless params[:content_security_policy].nil?
        type.content_type_options = ResponseHeadersPolicyContentTypeOptions.build(params[:content_type_options], context: "#{context}[:content_type_options]") unless params[:content_type_options].nil?
        type.strict_transport_security = ResponseHeadersPolicyStrictTransportSecurity.build(params[:strict_transport_security], context: "#{context}[:strict_transport_security]") unless params[:strict_transport_security].nil?
        type
      end
    end

    module ResponseHeadersPolicyStrictTransportSecurity
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::ResponseHeadersPolicyStrictTransportSecurity, context: context)
        type = Types::ResponseHeadersPolicyStrictTransportSecurity.new
        type.override = params[:override]
        type.include_subdomains = params[:include_subdomains]
        type.preload = params[:preload]
        type.access_control_max_age_sec = params[:access_control_max_age_sec]
        type
      end
    end

    module ResponseHeadersPolicyXSSProtection
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::ResponseHeadersPolicyXSSProtection, context: context)
        type = Types::ResponseHeadersPolicyXSSProtection.new
        type.override = params[:override]
        type.protection = params[:protection]
        type.mode_block = params[:mode_block]
        type.report_uri = params[:report_uri]
        type
      end
    end

    module Restrictions
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::Restrictions, context: context)
        type = Types::Restrictions.new
        type.geo_restriction = GeoRestriction.build(params[:geo_restriction], context: "#{context}[:geo_restriction]") unless params[:geo_restriction].nil?
        type
      end
    end

    module S3Origin
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::S3Origin, context: context)
        type = Types::S3Origin.new
        type.domain_name = params[:domain_name]
        type.origin_access_identity = params[:origin_access_identity]
        type
      end
    end

    module S3OriginConfig
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::S3OriginConfig, context: context)
        type = Types::S3OriginConfig.new
        type.origin_access_identity = params[:origin_access_identity]
        type
      end
    end

    module SslProtocolsList
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module StatusCodeList
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module StatusCodes
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::StatusCodes, context: context)
        type = Types::StatusCodes.new
        type.quantity = params[:quantity]
        type.items = StatusCodeList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type
      end
    end

    module StreamingDistributionConfig
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::StreamingDistributionConfig, context: context)
        type = Types::StreamingDistributionConfig.new
        type.caller_reference = params[:caller_reference]
        type.s3_origin = S3Origin.build(params[:s3_origin], context: "#{context}[:s3_origin]") unless params[:s3_origin].nil?
        type.aliases = Aliases.build(params[:aliases], context: "#{context}[:aliases]") unless params[:aliases].nil?
        type.comment = params[:comment]
        type.logging = StreamingLoggingConfig.build(params[:logging], context: "#{context}[:logging]") unless params[:logging].nil?
        type.trusted_signers = TrustedSigners.build(params[:trusted_signers], context: "#{context}[:trusted_signers]") unless params[:trusted_signers].nil?
        type.price_class = params[:price_class]
        type.enabled = params[:enabled]
        type
      end
    end

    module StreamingDistributionConfigWithTags
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::StreamingDistributionConfigWithTags, context: context)
        type = Types::StreamingDistributionConfigWithTags.new
        type.streaming_distribution_config = StreamingDistributionConfig.build(params[:streaming_distribution_config], context: "#{context}[:streaming_distribution_config]") unless params[:streaming_distribution_config].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module StreamingLoggingConfig
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::StreamingLoggingConfig, context: context)
        type = Types::StreamingLoggingConfig.new
        type.enabled = params[:enabled]
        type.bucket = params[:bucket]
        type.prefix = params[:prefix]
        type
      end
    end

    module Tag
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module TagKeyList
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module TagKeys
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::TagKeys, context: context)
        type = Types::TagKeys.new
        type.items = TagKeyList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type
      end
    end

    module TagList
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource = params[:resource]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module Tags
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::Tags, context: context)
        type = Types::Tags.new
        type.items = TagList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type
      end
    end

    module TestFunctionInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::TestFunctionInput, context: context)
        type = Types::TestFunctionInput.new
        type.member_name = params[:member_name]
        type.if_match = params[:if_match]
        type.stage = params[:stage]
        type.event_object = params[:event_object]
        type
      end
    end

    module TrustedKeyGroupIdList
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module TrustedKeyGroups
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::TrustedKeyGroups, context: context)
        type = Types::TrustedKeyGroups.new
        type.enabled = params[:enabled]
        type.quantity = params[:quantity]
        type.items = TrustedKeyGroupIdList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type
      end
    end

    module TrustedSigners
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::TrustedSigners, context: context)
        type = Types::TrustedSigners.new
        type.enabled = params[:enabled]
        type.quantity = params[:quantity]
        type.items = AwsAccountNumberList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource = params[:resource]
        type.tag_keys = TagKeys.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UpdateCachePolicyInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::UpdateCachePolicyInput, context: context)
        type = Types::UpdateCachePolicyInput.new
        type.cache_policy_config = CachePolicyConfig.build(params[:cache_policy_config], context: "#{context}[:cache_policy_config]") unless params[:cache_policy_config].nil?
        type.id = params[:id]
        type.if_match = params[:if_match]
        type
      end
    end

    module UpdateCloudFrontOriginAccessIdentityInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::UpdateCloudFrontOriginAccessIdentityInput, context: context)
        type = Types::UpdateCloudFrontOriginAccessIdentityInput.new
        type.cloud_front_origin_access_identity_config = CloudFrontOriginAccessIdentityConfig.build(params[:cloud_front_origin_access_identity_config], context: "#{context}[:cloud_front_origin_access_identity_config]") unless params[:cloud_front_origin_access_identity_config].nil?
        type.id = params[:id]
        type.if_match = params[:if_match]
        type
      end
    end

    module UpdateDistributionInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::UpdateDistributionInput, context: context)
        type = Types::UpdateDistributionInput.new
        type.distribution_config = DistributionConfig.build(params[:distribution_config], context: "#{context}[:distribution_config]") unless params[:distribution_config].nil?
        type.id = params[:id]
        type.if_match = params[:if_match]
        type
      end
    end

    module UpdateFieldLevelEncryptionConfigInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::UpdateFieldLevelEncryptionConfigInput, context: context)
        type = Types::UpdateFieldLevelEncryptionConfigInput.new
        type.field_level_encryption_config = FieldLevelEncryptionConfig.build(params[:field_level_encryption_config], context: "#{context}[:field_level_encryption_config]") unless params[:field_level_encryption_config].nil?
        type.id = params[:id]
        type.if_match = params[:if_match]
        type
      end
    end

    module UpdateFieldLevelEncryptionProfileInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::UpdateFieldLevelEncryptionProfileInput, context: context)
        type = Types::UpdateFieldLevelEncryptionProfileInput.new
        type.field_level_encryption_profile_config = FieldLevelEncryptionProfileConfig.build(params[:field_level_encryption_profile_config], context: "#{context}[:field_level_encryption_profile_config]") unless params[:field_level_encryption_profile_config].nil?
        type.id = params[:id]
        type.if_match = params[:if_match]
        type
      end
    end

    module UpdateFunctionInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::UpdateFunctionInput, context: context)
        type = Types::UpdateFunctionInput.new
        type.member_name = params[:member_name]
        type.if_match = params[:if_match]
        type.function_config = FunctionConfig.build(params[:function_config], context: "#{context}[:function_config]") unless params[:function_config].nil?
        type.function_code = params[:function_code]
        type
      end
    end

    module UpdateKeyGroupInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::UpdateKeyGroupInput, context: context)
        type = Types::UpdateKeyGroupInput.new
        type.key_group_config = KeyGroupConfig.build(params[:key_group_config], context: "#{context}[:key_group_config]") unless params[:key_group_config].nil?
        type.id = params[:id]
        type.if_match = params[:if_match]
        type
      end
    end

    module UpdateOriginRequestPolicyInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::UpdateOriginRequestPolicyInput, context: context)
        type = Types::UpdateOriginRequestPolicyInput.new
        type.origin_request_policy_config = OriginRequestPolicyConfig.build(params[:origin_request_policy_config], context: "#{context}[:origin_request_policy_config]") unless params[:origin_request_policy_config].nil?
        type.id = params[:id]
        type.if_match = params[:if_match]
        type
      end
    end

    module UpdatePublicKeyInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::UpdatePublicKeyInput, context: context)
        type = Types::UpdatePublicKeyInput.new
        type.public_key_config = PublicKeyConfig.build(params[:public_key_config], context: "#{context}[:public_key_config]") unless params[:public_key_config].nil?
        type.id = params[:id]
        type.if_match = params[:if_match]
        type
      end
    end

    module UpdateRealtimeLogConfigInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::UpdateRealtimeLogConfigInput, context: context)
        type = Types::UpdateRealtimeLogConfigInput.new
        type.end_points = EndPointList.build(params[:end_points], context: "#{context}[:end_points]") unless params[:end_points].nil?
        type.fields = FieldList.build(params[:fields], context: "#{context}[:fields]") unless params[:fields].nil?
        type.member_name = params[:member_name]
        type.arn = params[:arn]
        type.sampling_rate = params[:sampling_rate]
        type
      end
    end

    module UpdateResponseHeadersPolicyInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::UpdateResponseHeadersPolicyInput, context: context)
        type = Types::UpdateResponseHeadersPolicyInput.new
        type.response_headers_policy_config = ResponseHeadersPolicyConfig.build(params[:response_headers_policy_config], context: "#{context}[:response_headers_policy_config]") unless params[:response_headers_policy_config].nil?
        type.id = params[:id]
        type.if_match = params[:if_match]
        type
      end
    end

    module UpdateStreamingDistributionInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::UpdateStreamingDistributionInput, context: context)
        type = Types::UpdateStreamingDistributionInput.new
        type.streaming_distribution_config = StreamingDistributionConfig.build(params[:streaming_distribution_config], context: "#{context}[:streaming_distribution_config]") unless params[:streaming_distribution_config].nil?
        type.id = params[:id]
        type.if_match = params[:if_match]
        type
      end
    end

    module ViewerCertificate
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::ViewerCertificate, context: context)
        type = Types::ViewerCertificate.new
        type.cloud_front_default_certificate = params[:cloud_front_default_certificate]
        type.iam_certificate_id = params[:iam_certificate_id]
        type.acm_certificate_arn = params[:acm_certificate_arn]
        type.ssl_support_method = params[:ssl_support_method]
        type.minimum_protocol_version = params[:minimum_protocol_version]
        type.certificate = params[:certificate]
        type.certificate_source = params[:certificate_source]
        type
      end
    end

  end
end
