# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::Cloudfront
  module Builders

    # Operation Builder for AssociateAlias
    class AssociateAlias
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path(format(
            '/2020-05-31/distribution/%<TargetDistributionId>s/associate-alias',
            TargetDistributionId: Hearth::HTTP.uri_escape(input[:target_distribution_id].to_s)
          )
        )
        http_req.append_query_param('Alias', input[:alias].to_s) unless input[:alias].nil?
      end
    end

    # Operation Builder for CreateCachePolicy
    class CreateCachePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/2020-05-31/cache-policy')
      end
    end

    # Structure Builder for CachePolicyConfig
    class CachePolicyConfig
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Comment', input[:comment].to_s) unless input[:comment].nil?
        xml << Hearth::XML::Node.new('Name', input[:member_name].to_s) unless input[:member_name].nil?
        xml << Hearth::XML::Node.new('DefaultTTL', input[:default_ttl].to_s) unless input[:default_ttl].nil?
        xml << Hearth::XML::Node.new('MaxTTL', input[:max_ttl].to_s) unless input[:max_ttl].nil?
        xml << Hearth::XML::Node.new('MinTTL', input[:min_ttl].to_s) unless input[:min_ttl].nil?
        xml << Builders::ParametersInCacheKeyAndForwardedToOrigin.build('ParametersInCacheKeyAndForwardedToOrigin', input[:parameters_in_cache_key_and_forwarded_to_origin]) unless input[:parameters_in_cache_key_and_forwarded_to_origin].nil?
        xml
      end
    end

    # Structure Builder for ParametersInCacheKeyAndForwardedToOrigin
    class ParametersInCacheKeyAndForwardedToOrigin
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('EnableAcceptEncodingGzip', input[:enable_accept_encoding_gzip].to_s) unless input[:enable_accept_encoding_gzip].nil?
        xml << Hearth::XML::Node.new('EnableAcceptEncodingBrotli', input[:enable_accept_encoding_brotli].to_s) unless input[:enable_accept_encoding_brotli].nil?
        xml << Builders::CachePolicyHeadersConfig.build('HeadersConfig', input[:headers_config]) unless input[:headers_config].nil?
        xml << Builders::CachePolicyCookiesConfig.build('CookiesConfig', input[:cookies_config]) unless input[:cookies_config].nil?
        xml << Builders::CachePolicyQueryStringsConfig.build('QueryStringsConfig', input[:query_strings_config]) unless input[:query_strings_config].nil?
        xml
      end
    end

    # Structure Builder for CachePolicyQueryStringsConfig
    class CachePolicyQueryStringsConfig
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('QueryStringBehavior', input[:query_string_behavior].to_s) unless input[:query_string_behavior].nil?
        xml << Builders::QueryStringNames.build('QueryStrings', input[:query_strings]) unless input[:query_strings].nil?
        xml
      end
    end

    # Structure Builder for QueryStringNames
    class QueryStringNames
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Quantity', input[:quantity].to_s) unless input[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Builders::QueryStringNamesList.build('Name', input[:items])) unless input[:items].nil?
        xml
      end
    end

    # List Builder for QueryStringNamesList
    class QueryStringNamesList
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Structure Builder for CachePolicyCookiesConfig
    class CachePolicyCookiesConfig
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('CookieBehavior', input[:cookie_behavior].to_s) unless input[:cookie_behavior].nil?
        xml << Builders::CookieNames.build('Cookies', input[:cookies]) unless input[:cookies].nil?
        xml
      end
    end

    # Structure Builder for CookieNames
    class CookieNames
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Quantity', input[:quantity].to_s) unless input[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Builders::CookieNameList.build('Name', input[:items])) unless input[:items].nil?
        xml
      end
    end

    # List Builder for CookieNameList
    class CookieNameList
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Structure Builder for CachePolicyHeadersConfig
    class CachePolicyHeadersConfig
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('HeaderBehavior', input[:header_behavior].to_s) unless input[:header_behavior].nil?
        xml << Builders::Headers.build('Headers', input[:headers]) unless input[:headers].nil?
        xml
      end
    end

    # Structure Builder for Headers
    class Headers
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Quantity', input[:quantity].to_s) unless input[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Builders::HeaderList.build('Name', input[:items])) unless input[:items].nil?
        xml
      end
    end

    # List Builder for HeaderList
    class HeaderList
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Operation Builder for CreateCloudFrontOriginAccessIdentity
    class CreateCloudFrontOriginAccessIdentity
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/2020-05-31/origin-access-identity/cloudfront')
      end
    end

    # Structure Builder for CloudFrontOriginAccessIdentityConfig
    class CloudFrontOriginAccessIdentityConfig
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('CallerReference', input[:caller_reference].to_s) unless input[:caller_reference].nil?
        xml << Hearth::XML::Node.new('Comment', input[:comment].to_s) unless input[:comment].nil?
        xml
      end
    end

    # Operation Builder for CreateDistribution
    class CreateDistribution
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/2020-05-31/distribution')
      end
    end

    # Structure Builder for DistributionConfig
    class DistributionConfig
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('CallerReference', input[:caller_reference].to_s) unless input[:caller_reference].nil?
        xml << Builders::Aliases.build('Aliases', input[:aliases]) unless input[:aliases].nil?
        xml << Hearth::XML::Node.new('DefaultRootObject', input[:default_root_object].to_s) unless input[:default_root_object].nil?
        xml << Builders::Origins.build('Origins', input[:origins]) unless input[:origins].nil?
        xml << Builders::OriginGroups.build('OriginGroups', input[:origin_groups]) unless input[:origin_groups].nil?
        xml << Builders::DefaultCacheBehavior.build('DefaultCacheBehavior', input[:default_cache_behavior]) unless input[:default_cache_behavior].nil?
        xml << Builders::CacheBehaviors.build('CacheBehaviors', input[:cache_behaviors]) unless input[:cache_behaviors].nil?
        xml << Builders::CustomErrorResponses.build('CustomErrorResponses', input[:custom_error_responses]) unless input[:custom_error_responses].nil?
        xml << Hearth::XML::Node.new('Comment', input[:comment].to_s) unless input[:comment].nil?
        xml << Builders::LoggingConfig.build('Logging', input[:logging]) unless input[:logging].nil?
        xml << Hearth::XML::Node.new('PriceClass', input[:price_class].to_s) unless input[:price_class].nil?
        xml << Hearth::XML::Node.new('Enabled', input[:enabled].to_s) unless input[:enabled].nil?
        xml << Builders::ViewerCertificate.build('ViewerCertificate', input[:viewer_certificate]) unless input[:viewer_certificate].nil?
        xml << Builders::Restrictions.build('Restrictions', input[:restrictions]) unless input[:restrictions].nil?
        xml << Hearth::XML::Node.new('WebACLId', input[:web_acl_id].to_s) unless input[:web_acl_id].nil?
        xml << Hearth::XML::Node.new('HttpVersion', input[:http_version].to_s) unless input[:http_version].nil?
        xml << Hearth::XML::Node.new('IsIPV6Enabled', input[:is_ipv6_enabled].to_s) unless input[:is_ipv6_enabled].nil?
        xml
      end
    end

    # Structure Builder for Restrictions
    class Restrictions
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Builders::GeoRestriction.build('GeoRestriction', input[:geo_restriction]) unless input[:geo_restriction].nil?
        xml
      end
    end

    # Structure Builder for GeoRestriction
    class GeoRestriction
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('RestrictionType', input[:restriction_type].to_s) unless input[:restriction_type].nil?
        xml << Hearth::XML::Node.new('Quantity', input[:quantity].to_s) unless input[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Builders::LocationList.build('Location', input[:items])) unless input[:items].nil?
        xml
      end
    end

    # List Builder for LocationList
    class LocationList
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Structure Builder for ViewerCertificate
    class ViewerCertificate
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('CloudFrontDefaultCertificate', input[:cloud_front_default_certificate].to_s) unless input[:cloud_front_default_certificate].nil?
        xml << Hearth::XML::Node.new('IAMCertificateId', input[:iam_certificate_id].to_s) unless input[:iam_certificate_id].nil?
        xml << Hearth::XML::Node.new('ACMCertificateArn', input[:acm_certificate_arn].to_s) unless input[:acm_certificate_arn].nil?
        xml << Hearth::XML::Node.new('SSLSupportMethod', input[:ssl_support_method].to_s) unless input[:ssl_support_method].nil?
        xml << Hearth::XML::Node.new('MinimumProtocolVersion', input[:minimum_protocol_version].to_s) unless input[:minimum_protocol_version].nil?
        xml << Hearth::XML::Node.new('Certificate', input[:certificate].to_s) unless input[:certificate].nil?
        xml << Hearth::XML::Node.new('CertificateSource', input[:certificate_source].to_s) unless input[:certificate_source].nil?
        xml
      end
    end

    # Structure Builder for LoggingConfig
    class LoggingConfig
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Enabled', input[:enabled].to_s) unless input[:enabled].nil?
        xml << Hearth::XML::Node.new('IncludeCookies', input[:include_cookies].to_s) unless input[:include_cookies].nil?
        xml << Hearth::XML::Node.new('Bucket', input[:bucket].to_s) unless input[:bucket].nil?
        xml << Hearth::XML::Node.new('Prefix', input[:prefix].to_s) unless input[:prefix].nil?
        xml
      end
    end

    # Structure Builder for CustomErrorResponses
    class CustomErrorResponses
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Quantity', input[:quantity].to_s) unless input[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Builders::CustomErrorResponseList.build('CustomErrorResponse', input[:items])) unless input[:items].nil?
        xml
      end
    end

    # List Builder for CustomErrorResponseList
    class CustomErrorResponseList
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Builders::CustomErrorResponse.build(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Builder for CustomErrorResponse
    class CustomErrorResponse
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ErrorCode', input[:error_code].to_s) unless input[:error_code].nil?
        xml << Hearth::XML::Node.new('ResponsePagePath', input[:response_page_path].to_s) unless input[:response_page_path].nil?
        xml << Hearth::XML::Node.new('ResponseCode', input[:response_code].to_s) unless input[:response_code].nil?
        xml << Hearth::XML::Node.new('ErrorCachingMinTTL', input[:error_caching_min_ttl].to_s) unless input[:error_caching_min_ttl].nil?
        xml
      end
    end

    # Structure Builder for CacheBehaviors
    class CacheBehaviors
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Quantity', input[:quantity].to_s) unless input[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Builders::CacheBehaviorList.build('CacheBehavior', input[:items])) unless input[:items].nil?
        xml
      end
    end

    # List Builder for CacheBehaviorList
    class CacheBehaviorList
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Builders::CacheBehavior.build(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Builder for CacheBehavior
    class CacheBehavior
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('PathPattern', input[:path_pattern].to_s) unless input[:path_pattern].nil?
        xml << Hearth::XML::Node.new('TargetOriginId', input[:target_origin_id].to_s) unless input[:target_origin_id].nil?
        xml << Builders::TrustedSigners.build('TrustedSigners', input[:trusted_signers]) unless input[:trusted_signers].nil?
        xml << Builders::TrustedKeyGroups.build('TrustedKeyGroups', input[:trusted_key_groups]) unless input[:trusted_key_groups].nil?
        xml << Hearth::XML::Node.new('ViewerProtocolPolicy', input[:viewer_protocol_policy].to_s) unless input[:viewer_protocol_policy].nil?
        xml << Builders::AllowedMethods.build('AllowedMethods', input[:allowed_methods]) unless input[:allowed_methods].nil?
        xml << Hearth::XML::Node.new('SmoothStreaming', input[:smooth_streaming].to_s) unless input[:smooth_streaming].nil?
        xml << Hearth::XML::Node.new('Compress', input[:compress].to_s) unless input[:compress].nil?
        xml << Builders::LambdaFunctionAssociations.build('LambdaFunctionAssociations', input[:lambda_function_associations]) unless input[:lambda_function_associations].nil?
        xml << Builders::FunctionAssociations.build('FunctionAssociations', input[:function_associations]) unless input[:function_associations].nil?
        xml << Hearth::XML::Node.new('FieldLevelEncryptionId', input[:field_level_encryption_id].to_s) unless input[:field_level_encryption_id].nil?
        xml << Hearth::XML::Node.new('RealtimeLogConfigArn', input[:realtime_log_config_arn].to_s) unless input[:realtime_log_config_arn].nil?
        xml << Hearth::XML::Node.new('CachePolicyId', input[:cache_policy_id].to_s) unless input[:cache_policy_id].nil?
        xml << Hearth::XML::Node.new('OriginRequestPolicyId', input[:origin_request_policy_id].to_s) unless input[:origin_request_policy_id].nil?
        xml << Hearth::XML::Node.new('ResponseHeadersPolicyId', input[:response_headers_policy_id].to_s) unless input[:response_headers_policy_id].nil?
        xml << Builders::ForwardedValues.build('ForwardedValues', input[:forwarded_values]) unless input[:forwarded_values].nil?
        xml << Hearth::XML::Node.new('MinTTL', input[:min_ttl].to_s) unless input[:min_ttl].nil?
        xml << Hearth::XML::Node.new('DefaultTTL', input[:default_ttl].to_s) unless input[:default_ttl].nil?
        xml << Hearth::XML::Node.new('MaxTTL', input[:max_ttl].to_s) unless input[:max_ttl].nil?
        xml
      end
    end

    # Structure Builder for ForwardedValues
    class ForwardedValues
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('QueryString', input[:query_string].to_s) unless input[:query_string].nil?
        xml << Builders::CookiePreference.build('Cookies', input[:cookies]) unless input[:cookies].nil?
        xml << Builders::Headers.build('Headers', input[:headers]) unless input[:headers].nil?
        xml << Builders::QueryStringCacheKeys.build('QueryStringCacheKeys', input[:query_string_cache_keys]) unless input[:query_string_cache_keys].nil?
        xml
      end
    end

    # Structure Builder for QueryStringCacheKeys
    class QueryStringCacheKeys
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Quantity', input[:quantity].to_s) unless input[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Builders::QueryStringCacheKeysList.build('Name', input[:items])) unless input[:items].nil?
        xml
      end
    end

    # List Builder for QueryStringCacheKeysList
    class QueryStringCacheKeysList
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Structure Builder for CookiePreference
    class CookiePreference
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Forward', input[:forward].to_s) unless input[:forward].nil?
        xml << Builders::CookieNames.build('WhitelistedNames', input[:whitelisted_names]) unless input[:whitelisted_names].nil?
        xml
      end
    end

    # Structure Builder for FunctionAssociations
    class FunctionAssociations
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Quantity', input[:quantity].to_s) unless input[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Builders::FunctionAssociationList.build('FunctionAssociation', input[:items])) unless input[:items].nil?
        xml
      end
    end

    # List Builder for FunctionAssociationList
    class FunctionAssociationList
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Builders::FunctionAssociation.build(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Builder for FunctionAssociation
    class FunctionAssociation
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('FunctionARN', input[:function_arn].to_s) unless input[:function_arn].nil?
        xml << Hearth::XML::Node.new('EventType', input[:event_type].to_s) unless input[:event_type].nil?
        xml
      end
    end

    # Structure Builder for LambdaFunctionAssociations
    class LambdaFunctionAssociations
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Quantity', input[:quantity].to_s) unless input[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Builders::LambdaFunctionAssociationList.build('LambdaFunctionAssociation', input[:items])) unless input[:items].nil?
        xml
      end
    end

    # List Builder for LambdaFunctionAssociationList
    class LambdaFunctionAssociationList
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Builders::LambdaFunctionAssociation.build(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Builder for LambdaFunctionAssociation
    class LambdaFunctionAssociation
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('LambdaFunctionARN', input[:lambda_function_arn].to_s) unless input[:lambda_function_arn].nil?
        xml << Hearth::XML::Node.new('EventType', input[:event_type].to_s) unless input[:event_type].nil?
        xml << Hearth::XML::Node.new('IncludeBody', input[:include_body].to_s) unless input[:include_body].nil?
        xml
      end
    end

    # Structure Builder for AllowedMethods
    class AllowedMethods
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Quantity', input[:quantity].to_s) unless input[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Builders::MethodsList.build('Method', input[:items])) unless input[:items].nil?
        xml << Builders::CachedMethods.build('CachedMethods', input[:cached_methods]) unless input[:cached_methods].nil?
        xml
      end
    end

    # Structure Builder for CachedMethods
    class CachedMethods
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Quantity', input[:quantity].to_s) unless input[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Builders::MethodsList.build('Method', input[:items])) unless input[:items].nil?
        xml
      end
    end

    # List Builder for MethodsList
    class MethodsList
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Structure Builder for TrustedKeyGroups
    class TrustedKeyGroups
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Enabled', input[:enabled].to_s) unless input[:enabled].nil?
        xml << Hearth::XML::Node.new('Quantity', input[:quantity].to_s) unless input[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Builders::TrustedKeyGroupIdList.build('KeyGroup', input[:items])) unless input[:items].nil?
        xml
      end
    end

    # List Builder for TrustedKeyGroupIdList
    class TrustedKeyGroupIdList
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Structure Builder for TrustedSigners
    class TrustedSigners
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Enabled', input[:enabled].to_s) unless input[:enabled].nil?
        xml << Hearth::XML::Node.new('Quantity', input[:quantity].to_s) unless input[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Builders::AwsAccountNumberList.build('AwsAccountNumber', input[:items])) unless input[:items].nil?
        xml
      end
    end

    # List Builder for AwsAccountNumberList
    class AwsAccountNumberList
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Structure Builder for DefaultCacheBehavior
    class DefaultCacheBehavior
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('TargetOriginId', input[:target_origin_id].to_s) unless input[:target_origin_id].nil?
        xml << Builders::TrustedSigners.build('TrustedSigners', input[:trusted_signers]) unless input[:trusted_signers].nil?
        xml << Builders::TrustedKeyGroups.build('TrustedKeyGroups', input[:trusted_key_groups]) unless input[:trusted_key_groups].nil?
        xml << Hearth::XML::Node.new('ViewerProtocolPolicy', input[:viewer_protocol_policy].to_s) unless input[:viewer_protocol_policy].nil?
        xml << Builders::AllowedMethods.build('AllowedMethods', input[:allowed_methods]) unless input[:allowed_methods].nil?
        xml << Hearth::XML::Node.new('SmoothStreaming', input[:smooth_streaming].to_s) unless input[:smooth_streaming].nil?
        xml << Hearth::XML::Node.new('Compress', input[:compress].to_s) unless input[:compress].nil?
        xml << Builders::LambdaFunctionAssociations.build('LambdaFunctionAssociations', input[:lambda_function_associations]) unless input[:lambda_function_associations].nil?
        xml << Builders::FunctionAssociations.build('FunctionAssociations', input[:function_associations]) unless input[:function_associations].nil?
        xml << Hearth::XML::Node.new('FieldLevelEncryptionId', input[:field_level_encryption_id].to_s) unless input[:field_level_encryption_id].nil?
        xml << Hearth::XML::Node.new('RealtimeLogConfigArn', input[:realtime_log_config_arn].to_s) unless input[:realtime_log_config_arn].nil?
        xml << Hearth::XML::Node.new('CachePolicyId', input[:cache_policy_id].to_s) unless input[:cache_policy_id].nil?
        xml << Hearth::XML::Node.new('OriginRequestPolicyId', input[:origin_request_policy_id].to_s) unless input[:origin_request_policy_id].nil?
        xml << Hearth::XML::Node.new('ResponseHeadersPolicyId', input[:response_headers_policy_id].to_s) unless input[:response_headers_policy_id].nil?
        xml << Builders::ForwardedValues.build('ForwardedValues', input[:forwarded_values]) unless input[:forwarded_values].nil?
        xml << Hearth::XML::Node.new('MinTTL', input[:min_ttl].to_s) unless input[:min_ttl].nil?
        xml << Hearth::XML::Node.new('DefaultTTL', input[:default_ttl].to_s) unless input[:default_ttl].nil?
        xml << Hearth::XML::Node.new('MaxTTL', input[:max_ttl].to_s) unless input[:max_ttl].nil?
        xml
      end
    end

    # Structure Builder for OriginGroups
    class OriginGroups
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Quantity', input[:quantity].to_s) unless input[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Builders::OriginGroupList.build('OriginGroup', input[:items])) unless input[:items].nil?
        xml
      end
    end

    # List Builder for OriginGroupList
    class OriginGroupList
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Builders::OriginGroup.build(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Builder for OriginGroup
    class OriginGroup
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Id', input[:id].to_s) unless input[:id].nil?
        xml << Builders::OriginGroupFailoverCriteria.build('FailoverCriteria', input[:failover_criteria]) unless input[:failover_criteria].nil?
        xml << Builders::OriginGroupMembers.build('Members', input[:members]) unless input[:members].nil?
        xml
      end
    end

    # Structure Builder for OriginGroupMembers
    class OriginGroupMembers
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Quantity', input[:quantity].to_s) unless input[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Builders::OriginGroupMemberList.build('OriginGroupMember', input[:items])) unless input[:items].nil?
        xml
      end
    end

    # List Builder for OriginGroupMemberList
    class OriginGroupMemberList
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Builders::OriginGroupMember.build(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Builder for OriginGroupMember
    class OriginGroupMember
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('OriginId', input[:origin_id].to_s) unless input[:origin_id].nil?
        xml
      end
    end

    # Structure Builder for OriginGroupFailoverCriteria
    class OriginGroupFailoverCriteria
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Builders::StatusCodes.build('StatusCodes', input[:status_codes]) unless input[:status_codes].nil?
        xml
      end
    end

    # Structure Builder for StatusCodes
    class StatusCodes
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Quantity', input[:quantity].to_s) unless input[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Builders::StatusCodeList.build('StatusCode', input[:items])) unless input[:items].nil?
        xml
      end
    end

    # List Builder for StatusCodeList
    class StatusCodeList
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Structure Builder for Origins
    class Origins
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Quantity', input[:quantity].to_s) unless input[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Builders::OriginList.build('Origin', input[:items])) unless input[:items].nil?
        xml
      end
    end

    # List Builder for OriginList
    class OriginList
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Builders::Origin.build(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Builder for Origin
    class Origin
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Id', input[:id].to_s) unless input[:id].nil?
        xml << Hearth::XML::Node.new('DomainName', input[:domain_name].to_s) unless input[:domain_name].nil?
        xml << Hearth::XML::Node.new('OriginPath', input[:origin_path].to_s) unless input[:origin_path].nil?
        xml << Builders::CustomHeaders.build('CustomHeaders', input[:custom_headers]) unless input[:custom_headers].nil?
        xml << Builders::S3OriginConfig.build('S3OriginConfig', input[:s3_origin_config]) unless input[:s3_origin_config].nil?
        xml << Builders::CustomOriginConfig.build('CustomOriginConfig', input[:custom_origin_config]) unless input[:custom_origin_config].nil?
        xml << Hearth::XML::Node.new('ConnectionAttempts', input[:connection_attempts].to_s) unless input[:connection_attempts].nil?
        xml << Hearth::XML::Node.new('ConnectionTimeout', input[:connection_timeout].to_s) unless input[:connection_timeout].nil?
        xml << Builders::OriginShield.build('OriginShield', input[:origin_shield]) unless input[:origin_shield].nil?
        xml
      end
    end

    # Structure Builder for OriginShield
    class OriginShield
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Enabled', input[:enabled].to_s) unless input[:enabled].nil?
        xml << Hearth::XML::Node.new('OriginShieldRegion', input[:origin_shield_region].to_s) unless input[:origin_shield_region].nil?
        xml
      end
    end

    # Structure Builder for CustomOriginConfig
    class CustomOriginConfig
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('HTTPPort', input[:http_port].to_s) unless input[:http_port].nil?
        xml << Hearth::XML::Node.new('HTTPSPort', input[:https_port].to_s) unless input[:https_port].nil?
        xml << Hearth::XML::Node.new('OriginProtocolPolicy', input[:origin_protocol_policy].to_s) unless input[:origin_protocol_policy].nil?
        xml << Builders::OriginSslProtocols.build('OriginSslProtocols', input[:origin_ssl_protocols]) unless input[:origin_ssl_protocols].nil?
        xml << Hearth::XML::Node.new('OriginReadTimeout', input[:origin_read_timeout].to_s) unless input[:origin_read_timeout].nil?
        xml << Hearth::XML::Node.new('OriginKeepaliveTimeout', input[:origin_keepalive_timeout].to_s) unless input[:origin_keepalive_timeout].nil?
        xml
      end
    end

    # Structure Builder for OriginSslProtocols
    class OriginSslProtocols
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Quantity', input[:quantity].to_s) unless input[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Builders::SslProtocolsList.build('SslProtocol', input[:items])) unless input[:items].nil?
        xml
      end
    end

    # List Builder for SslProtocolsList
    class SslProtocolsList
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Structure Builder for S3OriginConfig
    class S3OriginConfig
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('OriginAccessIdentity', input[:origin_access_identity].to_s) unless input[:origin_access_identity].nil?
        xml
      end
    end

    # Structure Builder for CustomHeaders
    class CustomHeaders
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Quantity', input[:quantity].to_s) unless input[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Builders::OriginCustomHeadersList.build('OriginCustomHeader', input[:items])) unless input[:items].nil?
        xml
      end
    end

    # List Builder for OriginCustomHeadersList
    class OriginCustomHeadersList
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Builders::OriginCustomHeader.build(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Builder for OriginCustomHeader
    class OriginCustomHeader
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('HeaderName', input[:header_name].to_s) unless input[:header_name].nil?
        xml << Hearth::XML::Node.new('HeaderValue', input[:header_value].to_s) unless input[:header_value].nil?
        xml
      end
    end

    # Structure Builder for Aliases
    class Aliases
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Quantity', input[:quantity].to_s) unless input[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Builders::AliasList.build('CNAME', input[:items])) unless input[:items].nil?
        xml
      end
    end

    # List Builder for AliasList
    class AliasList
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Operation Builder for CreateDistributionWithTags
    class CreateDistributionWithTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        CGI.parse('WithTags').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        http_req.append_path('/2020-05-31/distribution')
      end
    end

    # Structure Builder for DistributionConfigWithTags
    class DistributionConfigWithTags
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Builders::DistributionConfig.build('DistributionConfig', input[:distribution_config]) unless input[:distribution_config].nil?
        xml << Builders::Tags.build('Tags', input[:tags]) unless input[:tags].nil?
        xml
      end
    end

    # Structure Builder for Tags
    class Tags
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Items', Builders::TagList.build('Tag', input[:items])) unless input[:items].nil?
        xml
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Builders::Tag.build(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Key', input[:key].to_s) unless input[:key].nil?
        xml << Hearth::XML::Node.new('Value', input[:value].to_s) unless input[:value].nil?
        xml
      end
    end

    # Operation Builder for CreateFieldLevelEncryptionConfig
    class CreateFieldLevelEncryptionConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/2020-05-31/field-level-encryption')
      end
    end

    # Structure Builder for FieldLevelEncryptionConfig
    class FieldLevelEncryptionConfig
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('CallerReference', input[:caller_reference].to_s) unless input[:caller_reference].nil?
        xml << Hearth::XML::Node.new('Comment', input[:comment].to_s) unless input[:comment].nil?
        xml << Builders::QueryArgProfileConfig.build('QueryArgProfileConfig', input[:query_arg_profile_config]) unless input[:query_arg_profile_config].nil?
        xml << Builders::ContentTypeProfileConfig.build('ContentTypeProfileConfig', input[:content_type_profile_config]) unless input[:content_type_profile_config].nil?
        xml
      end
    end

    # Structure Builder for ContentTypeProfileConfig
    class ContentTypeProfileConfig
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ForwardWhenContentTypeIsUnknown', input[:forward_when_content_type_is_unknown].to_s) unless input[:forward_when_content_type_is_unknown].nil?
        xml << Builders::ContentTypeProfiles.build('ContentTypeProfiles', input[:content_type_profiles]) unless input[:content_type_profiles].nil?
        xml
      end
    end

    # Structure Builder for ContentTypeProfiles
    class ContentTypeProfiles
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Quantity', input[:quantity].to_s) unless input[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Builders::ContentTypeProfileList.build('ContentTypeProfile', input[:items])) unless input[:items].nil?
        xml
      end
    end

    # List Builder for ContentTypeProfileList
    class ContentTypeProfileList
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Builders::ContentTypeProfile.build(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Builder for ContentTypeProfile
    class ContentTypeProfile
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Format', input[:format].to_s) unless input[:format].nil?
        xml << Hearth::XML::Node.new('ProfileId', input[:profile_id].to_s) unless input[:profile_id].nil?
        xml << Hearth::XML::Node.new('ContentType', input[:content_type].to_s) unless input[:content_type].nil?
        xml
      end
    end

    # Structure Builder for QueryArgProfileConfig
    class QueryArgProfileConfig
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ForwardWhenQueryArgProfileIsUnknown', input[:forward_when_query_arg_profile_is_unknown].to_s) unless input[:forward_when_query_arg_profile_is_unknown].nil?
        xml << Builders::QueryArgProfiles.build('QueryArgProfiles', input[:query_arg_profiles]) unless input[:query_arg_profiles].nil?
        xml
      end
    end

    # Structure Builder for QueryArgProfiles
    class QueryArgProfiles
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Quantity', input[:quantity].to_s) unless input[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Builders::QueryArgProfileList.build('QueryArgProfile', input[:items])) unless input[:items].nil?
        xml
      end
    end

    # List Builder for QueryArgProfileList
    class QueryArgProfileList
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Builders::QueryArgProfile.build(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Builder for QueryArgProfile
    class QueryArgProfile
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('QueryArg', input[:query_arg].to_s) unless input[:query_arg].nil?
        xml << Hearth::XML::Node.new('ProfileId', input[:profile_id].to_s) unless input[:profile_id].nil?
        xml
      end
    end

    # Operation Builder for CreateFieldLevelEncryptionProfile
    class CreateFieldLevelEncryptionProfile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/2020-05-31/field-level-encryption-profile')
      end
    end

    # Structure Builder for FieldLevelEncryptionProfileConfig
    class FieldLevelEncryptionProfileConfig
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Name', input[:member_name].to_s) unless input[:member_name].nil?
        xml << Hearth::XML::Node.new('CallerReference', input[:caller_reference].to_s) unless input[:caller_reference].nil?
        xml << Hearth::XML::Node.new('Comment', input[:comment].to_s) unless input[:comment].nil?
        xml << Builders::EncryptionEntities.build('EncryptionEntities', input[:encryption_entities]) unless input[:encryption_entities].nil?
        xml
      end
    end

    # Structure Builder for EncryptionEntities
    class EncryptionEntities
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Quantity', input[:quantity].to_s) unless input[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Builders::EncryptionEntityList.build('EncryptionEntity', input[:items])) unless input[:items].nil?
        xml
      end
    end

    # List Builder for EncryptionEntityList
    class EncryptionEntityList
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Builders::EncryptionEntity.build(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Builder for EncryptionEntity
    class EncryptionEntity
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('PublicKeyId', input[:public_key_id].to_s) unless input[:public_key_id].nil?
        xml << Hearth::XML::Node.new('ProviderId', input[:provider_id].to_s) unless input[:provider_id].nil?
        xml << Builders::FieldPatterns.build('FieldPatterns', input[:field_patterns]) unless input[:field_patterns].nil?
        xml
      end
    end

    # Structure Builder for FieldPatterns
    class FieldPatterns
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Quantity', input[:quantity].to_s) unless input[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Builders::FieldPatternList.build('FieldPattern', input[:items])) unless input[:items].nil?
        xml
      end
    end

    # List Builder for FieldPatternList
    class FieldPatternList
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Operation Builder for CreateFunction
    class CreateFunction
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/2020-05-31/function')

        http_req.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('CreateFunctionRequest')
        xml << Hearth::XML::Node.new('Name', input[:member_name].to_s) unless input[:member_name].nil?
        xml << Builders::FunctionConfig.build('FunctionConfig', input[:function_config]) unless input[:function_config].nil?
        xml << Hearth::XML::Node.new('FunctionCode', Base64::encode64(input[:function_code]).strip) unless input[:function_code].nil?
        http_req.body = StringIO.new(xml.to_str)
      end
    end

    # Structure Builder for FunctionConfig
    class FunctionConfig
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Comment', input[:comment].to_s) unless input[:comment].nil?
        xml << Hearth::XML::Node.new('Runtime', input[:runtime].to_s) unless input[:runtime].nil?
        xml
      end
    end

    # Operation Builder for CreateInvalidation
    class CreateInvalidation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path(format(
            '/2020-05-31/distribution/%<DistributionId>s/invalidation',
            DistributionId: Hearth::HTTP.uri_escape(input[:distribution_id].to_s)
          )
        )
      end
    end

    # Structure Builder for InvalidationBatch
    class InvalidationBatch
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Builders::Paths.build('Paths', input[:paths]) unless input[:paths].nil?
        xml << Hearth::XML::Node.new('CallerReference', input[:caller_reference].to_s) unless input[:caller_reference].nil?
        xml
      end
    end

    # Structure Builder for Paths
    class Paths
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Quantity', input[:quantity].to_s) unless input[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Builders::PathList.build('Path', input[:items])) unless input[:items].nil?
        xml
      end
    end

    # List Builder for PathList
    class PathList
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Operation Builder for CreateKeyGroup
    class CreateKeyGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/2020-05-31/key-group')
      end
    end

    # Structure Builder for KeyGroupConfig
    class KeyGroupConfig
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Name', input[:member_name].to_s) unless input[:member_name].nil?
        xml << Hearth::XML::Node.new('Items', Builders::PublicKeyIdList.build('PublicKey', input[:items])) unless input[:items].nil?
        xml << Hearth::XML::Node.new('Comment', input[:comment].to_s) unless input[:comment].nil?
        xml
      end
    end

    # List Builder for PublicKeyIdList
    class PublicKeyIdList
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Operation Builder for CreateMonitoringSubscription
    class CreateMonitoringSubscription
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path(format(
            '/2020-05-31/distributions/%<DistributionId>s/monitoring-subscription',
            DistributionId: Hearth::HTTP.uri_escape(input[:distribution_id].to_s)
          )
        )
      end
    end

    # Structure Builder for MonitoringSubscription
    class MonitoringSubscription
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Builders::RealtimeMetricsSubscriptionConfig.build('RealtimeMetricsSubscriptionConfig', input[:realtime_metrics_subscription_config]) unless input[:realtime_metrics_subscription_config].nil?
        xml
      end
    end

    # Structure Builder for RealtimeMetricsSubscriptionConfig
    class RealtimeMetricsSubscriptionConfig
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('RealtimeMetricsSubscriptionStatus', input[:realtime_metrics_subscription_status].to_s) unless input[:realtime_metrics_subscription_status].nil?
        xml
      end
    end

    # Operation Builder for CreateOriginRequestPolicy
    class CreateOriginRequestPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/2020-05-31/origin-request-policy')
      end
    end

    # Structure Builder for OriginRequestPolicyConfig
    class OriginRequestPolicyConfig
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Comment', input[:comment].to_s) unless input[:comment].nil?
        xml << Hearth::XML::Node.new('Name', input[:member_name].to_s) unless input[:member_name].nil?
        xml << Builders::OriginRequestPolicyHeadersConfig.build('HeadersConfig', input[:headers_config]) unless input[:headers_config].nil?
        xml << Builders::OriginRequestPolicyCookiesConfig.build('CookiesConfig', input[:cookies_config]) unless input[:cookies_config].nil?
        xml << Builders::OriginRequestPolicyQueryStringsConfig.build('QueryStringsConfig', input[:query_strings_config]) unless input[:query_strings_config].nil?
        xml
      end
    end

    # Structure Builder for OriginRequestPolicyQueryStringsConfig
    class OriginRequestPolicyQueryStringsConfig
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('QueryStringBehavior', input[:query_string_behavior].to_s) unless input[:query_string_behavior].nil?
        xml << Builders::QueryStringNames.build('QueryStrings', input[:query_strings]) unless input[:query_strings].nil?
        xml
      end
    end

    # Structure Builder for OriginRequestPolicyCookiesConfig
    class OriginRequestPolicyCookiesConfig
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('CookieBehavior', input[:cookie_behavior].to_s) unless input[:cookie_behavior].nil?
        xml << Builders::CookieNames.build('Cookies', input[:cookies]) unless input[:cookies].nil?
        xml
      end
    end

    # Structure Builder for OriginRequestPolicyHeadersConfig
    class OriginRequestPolicyHeadersConfig
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('HeaderBehavior', input[:header_behavior].to_s) unless input[:header_behavior].nil?
        xml << Builders::Headers.build('Headers', input[:headers]) unless input[:headers].nil?
        xml
      end
    end

    # Operation Builder for CreatePublicKey
    class CreatePublicKey
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/2020-05-31/public-key')
      end
    end

    # Structure Builder for PublicKeyConfig
    class PublicKeyConfig
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('CallerReference', input[:caller_reference].to_s) unless input[:caller_reference].nil?
        xml << Hearth::XML::Node.new('Name', input[:member_name].to_s) unless input[:member_name].nil?
        xml << Hearth::XML::Node.new('EncodedKey', input[:encoded_key].to_s) unless input[:encoded_key].nil?
        xml << Hearth::XML::Node.new('Comment', input[:comment].to_s) unless input[:comment].nil?
        xml
      end
    end

    # Operation Builder for CreateRealtimeLogConfig
    class CreateRealtimeLogConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/2020-05-31/realtime-log-config')

        http_req.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('CreateRealtimeLogConfigRequest')
        xml << Hearth::XML::Node.new('EndPoints', Builders::EndPointList.build('member', input[:end_points])) unless input[:end_points].nil?
        xml << Hearth::XML::Node.new('Fields', Builders::FieldList.build('Field', input[:fields])) unless input[:fields].nil?
        xml << Hearth::XML::Node.new('Name', input[:member_name].to_s) unless input[:member_name].nil?
        xml << Hearth::XML::Node.new('SamplingRate', input[:sampling_rate].to_s) unless input[:sampling_rate].nil?
        http_req.body = StringIO.new(xml.to_str)
      end
    end

    # List Builder for FieldList
    class FieldList
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # List Builder for EndPointList
    class EndPointList
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Builders::EndPoint.build(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Builder for EndPoint
    class EndPoint
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('StreamType', input[:stream_type].to_s) unless input[:stream_type].nil?
        xml << Builders::KinesisStreamConfig.build('KinesisStreamConfig', input[:kinesis_stream_config]) unless input[:kinesis_stream_config].nil?
        xml
      end
    end

    # Structure Builder for KinesisStreamConfig
    class KinesisStreamConfig
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('RoleARN', input[:role_arn].to_s) unless input[:role_arn].nil?
        xml << Hearth::XML::Node.new('StreamARN', input[:stream_arn].to_s) unless input[:stream_arn].nil?
        xml
      end
    end

    # Operation Builder for CreateResponseHeadersPolicy
    class CreateResponseHeadersPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/2020-05-31/response-headers-policy')
      end
    end

    # Structure Builder for ResponseHeadersPolicyConfig
    class ResponseHeadersPolicyConfig
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Comment', input[:comment].to_s) unless input[:comment].nil?
        xml << Hearth::XML::Node.new('Name', input[:member_name].to_s) unless input[:member_name].nil?
        xml << Builders::ResponseHeadersPolicyCorsConfig.build('CorsConfig', input[:cors_config]) unless input[:cors_config].nil?
        xml << Builders::ResponseHeadersPolicySecurityHeadersConfig.build('SecurityHeadersConfig', input[:security_headers_config]) unless input[:security_headers_config].nil?
        xml << Builders::ResponseHeadersPolicyCustomHeadersConfig.build('CustomHeadersConfig', input[:custom_headers_config]) unless input[:custom_headers_config].nil?
        xml
      end
    end

    # Structure Builder for ResponseHeadersPolicyCustomHeadersConfig
    class ResponseHeadersPolicyCustomHeadersConfig
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Quantity', input[:quantity].to_s) unless input[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Builders::ResponseHeadersPolicyCustomHeaderList.build('ResponseHeadersPolicyCustomHeader', input[:items])) unless input[:items].nil?
        xml
      end
    end

    # List Builder for ResponseHeadersPolicyCustomHeaderList
    class ResponseHeadersPolicyCustomHeaderList
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Builders::ResponseHeadersPolicyCustomHeader.build(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Builder for ResponseHeadersPolicyCustomHeader
    class ResponseHeadersPolicyCustomHeader
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Header', input[:header].to_s) unless input[:header].nil?
        xml << Hearth::XML::Node.new('Value', input[:value].to_s) unless input[:value].nil?
        xml << Hearth::XML::Node.new('Override', input[:override].to_s) unless input[:override].nil?
        xml
      end
    end

    # Structure Builder for ResponseHeadersPolicySecurityHeadersConfig
    class ResponseHeadersPolicySecurityHeadersConfig
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Builders::ResponseHeadersPolicyXSSProtection.build('XSSProtection', input[:xss_protection]) unless input[:xss_protection].nil?
        xml << Builders::ResponseHeadersPolicyFrameOptions.build('FrameOptions', input[:frame_options]) unless input[:frame_options].nil?
        xml << Builders::ResponseHeadersPolicyReferrerPolicy.build('ReferrerPolicy', input[:referrer_policy]) unless input[:referrer_policy].nil?
        xml << Builders::ResponseHeadersPolicyContentSecurityPolicy.build('ContentSecurityPolicy', input[:content_security_policy]) unless input[:content_security_policy].nil?
        xml << Builders::ResponseHeadersPolicyContentTypeOptions.build('ContentTypeOptions', input[:content_type_options]) unless input[:content_type_options].nil?
        xml << Builders::ResponseHeadersPolicyStrictTransportSecurity.build('StrictTransportSecurity', input[:strict_transport_security]) unless input[:strict_transport_security].nil?
        xml
      end
    end

    # Structure Builder for ResponseHeadersPolicyStrictTransportSecurity
    class ResponseHeadersPolicyStrictTransportSecurity
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Override', input[:override].to_s) unless input[:override].nil?
        xml << Hearth::XML::Node.new('IncludeSubdomains', input[:include_subdomains].to_s) unless input[:include_subdomains].nil?
        xml << Hearth::XML::Node.new('Preload', input[:preload].to_s) unless input[:preload].nil?
        xml << Hearth::XML::Node.new('AccessControlMaxAgeSec', input[:access_control_max_age_sec].to_s) unless input[:access_control_max_age_sec].nil?
        xml
      end
    end

    # Structure Builder for ResponseHeadersPolicyContentTypeOptions
    class ResponseHeadersPolicyContentTypeOptions
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Override', input[:override].to_s) unless input[:override].nil?
        xml
      end
    end

    # Structure Builder for ResponseHeadersPolicyContentSecurityPolicy
    class ResponseHeadersPolicyContentSecurityPolicy
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Override', input[:override].to_s) unless input[:override].nil?
        xml << Hearth::XML::Node.new('ContentSecurityPolicy', input[:content_security_policy].to_s) unless input[:content_security_policy].nil?
        xml
      end
    end

    # Structure Builder for ResponseHeadersPolicyReferrerPolicy
    class ResponseHeadersPolicyReferrerPolicy
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Override', input[:override].to_s) unless input[:override].nil?
        xml << Hearth::XML::Node.new('ReferrerPolicy', input[:referrer_policy].to_s) unless input[:referrer_policy].nil?
        xml
      end
    end

    # Structure Builder for ResponseHeadersPolicyFrameOptions
    class ResponseHeadersPolicyFrameOptions
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Override', input[:override].to_s) unless input[:override].nil?
        xml << Hearth::XML::Node.new('FrameOption', input[:frame_option].to_s) unless input[:frame_option].nil?
        xml
      end
    end

    # Structure Builder for ResponseHeadersPolicyXSSProtection
    class ResponseHeadersPolicyXSSProtection
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Override', input[:override].to_s) unless input[:override].nil?
        xml << Hearth::XML::Node.new('Protection', input[:protection].to_s) unless input[:protection].nil?
        xml << Hearth::XML::Node.new('ModeBlock', input[:mode_block].to_s) unless input[:mode_block].nil?
        xml << Hearth::XML::Node.new('ReportUri', input[:report_uri].to_s) unless input[:report_uri].nil?
        xml
      end
    end

    # Structure Builder for ResponseHeadersPolicyCorsConfig
    class ResponseHeadersPolicyCorsConfig
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Builders::ResponseHeadersPolicyAccessControlAllowOrigins.build('AccessControlAllowOrigins', input[:access_control_allow_origins]) unless input[:access_control_allow_origins].nil?
        xml << Builders::ResponseHeadersPolicyAccessControlAllowHeaders.build('AccessControlAllowHeaders', input[:access_control_allow_headers]) unless input[:access_control_allow_headers].nil?
        xml << Builders::ResponseHeadersPolicyAccessControlAllowMethods.build('AccessControlAllowMethods', input[:access_control_allow_methods]) unless input[:access_control_allow_methods].nil?
        xml << Hearth::XML::Node.new('AccessControlAllowCredentials', input[:access_control_allow_credentials].to_s) unless input[:access_control_allow_credentials].nil?
        xml << Builders::ResponseHeadersPolicyAccessControlExposeHeaders.build('AccessControlExposeHeaders', input[:access_control_expose_headers]) unless input[:access_control_expose_headers].nil?
        xml << Hearth::XML::Node.new('AccessControlMaxAgeSec', input[:access_control_max_age_sec].to_s) unless input[:access_control_max_age_sec].nil?
        xml << Hearth::XML::Node.new('OriginOverride', input[:origin_override].to_s) unless input[:origin_override].nil?
        xml
      end
    end

    # Structure Builder for ResponseHeadersPolicyAccessControlExposeHeaders
    class ResponseHeadersPolicyAccessControlExposeHeaders
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Quantity', input[:quantity].to_s) unless input[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Builders::AccessControlExposeHeadersList.build('Header', input[:items])) unless input[:items].nil?
        xml
      end
    end

    # List Builder for AccessControlExposeHeadersList
    class AccessControlExposeHeadersList
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Structure Builder for ResponseHeadersPolicyAccessControlAllowMethods
    class ResponseHeadersPolicyAccessControlAllowMethods
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Quantity', input[:quantity].to_s) unless input[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Builders::AccessControlAllowMethodsList.build('Method', input[:items])) unless input[:items].nil?
        xml
      end
    end

    # List Builder for AccessControlAllowMethodsList
    class AccessControlAllowMethodsList
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Structure Builder for ResponseHeadersPolicyAccessControlAllowHeaders
    class ResponseHeadersPolicyAccessControlAllowHeaders
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Quantity', input[:quantity].to_s) unless input[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Builders::AccessControlAllowHeadersList.build('Header', input[:items])) unless input[:items].nil?
        xml
      end
    end

    # List Builder for AccessControlAllowHeadersList
    class AccessControlAllowHeadersList
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Structure Builder for ResponseHeadersPolicyAccessControlAllowOrigins
    class ResponseHeadersPolicyAccessControlAllowOrigins
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Quantity', input[:quantity].to_s) unless input[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Builders::AccessControlAllowOriginsList.build('Origin', input[:items])) unless input[:items].nil?
        xml
      end
    end

    # List Builder for AccessControlAllowOriginsList
    class AccessControlAllowOriginsList
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Operation Builder for CreateStreamingDistribution
    class CreateStreamingDistribution
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/2020-05-31/streaming-distribution')
      end
    end

    # Structure Builder for StreamingDistributionConfig
    class StreamingDistributionConfig
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('CallerReference', input[:caller_reference].to_s) unless input[:caller_reference].nil?
        xml << Builders::S3Origin.build('S3Origin', input[:s3_origin]) unless input[:s3_origin].nil?
        xml << Builders::Aliases.build('Aliases', input[:aliases]) unless input[:aliases].nil?
        xml << Hearth::XML::Node.new('Comment', input[:comment].to_s) unless input[:comment].nil?
        xml << Builders::StreamingLoggingConfig.build('Logging', input[:logging]) unless input[:logging].nil?
        xml << Builders::TrustedSigners.build('TrustedSigners', input[:trusted_signers]) unless input[:trusted_signers].nil?
        xml << Hearth::XML::Node.new('PriceClass', input[:price_class].to_s) unless input[:price_class].nil?
        xml << Hearth::XML::Node.new('Enabled', input[:enabled].to_s) unless input[:enabled].nil?
        xml
      end
    end

    # Structure Builder for StreamingLoggingConfig
    class StreamingLoggingConfig
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Enabled', input[:enabled].to_s) unless input[:enabled].nil?
        xml << Hearth::XML::Node.new('Bucket', input[:bucket].to_s) unless input[:bucket].nil?
        xml << Hearth::XML::Node.new('Prefix', input[:prefix].to_s) unless input[:prefix].nil?
        xml
      end
    end

    # Structure Builder for S3Origin
    class S3Origin
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('DomainName', input[:domain_name].to_s) unless input[:domain_name].nil?
        xml << Hearth::XML::Node.new('OriginAccessIdentity', input[:origin_access_identity].to_s) unless input[:origin_access_identity].nil?
        xml
      end
    end

    # Operation Builder for CreateStreamingDistributionWithTags
    class CreateStreamingDistributionWithTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        CGI.parse('WithTags').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        http_req.append_path('/2020-05-31/streaming-distribution')
      end
    end

    # Structure Builder for StreamingDistributionConfigWithTags
    class StreamingDistributionConfigWithTags
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Builders::StreamingDistributionConfig.build('StreamingDistributionConfig', input[:streaming_distribution_config]) unless input[:streaming_distribution_config].nil?
        xml << Builders::Tags.build('Tags', input[:tags]) unless input[:tags].nil?
        xml
      end
    end

    # Operation Builder for DeleteCachePolicy
    class DeleteCachePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        http_req.append_path(format(
            '/2020-05-31/cache-policy/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        http_req.headers['If-Match'] = input[:if_match] unless input[:if_match].nil? || input[:if_match].empty?
      end
    end

    # Operation Builder for DeleteCloudFrontOriginAccessIdentity
    class DeleteCloudFrontOriginAccessIdentity
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        http_req.append_path(format(
            '/2020-05-31/origin-access-identity/cloudfront/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        http_req.headers['If-Match'] = input[:if_match] unless input[:if_match].nil? || input[:if_match].empty?
      end
    end

    # Operation Builder for DeleteDistribution
    class DeleteDistribution
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        http_req.append_path(format(
            '/2020-05-31/distribution/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        http_req.headers['If-Match'] = input[:if_match] unless input[:if_match].nil? || input[:if_match].empty?
      end
    end

    # Operation Builder for DeleteFieldLevelEncryptionConfig
    class DeleteFieldLevelEncryptionConfig
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        http_req.append_path(format(
            '/2020-05-31/field-level-encryption/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        http_req.headers['If-Match'] = input[:if_match] unless input[:if_match].nil? || input[:if_match].empty?
      end
    end

    # Operation Builder for DeleteFieldLevelEncryptionProfile
    class DeleteFieldLevelEncryptionProfile
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        http_req.append_path(format(
            '/2020-05-31/field-level-encryption-profile/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        http_req.headers['If-Match'] = input[:if_match] unless input[:if_match].nil? || input[:if_match].empty?
      end
    end

    # Operation Builder for DeleteFunction
    class DeleteFunction
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        http_req.append_path(format(
            '/2020-05-31/function/%<Name>s',
            Name: Hearth::HTTP.uri_escape(input[:member_name].to_s)
          )
        )
        http_req.headers['If-Match'] = input[:if_match] unless input[:if_match].nil? || input[:if_match].empty?
      end
    end

    # Operation Builder for DeleteKeyGroup
    class DeleteKeyGroup
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        http_req.append_path(format(
            '/2020-05-31/key-group/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        http_req.headers['If-Match'] = input[:if_match] unless input[:if_match].nil? || input[:if_match].empty?
      end
    end

    # Operation Builder for DeleteMonitoringSubscription
    class DeleteMonitoringSubscription
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        http_req.append_path(format(
            '/2020-05-31/distributions/%<DistributionId>s/monitoring-subscription',
            DistributionId: Hearth::HTTP.uri_escape(input[:distribution_id].to_s)
          )
        )
      end
    end

    # Operation Builder for DeleteOriginRequestPolicy
    class DeleteOriginRequestPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        http_req.append_path(format(
            '/2020-05-31/origin-request-policy/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        http_req.headers['If-Match'] = input[:if_match] unless input[:if_match].nil? || input[:if_match].empty?
      end
    end

    # Operation Builder for DeletePublicKey
    class DeletePublicKey
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        http_req.append_path(format(
            '/2020-05-31/public-key/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        http_req.headers['If-Match'] = input[:if_match] unless input[:if_match].nil? || input[:if_match].empty?
      end
    end

    # Operation Builder for DeleteRealtimeLogConfig
    class DeleteRealtimeLogConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/2020-05-31/delete-realtime-log-config')

        http_req.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('DeleteRealtimeLogConfigRequest')
        xml << Hearth::XML::Node.new('Name', input[:member_name].to_s) unless input[:member_name].nil?
        xml << Hearth::XML::Node.new('ARN', input[:arn].to_s) unless input[:arn].nil?
        http_req.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Builder for DeleteResponseHeadersPolicy
    class DeleteResponseHeadersPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        http_req.append_path(format(
            '/2020-05-31/response-headers-policy/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        http_req.headers['If-Match'] = input[:if_match] unless input[:if_match].nil? || input[:if_match].empty?
      end
    end

    # Operation Builder for DeleteStreamingDistribution
    class DeleteStreamingDistribution
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        http_req.append_path(format(
            '/2020-05-31/streaming-distribution/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        http_req.headers['If-Match'] = input[:if_match] unless input[:if_match].nil? || input[:if_match].empty?
      end
    end

    # Operation Builder for DescribeFunction
    class DescribeFunction
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path(format(
            '/2020-05-31/function/%<Name>s/describe',
            Name: Hearth::HTTP.uri_escape(input[:member_name].to_s)
          )
        )
        http_req.append_query_param('Stage', input[:stage].to_s) unless input[:stage].nil?
      end
    end

    # Operation Builder for GetCachePolicy
    class GetCachePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path(format(
            '/2020-05-31/cache-policy/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
      end
    end

    # Operation Builder for GetCachePolicyConfig
    class GetCachePolicyConfig
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path(format(
            '/2020-05-31/cache-policy/%<Id>s/config',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
      end
    end

    # Operation Builder for GetCloudFrontOriginAccessIdentity
    class GetCloudFrontOriginAccessIdentity
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path(format(
            '/2020-05-31/origin-access-identity/cloudfront/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
      end
    end

    # Operation Builder for GetCloudFrontOriginAccessIdentityConfig
    class GetCloudFrontOriginAccessIdentityConfig
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path(format(
            '/2020-05-31/origin-access-identity/cloudfront/%<Id>s/config',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
      end
    end

    # Operation Builder for GetDistribution
    class GetDistribution
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path(format(
            '/2020-05-31/distribution/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
      end
    end

    # Operation Builder for GetDistributionConfig
    class GetDistributionConfig
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path(format(
            '/2020-05-31/distribution/%<Id>s/config',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
      end
    end

    # Operation Builder for GetFieldLevelEncryption
    class GetFieldLevelEncryption
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path(format(
            '/2020-05-31/field-level-encryption/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
      end
    end

    # Operation Builder for GetFieldLevelEncryptionConfig
    class GetFieldLevelEncryptionConfig
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path(format(
            '/2020-05-31/field-level-encryption/%<Id>s/config',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
      end
    end

    # Operation Builder for GetFieldLevelEncryptionProfile
    class GetFieldLevelEncryptionProfile
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path(format(
            '/2020-05-31/field-level-encryption-profile/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
      end
    end

    # Operation Builder for GetFieldLevelEncryptionProfileConfig
    class GetFieldLevelEncryptionProfileConfig
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path(format(
            '/2020-05-31/field-level-encryption-profile/%<Id>s/config',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
      end
    end

    # Operation Builder for GetFunction
    class GetFunction
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path(format(
            '/2020-05-31/function/%<Name>s',
            Name: Hearth::HTTP.uri_escape(input[:member_name].to_s)
          )
        )
        http_req.append_query_param('Stage', input[:stage].to_s) unless input[:stage].nil?
      end
    end

    # Operation Builder for GetInvalidation
    class GetInvalidation
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path(format(
            '/2020-05-31/distribution/%<DistributionId>s/invalidation/%<Id>s',
            DistributionId: Hearth::HTTP.uri_escape(input[:distribution_id].to_s),
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
      end
    end

    # Operation Builder for GetKeyGroup
    class GetKeyGroup
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path(format(
            '/2020-05-31/key-group/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
      end
    end

    # Operation Builder for GetKeyGroupConfig
    class GetKeyGroupConfig
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path(format(
            '/2020-05-31/key-group/%<Id>s/config',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
      end
    end

    # Operation Builder for GetMonitoringSubscription
    class GetMonitoringSubscription
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path(format(
            '/2020-05-31/distributions/%<DistributionId>s/monitoring-subscription',
            DistributionId: Hearth::HTTP.uri_escape(input[:distribution_id].to_s)
          )
        )
      end
    end

    # Operation Builder for GetOriginRequestPolicy
    class GetOriginRequestPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path(format(
            '/2020-05-31/origin-request-policy/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
      end
    end

    # Operation Builder for GetOriginRequestPolicyConfig
    class GetOriginRequestPolicyConfig
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path(format(
            '/2020-05-31/origin-request-policy/%<Id>s/config',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
      end
    end

    # Operation Builder for GetPublicKey
    class GetPublicKey
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path(format(
            '/2020-05-31/public-key/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
      end
    end

    # Operation Builder for GetPublicKeyConfig
    class GetPublicKeyConfig
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path(format(
            '/2020-05-31/public-key/%<Id>s/config',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
      end
    end

    # Operation Builder for GetRealtimeLogConfig
    class GetRealtimeLogConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/2020-05-31/get-realtime-log-config')

        http_req.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('GetRealtimeLogConfigRequest')
        xml << Hearth::XML::Node.new('Name', input[:member_name].to_s) unless input[:member_name].nil?
        xml << Hearth::XML::Node.new('ARN', input[:arn].to_s) unless input[:arn].nil?
        http_req.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Builder for GetResponseHeadersPolicy
    class GetResponseHeadersPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path(format(
            '/2020-05-31/response-headers-policy/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
      end
    end

    # Operation Builder for GetResponseHeadersPolicyConfig
    class GetResponseHeadersPolicyConfig
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path(format(
            '/2020-05-31/response-headers-policy/%<Id>s/config',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
      end
    end

    # Operation Builder for GetStreamingDistribution
    class GetStreamingDistribution
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path(format(
            '/2020-05-31/streaming-distribution/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
      end
    end

    # Operation Builder for GetStreamingDistributionConfig
    class GetStreamingDistributionConfig
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path(format(
            '/2020-05-31/streaming-distribution/%<Id>s/config',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
      end
    end

    # Operation Builder for ListCachePolicies
    class ListCachePolicies
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/2020-05-31/cache-policy')
        http_req.append_query_param('Type', input[:type].to_s) unless input[:type].nil?
        http_req.append_query_param('Marker', input[:marker].to_s) unless input[:marker].nil?
        http_req.append_query_param('MaxItems', input[:max_items].to_s) unless input[:max_items].nil?
      end
    end

    # Operation Builder for ListCloudFrontOriginAccessIdentities
    class ListCloudFrontOriginAccessIdentities
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/2020-05-31/origin-access-identity/cloudfront')
        http_req.append_query_param('Marker', input[:marker].to_s) unless input[:marker].nil?
        http_req.append_query_param('MaxItems', input[:max_items].to_s) unless input[:max_items].nil?
      end
    end

    # Operation Builder for ListConflictingAliases
    class ListConflictingAliases
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/2020-05-31/conflicting-alias')
        http_req.append_query_param('DistributionId', input[:distribution_id].to_s) unless input[:distribution_id].nil?
        http_req.append_query_param('Alias', input[:alias].to_s) unless input[:alias].nil?
        http_req.append_query_param('Marker', input[:marker].to_s) unless input[:marker].nil?
        http_req.append_query_param('MaxItems', input[:max_items].to_s) unless input[:max_items].nil?
      end
    end

    # Operation Builder for ListDistributions
    class ListDistributions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/2020-05-31/distribution')
        http_req.append_query_param('Marker', input[:marker].to_s) unless input[:marker].nil?
        http_req.append_query_param('MaxItems', input[:max_items].to_s) unless input[:max_items].nil?
      end
    end

    # Operation Builder for ListDistributionsByCachePolicyId
    class ListDistributionsByCachePolicyId
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path(format(
            '/2020-05-31/distributionsByCachePolicyId/%<CachePolicyId>s',
            CachePolicyId: Hearth::HTTP.uri_escape(input[:cache_policy_id].to_s)
          )
        )
        http_req.append_query_param('Marker', input[:marker].to_s) unless input[:marker].nil?
        http_req.append_query_param('MaxItems', input[:max_items].to_s) unless input[:max_items].nil?
      end
    end

    # Operation Builder for ListDistributionsByKeyGroup
    class ListDistributionsByKeyGroup
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path(format(
            '/2020-05-31/distributionsByKeyGroupId/%<KeyGroupId>s',
            KeyGroupId: Hearth::HTTP.uri_escape(input[:key_group_id].to_s)
          )
        )
        http_req.append_query_param('Marker', input[:marker].to_s) unless input[:marker].nil?
        http_req.append_query_param('MaxItems', input[:max_items].to_s) unless input[:max_items].nil?
      end
    end

    # Operation Builder for ListDistributionsByOriginRequestPolicyId
    class ListDistributionsByOriginRequestPolicyId
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path(format(
            '/2020-05-31/distributionsByOriginRequestPolicyId/%<OriginRequestPolicyId>s',
            OriginRequestPolicyId: Hearth::HTTP.uri_escape(input[:origin_request_policy_id].to_s)
          )
        )
        http_req.append_query_param('Marker', input[:marker].to_s) unless input[:marker].nil?
        http_req.append_query_param('MaxItems', input[:max_items].to_s) unless input[:max_items].nil?
      end
    end

    # Operation Builder for ListDistributionsByRealtimeLogConfig
    class ListDistributionsByRealtimeLogConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/2020-05-31/distributionsByRealtimeLogConfig')

        http_req.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('ListDistributionsByRealtimeLogConfigRequest')
        xml << Hearth::XML::Node.new('Marker', input[:marker].to_s) unless input[:marker].nil?
        xml << Hearth::XML::Node.new('MaxItems', input[:max_items].to_s) unless input[:max_items].nil?
        xml << Hearth::XML::Node.new('RealtimeLogConfigName', input[:realtime_log_config_name].to_s) unless input[:realtime_log_config_name].nil?
        xml << Hearth::XML::Node.new('RealtimeLogConfigArn', input[:realtime_log_config_arn].to_s) unless input[:realtime_log_config_arn].nil?
        http_req.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Builder for ListDistributionsByResponseHeadersPolicyId
    class ListDistributionsByResponseHeadersPolicyId
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path(format(
            '/2020-05-31/distributionsByResponseHeadersPolicyId/%<ResponseHeadersPolicyId>s',
            ResponseHeadersPolicyId: Hearth::HTTP.uri_escape(input[:response_headers_policy_id].to_s)
          )
        )
        http_req.append_query_param('Marker', input[:marker].to_s) unless input[:marker].nil?
        http_req.append_query_param('MaxItems', input[:max_items].to_s) unless input[:max_items].nil?
      end
    end

    # Operation Builder for ListDistributionsByWebACLId
    class ListDistributionsByWebACLId
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path(format(
            '/2020-05-31/distributionsByWebACLId/%<WebACLId>s',
            WebACLId: Hearth::HTTP.uri_escape(input[:web_acl_id].to_s)
          )
        )
        http_req.append_query_param('Marker', input[:marker].to_s) unless input[:marker].nil?
        http_req.append_query_param('MaxItems', input[:max_items].to_s) unless input[:max_items].nil?
      end
    end

    # Operation Builder for ListFieldLevelEncryptionConfigs
    class ListFieldLevelEncryptionConfigs
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/2020-05-31/field-level-encryption')
        http_req.append_query_param('Marker', input[:marker].to_s) unless input[:marker].nil?
        http_req.append_query_param('MaxItems', input[:max_items].to_s) unless input[:max_items].nil?
      end
    end

    # Operation Builder for ListFieldLevelEncryptionProfiles
    class ListFieldLevelEncryptionProfiles
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/2020-05-31/field-level-encryption-profile')
        http_req.append_query_param('Marker', input[:marker].to_s) unless input[:marker].nil?
        http_req.append_query_param('MaxItems', input[:max_items].to_s) unless input[:max_items].nil?
      end
    end

    # Operation Builder for ListFunctions
    class ListFunctions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/2020-05-31/function')
        http_req.append_query_param('Marker', input[:marker].to_s) unless input[:marker].nil?
        http_req.append_query_param('MaxItems', input[:max_items].to_s) unless input[:max_items].nil?
        http_req.append_query_param('Stage', input[:stage].to_s) unless input[:stage].nil?
      end
    end

    # Operation Builder for ListInvalidations
    class ListInvalidations
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path(format(
            '/2020-05-31/distribution/%<DistributionId>s/invalidation',
            DistributionId: Hearth::HTTP.uri_escape(input[:distribution_id].to_s)
          )
        )
        http_req.append_query_param('Marker', input[:marker].to_s) unless input[:marker].nil?
        http_req.append_query_param('MaxItems', input[:max_items].to_s) unless input[:max_items].nil?
      end
    end

    # Operation Builder for ListKeyGroups
    class ListKeyGroups
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/2020-05-31/key-group')
        http_req.append_query_param('Marker', input[:marker].to_s) unless input[:marker].nil?
        http_req.append_query_param('MaxItems', input[:max_items].to_s) unless input[:max_items].nil?
      end
    end

    # Operation Builder for ListOriginRequestPolicies
    class ListOriginRequestPolicies
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/2020-05-31/origin-request-policy')
        http_req.append_query_param('Type', input[:type].to_s) unless input[:type].nil?
        http_req.append_query_param('Marker', input[:marker].to_s) unless input[:marker].nil?
        http_req.append_query_param('MaxItems', input[:max_items].to_s) unless input[:max_items].nil?
      end
    end

    # Operation Builder for ListPublicKeys
    class ListPublicKeys
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/2020-05-31/public-key')
        http_req.append_query_param('Marker', input[:marker].to_s) unless input[:marker].nil?
        http_req.append_query_param('MaxItems', input[:max_items].to_s) unless input[:max_items].nil?
      end
    end

    # Operation Builder for ListRealtimeLogConfigs
    class ListRealtimeLogConfigs
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/2020-05-31/realtime-log-config')
        http_req.append_query_param('MaxItems', input[:max_items].to_s) unless input[:max_items].nil?
        http_req.append_query_param('Marker', input[:marker].to_s) unless input[:marker].nil?
      end
    end

    # Operation Builder for ListResponseHeadersPolicies
    class ListResponseHeadersPolicies
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/2020-05-31/response-headers-policy')
        http_req.append_query_param('Type', input[:type].to_s) unless input[:type].nil?
        http_req.append_query_param('Marker', input[:marker].to_s) unless input[:marker].nil?
        http_req.append_query_param('MaxItems', input[:max_items].to_s) unless input[:max_items].nil?
      end
    end

    # Operation Builder for ListStreamingDistributions
    class ListStreamingDistributions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/2020-05-31/streaming-distribution')
        http_req.append_query_param('Marker', input[:marker].to_s) unless input[:marker].nil?
        http_req.append_query_param('MaxItems', input[:max_items].to_s) unless input[:max_items].nil?
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/2020-05-31/tagging')
        http_req.append_query_param('Resource', input[:resource].to_s) unless input[:resource].nil?
      end
    end

    # Operation Builder for PublishFunction
    class PublishFunction
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path(format(
            '/2020-05-31/function/%<Name>s/publish',
            Name: Hearth::HTTP.uri_escape(input[:member_name].to_s)
          )
        )
        http_req.headers['If-Match'] = input[:if_match] unless input[:if_match].nil? || input[:if_match].empty?
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        CGI.parse('Operation=Tag').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        http_req.append_path('/2020-05-31/tagging')
        http_req.append_query_param('Resource', input[:resource].to_s) unless input[:resource].nil?
      end
    end

    # Operation Builder for TestFunction
    class TestFunction
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path(format(
            '/2020-05-31/function/%<Name>s/test',
            Name: Hearth::HTTP.uri_escape(input[:member_name].to_s)
          )
        )

        http_req.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('TestFunctionRequest')
        xml << Hearth::XML::Node.new('Stage', input[:stage].to_s) unless input[:stage].nil?
        xml << Hearth::XML::Node.new('EventObject', Base64::encode64(input[:event_object]).strip) unless input[:event_object].nil?
        http_req.body = StringIO.new(xml.to_str)
        http_req.headers['If-Match'] = input[:if_match] unless input[:if_match].nil? || input[:if_match].empty?
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        CGI.parse('Operation=Untag').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        http_req.append_path('/2020-05-31/tagging')
        http_req.append_query_param('Resource', input[:resource].to_s) unless input[:resource].nil?
      end
    end

    # Structure Builder for TagKeys
    class TagKeys
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Items', Builders::TagKeyList.build('Key', input[:items])) unless input[:items].nil?
        xml
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Operation Builder for UpdateCachePolicy
    class UpdateCachePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path(format(
            '/2020-05-31/cache-policy/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        http_req.headers['If-Match'] = input[:if_match] unless input[:if_match].nil? || input[:if_match].empty?
      end
    end

    # Operation Builder for UpdateCloudFrontOriginAccessIdentity
    class UpdateCloudFrontOriginAccessIdentity
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path(format(
            '/2020-05-31/origin-access-identity/cloudfront/%<Id>s/config',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        http_req.headers['If-Match'] = input[:if_match] unless input[:if_match].nil? || input[:if_match].empty?
      end
    end

    # Operation Builder for UpdateDistribution
    class UpdateDistribution
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path(format(
            '/2020-05-31/distribution/%<Id>s/config',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        http_req.headers['If-Match'] = input[:if_match] unless input[:if_match].nil? || input[:if_match].empty?
      end
    end

    # Operation Builder for UpdateFieldLevelEncryptionConfig
    class UpdateFieldLevelEncryptionConfig
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path(format(
            '/2020-05-31/field-level-encryption/%<Id>s/config',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        http_req.headers['If-Match'] = input[:if_match] unless input[:if_match].nil? || input[:if_match].empty?
      end
    end

    # Operation Builder for UpdateFieldLevelEncryptionProfile
    class UpdateFieldLevelEncryptionProfile
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path(format(
            '/2020-05-31/field-level-encryption-profile/%<Id>s/config',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        http_req.headers['If-Match'] = input[:if_match] unless input[:if_match].nil? || input[:if_match].empty?
      end
    end

    # Operation Builder for UpdateFunction
    class UpdateFunction
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path(format(
            '/2020-05-31/function/%<Name>s',
            Name: Hearth::HTTP.uri_escape(input[:member_name].to_s)
          )
        )

        http_req.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('UpdateFunctionRequest')
        xml << Builders::FunctionConfig.build('FunctionConfig', input[:function_config]) unless input[:function_config].nil?
        xml << Hearth::XML::Node.new('FunctionCode', Base64::encode64(input[:function_code]).strip) unless input[:function_code].nil?
        http_req.body = StringIO.new(xml.to_str)
        http_req.headers['If-Match'] = input[:if_match] unless input[:if_match].nil? || input[:if_match].empty?
      end
    end

    # Operation Builder for UpdateKeyGroup
    class UpdateKeyGroup
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path(format(
            '/2020-05-31/key-group/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        http_req.headers['If-Match'] = input[:if_match] unless input[:if_match].nil? || input[:if_match].empty?
      end
    end

    # Operation Builder for UpdateOriginRequestPolicy
    class UpdateOriginRequestPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path(format(
            '/2020-05-31/origin-request-policy/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        http_req.headers['If-Match'] = input[:if_match] unless input[:if_match].nil? || input[:if_match].empty?
      end
    end

    # Operation Builder for UpdatePublicKey
    class UpdatePublicKey
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path(format(
            '/2020-05-31/public-key/%<Id>s/config',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        http_req.headers['If-Match'] = input[:if_match] unless input[:if_match].nil? || input[:if_match].empty?
      end
    end

    # Operation Builder for UpdateRealtimeLogConfig
    class UpdateRealtimeLogConfig
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/2020-05-31/realtime-log-config')

        http_req.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('UpdateRealtimeLogConfigRequest')
        xml << Hearth::XML::Node.new('EndPoints', Builders::EndPointList.build('member', input[:end_points])) unless input[:end_points].nil?
        xml << Hearth::XML::Node.new('Fields', Builders::FieldList.build('Field', input[:fields])) unless input[:fields].nil?
        xml << Hearth::XML::Node.new('Name', input[:member_name].to_s) unless input[:member_name].nil?
        xml << Hearth::XML::Node.new('ARN', input[:arn].to_s) unless input[:arn].nil?
        xml << Hearth::XML::Node.new('SamplingRate', input[:sampling_rate].to_s) unless input[:sampling_rate].nil?
        http_req.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Builder for UpdateResponseHeadersPolicy
    class UpdateResponseHeadersPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path(format(
            '/2020-05-31/response-headers-policy/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        http_req.headers['If-Match'] = input[:if_match] unless input[:if_match].nil? || input[:if_match].empty?
      end
    end

    # Operation Builder for UpdateStreamingDistribution
    class UpdateStreamingDistribution
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path(format(
            '/2020-05-31/streaming-distribution/%<Id>s/config',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        http_req.headers['If-Match'] = input[:if_match] unless input[:if_match].nil? || input[:if_match].empty?
      end
    end
  end
end
