# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CloudFront
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

    class AccessDenied
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDenied, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ActiveTrustedKeyGroups
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActiveTrustedKeyGroups, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:quantity], ::Integer, context: "#{context}[:quantity]")
        Validators::KGKeyPairIdsList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
      end
    end

    class ActiveTrustedSigners
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActiveTrustedSigners, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:quantity], ::Integer, context: "#{context}[:quantity]")
        Validators::SignerList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
      end
    end

    class AliasICPRecordal
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AliasICPRecordal, context: context)
        Hearth::Validator.validate!(input[:cname], ::String, context: "#{context}[:cname]")
        Hearth::Validator.validate!(input[:icp_recordal_status], ::String, context: "#{context}[:icp_recordal_status]")
      end
    end

    class AliasICPRecordals
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AliasICPRecordal.validate!(element, context: "#{context}[#{index}]") unless element.nil?
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

    class AssociateAliasOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateAliasOutput, context: context)
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

    class BatchTooLarge
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchTooLarge, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CNAMEAlreadyExists
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CNAMEAlreadyExists, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
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

    class CachePolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CachePolicy, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Validators::CachePolicyConfig.validate!(input[:cache_policy_config], context: "#{context}[:cache_policy_config]") unless input[:cache_policy_config].nil?
      end
    end

    class CachePolicyAlreadyExists
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CachePolicyAlreadyExists, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CachePolicyConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CachePolicyConfig, context: context)
        Hearth::Validator.validate!(input[:comment], ::String, context: "#{context}[:comment]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
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

    class CachePolicyInUse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CachePolicyInUse, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CachePolicyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CachePolicyList, context: context)
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
        Hearth::Validator.validate!(input[:quantity], ::Integer, context: "#{context}[:quantity]")
        Validators::CachePolicySummaryList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
      end
    end

    class CachePolicyQueryStringsConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CachePolicyQueryStringsConfig, context: context)
        Hearth::Validator.validate!(input[:query_string_behavior], ::String, context: "#{context}[:query_string_behavior]")
        Validators::QueryStringNames.validate!(input[:query_strings], context: "#{context}[:query_strings]") unless input[:query_strings].nil?
      end
    end

    class CachePolicySummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CachePolicySummary, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Validators::CachePolicy.validate!(input[:cache_policy], context: "#{context}[:cache_policy]") unless input[:cache_policy].nil?
      end
    end

    class CachePolicySummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::CachePolicySummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CachedMethods
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CachedMethods, context: context)
        Hearth::Validator.validate!(input[:quantity], ::Integer, context: "#{context}[:quantity]")
        Validators::MethodsList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
      end
    end

    class CannotChangeImmutablePublicKeyFields
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CannotChangeImmutablePublicKeyFields, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CloudFrontOriginAccessIdentity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudFrontOriginAccessIdentity, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:s3_canonical_user_id], ::String, context: "#{context}[:s3_canonical_user_id]")
        Validators::CloudFrontOriginAccessIdentityConfig.validate!(input[:cloud_front_origin_access_identity_config], context: "#{context}[:cloud_front_origin_access_identity_config]") unless input[:cloud_front_origin_access_identity_config].nil?
      end
    end

    class CloudFrontOriginAccessIdentityAlreadyExists
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudFrontOriginAccessIdentityAlreadyExists, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CloudFrontOriginAccessIdentityConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudFrontOriginAccessIdentityConfig, context: context)
        Hearth::Validator.validate!(input[:caller_reference], ::String, context: "#{context}[:caller_reference]")
        Hearth::Validator.validate!(input[:comment], ::String, context: "#{context}[:comment]")
      end
    end

    class CloudFrontOriginAccessIdentityInUse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudFrontOriginAccessIdentityInUse, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CloudFrontOriginAccessIdentityList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudFrontOriginAccessIdentityList, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
        Hearth::Validator.validate!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate!(input[:quantity], ::Integer, context: "#{context}[:quantity]")
        Validators::CloudFrontOriginAccessIdentitySummaryList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
      end
    end

    class CloudFrontOriginAccessIdentitySummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudFrontOriginAccessIdentitySummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:s3_canonical_user_id], ::String, context: "#{context}[:s3_canonical_user_id]")
        Hearth::Validator.validate!(input[:comment], ::String, context: "#{context}[:comment]")
      end
    end

    class CloudFrontOriginAccessIdentitySummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::CloudFrontOriginAccessIdentitySummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConflictingAlias
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictingAlias, context: context)
        Hearth::Validator.validate!(input[:alias], ::String, context: "#{context}[:alias]")
        Hearth::Validator.validate!(input[:distribution_id], ::String, context: "#{context}[:distribution_id]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
      end
    end

    class ConflictingAliases
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ConflictingAlias.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConflictingAliasesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictingAliasesList, context: context)
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
        Hearth::Validator.validate!(input[:quantity], ::Integer, context: "#{context}[:quantity]")
        Validators::ConflictingAliases.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
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

    class CreateCachePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCachePolicyOutput, context: context)
        Validators::CachePolicy.validate!(input[:cache_policy], context: "#{context}[:cache_policy]") unless input[:cache_policy].nil?
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
      end
    end

    class CreateCloudFrontOriginAccessIdentityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCloudFrontOriginAccessIdentityInput, context: context)
        Validators::CloudFrontOriginAccessIdentityConfig.validate!(input[:cloud_front_origin_access_identity_config], context: "#{context}[:cloud_front_origin_access_identity_config]") unless input[:cloud_front_origin_access_identity_config].nil?
      end
    end

    class CreateCloudFrontOriginAccessIdentityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCloudFrontOriginAccessIdentityOutput, context: context)
        Validators::CloudFrontOriginAccessIdentity.validate!(input[:cloud_front_origin_access_identity], context: "#{context}[:cloud_front_origin_access_identity]") unless input[:cloud_front_origin_access_identity].nil?
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
      end
    end

    class CreateDistributionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDistributionInput, context: context)
        Validators::DistributionConfig.validate!(input[:distribution_config], context: "#{context}[:distribution_config]") unless input[:distribution_config].nil?
      end
    end

    class CreateDistributionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDistributionOutput, context: context)
        Validators::Distribution.validate!(input[:distribution], context: "#{context}[:distribution]") unless input[:distribution].nil?
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
      end
    end

    class CreateDistributionWithTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDistributionWithTagsInput, context: context)
        Validators::DistributionConfigWithTags.validate!(input[:distribution_config_with_tags], context: "#{context}[:distribution_config_with_tags]") unless input[:distribution_config_with_tags].nil?
      end
    end

    class CreateDistributionWithTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDistributionWithTagsOutput, context: context)
        Validators::Distribution.validate!(input[:distribution], context: "#{context}[:distribution]") unless input[:distribution].nil?
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
      end
    end

    class CreateFieldLevelEncryptionConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFieldLevelEncryptionConfigInput, context: context)
        Validators::FieldLevelEncryptionConfig.validate!(input[:field_level_encryption_config], context: "#{context}[:field_level_encryption_config]") unless input[:field_level_encryption_config].nil?
      end
    end

    class CreateFieldLevelEncryptionConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFieldLevelEncryptionConfigOutput, context: context)
        Validators::FieldLevelEncryption.validate!(input[:field_level_encryption], context: "#{context}[:field_level_encryption]") unless input[:field_level_encryption].nil?
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
      end
    end

    class CreateFieldLevelEncryptionProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFieldLevelEncryptionProfileInput, context: context)
        Validators::FieldLevelEncryptionProfileConfig.validate!(input[:field_level_encryption_profile_config], context: "#{context}[:field_level_encryption_profile_config]") unless input[:field_level_encryption_profile_config].nil?
      end
    end

    class CreateFieldLevelEncryptionProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFieldLevelEncryptionProfileOutput, context: context)
        Validators::FieldLevelEncryptionProfile.validate!(input[:field_level_encryption_profile], context: "#{context}[:field_level_encryption_profile]") unless input[:field_level_encryption_profile].nil?
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
      end
    end

    class CreateFunctionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFunctionInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::FunctionConfig.validate!(input[:function_config], context: "#{context}[:function_config]") unless input[:function_config].nil?
        Hearth::Validator.validate!(input[:function_code], ::String, context: "#{context}[:function_code]")
      end
    end

    class CreateFunctionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFunctionOutput, context: context)
        Validators::FunctionSummary.validate!(input[:function_summary], context: "#{context}[:function_summary]") unless input[:function_summary].nil?
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
      end
    end

    class CreateInvalidationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateInvalidationInput, context: context)
        Hearth::Validator.validate!(input[:distribution_id], ::String, context: "#{context}[:distribution_id]")
        Validators::InvalidationBatch.validate!(input[:invalidation_batch], context: "#{context}[:invalidation_batch]") unless input[:invalidation_batch].nil?
      end
    end

    class CreateInvalidationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateInvalidationOutput, context: context)
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Validators::Invalidation.validate!(input[:invalidation], context: "#{context}[:invalidation]") unless input[:invalidation].nil?
      end
    end

    class CreateKeyGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateKeyGroupInput, context: context)
        Validators::KeyGroupConfig.validate!(input[:key_group_config], context: "#{context}[:key_group_config]") unless input[:key_group_config].nil?
      end
    end

    class CreateKeyGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateKeyGroupOutput, context: context)
        Validators::KeyGroup.validate!(input[:key_group], context: "#{context}[:key_group]") unless input[:key_group].nil?
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
      end
    end

    class CreateMonitoringSubscriptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMonitoringSubscriptionInput, context: context)
        Hearth::Validator.validate!(input[:distribution_id], ::String, context: "#{context}[:distribution_id]")
        Validators::MonitoringSubscription.validate!(input[:monitoring_subscription], context: "#{context}[:monitoring_subscription]") unless input[:monitoring_subscription].nil?
      end
    end

    class CreateMonitoringSubscriptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMonitoringSubscriptionOutput, context: context)
        Validators::MonitoringSubscription.validate!(input[:monitoring_subscription], context: "#{context}[:monitoring_subscription]") unless input[:monitoring_subscription].nil?
      end
    end

    class CreateOriginRequestPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateOriginRequestPolicyInput, context: context)
        Validators::OriginRequestPolicyConfig.validate!(input[:origin_request_policy_config], context: "#{context}[:origin_request_policy_config]") unless input[:origin_request_policy_config].nil?
      end
    end

    class CreateOriginRequestPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateOriginRequestPolicyOutput, context: context)
        Validators::OriginRequestPolicy.validate!(input[:origin_request_policy], context: "#{context}[:origin_request_policy]") unless input[:origin_request_policy].nil?
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
      end
    end

    class CreatePublicKeyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePublicKeyInput, context: context)
        Validators::PublicKeyConfig.validate!(input[:public_key_config], context: "#{context}[:public_key_config]") unless input[:public_key_config].nil?
      end
    end

    class CreatePublicKeyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePublicKeyOutput, context: context)
        Validators::PublicKey.validate!(input[:public_key], context: "#{context}[:public_key]") unless input[:public_key].nil?
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
      end
    end

    class CreateRealtimeLogConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRealtimeLogConfigInput, context: context)
        Validators::EndPointList.validate!(input[:end_points], context: "#{context}[:end_points]") unless input[:end_points].nil?
        Validators::FieldList.validate!(input[:fields], context: "#{context}[:fields]") unless input[:fields].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:sampling_rate], ::Integer, context: "#{context}[:sampling_rate]")
      end
    end

    class CreateRealtimeLogConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRealtimeLogConfigOutput, context: context)
        Validators::RealtimeLogConfig.validate!(input[:realtime_log_config], context: "#{context}[:realtime_log_config]") unless input[:realtime_log_config].nil?
      end
    end

    class CreateResponseHeadersPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateResponseHeadersPolicyInput, context: context)
        Validators::ResponseHeadersPolicyConfig.validate!(input[:response_headers_policy_config], context: "#{context}[:response_headers_policy_config]") unless input[:response_headers_policy_config].nil?
      end
    end

    class CreateResponseHeadersPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateResponseHeadersPolicyOutput, context: context)
        Validators::ResponseHeadersPolicy.validate!(input[:response_headers_policy], context: "#{context}[:response_headers_policy]") unless input[:response_headers_policy].nil?
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
      end
    end

    class CreateStreamingDistributionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateStreamingDistributionInput, context: context)
        Validators::StreamingDistributionConfig.validate!(input[:streaming_distribution_config], context: "#{context}[:streaming_distribution_config]") unless input[:streaming_distribution_config].nil?
      end
    end

    class CreateStreamingDistributionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateStreamingDistributionOutput, context: context)
        Validators::StreamingDistribution.validate!(input[:streaming_distribution], context: "#{context}[:streaming_distribution]") unless input[:streaming_distribution].nil?
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
      end
    end

    class CreateStreamingDistributionWithTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateStreamingDistributionWithTagsInput, context: context)
        Validators::StreamingDistributionConfigWithTags.validate!(input[:streaming_distribution_config_with_tags], context: "#{context}[:streaming_distribution_config_with_tags]") unless input[:streaming_distribution_config_with_tags].nil?
      end
    end

    class CreateStreamingDistributionWithTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateStreamingDistributionWithTagsOutput, context: context)
        Validators::StreamingDistribution.validate!(input[:streaming_distribution], context: "#{context}[:streaming_distribution]") unless input[:streaming_distribution].nil?
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
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

    class DeleteCachePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCachePolicyOutput, context: context)
      end
    end

    class DeleteCloudFrontOriginAccessIdentityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCloudFrontOriginAccessIdentityInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:if_match], ::String, context: "#{context}[:if_match]")
      end
    end

    class DeleteCloudFrontOriginAccessIdentityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCloudFrontOriginAccessIdentityOutput, context: context)
      end
    end

    class DeleteDistributionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDistributionInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:if_match], ::String, context: "#{context}[:if_match]")
      end
    end

    class DeleteDistributionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDistributionOutput, context: context)
      end
    end

    class DeleteFieldLevelEncryptionConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFieldLevelEncryptionConfigInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:if_match], ::String, context: "#{context}[:if_match]")
      end
    end

    class DeleteFieldLevelEncryptionConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFieldLevelEncryptionConfigOutput, context: context)
      end
    end

    class DeleteFieldLevelEncryptionProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFieldLevelEncryptionProfileInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:if_match], ::String, context: "#{context}[:if_match]")
      end
    end

    class DeleteFieldLevelEncryptionProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFieldLevelEncryptionProfileOutput, context: context)
      end
    end

    class DeleteFunctionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFunctionInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:if_match], ::String, context: "#{context}[:if_match]")
      end
    end

    class DeleteFunctionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFunctionOutput, context: context)
      end
    end

    class DeleteKeyGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteKeyGroupInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:if_match], ::String, context: "#{context}[:if_match]")
      end
    end

    class DeleteKeyGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteKeyGroupOutput, context: context)
      end
    end

    class DeleteMonitoringSubscriptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMonitoringSubscriptionInput, context: context)
        Hearth::Validator.validate!(input[:distribution_id], ::String, context: "#{context}[:distribution_id]")
      end
    end

    class DeleteMonitoringSubscriptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMonitoringSubscriptionOutput, context: context)
      end
    end

    class DeleteOriginRequestPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteOriginRequestPolicyInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:if_match], ::String, context: "#{context}[:if_match]")
      end
    end

    class DeleteOriginRequestPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteOriginRequestPolicyOutput, context: context)
      end
    end

    class DeletePublicKeyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePublicKeyInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:if_match], ::String, context: "#{context}[:if_match]")
      end
    end

    class DeletePublicKeyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePublicKeyOutput, context: context)
      end
    end

    class DeleteRealtimeLogConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRealtimeLogConfigInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class DeleteRealtimeLogConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRealtimeLogConfigOutput, context: context)
      end
    end

    class DeleteResponseHeadersPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteResponseHeadersPolicyInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:if_match], ::String, context: "#{context}[:if_match]")
      end
    end

    class DeleteResponseHeadersPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteResponseHeadersPolicyOutput, context: context)
      end
    end

    class DeleteStreamingDistributionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteStreamingDistributionInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:if_match], ::String, context: "#{context}[:if_match]")
      end
    end

    class DeleteStreamingDistributionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteStreamingDistributionOutput, context: context)
      end
    end

    class DescribeFunctionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFunctionInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:stage], ::String, context: "#{context}[:stage]")
      end
    end

    class DescribeFunctionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFunctionOutput, context: context)
        Validators::FunctionSummary.validate!(input[:function_summary], context: "#{context}[:function_summary]") unless input[:function_summary].nil?
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
      end
    end

    class Distribution
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Distribution, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:in_progress_invalidation_batches], ::Integer, context: "#{context}[:in_progress_invalidation_batches]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Validators::ActiveTrustedSigners.validate!(input[:active_trusted_signers], context: "#{context}[:active_trusted_signers]") unless input[:active_trusted_signers].nil?
        Validators::ActiveTrustedKeyGroups.validate!(input[:active_trusted_key_groups], context: "#{context}[:active_trusted_key_groups]") unless input[:active_trusted_key_groups].nil?
        Validators::DistributionConfig.validate!(input[:distribution_config], context: "#{context}[:distribution_config]") unless input[:distribution_config].nil?
        Validators::AliasICPRecordals.validate!(input[:alias_icp_recordals], context: "#{context}[:alias_icp_recordals]") unless input[:alias_icp_recordals].nil?
      end
    end

    class DistributionAlreadyExists
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DistributionAlreadyExists, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
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

    class DistributionIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DistributionIdList, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
        Hearth::Validator.validate!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate!(input[:quantity], ::Integer, context: "#{context}[:quantity]")
        Validators::DistributionIdListSummary.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
      end
    end

    class DistributionIdListSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DistributionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DistributionList, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
        Hearth::Validator.validate!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate!(input[:quantity], ::Integer, context: "#{context}[:quantity]")
        Validators::DistributionSummaryList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
      end
    end

    class DistributionNotDisabled
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DistributionNotDisabled, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DistributionSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DistributionSummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Validators::Aliases.validate!(input[:aliases], context: "#{context}[:aliases]") unless input[:aliases].nil?
        Validators::Origins.validate!(input[:origins], context: "#{context}[:origins]") unless input[:origins].nil?
        Validators::OriginGroups.validate!(input[:origin_groups], context: "#{context}[:origin_groups]") unless input[:origin_groups].nil?
        Validators::DefaultCacheBehavior.validate!(input[:default_cache_behavior], context: "#{context}[:default_cache_behavior]") unless input[:default_cache_behavior].nil?
        Validators::CacheBehaviors.validate!(input[:cache_behaviors], context: "#{context}[:cache_behaviors]") unless input[:cache_behaviors].nil?
        Validators::CustomErrorResponses.validate!(input[:custom_error_responses], context: "#{context}[:custom_error_responses]") unless input[:custom_error_responses].nil?
        Hearth::Validator.validate!(input[:comment], ::String, context: "#{context}[:comment]")
        Hearth::Validator.validate!(input[:price_class], ::String, context: "#{context}[:price_class]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Validators::ViewerCertificate.validate!(input[:viewer_certificate], context: "#{context}[:viewer_certificate]") unless input[:viewer_certificate].nil?
        Validators::Restrictions.validate!(input[:restrictions], context: "#{context}[:restrictions]") unless input[:restrictions].nil?
        Hearth::Validator.validate!(input[:web_acl_id], ::String, context: "#{context}[:web_acl_id]")
        Hearth::Validator.validate!(input[:http_version], ::String, context: "#{context}[:http_version]")
        Hearth::Validator.validate!(input[:is_ipv6_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:is_ipv6_enabled]")
        Validators::AliasICPRecordals.validate!(input[:alias_icp_recordals], context: "#{context}[:alias_icp_recordals]") unless input[:alias_icp_recordals].nil?
      end
    end

    class DistributionSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DistributionSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
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

    class FieldLevelEncryption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FieldLevelEncryption, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Validators::FieldLevelEncryptionConfig.validate!(input[:field_level_encryption_config], context: "#{context}[:field_level_encryption_config]") unless input[:field_level_encryption_config].nil?
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

    class FieldLevelEncryptionConfigAlreadyExists
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FieldLevelEncryptionConfigAlreadyExists, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class FieldLevelEncryptionConfigInUse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FieldLevelEncryptionConfigInUse, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class FieldLevelEncryptionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FieldLevelEncryptionList, context: context)
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
        Hearth::Validator.validate!(input[:quantity], ::Integer, context: "#{context}[:quantity]")
        Validators::FieldLevelEncryptionSummaryList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
      end
    end

    class FieldLevelEncryptionProfile
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FieldLevelEncryptionProfile, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Validators::FieldLevelEncryptionProfileConfig.validate!(input[:field_level_encryption_profile_config], context: "#{context}[:field_level_encryption_profile_config]") unless input[:field_level_encryption_profile_config].nil?
      end
    end

    class FieldLevelEncryptionProfileAlreadyExists
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FieldLevelEncryptionProfileAlreadyExists, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class FieldLevelEncryptionProfileConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FieldLevelEncryptionProfileConfig, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:caller_reference], ::String, context: "#{context}[:caller_reference]")
        Hearth::Validator.validate!(input[:comment], ::String, context: "#{context}[:comment]")
        Validators::EncryptionEntities.validate!(input[:encryption_entities], context: "#{context}[:encryption_entities]") unless input[:encryption_entities].nil?
      end
    end

    class FieldLevelEncryptionProfileInUse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FieldLevelEncryptionProfileInUse, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class FieldLevelEncryptionProfileList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FieldLevelEncryptionProfileList, context: context)
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
        Hearth::Validator.validate!(input[:quantity], ::Integer, context: "#{context}[:quantity]")
        Validators::FieldLevelEncryptionProfileSummaryList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
      end
    end

    class FieldLevelEncryptionProfileSizeExceeded
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FieldLevelEncryptionProfileSizeExceeded, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class FieldLevelEncryptionProfileSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FieldLevelEncryptionProfileSummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::EncryptionEntities.validate!(input[:encryption_entities], context: "#{context}[:encryption_entities]") unless input[:encryption_entities].nil?
        Hearth::Validator.validate!(input[:comment], ::String, context: "#{context}[:comment]")
      end
    end

    class FieldLevelEncryptionProfileSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::FieldLevelEncryptionProfileSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FieldLevelEncryptionSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FieldLevelEncryptionSummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:comment], ::String, context: "#{context}[:comment]")
        Validators::QueryArgProfileConfig.validate!(input[:query_arg_profile_config], context: "#{context}[:query_arg_profile_config]") unless input[:query_arg_profile_config].nil?
        Validators::ContentTypeProfileConfig.validate!(input[:content_type_profile_config], context: "#{context}[:content_type_profile_config]") unless input[:content_type_profile_config].nil?
      end
    end

    class FieldLevelEncryptionSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::FieldLevelEncryptionSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
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

    class FunctionAlreadyExists
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FunctionAlreadyExists, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
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

    class FunctionExecutionLogList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class FunctionInUse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FunctionInUse, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class FunctionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FunctionList, context: context)
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
        Hearth::Validator.validate!(input[:quantity], ::Integer, context: "#{context}[:quantity]")
        Validators::FunctionSummaryList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
      end
    end

    class FunctionMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FunctionMetadata, context: context)
        Hearth::Validator.validate!(input[:function_arn], ::String, context: "#{context}[:function_arn]")
        Hearth::Validator.validate!(input[:stage], ::String, context: "#{context}[:stage]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
      end
    end

    class FunctionSizeLimitExceeded
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FunctionSizeLimitExceeded, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class FunctionSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FunctionSummary, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::FunctionConfig.validate!(input[:function_config], context: "#{context}[:function_config]") unless input[:function_config].nil?
        Validators::FunctionMetadata.validate!(input[:function_metadata], context: "#{context}[:function_metadata]") unless input[:function_metadata].nil?
      end
    end

    class FunctionSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::FunctionSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
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

    class GetCachePolicyConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCachePolicyConfigOutput, context: context)
        Validators::CachePolicyConfig.validate!(input[:cache_policy_config], context: "#{context}[:cache_policy_config]") unless input[:cache_policy_config].nil?
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
      end
    end

    class GetCachePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCachePolicyInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetCachePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCachePolicyOutput, context: context)
        Validators::CachePolicy.validate!(input[:cache_policy], context: "#{context}[:cache_policy]") unless input[:cache_policy].nil?
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
      end
    end

    class GetCloudFrontOriginAccessIdentityConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCloudFrontOriginAccessIdentityConfigInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetCloudFrontOriginAccessIdentityConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCloudFrontOriginAccessIdentityConfigOutput, context: context)
        Validators::CloudFrontOriginAccessIdentityConfig.validate!(input[:cloud_front_origin_access_identity_config], context: "#{context}[:cloud_front_origin_access_identity_config]") unless input[:cloud_front_origin_access_identity_config].nil?
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
      end
    end

    class GetCloudFrontOriginAccessIdentityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCloudFrontOriginAccessIdentityInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetCloudFrontOriginAccessIdentityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCloudFrontOriginAccessIdentityOutput, context: context)
        Validators::CloudFrontOriginAccessIdentity.validate!(input[:cloud_front_origin_access_identity], context: "#{context}[:cloud_front_origin_access_identity]") unless input[:cloud_front_origin_access_identity].nil?
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
      end
    end

    class GetDistributionConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDistributionConfigInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetDistributionConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDistributionConfigOutput, context: context)
        Validators::DistributionConfig.validate!(input[:distribution_config], context: "#{context}[:distribution_config]") unless input[:distribution_config].nil?
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
      end
    end

    class GetDistributionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDistributionInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetDistributionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDistributionOutput, context: context)
        Validators::Distribution.validate!(input[:distribution], context: "#{context}[:distribution]") unless input[:distribution].nil?
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
      end
    end

    class GetFieldLevelEncryptionConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFieldLevelEncryptionConfigInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetFieldLevelEncryptionConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFieldLevelEncryptionConfigOutput, context: context)
        Validators::FieldLevelEncryptionConfig.validate!(input[:field_level_encryption_config], context: "#{context}[:field_level_encryption_config]") unless input[:field_level_encryption_config].nil?
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
      end
    end

    class GetFieldLevelEncryptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFieldLevelEncryptionInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetFieldLevelEncryptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFieldLevelEncryptionOutput, context: context)
        Validators::FieldLevelEncryption.validate!(input[:field_level_encryption], context: "#{context}[:field_level_encryption]") unless input[:field_level_encryption].nil?
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
      end
    end

    class GetFieldLevelEncryptionProfileConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFieldLevelEncryptionProfileConfigInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetFieldLevelEncryptionProfileConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFieldLevelEncryptionProfileConfigOutput, context: context)
        Validators::FieldLevelEncryptionProfileConfig.validate!(input[:field_level_encryption_profile_config], context: "#{context}[:field_level_encryption_profile_config]") unless input[:field_level_encryption_profile_config].nil?
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
      end
    end

    class GetFieldLevelEncryptionProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFieldLevelEncryptionProfileInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetFieldLevelEncryptionProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFieldLevelEncryptionProfileOutput, context: context)
        Validators::FieldLevelEncryptionProfile.validate!(input[:field_level_encryption_profile], context: "#{context}[:field_level_encryption_profile]") unless input[:field_level_encryption_profile].nil?
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
      end
    end

    class GetFunctionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFunctionInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:stage], ::String, context: "#{context}[:stage]")
      end
    end

    class GetFunctionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFunctionOutput, context: context)
        Hearth::Validator.validate!(input[:function_code], ::String, context: "#{context}[:function_code]")
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
      end
    end

    class GetInvalidationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInvalidationInput, context: context)
        Hearth::Validator.validate!(input[:distribution_id], ::String, context: "#{context}[:distribution_id]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetInvalidationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInvalidationOutput, context: context)
        Validators::Invalidation.validate!(input[:invalidation], context: "#{context}[:invalidation]") unless input[:invalidation].nil?
      end
    end

    class GetKeyGroupConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetKeyGroupConfigInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetKeyGroupConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetKeyGroupConfigOutput, context: context)
        Validators::KeyGroupConfig.validate!(input[:key_group_config], context: "#{context}[:key_group_config]") unless input[:key_group_config].nil?
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
      end
    end

    class GetKeyGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetKeyGroupInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetKeyGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetKeyGroupOutput, context: context)
        Validators::KeyGroup.validate!(input[:key_group], context: "#{context}[:key_group]") unless input[:key_group].nil?
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
      end
    end

    class GetMonitoringSubscriptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMonitoringSubscriptionInput, context: context)
        Hearth::Validator.validate!(input[:distribution_id], ::String, context: "#{context}[:distribution_id]")
      end
    end

    class GetMonitoringSubscriptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMonitoringSubscriptionOutput, context: context)
        Validators::MonitoringSubscription.validate!(input[:monitoring_subscription], context: "#{context}[:monitoring_subscription]") unless input[:monitoring_subscription].nil?
      end
    end

    class GetOriginRequestPolicyConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetOriginRequestPolicyConfigInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetOriginRequestPolicyConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetOriginRequestPolicyConfigOutput, context: context)
        Validators::OriginRequestPolicyConfig.validate!(input[:origin_request_policy_config], context: "#{context}[:origin_request_policy_config]") unless input[:origin_request_policy_config].nil?
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
      end
    end

    class GetOriginRequestPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetOriginRequestPolicyInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetOriginRequestPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetOriginRequestPolicyOutput, context: context)
        Validators::OriginRequestPolicy.validate!(input[:origin_request_policy], context: "#{context}[:origin_request_policy]") unless input[:origin_request_policy].nil?
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
      end
    end

    class GetPublicKeyConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPublicKeyConfigInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetPublicKeyConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPublicKeyConfigOutput, context: context)
        Validators::PublicKeyConfig.validate!(input[:public_key_config], context: "#{context}[:public_key_config]") unless input[:public_key_config].nil?
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
      end
    end

    class GetPublicKeyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPublicKeyInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetPublicKeyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPublicKeyOutput, context: context)
        Validators::PublicKey.validate!(input[:public_key], context: "#{context}[:public_key]") unless input[:public_key].nil?
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
      end
    end

    class GetRealtimeLogConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRealtimeLogConfigInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class GetRealtimeLogConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRealtimeLogConfigOutput, context: context)
        Validators::RealtimeLogConfig.validate!(input[:realtime_log_config], context: "#{context}[:realtime_log_config]") unless input[:realtime_log_config].nil?
      end
    end

    class GetResponseHeadersPolicyConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResponseHeadersPolicyConfigInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetResponseHeadersPolicyConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResponseHeadersPolicyConfigOutput, context: context)
        Validators::ResponseHeadersPolicyConfig.validate!(input[:response_headers_policy_config], context: "#{context}[:response_headers_policy_config]") unless input[:response_headers_policy_config].nil?
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
      end
    end

    class GetResponseHeadersPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResponseHeadersPolicyInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetResponseHeadersPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResponseHeadersPolicyOutput, context: context)
        Validators::ResponseHeadersPolicy.validate!(input[:response_headers_policy], context: "#{context}[:response_headers_policy]") unless input[:response_headers_policy].nil?
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
      end
    end

    class GetStreamingDistributionConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetStreamingDistributionConfigInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetStreamingDistributionConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetStreamingDistributionConfigOutput, context: context)
        Validators::StreamingDistributionConfig.validate!(input[:streaming_distribution_config], context: "#{context}[:streaming_distribution_config]") unless input[:streaming_distribution_config].nil?
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
      end
    end

    class GetStreamingDistributionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetStreamingDistributionInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetStreamingDistributionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetStreamingDistributionOutput, context: context)
        Validators::StreamingDistribution.validate!(input[:streaming_distribution], context: "#{context}[:streaming_distribution]") unless input[:streaming_distribution].nil?
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
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

    class IllegalDelete
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IllegalDelete, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class IllegalUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IllegalUpdate, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InconsistentQuantities
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InconsistentQuantities, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidArgument
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidArgument, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidDefaultRootObject
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidDefaultRootObject, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidErrorCode
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidErrorCode, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidForwardCookies
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidForwardCookies, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidFunctionAssociation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidFunctionAssociation, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidGeoRestrictionParameter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidGeoRestrictionParameter, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidHeadersForS3Origin
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidHeadersForS3Origin, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidIfMatchVersion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidIfMatchVersion, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidLambdaFunctionAssociation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidLambdaFunctionAssociation, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidLocationCode
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidLocationCode, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidMinimumProtocolVersion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidMinimumProtocolVersion, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidOrigin
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidOrigin, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidOriginAccessIdentity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidOriginAccessIdentity, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidOriginKeepaliveTimeout
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidOriginKeepaliveTimeout, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidOriginReadTimeout
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidOriginReadTimeout, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidProtocolSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidProtocolSettings, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidQueryStringParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidQueryStringParameters, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidRelativePath
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRelativePath, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidRequiredProtocol
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRequiredProtocol, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidResponseCode
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidResponseCode, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidTTLOrder
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidTTLOrder, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidTagging
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidTagging, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidViewerCertificate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidViewerCertificate, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidWebACLId
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidWebACLId, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Invalidation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Invalidation, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:create_time], ::Time, context: "#{context}[:create_time]")
        Validators::InvalidationBatch.validate!(input[:invalidation_batch], context: "#{context}[:invalidation_batch]") unless input[:invalidation_batch].nil?
      end
    end

    class InvalidationBatch
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidationBatch, context: context)
        Validators::Paths.validate!(input[:paths], context: "#{context}[:paths]") unless input[:paths].nil?
        Hearth::Validator.validate!(input[:caller_reference], ::String, context: "#{context}[:caller_reference]")
      end
    end

    class InvalidationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidationList, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
        Hearth::Validator.validate!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate!(input[:quantity], ::Integer, context: "#{context}[:quantity]")
        Validators::InvalidationSummaryList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
      end
    end

    class InvalidationSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidationSummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:create_time], ::Time, context: "#{context}[:create_time]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class InvalidationSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::InvalidationSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class KGKeyPairIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KGKeyPairIds, context: context)
        Hearth::Validator.validate!(input[:key_group_id], ::String, context: "#{context}[:key_group_id]")
        Validators::KeyPairIds.validate!(input[:key_pair_ids], context: "#{context}[:key_pair_ids]") unless input[:key_pair_ids].nil?
      end
    end

    class KGKeyPairIdsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::KGKeyPairIds.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class KeyGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KeyGroup, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Validators::KeyGroupConfig.validate!(input[:key_group_config], context: "#{context}[:key_group_config]") unless input[:key_group_config].nil?
      end
    end

    class KeyGroupAlreadyExists
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KeyGroupAlreadyExists, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KeyGroupConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KeyGroupConfig, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::PublicKeyIdList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:comment], ::String, context: "#{context}[:comment]")
      end
    end

    class KeyGroupList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KeyGroupList, context: context)
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
        Hearth::Validator.validate!(input[:quantity], ::Integer, context: "#{context}[:quantity]")
        Validators::KeyGroupSummaryList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
      end
    end

    class KeyGroupSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KeyGroupSummary, context: context)
        Validators::KeyGroup.validate!(input[:key_group], context: "#{context}[:key_group]") unless input[:key_group].nil?
      end
    end

    class KeyGroupSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::KeyGroupSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class KeyPairIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class KeyPairIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KeyPairIds, context: context)
        Hearth::Validator.validate!(input[:quantity], ::Integer, context: "#{context}[:quantity]")
        Validators::KeyPairIdList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
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

    class ListCachePoliciesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCachePoliciesOutput, context: context)
        Validators::CachePolicyList.validate!(input[:cache_policy_list], context: "#{context}[:cache_policy_list]") unless input[:cache_policy_list].nil?
      end
    end

    class ListCloudFrontOriginAccessIdentitiesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCloudFrontOriginAccessIdentitiesInput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListCloudFrontOriginAccessIdentitiesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCloudFrontOriginAccessIdentitiesOutput, context: context)
        Validators::CloudFrontOriginAccessIdentityList.validate!(input[:cloud_front_origin_access_identity_list], context: "#{context}[:cloud_front_origin_access_identity_list]") unless input[:cloud_front_origin_access_identity_list].nil?
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

    class ListConflictingAliasesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListConflictingAliasesOutput, context: context)
        Validators::ConflictingAliasesList.validate!(input[:conflicting_aliases_list], context: "#{context}[:conflicting_aliases_list]") unless input[:conflicting_aliases_list].nil?
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

    class ListDistributionsByCachePolicyIdOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDistributionsByCachePolicyIdOutput, context: context)
        Validators::DistributionIdList.validate!(input[:distribution_id_list], context: "#{context}[:distribution_id_list]") unless input[:distribution_id_list].nil?
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

    class ListDistributionsByKeyGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDistributionsByKeyGroupOutput, context: context)
        Validators::DistributionIdList.validate!(input[:distribution_id_list], context: "#{context}[:distribution_id_list]") unless input[:distribution_id_list].nil?
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

    class ListDistributionsByOriginRequestPolicyIdOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDistributionsByOriginRequestPolicyIdOutput, context: context)
        Validators::DistributionIdList.validate!(input[:distribution_id_list], context: "#{context}[:distribution_id_list]") unless input[:distribution_id_list].nil?
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

    class ListDistributionsByRealtimeLogConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDistributionsByRealtimeLogConfigOutput, context: context)
        Validators::DistributionList.validate!(input[:distribution_list], context: "#{context}[:distribution_list]") unless input[:distribution_list].nil?
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

    class ListDistributionsByResponseHeadersPolicyIdOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDistributionsByResponseHeadersPolicyIdOutput, context: context)
        Validators::DistributionIdList.validate!(input[:distribution_id_list], context: "#{context}[:distribution_id_list]") unless input[:distribution_id_list].nil?
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

    class ListDistributionsByWebACLIdOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDistributionsByWebACLIdOutput, context: context)
        Validators::DistributionList.validate!(input[:distribution_list], context: "#{context}[:distribution_list]") unless input[:distribution_list].nil?
      end
    end

    class ListDistributionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDistributionsInput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListDistributionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDistributionsOutput, context: context)
        Validators::DistributionList.validate!(input[:distribution_list], context: "#{context}[:distribution_list]") unless input[:distribution_list].nil?
      end
    end

    class ListFieldLevelEncryptionConfigsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFieldLevelEncryptionConfigsInput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListFieldLevelEncryptionConfigsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFieldLevelEncryptionConfigsOutput, context: context)
        Validators::FieldLevelEncryptionList.validate!(input[:field_level_encryption_list], context: "#{context}[:field_level_encryption_list]") unless input[:field_level_encryption_list].nil?
      end
    end

    class ListFieldLevelEncryptionProfilesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFieldLevelEncryptionProfilesInput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListFieldLevelEncryptionProfilesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFieldLevelEncryptionProfilesOutput, context: context)
        Validators::FieldLevelEncryptionProfileList.validate!(input[:field_level_encryption_profile_list], context: "#{context}[:field_level_encryption_profile_list]") unless input[:field_level_encryption_profile_list].nil?
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

    class ListFunctionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFunctionsOutput, context: context)
        Validators::FunctionList.validate!(input[:function_list], context: "#{context}[:function_list]") unless input[:function_list].nil?
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

    class ListInvalidationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListInvalidationsOutput, context: context)
        Validators::InvalidationList.validate!(input[:invalidation_list], context: "#{context}[:invalidation_list]") unless input[:invalidation_list].nil?
      end
    end

    class ListKeyGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListKeyGroupsInput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListKeyGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListKeyGroupsOutput, context: context)
        Validators::KeyGroupList.validate!(input[:key_group_list], context: "#{context}[:key_group_list]") unless input[:key_group_list].nil?
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

    class ListOriginRequestPoliciesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListOriginRequestPoliciesOutput, context: context)
        Validators::OriginRequestPolicyList.validate!(input[:origin_request_policy_list], context: "#{context}[:origin_request_policy_list]") unless input[:origin_request_policy_list].nil?
      end
    end

    class ListPublicKeysInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPublicKeysInput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListPublicKeysOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPublicKeysOutput, context: context)
        Validators::PublicKeyList.validate!(input[:public_key_list], context: "#{context}[:public_key_list]") unless input[:public_key_list].nil?
      end
    end

    class ListRealtimeLogConfigsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRealtimeLogConfigsInput, context: context)
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListRealtimeLogConfigsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRealtimeLogConfigsOutput, context: context)
        Validators::RealtimeLogConfigs.validate!(input[:realtime_log_configs], context: "#{context}[:realtime_log_configs]") unless input[:realtime_log_configs].nil?
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

    class ListResponseHeadersPoliciesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResponseHeadersPoliciesOutput, context: context)
        Validators::ResponseHeadersPolicyList.validate!(input[:response_headers_policy_list], context: "#{context}[:response_headers_policy_list]") unless input[:response_headers_policy_list].nil?
      end
    end

    class ListStreamingDistributionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStreamingDistributionsInput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListStreamingDistributionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStreamingDistributionsOutput, context: context)
        Validators::StreamingDistributionList.validate!(input[:streaming_distribution_list], context: "#{context}[:streaming_distribution_list]") unless input[:streaming_distribution_list].nil?
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
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
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

    class MissingBody
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MissingBody, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class MonitoringSubscription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MonitoringSubscription, context: context)
        Validators::RealtimeMetricsSubscriptionConfig.validate!(input[:realtime_metrics_subscription_config], context: "#{context}[:realtime_metrics_subscription_config]") unless input[:realtime_metrics_subscription_config].nil?
      end
    end

    class NoSuchCachePolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoSuchCachePolicy, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NoSuchCloudFrontOriginAccessIdentity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoSuchCloudFrontOriginAccessIdentity, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NoSuchDistribution
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoSuchDistribution, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NoSuchFieldLevelEncryptionConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoSuchFieldLevelEncryptionConfig, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NoSuchFieldLevelEncryptionProfile
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoSuchFieldLevelEncryptionProfile, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NoSuchFunctionExists
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoSuchFunctionExists, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NoSuchInvalidation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoSuchInvalidation, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NoSuchOrigin
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoSuchOrigin, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NoSuchOriginRequestPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoSuchOriginRequestPolicy, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NoSuchPublicKey
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoSuchPublicKey, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NoSuchRealtimeLogConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoSuchRealtimeLogConfig, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NoSuchResource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoSuchResource, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NoSuchResponseHeadersPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoSuchResponseHeadersPolicy, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NoSuchStreamingDistribution
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoSuchStreamingDistribution, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
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

    class OriginRequestPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OriginRequestPolicy, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Validators::OriginRequestPolicyConfig.validate!(input[:origin_request_policy_config], context: "#{context}[:origin_request_policy_config]") unless input[:origin_request_policy_config].nil?
      end
    end

    class OriginRequestPolicyAlreadyExists
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OriginRequestPolicyAlreadyExists, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OriginRequestPolicyConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OriginRequestPolicyConfig, context: context)
        Hearth::Validator.validate!(input[:comment], ::String, context: "#{context}[:comment]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
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

    class OriginRequestPolicyInUse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OriginRequestPolicyInUse, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OriginRequestPolicyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OriginRequestPolicyList, context: context)
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
        Hearth::Validator.validate!(input[:quantity], ::Integer, context: "#{context}[:quantity]")
        Validators::OriginRequestPolicySummaryList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
      end
    end

    class OriginRequestPolicyQueryStringsConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OriginRequestPolicyQueryStringsConfig, context: context)
        Hearth::Validator.validate!(input[:query_string_behavior], ::String, context: "#{context}[:query_string_behavior]")
        Validators::QueryStringNames.validate!(input[:query_strings], context: "#{context}[:query_strings]") unless input[:query_strings].nil?
      end
    end

    class OriginRequestPolicySummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OriginRequestPolicySummary, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Validators::OriginRequestPolicy.validate!(input[:origin_request_policy], context: "#{context}[:origin_request_policy]") unless input[:origin_request_policy].nil?
      end
    end

    class OriginRequestPolicySummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::OriginRequestPolicySummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
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

    class PreconditionFailed
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PreconditionFailed, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PublicKey
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PublicKey, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Validators::PublicKeyConfig.validate!(input[:public_key_config], context: "#{context}[:public_key_config]") unless input[:public_key_config].nil?
      end
    end

    class PublicKeyAlreadyExists
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PublicKeyAlreadyExists, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PublicKeyConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PublicKeyConfig, context: context)
        Hearth::Validator.validate!(input[:caller_reference], ::String, context: "#{context}[:caller_reference]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
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

    class PublicKeyInUse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PublicKeyInUse, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PublicKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PublicKeyList, context: context)
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
        Hearth::Validator.validate!(input[:quantity], ::Integer, context: "#{context}[:quantity]")
        Validators::PublicKeySummaryList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
      end
    end

    class PublicKeySummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PublicKeySummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:encoded_key], ::String, context: "#{context}[:encoded_key]")
        Hearth::Validator.validate!(input[:comment], ::String, context: "#{context}[:comment]")
      end
    end

    class PublicKeySummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PublicKeySummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PublishFunctionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PublishFunctionInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:if_match], ::String, context: "#{context}[:if_match]")
      end
    end

    class PublishFunctionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PublishFunctionOutput, context: context)
        Validators::FunctionSummary.validate!(input[:function_summary], context: "#{context}[:function_summary]") unless input[:function_summary].nil?
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

    class QueryArgProfileEmpty
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QueryArgProfileEmpty, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
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

    class RealtimeLogConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RealtimeLogConfig, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:sampling_rate], ::Integer, context: "#{context}[:sampling_rate]")
        Validators::EndPointList.validate!(input[:end_points], context: "#{context}[:end_points]") unless input[:end_points].nil?
        Validators::FieldList.validate!(input[:fields], context: "#{context}[:fields]") unless input[:fields].nil?
      end
    end

    class RealtimeLogConfigAlreadyExists
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RealtimeLogConfigAlreadyExists, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RealtimeLogConfigInUse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RealtimeLogConfigInUse, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RealtimeLogConfigList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RealtimeLogConfig.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RealtimeLogConfigOwnerMismatch
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RealtimeLogConfigOwnerMismatch, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RealtimeLogConfigs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RealtimeLogConfigs, context: context)
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
        Validators::RealtimeLogConfigList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
      end
    end

    class RealtimeMetricsSubscriptionConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RealtimeMetricsSubscriptionConfig, context: context)
        Hearth::Validator.validate!(input[:realtime_metrics_subscription_status], ::String, context: "#{context}[:realtime_metrics_subscription_status]")
      end
    end

    class ResourceInUse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceInUse, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResponseHeadersPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResponseHeadersPolicy, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Validators::ResponseHeadersPolicyConfig.validate!(input[:response_headers_policy_config], context: "#{context}[:response_headers_policy_config]") unless input[:response_headers_policy_config].nil?
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

    class ResponseHeadersPolicyAlreadyExists
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResponseHeadersPolicyAlreadyExists, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResponseHeadersPolicyConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResponseHeadersPolicyConfig, context: context)
        Hearth::Validator.validate!(input[:comment], ::String, context: "#{context}[:comment]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::ResponseHeadersPolicyCorsConfig.validate!(input[:cors_config], context: "#{context}[:cors_config]") unless input[:cors_config].nil?
        Validators::ResponseHeadersPolicySecurityHeadersConfig.validate!(input[:security_headers_config], context: "#{context}[:security_headers_config]") unless input[:security_headers_config].nil?
        Validators::ResponseHeadersPolicyCustomHeadersConfig.validate!(input[:custom_headers_config], context: "#{context}[:custom_headers_config]") unless input[:custom_headers_config].nil?
        Validators::ResponseHeadersPolicyServerTimingHeadersConfig.validate!(input[:server_timing_headers_config], context: "#{context}[:server_timing_headers_config]") unless input[:server_timing_headers_config].nil?
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

    class ResponseHeadersPolicyInUse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResponseHeadersPolicyInUse, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResponseHeadersPolicyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResponseHeadersPolicyList, context: context)
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
        Hearth::Validator.validate!(input[:quantity], ::Integer, context: "#{context}[:quantity]")
        Validators::ResponseHeadersPolicySummaryList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
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

    class ResponseHeadersPolicyServerTimingHeadersConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResponseHeadersPolicyServerTimingHeadersConfig, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:sampling_rate], ::Float, context: "#{context}[:sampling_rate]")
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

    class ResponseHeadersPolicySummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResponseHeadersPolicySummary, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Validators::ResponseHeadersPolicy.validate!(input[:response_headers_policy], context: "#{context}[:response_headers_policy]") unless input[:response_headers_policy].nil?
      end
    end

    class ResponseHeadersPolicySummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ResponseHeadersPolicySummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
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

    class Signer
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Signer, context: context)
        Hearth::Validator.validate!(input[:aws_account_number], ::String, context: "#{context}[:aws_account_number]")
        Validators::KeyPairIds.validate!(input[:key_pair_ids], context: "#{context}[:key_pair_ids]") unless input[:key_pair_ids].nil?
      end
    end

    class SignerList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Signer.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
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

    class StreamingDistribution
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StreamingDistribution, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Validators::ActiveTrustedSigners.validate!(input[:active_trusted_signers], context: "#{context}[:active_trusted_signers]") unless input[:active_trusted_signers].nil?
        Validators::StreamingDistributionConfig.validate!(input[:streaming_distribution_config], context: "#{context}[:streaming_distribution_config]") unless input[:streaming_distribution_config].nil?
      end
    end

    class StreamingDistributionAlreadyExists
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StreamingDistributionAlreadyExists, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
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

    class StreamingDistributionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StreamingDistributionList, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
        Hearth::Validator.validate!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate!(input[:quantity], ::Integer, context: "#{context}[:quantity]")
        Validators::StreamingDistributionSummaryList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
      end
    end

    class StreamingDistributionNotDisabled
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StreamingDistributionNotDisabled, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class StreamingDistributionSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StreamingDistributionSummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Validators::S3Origin.validate!(input[:s3_origin], context: "#{context}[:s3_origin]") unless input[:s3_origin].nil?
        Validators::Aliases.validate!(input[:aliases], context: "#{context}[:aliases]") unless input[:aliases].nil?
        Validators::TrustedSigners.validate!(input[:trusted_signers], context: "#{context}[:trusted_signers]") unless input[:trusted_signers].nil?
        Hearth::Validator.validate!(input[:comment], ::String, context: "#{context}[:comment]")
        Hearth::Validator.validate!(input[:price_class], ::String, context: "#{context}[:price_class]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class StreamingDistributionSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::StreamingDistributionSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
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

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class Tags
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tags, context: context)
        Validators::TagList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
      end
    end

    class TestFunctionFailed
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TestFunctionFailed, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TestFunctionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TestFunctionInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:if_match], ::String, context: "#{context}[:if_match]")
        Hearth::Validator.validate!(input[:stage], ::String, context: "#{context}[:stage]")
        Hearth::Validator.validate!(input[:event_object], ::String, context: "#{context}[:event_object]")
      end
    end

    class TestFunctionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TestFunctionOutput, context: context)
        Validators::TestResult.validate!(input[:test_result], context: "#{context}[:test_result]") unless input[:test_result].nil?
      end
    end

    class TestResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TestResult, context: context)
        Validators::FunctionSummary.validate!(input[:function_summary], context: "#{context}[:function_summary]") unless input[:function_summary].nil?
        Hearth::Validator.validate!(input[:compute_utilization], ::String, context: "#{context}[:compute_utilization]")
        Validators::FunctionExecutionLogList.validate!(input[:function_execution_logs], context: "#{context}[:function_execution_logs]") unless input[:function_execution_logs].nil?
        Hearth::Validator.validate!(input[:function_error_message], ::String, context: "#{context}[:function_error_message]")
        Hearth::Validator.validate!(input[:function_output], ::String, context: "#{context}[:function_output]")
      end
    end

    class TooLongCSPInResponseHeadersPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooLongCSPInResponseHeadersPolicy, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyCacheBehaviors
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyCacheBehaviors, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyCachePolicies
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyCachePolicies, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyCertificates
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyCertificates, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyCloudFrontOriginAccessIdentities
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyCloudFrontOriginAccessIdentities, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyCookieNamesInWhiteList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyCookieNamesInWhiteList, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyCookiesInCachePolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyCookiesInCachePolicy, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyCookiesInOriginRequestPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyCookiesInOriginRequestPolicy, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyCustomHeadersInResponseHeadersPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyCustomHeadersInResponseHeadersPolicy, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyDistributionCNAMEs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyDistributionCNAMEs, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyDistributions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyDistributions, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyDistributionsAssociatedToCachePolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyDistributionsAssociatedToCachePolicy, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyDistributionsAssociatedToFieldLevelEncryptionConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyDistributionsAssociatedToFieldLevelEncryptionConfig, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyDistributionsAssociatedToKeyGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyDistributionsAssociatedToKeyGroup, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyDistributionsAssociatedToOriginRequestPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyDistributionsAssociatedToOriginRequestPolicy, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyDistributionsAssociatedToResponseHeadersPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyDistributionsAssociatedToResponseHeadersPolicy, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyDistributionsWithFunctionAssociations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyDistributionsWithFunctionAssociations, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyDistributionsWithLambdaAssociations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyDistributionsWithLambdaAssociations, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyDistributionsWithSingleFunctionARN
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyDistributionsWithSingleFunctionARN, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyFieldLevelEncryptionConfigs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyFieldLevelEncryptionConfigs, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyFieldLevelEncryptionContentTypeProfiles
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyFieldLevelEncryptionContentTypeProfiles, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyFieldLevelEncryptionEncryptionEntities
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyFieldLevelEncryptionEncryptionEntities, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyFieldLevelEncryptionFieldPatterns
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyFieldLevelEncryptionFieldPatterns, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyFieldLevelEncryptionProfiles
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyFieldLevelEncryptionProfiles, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyFieldLevelEncryptionQueryArgProfiles
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyFieldLevelEncryptionQueryArgProfiles, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyFunctionAssociations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyFunctionAssociations, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyFunctions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyFunctions, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyHeadersInCachePolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyHeadersInCachePolicy, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyHeadersInForwardedValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyHeadersInForwardedValues, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyHeadersInOriginRequestPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyHeadersInOriginRequestPolicy, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyInvalidationsInProgress
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyInvalidationsInProgress, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyKeyGroups
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyKeyGroups, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyKeyGroupsAssociatedToDistribution
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyKeyGroupsAssociatedToDistribution, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyLambdaFunctionAssociations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyLambdaFunctionAssociations, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyOriginCustomHeaders
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyOriginCustomHeaders, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyOriginGroupsPerDistribution
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyOriginGroupsPerDistribution, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyOriginRequestPolicies
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyOriginRequestPolicies, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyOrigins
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyOrigins, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyPublicKeys
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyPublicKeys, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyPublicKeysInKeyGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyPublicKeysInKeyGroup, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyQueryStringParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyQueryStringParameters, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyQueryStringsInCachePolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyQueryStringsInCachePolicy, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyQueryStringsInOriginRequestPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyQueryStringsInOriginRequestPolicy, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyRealtimeLogConfigs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyRealtimeLogConfigs, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyResponseHeadersPolicies
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyResponseHeadersPolicies, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyStreamingDistributionCNAMEs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyStreamingDistributionCNAMEs, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyStreamingDistributions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyStreamingDistributions, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyTrustedSigners
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyTrustedSigners, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TrustedKeyGroupDoesNotExist
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TrustedKeyGroupDoesNotExist, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
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

    class TrustedSignerDoesNotExist
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TrustedSignerDoesNotExist, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
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

    class UnsupportedOperation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnsupportedOperation, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource], ::String, context: "#{context}[:resource]")
        Validators::TagKeys.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
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

    class UpdateCachePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateCachePolicyOutput, context: context)
        Validators::CachePolicy.validate!(input[:cache_policy], context: "#{context}[:cache_policy]") unless input[:cache_policy].nil?
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
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

    class UpdateCloudFrontOriginAccessIdentityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateCloudFrontOriginAccessIdentityOutput, context: context)
        Validators::CloudFrontOriginAccessIdentity.validate!(input[:cloud_front_origin_access_identity], context: "#{context}[:cloud_front_origin_access_identity]") unless input[:cloud_front_origin_access_identity].nil?
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
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

    class UpdateDistributionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDistributionOutput, context: context)
        Validators::Distribution.validate!(input[:distribution], context: "#{context}[:distribution]") unless input[:distribution].nil?
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
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

    class UpdateFieldLevelEncryptionConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFieldLevelEncryptionConfigOutput, context: context)
        Validators::FieldLevelEncryption.validate!(input[:field_level_encryption], context: "#{context}[:field_level_encryption]") unless input[:field_level_encryption].nil?
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
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

    class UpdateFieldLevelEncryptionProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFieldLevelEncryptionProfileOutput, context: context)
        Validators::FieldLevelEncryptionProfile.validate!(input[:field_level_encryption_profile], context: "#{context}[:field_level_encryption_profile]") unless input[:field_level_encryption_profile].nil?
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
      end
    end

    class UpdateFunctionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFunctionInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:if_match], ::String, context: "#{context}[:if_match]")
        Validators::FunctionConfig.validate!(input[:function_config], context: "#{context}[:function_config]") unless input[:function_config].nil?
        Hearth::Validator.validate!(input[:function_code], ::String, context: "#{context}[:function_code]")
      end
    end

    class UpdateFunctionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFunctionOutput, context: context)
        Validators::FunctionSummary.validate!(input[:function_summary], context: "#{context}[:function_summary]") unless input[:function_summary].nil?
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
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

    class UpdateKeyGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateKeyGroupOutput, context: context)
        Validators::KeyGroup.validate!(input[:key_group], context: "#{context}[:key_group]") unless input[:key_group].nil?
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
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

    class UpdateOriginRequestPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateOriginRequestPolicyOutput, context: context)
        Validators::OriginRequestPolicy.validate!(input[:origin_request_policy], context: "#{context}[:origin_request_policy]") unless input[:origin_request_policy].nil?
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
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

    class UpdatePublicKeyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePublicKeyOutput, context: context)
        Validators::PublicKey.validate!(input[:public_key], context: "#{context}[:public_key]") unless input[:public_key].nil?
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
      end
    end

    class UpdateRealtimeLogConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRealtimeLogConfigInput, context: context)
        Validators::EndPointList.validate!(input[:end_points], context: "#{context}[:end_points]") unless input[:end_points].nil?
        Validators::FieldList.validate!(input[:fields], context: "#{context}[:fields]") unless input[:fields].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:sampling_rate], ::Integer, context: "#{context}[:sampling_rate]")
      end
    end

    class UpdateRealtimeLogConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRealtimeLogConfigOutput, context: context)
        Validators::RealtimeLogConfig.validate!(input[:realtime_log_config], context: "#{context}[:realtime_log_config]") unless input[:realtime_log_config].nil?
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

    class UpdateResponseHeadersPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateResponseHeadersPolicyOutput, context: context)
        Validators::ResponseHeadersPolicy.validate!(input[:response_headers_policy], context: "#{context}[:response_headers_policy]") unless input[:response_headers_policy].nil?
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
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

    class UpdateStreamingDistributionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateStreamingDistributionOutput, context: context)
        Validators::StreamingDistribution.validate!(input[:streaming_distribution], context: "#{context}[:streaming_distribution]") unless input[:streaming_distribution].nil?
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
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
