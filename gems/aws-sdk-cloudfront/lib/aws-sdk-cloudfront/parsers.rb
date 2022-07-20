# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CloudFront
  module Parsers

    # Operation Parser for AssociateAlias
    class AssociateAlias
      def self.parse(http_resp)
        data = Types::AssociateAliasOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Error Parser for AccessDenied
    class AccessDenied
      def self.parse(http_resp)
        data = Types::AccessDenied.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for IllegalUpdate
    class IllegalUpdate
      def self.parse(http_resp)
        data = Types::IllegalUpdate.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for NoSuchDistribution
    class NoSuchDistribution
      def self.parse(http_resp)
        data = Types::NoSuchDistribution.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidArgument
    class InvalidArgument
      def self.parse(http_resp)
        data = Types::InvalidArgument.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TooManyDistributionCNAMEs
    class TooManyDistributionCNAMEs
      def self.parse(http_resp)
        data = Types::TooManyDistributionCNAMEs.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateCachePolicy
    class CreateCachePolicy
      def self.parse(http_resp)
        data = Types::CreateCachePolicyOutput.new
        data.location = http_resp.headers['Location']
        data.e_tag = http_resp.headers['ETag']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.cache_policy = Parsers::CachePolicy.parse(xml)
        data
      end
    end

    class CachePolicy
      def self.parse(xml)
        data = Types::CachePolicy.new
        xml.at('Id') do |node|
          data.id = (node.text || '')
        end
        xml.at('LastModifiedTime') do |node|
          data.last_modified_time = Time.parse(node.text) if node.text
        end
        xml.at('CachePolicyConfig') do |node|
          data.cache_policy_config = Parsers::CachePolicyConfig.parse(node)
        end
        return data
      end
    end

    class CachePolicyConfig
      def self.parse(xml)
        data = Types::CachePolicyConfig.new
        xml.at('Comment') do |node|
          data.comment = (node.text || '')
        end
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        xml.at('DefaultTTL') do |node|
          data.default_ttl = node.text&.to_i
        end
        xml.at('MaxTTL') do |node|
          data.max_ttl = node.text&.to_i
        end
        xml.at('MinTTL') do |node|
          data.min_ttl = node.text&.to_i
        end
        xml.at('ParametersInCacheKeyAndForwardedToOrigin') do |node|
          data.parameters_in_cache_key_and_forwarded_to_origin = Parsers::ParametersInCacheKeyAndForwardedToOrigin.parse(node)
        end
        return data
      end
    end

    class ParametersInCacheKeyAndForwardedToOrigin
      def self.parse(xml)
        data = Types::ParametersInCacheKeyAndForwardedToOrigin.new
        xml.at('EnableAcceptEncodingGzip') do |node|
          data.enable_accept_encoding_gzip = (node.text == 'true')
        end
        xml.at('EnableAcceptEncodingBrotli') do |node|
          data.enable_accept_encoding_brotli = (node.text == 'true')
        end
        xml.at('HeadersConfig') do |node|
          data.headers_config = Parsers::CachePolicyHeadersConfig.parse(node)
        end
        xml.at('CookiesConfig') do |node|
          data.cookies_config = Parsers::CachePolicyCookiesConfig.parse(node)
        end
        xml.at('QueryStringsConfig') do |node|
          data.query_strings_config = Parsers::CachePolicyQueryStringsConfig.parse(node)
        end
        return data
      end
    end

    class CachePolicyQueryStringsConfig
      def self.parse(xml)
        data = Types::CachePolicyQueryStringsConfig.new
        xml.at('QueryStringBehavior') do |node|
          data.query_string_behavior = (node.text || '')
        end
        xml.at('QueryStrings') do |node|
          data.query_strings = Parsers::QueryStringNames.parse(node)
        end
        return data
      end
    end

    class QueryStringNames
      def self.parse(xml)
        data = Types::QueryStringNames.new
        xml.at('Quantity') do |node|
          data.quantity = node.text&.to_i
        end
        xml.at('Items') do |node|
          children = node.children('Name')
          data.items = Parsers::QueryStringNamesList.parse(children)
        end
        return data
      end
    end

    class QueryStringNamesList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class CachePolicyCookiesConfig
      def self.parse(xml)
        data = Types::CachePolicyCookiesConfig.new
        xml.at('CookieBehavior') do |node|
          data.cookie_behavior = (node.text || '')
        end
        xml.at('Cookies') do |node|
          data.cookies = Parsers::CookieNames.parse(node)
        end
        return data
      end
    end

    class CookieNames
      def self.parse(xml)
        data = Types::CookieNames.new
        xml.at('Quantity') do |node|
          data.quantity = node.text&.to_i
        end
        xml.at('Items') do |node|
          children = node.children('Name')
          data.items = Parsers::CookieNameList.parse(children)
        end
        return data
      end
    end

    class CookieNameList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class CachePolicyHeadersConfig
      def self.parse(xml)
        data = Types::CachePolicyHeadersConfig.new
        xml.at('HeaderBehavior') do |node|
          data.header_behavior = (node.text || '')
        end
        xml.at('Headers') do |node|
          data.headers = Parsers::Headers.parse(node)
        end
        return data
      end
    end

    class Headers
      def self.parse(xml)
        data = Types::Headers.new
        xml.at('Quantity') do |node|
          data.quantity = node.text&.to_i
        end
        xml.at('Items') do |node|
          children = node.children('Name')
          data.items = Parsers::HeaderList.parse(children)
        end
        return data
      end
    end

    class HeaderList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Error Parser for TooManyCookiesInCachePolicy
    class TooManyCookiesInCachePolicy
      def self.parse(http_resp)
        data = Types::TooManyCookiesInCachePolicy.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TooManyHeadersInCachePolicy
    class TooManyHeadersInCachePolicy
      def self.parse(http_resp)
        data = Types::TooManyHeadersInCachePolicy.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InconsistentQuantities
    class InconsistentQuantities
      def self.parse(http_resp)
        data = Types::InconsistentQuantities.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TooManyCachePolicies
    class TooManyCachePolicies
      def self.parse(http_resp)
        data = Types::TooManyCachePolicies.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TooManyQueryStringsInCachePolicy
    class TooManyQueryStringsInCachePolicy
      def self.parse(http_resp)
        data = Types::TooManyQueryStringsInCachePolicy.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for CachePolicyAlreadyExists
    class CachePolicyAlreadyExists
      def self.parse(http_resp)
        data = Types::CachePolicyAlreadyExists.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateCloudFrontOriginAccessIdentity
    class CreateCloudFrontOriginAccessIdentity
      def self.parse(http_resp)
        data = Types::CreateCloudFrontOriginAccessIdentityOutput.new
        data.location = http_resp.headers['Location']
        data.e_tag = http_resp.headers['ETag']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.cloud_front_origin_access_identity = Parsers::CloudFrontOriginAccessIdentity.parse(xml)
        data
      end
    end

    class CloudFrontOriginAccessIdentity
      def self.parse(xml)
        data = Types::CloudFrontOriginAccessIdentity.new
        xml.at('Id') do |node|
          data.id = (node.text || '')
        end
        xml.at('S3CanonicalUserId') do |node|
          data.s3_canonical_user_id = (node.text || '')
        end
        xml.at('CloudFrontOriginAccessIdentityConfig') do |node|
          data.cloud_front_origin_access_identity_config = Parsers::CloudFrontOriginAccessIdentityConfig.parse(node)
        end
        return data
      end
    end

    class CloudFrontOriginAccessIdentityConfig
      def self.parse(xml)
        data = Types::CloudFrontOriginAccessIdentityConfig.new
        xml.at('CallerReference') do |node|
          data.caller_reference = (node.text || '')
        end
        xml.at('Comment') do |node|
          data.comment = (node.text || '')
        end
        return data
      end
    end

    # Error Parser for MissingBody
    class MissingBody
      def self.parse(http_resp)
        data = Types::MissingBody.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for CloudFrontOriginAccessIdentityAlreadyExists
    class CloudFrontOriginAccessIdentityAlreadyExists
      def self.parse(http_resp)
        data = Types::CloudFrontOriginAccessIdentityAlreadyExists.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TooManyCloudFrontOriginAccessIdentities
    class TooManyCloudFrontOriginAccessIdentities
      def self.parse(http_resp)
        data = Types::TooManyCloudFrontOriginAccessIdentities.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateDistribution
    class CreateDistribution
      def self.parse(http_resp)
        data = Types::CreateDistributionOutput.new
        data.location = http_resp.headers['Location']
        data.e_tag = http_resp.headers['ETag']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.distribution = Parsers::Distribution.parse(xml)
        data
      end
    end

    class Distribution
      def self.parse(xml)
        data = Types::Distribution.new
        xml.at('Id') do |node|
          data.id = (node.text || '')
        end
        xml.at('ARN') do |node|
          data.arn = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('LastModifiedTime') do |node|
          data.last_modified_time = Time.parse(node.text) if node.text
        end
        xml.at('InProgressInvalidationBatches') do |node|
          data.in_progress_invalidation_batches = node.text&.to_i
        end
        xml.at('DomainName') do |node|
          data.domain_name = (node.text || '')
        end
        xml.at('ActiveTrustedSigners') do |node|
          data.active_trusted_signers = Parsers::ActiveTrustedSigners.parse(node)
        end
        xml.at('ActiveTrustedKeyGroups') do |node|
          data.active_trusted_key_groups = Parsers::ActiveTrustedKeyGroups.parse(node)
        end
        xml.at('DistributionConfig') do |node|
          data.distribution_config = Parsers::DistributionConfig.parse(node)
        end
        xml.at('AliasICPRecordals') do |node|
          children = node.children('AliasICPRecordal')
          data.alias_icp_recordals = Parsers::AliasICPRecordals.parse(children)
        end
        return data
      end
    end

    class AliasICPRecordals
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::AliasICPRecordal.parse(node)
        end
        data
      end
    end

    class AliasICPRecordal
      def self.parse(xml)
        data = Types::AliasICPRecordal.new
        xml.at('CNAME') do |node|
          data.cname = (node.text || '')
        end
        xml.at('ICPRecordalStatus') do |node|
          data.icp_recordal_status = (node.text || '')
        end
        return data
      end
    end

    class DistributionConfig
      def self.parse(xml)
        data = Types::DistributionConfig.new
        xml.at('CallerReference') do |node|
          data.caller_reference = (node.text || '')
        end
        xml.at('Aliases') do |node|
          data.aliases = Parsers::Aliases.parse(node)
        end
        xml.at('DefaultRootObject') do |node|
          data.default_root_object = (node.text || '')
        end
        xml.at('Origins') do |node|
          data.origins = Parsers::Origins.parse(node)
        end
        xml.at('OriginGroups') do |node|
          data.origin_groups = Parsers::OriginGroups.parse(node)
        end
        xml.at('DefaultCacheBehavior') do |node|
          data.default_cache_behavior = Parsers::DefaultCacheBehavior.parse(node)
        end
        xml.at('CacheBehaviors') do |node|
          data.cache_behaviors = Parsers::CacheBehaviors.parse(node)
        end
        xml.at('CustomErrorResponses') do |node|
          data.custom_error_responses = Parsers::CustomErrorResponses.parse(node)
        end
        xml.at('Comment') do |node|
          data.comment = (node.text || '')
        end
        xml.at('Logging') do |node|
          data.logging = Parsers::LoggingConfig.parse(node)
        end
        xml.at('PriceClass') do |node|
          data.price_class = (node.text || '')
        end
        xml.at('Enabled') do |node|
          data.enabled = (node.text == 'true')
        end
        xml.at('ViewerCertificate') do |node|
          data.viewer_certificate = Parsers::ViewerCertificate.parse(node)
        end
        xml.at('Restrictions') do |node|
          data.restrictions = Parsers::Restrictions.parse(node)
        end
        xml.at('WebACLId') do |node|
          data.web_acl_id = (node.text || '')
        end
        xml.at('HttpVersion') do |node|
          data.http_version = (node.text || '')
        end
        xml.at('IsIPV6Enabled') do |node|
          data.is_ipv6_enabled = (node.text == 'true')
        end
        return data
      end
    end

    class Restrictions
      def self.parse(xml)
        data = Types::Restrictions.new
        xml.at('GeoRestriction') do |node|
          data.geo_restriction = Parsers::GeoRestriction.parse(node)
        end
        return data
      end
    end

    class GeoRestriction
      def self.parse(xml)
        data = Types::GeoRestriction.new
        xml.at('RestrictionType') do |node|
          data.restriction_type = (node.text || '')
        end
        xml.at('Quantity') do |node|
          data.quantity = node.text&.to_i
        end
        xml.at('Items') do |node|
          children = node.children('Location')
          data.items = Parsers::LocationList.parse(children)
        end
        return data
      end
    end

    class LocationList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class ViewerCertificate
      def self.parse(xml)
        data = Types::ViewerCertificate.new
        xml.at('CloudFrontDefaultCertificate') do |node|
          data.cloud_front_default_certificate = (node.text == 'true')
        end
        xml.at('IAMCertificateId') do |node|
          data.iam_certificate_id = (node.text || '')
        end
        xml.at('ACMCertificateArn') do |node|
          data.acm_certificate_arn = (node.text || '')
        end
        xml.at('SSLSupportMethod') do |node|
          data.ssl_support_method = (node.text || '')
        end
        xml.at('MinimumProtocolVersion') do |node|
          data.minimum_protocol_version = (node.text || '')
        end
        xml.at('Certificate') do |node|
          data.certificate = (node.text || '')
        end
        xml.at('CertificateSource') do |node|
          data.certificate_source = (node.text || '')
        end
        return data
      end
    end

    class LoggingConfig
      def self.parse(xml)
        data = Types::LoggingConfig.new
        xml.at('Enabled') do |node|
          data.enabled = (node.text == 'true')
        end
        xml.at('IncludeCookies') do |node|
          data.include_cookies = (node.text == 'true')
        end
        xml.at('Bucket') do |node|
          data.bucket = (node.text || '')
        end
        xml.at('Prefix') do |node|
          data.prefix = (node.text || '')
        end
        return data
      end
    end

    class CustomErrorResponses
      def self.parse(xml)
        data = Types::CustomErrorResponses.new
        xml.at('Quantity') do |node|
          data.quantity = node.text&.to_i
        end
        xml.at('Items') do |node|
          children = node.children('CustomErrorResponse')
          data.items = Parsers::CustomErrorResponseList.parse(children)
        end
        return data
      end
    end

    class CustomErrorResponseList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::CustomErrorResponse.parse(node)
        end
        data
      end
    end

    class CustomErrorResponse
      def self.parse(xml)
        data = Types::CustomErrorResponse.new
        xml.at('ErrorCode') do |node|
          data.error_code = node.text&.to_i
        end
        xml.at('ResponsePagePath') do |node|
          data.response_page_path = (node.text || '')
        end
        xml.at('ResponseCode') do |node|
          data.response_code = (node.text || '')
        end
        xml.at('ErrorCachingMinTTL') do |node|
          data.error_caching_min_ttl = node.text&.to_i
        end
        return data
      end
    end

    class CacheBehaviors
      def self.parse(xml)
        data = Types::CacheBehaviors.new
        xml.at('Quantity') do |node|
          data.quantity = node.text&.to_i
        end
        xml.at('Items') do |node|
          children = node.children('CacheBehavior')
          data.items = Parsers::CacheBehaviorList.parse(children)
        end
        return data
      end
    end

    class CacheBehaviorList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::CacheBehavior.parse(node)
        end
        data
      end
    end

    class CacheBehavior
      def self.parse(xml)
        data = Types::CacheBehavior.new
        xml.at('PathPattern') do |node|
          data.path_pattern = (node.text || '')
        end
        xml.at('TargetOriginId') do |node|
          data.target_origin_id = (node.text || '')
        end
        xml.at('TrustedSigners') do |node|
          data.trusted_signers = Parsers::TrustedSigners.parse(node)
        end
        xml.at('TrustedKeyGroups') do |node|
          data.trusted_key_groups = Parsers::TrustedKeyGroups.parse(node)
        end
        xml.at('ViewerProtocolPolicy') do |node|
          data.viewer_protocol_policy = (node.text || '')
        end
        xml.at('AllowedMethods') do |node|
          data.allowed_methods = Parsers::AllowedMethods.parse(node)
        end
        xml.at('SmoothStreaming') do |node|
          data.smooth_streaming = (node.text == 'true')
        end
        xml.at('Compress') do |node|
          data.compress = (node.text == 'true')
        end
        xml.at('LambdaFunctionAssociations') do |node|
          data.lambda_function_associations = Parsers::LambdaFunctionAssociations.parse(node)
        end
        xml.at('FunctionAssociations') do |node|
          data.function_associations = Parsers::FunctionAssociations.parse(node)
        end
        xml.at('FieldLevelEncryptionId') do |node|
          data.field_level_encryption_id = (node.text || '')
        end
        xml.at('RealtimeLogConfigArn') do |node|
          data.realtime_log_config_arn = (node.text || '')
        end
        xml.at('CachePolicyId') do |node|
          data.cache_policy_id = (node.text || '')
        end
        xml.at('OriginRequestPolicyId') do |node|
          data.origin_request_policy_id = (node.text || '')
        end
        xml.at('ResponseHeadersPolicyId') do |node|
          data.response_headers_policy_id = (node.text || '')
        end
        xml.at('ForwardedValues') do |node|
          data.forwarded_values = Parsers::ForwardedValues.parse(node)
        end
        xml.at('MinTTL') do |node|
          data.min_ttl = node.text&.to_i
        end
        xml.at('DefaultTTL') do |node|
          data.default_ttl = node.text&.to_i
        end
        xml.at('MaxTTL') do |node|
          data.max_ttl = node.text&.to_i
        end
        return data
      end
    end

    class ForwardedValues
      def self.parse(xml)
        data = Types::ForwardedValues.new
        xml.at('QueryString') do |node|
          data.query_string = (node.text == 'true')
        end
        xml.at('Cookies') do |node|
          data.cookies = Parsers::CookiePreference.parse(node)
        end
        xml.at('Headers') do |node|
          data.headers = Parsers::Headers.parse(node)
        end
        xml.at('QueryStringCacheKeys') do |node|
          data.query_string_cache_keys = Parsers::QueryStringCacheKeys.parse(node)
        end
        return data
      end
    end

    class QueryStringCacheKeys
      def self.parse(xml)
        data = Types::QueryStringCacheKeys.new
        xml.at('Quantity') do |node|
          data.quantity = node.text&.to_i
        end
        xml.at('Items') do |node|
          children = node.children('Name')
          data.items = Parsers::QueryStringCacheKeysList.parse(children)
        end
        return data
      end
    end

    class QueryStringCacheKeysList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class CookiePreference
      def self.parse(xml)
        data = Types::CookiePreference.new
        xml.at('Forward') do |node|
          data.forward = (node.text || '')
        end
        xml.at('WhitelistedNames') do |node|
          data.whitelisted_names = Parsers::CookieNames.parse(node)
        end
        return data
      end
    end

    class FunctionAssociations
      def self.parse(xml)
        data = Types::FunctionAssociations.new
        xml.at('Quantity') do |node|
          data.quantity = node.text&.to_i
        end
        xml.at('Items') do |node|
          children = node.children('FunctionAssociation')
          data.items = Parsers::FunctionAssociationList.parse(children)
        end
        return data
      end
    end

    class FunctionAssociationList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::FunctionAssociation.parse(node)
        end
        data
      end
    end

    class FunctionAssociation
      def self.parse(xml)
        data = Types::FunctionAssociation.new
        xml.at('FunctionARN') do |node|
          data.function_arn = (node.text || '')
        end
        xml.at('EventType') do |node|
          data.event_type = (node.text || '')
        end
        return data
      end
    end

    class LambdaFunctionAssociations
      def self.parse(xml)
        data = Types::LambdaFunctionAssociations.new
        xml.at('Quantity') do |node|
          data.quantity = node.text&.to_i
        end
        xml.at('Items') do |node|
          children = node.children('LambdaFunctionAssociation')
          data.items = Parsers::LambdaFunctionAssociationList.parse(children)
        end
        return data
      end
    end

    class LambdaFunctionAssociationList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::LambdaFunctionAssociation.parse(node)
        end
        data
      end
    end

    class LambdaFunctionAssociation
      def self.parse(xml)
        data = Types::LambdaFunctionAssociation.new
        xml.at('LambdaFunctionARN') do |node|
          data.lambda_function_arn = (node.text || '')
        end
        xml.at('EventType') do |node|
          data.event_type = (node.text || '')
        end
        xml.at('IncludeBody') do |node|
          data.include_body = (node.text == 'true')
        end
        return data
      end
    end

    class AllowedMethods
      def self.parse(xml)
        data = Types::AllowedMethods.new
        xml.at('Quantity') do |node|
          data.quantity = node.text&.to_i
        end
        xml.at('Items') do |node|
          children = node.children('Method')
          data.items = Parsers::MethodsList.parse(children)
        end
        xml.at('CachedMethods') do |node|
          data.cached_methods = Parsers::CachedMethods.parse(node)
        end
        return data
      end
    end

    class CachedMethods
      def self.parse(xml)
        data = Types::CachedMethods.new
        xml.at('Quantity') do |node|
          data.quantity = node.text&.to_i
        end
        xml.at('Items') do |node|
          children = node.children('Method')
          data.items = Parsers::MethodsList.parse(children)
        end
        return data
      end
    end

    class MethodsList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class TrustedKeyGroups
      def self.parse(xml)
        data = Types::TrustedKeyGroups.new
        xml.at('Enabled') do |node|
          data.enabled = (node.text == 'true')
        end
        xml.at('Quantity') do |node|
          data.quantity = node.text&.to_i
        end
        xml.at('Items') do |node|
          children = node.children('KeyGroup')
          data.items = Parsers::TrustedKeyGroupIdList.parse(children)
        end
        return data
      end
    end

    class TrustedKeyGroupIdList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class TrustedSigners
      def self.parse(xml)
        data = Types::TrustedSigners.new
        xml.at('Enabled') do |node|
          data.enabled = (node.text == 'true')
        end
        xml.at('Quantity') do |node|
          data.quantity = node.text&.to_i
        end
        xml.at('Items') do |node|
          children = node.children('AwsAccountNumber')
          data.items = Parsers::AwsAccountNumberList.parse(children)
        end
        return data
      end
    end

    class AwsAccountNumberList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class DefaultCacheBehavior
      def self.parse(xml)
        data = Types::DefaultCacheBehavior.new
        xml.at('TargetOriginId') do |node|
          data.target_origin_id = (node.text || '')
        end
        xml.at('TrustedSigners') do |node|
          data.trusted_signers = Parsers::TrustedSigners.parse(node)
        end
        xml.at('TrustedKeyGroups') do |node|
          data.trusted_key_groups = Parsers::TrustedKeyGroups.parse(node)
        end
        xml.at('ViewerProtocolPolicy') do |node|
          data.viewer_protocol_policy = (node.text || '')
        end
        xml.at('AllowedMethods') do |node|
          data.allowed_methods = Parsers::AllowedMethods.parse(node)
        end
        xml.at('SmoothStreaming') do |node|
          data.smooth_streaming = (node.text == 'true')
        end
        xml.at('Compress') do |node|
          data.compress = (node.text == 'true')
        end
        xml.at('LambdaFunctionAssociations') do |node|
          data.lambda_function_associations = Parsers::LambdaFunctionAssociations.parse(node)
        end
        xml.at('FunctionAssociations') do |node|
          data.function_associations = Parsers::FunctionAssociations.parse(node)
        end
        xml.at('FieldLevelEncryptionId') do |node|
          data.field_level_encryption_id = (node.text || '')
        end
        xml.at('RealtimeLogConfigArn') do |node|
          data.realtime_log_config_arn = (node.text || '')
        end
        xml.at('CachePolicyId') do |node|
          data.cache_policy_id = (node.text || '')
        end
        xml.at('OriginRequestPolicyId') do |node|
          data.origin_request_policy_id = (node.text || '')
        end
        xml.at('ResponseHeadersPolicyId') do |node|
          data.response_headers_policy_id = (node.text || '')
        end
        xml.at('ForwardedValues') do |node|
          data.forwarded_values = Parsers::ForwardedValues.parse(node)
        end
        xml.at('MinTTL') do |node|
          data.min_ttl = node.text&.to_i
        end
        xml.at('DefaultTTL') do |node|
          data.default_ttl = node.text&.to_i
        end
        xml.at('MaxTTL') do |node|
          data.max_ttl = node.text&.to_i
        end
        return data
      end
    end

    class OriginGroups
      def self.parse(xml)
        data = Types::OriginGroups.new
        xml.at('Quantity') do |node|
          data.quantity = node.text&.to_i
        end
        xml.at('Items') do |node|
          children = node.children('OriginGroup')
          data.items = Parsers::OriginGroupList.parse(children)
        end
        return data
      end
    end

    class OriginGroupList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::OriginGroup.parse(node)
        end
        data
      end
    end

    class OriginGroup
      def self.parse(xml)
        data = Types::OriginGroup.new
        xml.at('Id') do |node|
          data.id = (node.text || '')
        end
        xml.at('FailoverCriteria') do |node|
          data.failover_criteria = Parsers::OriginGroupFailoverCriteria.parse(node)
        end
        xml.at('Members') do |node|
          data.members = Parsers::OriginGroupMembers.parse(node)
        end
        return data
      end
    end

    class OriginGroupMembers
      def self.parse(xml)
        data = Types::OriginGroupMembers.new
        xml.at('Quantity') do |node|
          data.quantity = node.text&.to_i
        end
        xml.at('Items') do |node|
          children = node.children('OriginGroupMember')
          data.items = Parsers::OriginGroupMemberList.parse(children)
        end
        return data
      end
    end

    class OriginGroupMemberList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::OriginGroupMember.parse(node)
        end
        data
      end
    end

    class OriginGroupMember
      def self.parse(xml)
        data = Types::OriginGroupMember.new
        xml.at('OriginId') do |node|
          data.origin_id = (node.text || '')
        end
        return data
      end
    end

    class OriginGroupFailoverCriteria
      def self.parse(xml)
        data = Types::OriginGroupFailoverCriteria.new
        xml.at('StatusCodes') do |node|
          data.status_codes = Parsers::StatusCodes.parse(node)
        end
        return data
      end
    end

    class StatusCodes
      def self.parse(xml)
        data = Types::StatusCodes.new
        xml.at('Quantity') do |node|
          data.quantity = node.text&.to_i
        end
        xml.at('Items') do |node|
          children = node.children('StatusCode')
          data.items = Parsers::StatusCodeList.parse(children)
        end
        return data
      end
    end

    class StatusCodeList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << node.text&.to_i
        end
        data
      end
    end

    class Origins
      def self.parse(xml)
        data = Types::Origins.new
        xml.at('Quantity') do |node|
          data.quantity = node.text&.to_i
        end
        xml.at('Items') do |node|
          children = node.children('Origin')
          data.items = Parsers::OriginList.parse(children)
        end
        return data
      end
    end

    class OriginList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Origin.parse(node)
        end
        data
      end
    end

    class Origin
      def self.parse(xml)
        data = Types::Origin.new
        xml.at('Id') do |node|
          data.id = (node.text || '')
        end
        xml.at('DomainName') do |node|
          data.domain_name = (node.text || '')
        end
        xml.at('OriginPath') do |node|
          data.origin_path = (node.text || '')
        end
        xml.at('CustomHeaders') do |node|
          data.custom_headers = Parsers::CustomHeaders.parse(node)
        end
        xml.at('S3OriginConfig') do |node|
          data.s3_origin_config = Parsers::S3OriginConfig.parse(node)
        end
        xml.at('CustomOriginConfig') do |node|
          data.custom_origin_config = Parsers::CustomOriginConfig.parse(node)
        end
        xml.at('ConnectionAttempts') do |node|
          data.connection_attempts = node.text&.to_i
        end
        xml.at('ConnectionTimeout') do |node|
          data.connection_timeout = node.text&.to_i
        end
        xml.at('OriginShield') do |node|
          data.origin_shield = Parsers::OriginShield.parse(node)
        end
        return data
      end
    end

    class OriginShield
      def self.parse(xml)
        data = Types::OriginShield.new
        xml.at('Enabled') do |node|
          data.enabled = (node.text == 'true')
        end
        xml.at('OriginShieldRegion') do |node|
          data.origin_shield_region = (node.text || '')
        end
        return data
      end
    end

    class CustomOriginConfig
      def self.parse(xml)
        data = Types::CustomOriginConfig.new
        xml.at('HTTPPort') do |node|
          data.http_port = node.text&.to_i
        end
        xml.at('HTTPSPort') do |node|
          data.https_port = node.text&.to_i
        end
        xml.at('OriginProtocolPolicy') do |node|
          data.origin_protocol_policy = (node.text || '')
        end
        xml.at('OriginSslProtocols') do |node|
          data.origin_ssl_protocols = Parsers::OriginSslProtocols.parse(node)
        end
        xml.at('OriginReadTimeout') do |node|
          data.origin_read_timeout = node.text&.to_i
        end
        xml.at('OriginKeepaliveTimeout') do |node|
          data.origin_keepalive_timeout = node.text&.to_i
        end
        return data
      end
    end

    class OriginSslProtocols
      def self.parse(xml)
        data = Types::OriginSslProtocols.new
        xml.at('Quantity') do |node|
          data.quantity = node.text&.to_i
        end
        xml.at('Items') do |node|
          children = node.children('SslProtocol')
          data.items = Parsers::SslProtocolsList.parse(children)
        end
        return data
      end
    end

    class SslProtocolsList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class S3OriginConfig
      def self.parse(xml)
        data = Types::S3OriginConfig.new
        xml.at('OriginAccessIdentity') do |node|
          data.origin_access_identity = (node.text || '')
        end
        return data
      end
    end

    class CustomHeaders
      def self.parse(xml)
        data = Types::CustomHeaders.new
        xml.at('Quantity') do |node|
          data.quantity = node.text&.to_i
        end
        xml.at('Items') do |node|
          children = node.children('OriginCustomHeader')
          data.items = Parsers::OriginCustomHeadersList.parse(children)
        end
        return data
      end
    end

    class OriginCustomHeadersList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::OriginCustomHeader.parse(node)
        end
        data
      end
    end

    class OriginCustomHeader
      def self.parse(xml)
        data = Types::OriginCustomHeader.new
        xml.at('HeaderName') do |node|
          data.header_name = (node.text || '')
        end
        xml.at('HeaderValue') do |node|
          data.header_value = (node.text || '')
        end
        return data
      end
    end

    class Aliases
      def self.parse(xml)
        data = Types::Aliases.new
        xml.at('Quantity') do |node|
          data.quantity = node.text&.to_i
        end
        xml.at('Items') do |node|
          children = node.children('CNAME')
          data.items = Parsers::AliasList.parse(children)
        end
        return data
      end
    end

    class AliasList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class ActiveTrustedKeyGroups
      def self.parse(xml)
        data = Types::ActiveTrustedKeyGroups.new
        xml.at('Enabled') do |node|
          data.enabled = (node.text == 'true')
        end
        xml.at('Quantity') do |node|
          data.quantity = node.text&.to_i
        end
        xml.at('Items') do |node|
          children = node.children('KeyGroup')
          data.items = Parsers::KGKeyPairIdsList.parse(children)
        end
        return data
      end
    end

    class KGKeyPairIdsList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::KGKeyPairIds.parse(node)
        end
        data
      end
    end

    class KGKeyPairIds
      def self.parse(xml)
        data = Types::KGKeyPairIds.new
        xml.at('KeyGroupId') do |node|
          data.key_group_id = (node.text || '')
        end
        xml.at('KeyPairIds') do |node|
          data.key_pair_ids = Parsers::KeyPairIds.parse(node)
        end
        return data
      end
    end

    class KeyPairIds
      def self.parse(xml)
        data = Types::KeyPairIds.new
        xml.at('Quantity') do |node|
          data.quantity = node.text&.to_i
        end
        xml.at('Items') do |node|
          children = node.children('KeyPairId')
          data.items = Parsers::KeyPairIdList.parse(children)
        end
        return data
      end
    end

    class KeyPairIdList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class ActiveTrustedSigners
      def self.parse(xml)
        data = Types::ActiveTrustedSigners.new
        xml.at('Enabled') do |node|
          data.enabled = (node.text == 'true')
        end
        xml.at('Quantity') do |node|
          data.quantity = node.text&.to_i
        end
        xml.at('Items') do |node|
          children = node.children('Signer')
          data.items = Parsers::SignerList.parse(children)
        end
        return data
      end
    end

    class SignerList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Signer.parse(node)
        end
        data
      end
    end

    class Signer
      def self.parse(xml)
        data = Types::Signer.new
        xml.at('AwsAccountNumber') do |node|
          data.aws_account_number = (node.text || '')
        end
        xml.at('KeyPairIds') do |node|
          data.key_pair_ids = Parsers::KeyPairIds.parse(node)
        end
        return data
      end
    end

    # Error Parser for TooManyDistributionsAssociatedToOriginRequestPolicy
    class TooManyDistributionsAssociatedToOriginRequestPolicy
      def self.parse(http_resp)
        data = Types::TooManyDistributionsAssociatedToOriginRequestPolicy.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidRelativePath
    class InvalidRelativePath
      def self.parse(http_resp)
        data = Types::InvalidRelativePath.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TooManyQueryStringParameters
    class TooManyQueryStringParameters
      def self.parse(http_resp)
        data = Types::TooManyQueryStringParameters.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TooManyLambdaFunctionAssociations
    class TooManyLambdaFunctionAssociations
      def self.parse(http_resp)
        data = Types::TooManyLambdaFunctionAssociations.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidWebACLId
    class InvalidWebACLId
      def self.parse(http_resp)
        data = Types::InvalidWebACLId.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidTTLOrder
    class InvalidTTLOrder
      def self.parse(http_resp)
        data = Types::InvalidTTLOrder.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TooManyDistributions
    class TooManyDistributions
      def self.parse(http_resp)
        data = Types::TooManyDistributions.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TooManyDistributionsWithFunctionAssociations
    class TooManyDistributionsWithFunctionAssociations
      def self.parse(http_resp)
        data = Types::TooManyDistributionsWithFunctionAssociations.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TooManyHeadersInForwardedValues
    class TooManyHeadersInForwardedValues
      def self.parse(http_resp)
        data = Types::TooManyHeadersInForwardedValues.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TooManyDistributionsAssociatedToFieldLevelEncryptionConfig
    class TooManyDistributionsAssociatedToFieldLevelEncryptionConfig
      def self.parse(http_resp)
        data = Types::TooManyDistributionsAssociatedToFieldLevelEncryptionConfig.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidOriginAccessIdentity
    class InvalidOriginAccessIdentity
      def self.parse(http_resp)
        data = Types::InvalidOriginAccessIdentity.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for DistributionAlreadyExists
    class DistributionAlreadyExists
      def self.parse(http_resp)
        data = Types::DistributionAlreadyExists.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for RealtimeLogConfigOwnerMismatch
    class RealtimeLogConfigOwnerMismatch
      def self.parse(http_resp)
        data = Types::RealtimeLogConfigOwnerMismatch.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TooManyCacheBehaviors
    class TooManyCacheBehaviors
      def self.parse(http_resp)
        data = Types::TooManyCacheBehaviors.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for NoSuchOrigin
    class NoSuchOrigin
      def self.parse(http_resp)
        data = Types::NoSuchOrigin.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TooManyDistributionsAssociatedToCachePolicy
    class TooManyDistributionsAssociatedToCachePolicy
      def self.parse(http_resp)
        data = Types::TooManyDistributionsAssociatedToCachePolicy.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidViewerCertificate
    class InvalidViewerCertificate
      def self.parse(http_resp)
        data = Types::InvalidViewerCertificate.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidFunctionAssociation
    class InvalidFunctionAssociation
      def self.parse(http_resp)
        data = Types::InvalidFunctionAssociation.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for NoSuchResponseHeadersPolicy
    class NoSuchResponseHeadersPolicy
      def self.parse(http_resp)
        data = Types::NoSuchResponseHeadersPolicy.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidDefaultRootObject
    class InvalidDefaultRootObject
      def self.parse(http_resp)
        data = Types::InvalidDefaultRootObject.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for NoSuchCachePolicy
    class NoSuchCachePolicy
      def self.parse(http_resp)
        data = Types::NoSuchCachePolicy.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidProtocolSettings
    class InvalidProtocolSettings
      def self.parse(http_resp)
        data = Types::InvalidProtocolSettings.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidMinimumProtocolVersion
    class InvalidMinimumProtocolVersion
      def self.parse(http_resp)
        data = Types::InvalidMinimumProtocolVersion.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidLambdaFunctionAssociation
    class InvalidLambdaFunctionAssociation
      def self.parse(http_resp)
        data = Types::InvalidLambdaFunctionAssociation.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidResponseCode
    class InvalidResponseCode
      def self.parse(http_resp)
        data = Types::InvalidResponseCode.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for NoSuchOriginRequestPolicy
    class NoSuchOriginRequestPolicy
      def self.parse(http_resp)
        data = Types::NoSuchOriginRequestPolicy.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for NoSuchFieldLevelEncryptionConfig
    class NoSuchFieldLevelEncryptionConfig
      def self.parse(http_resp)
        data = Types::NoSuchFieldLevelEncryptionConfig.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidHeadersForS3Origin
    class InvalidHeadersForS3Origin
      def self.parse(http_resp)
        data = Types::InvalidHeadersForS3Origin.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TrustedSignerDoesNotExist
    class TrustedSignerDoesNotExist
      def self.parse(http_resp)
        data = Types::TrustedSignerDoesNotExist.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TooManyCookieNamesInWhiteList
    class TooManyCookieNamesInWhiteList
      def self.parse(http_resp)
        data = Types::TooManyCookieNamesInWhiteList.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TooManyDistributionsAssociatedToKeyGroup
    class TooManyDistributionsAssociatedToKeyGroup
      def self.parse(http_resp)
        data = Types::TooManyDistributionsAssociatedToKeyGroup.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TooManyOrigins
    class TooManyOrigins
      def self.parse(http_resp)
        data = Types::TooManyOrigins.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TooManyTrustedSigners
    class TooManyTrustedSigners
      def self.parse(http_resp)
        data = Types::TooManyTrustedSigners.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TooManyDistributionsWithSingleFunctionARN
    class TooManyDistributionsWithSingleFunctionARN
      def self.parse(http_resp)
        data = Types::TooManyDistributionsWithSingleFunctionARN.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidGeoRestrictionParameter
    class InvalidGeoRestrictionParameter
      def self.parse(http_resp)
        data = Types::InvalidGeoRestrictionParameter.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for NoSuchRealtimeLogConfig
    class NoSuchRealtimeLogConfig
      def self.parse(http_resp)
        data = Types::NoSuchRealtimeLogConfig.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidOriginReadTimeout
    class InvalidOriginReadTimeout
      def self.parse(http_resp)
        data = Types::InvalidOriginReadTimeout.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TooManyCertificates
    class TooManyCertificates
      def self.parse(http_resp)
        data = Types::TooManyCertificates.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidLocationCode
    class InvalidLocationCode
      def self.parse(http_resp)
        data = Types::InvalidLocationCode.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidQueryStringParameters
    class InvalidQueryStringParameters
      def self.parse(http_resp)
        data = Types::InvalidQueryStringParameters.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for CNAMEAlreadyExists
    class CNAMEAlreadyExists
      def self.parse(http_resp)
        data = Types::CNAMEAlreadyExists.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior
    class IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior
      def self.parse(http_resp)
        data = Types::IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidErrorCode
    class InvalidErrorCode
      def self.parse(http_resp)
        data = Types::InvalidErrorCode.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TooManyKeyGroupsAssociatedToDistribution
    class TooManyKeyGroupsAssociatedToDistribution
      def self.parse(http_resp)
        data = Types::TooManyKeyGroupsAssociatedToDistribution.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TooManyDistributionsWithLambdaAssociations
    class TooManyDistributionsWithLambdaAssociations
      def self.parse(http_resp)
        data = Types::TooManyDistributionsWithLambdaAssociations.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TooManyOriginCustomHeaders
    class TooManyOriginCustomHeaders
      def self.parse(http_resp)
        data = Types::TooManyOriginCustomHeaders.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TrustedKeyGroupDoesNotExist
    class TrustedKeyGroupDoesNotExist
      def self.parse(http_resp)
        data = Types::TrustedKeyGroupDoesNotExist.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidOriginKeepaliveTimeout
    class InvalidOriginKeepaliveTimeout
      def self.parse(http_resp)
        data = Types::InvalidOriginKeepaliveTimeout.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidForwardCookies
    class InvalidForwardCookies
      def self.parse(http_resp)
        data = Types::InvalidForwardCookies.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidOrigin
    class InvalidOrigin
      def self.parse(http_resp)
        data = Types::InvalidOrigin.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TooManyDistributionsAssociatedToResponseHeadersPolicy
    class TooManyDistributionsAssociatedToResponseHeadersPolicy
      def self.parse(http_resp)
        data = Types::TooManyDistributionsAssociatedToResponseHeadersPolicy.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TooManyOriginGroupsPerDistribution
    class TooManyOriginGroupsPerDistribution
      def self.parse(http_resp)
        data = Types::TooManyOriginGroupsPerDistribution.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidRequiredProtocol
    class InvalidRequiredProtocol
      def self.parse(http_resp)
        data = Types::InvalidRequiredProtocol.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TooManyFunctionAssociations
    class TooManyFunctionAssociations
      def self.parse(http_resp)
        data = Types::TooManyFunctionAssociations.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateDistributionWithTags
    class CreateDistributionWithTags
      def self.parse(http_resp)
        data = Types::CreateDistributionWithTagsOutput.new
        data.location = http_resp.headers['Location']
        data.e_tag = http_resp.headers['ETag']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.distribution = Parsers::Distribution.parse(xml)
        data
      end
    end

    # Error Parser for InvalidTagging
    class InvalidTagging
      def self.parse(http_resp)
        data = Types::InvalidTagging.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateFieldLevelEncryptionConfig
    class CreateFieldLevelEncryptionConfig
      def self.parse(http_resp)
        data = Types::CreateFieldLevelEncryptionConfigOutput.new
        data.location = http_resp.headers['Location']
        data.e_tag = http_resp.headers['ETag']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.field_level_encryption = Parsers::FieldLevelEncryption.parse(xml)
        data
      end
    end

    class FieldLevelEncryption
      def self.parse(xml)
        data = Types::FieldLevelEncryption.new
        xml.at('Id') do |node|
          data.id = (node.text || '')
        end
        xml.at('LastModifiedTime') do |node|
          data.last_modified_time = Time.parse(node.text) if node.text
        end
        xml.at('FieldLevelEncryptionConfig') do |node|
          data.field_level_encryption_config = Parsers::FieldLevelEncryptionConfig.parse(node)
        end
        return data
      end
    end

    class FieldLevelEncryptionConfig
      def self.parse(xml)
        data = Types::FieldLevelEncryptionConfig.new
        xml.at('CallerReference') do |node|
          data.caller_reference = (node.text || '')
        end
        xml.at('Comment') do |node|
          data.comment = (node.text || '')
        end
        xml.at('QueryArgProfileConfig') do |node|
          data.query_arg_profile_config = Parsers::QueryArgProfileConfig.parse(node)
        end
        xml.at('ContentTypeProfileConfig') do |node|
          data.content_type_profile_config = Parsers::ContentTypeProfileConfig.parse(node)
        end
        return data
      end
    end

    class ContentTypeProfileConfig
      def self.parse(xml)
        data = Types::ContentTypeProfileConfig.new
        xml.at('ForwardWhenContentTypeIsUnknown') do |node|
          data.forward_when_content_type_is_unknown = (node.text == 'true')
        end
        xml.at('ContentTypeProfiles') do |node|
          data.content_type_profiles = Parsers::ContentTypeProfiles.parse(node)
        end
        return data
      end
    end

    class ContentTypeProfiles
      def self.parse(xml)
        data = Types::ContentTypeProfiles.new
        xml.at('Quantity') do |node|
          data.quantity = node.text&.to_i
        end
        xml.at('Items') do |node|
          children = node.children('ContentTypeProfile')
          data.items = Parsers::ContentTypeProfileList.parse(children)
        end
        return data
      end
    end

    class ContentTypeProfileList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ContentTypeProfile.parse(node)
        end
        data
      end
    end

    class ContentTypeProfile
      def self.parse(xml)
        data = Types::ContentTypeProfile.new
        xml.at('Format') do |node|
          data.format = (node.text || '')
        end
        xml.at('ProfileId') do |node|
          data.profile_id = (node.text || '')
        end
        xml.at('ContentType') do |node|
          data.content_type = (node.text || '')
        end
        return data
      end
    end

    class QueryArgProfileConfig
      def self.parse(xml)
        data = Types::QueryArgProfileConfig.new
        xml.at('ForwardWhenQueryArgProfileIsUnknown') do |node|
          data.forward_when_query_arg_profile_is_unknown = (node.text == 'true')
        end
        xml.at('QueryArgProfiles') do |node|
          data.query_arg_profiles = Parsers::QueryArgProfiles.parse(node)
        end
        return data
      end
    end

    class QueryArgProfiles
      def self.parse(xml)
        data = Types::QueryArgProfiles.new
        xml.at('Quantity') do |node|
          data.quantity = node.text&.to_i
        end
        xml.at('Items') do |node|
          children = node.children('QueryArgProfile')
          data.items = Parsers::QueryArgProfileList.parse(children)
        end
        return data
      end
    end

    class QueryArgProfileList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::QueryArgProfile.parse(node)
        end
        data
      end
    end

    class QueryArgProfile
      def self.parse(xml)
        data = Types::QueryArgProfile.new
        xml.at('QueryArg') do |node|
          data.query_arg = (node.text || '')
        end
        xml.at('ProfileId') do |node|
          data.profile_id = (node.text || '')
        end
        return data
      end
    end

    # Error Parser for QueryArgProfileEmpty
    class QueryArgProfileEmpty
      def self.parse(http_resp)
        data = Types::QueryArgProfileEmpty.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for FieldLevelEncryptionConfigAlreadyExists
    class FieldLevelEncryptionConfigAlreadyExists
      def self.parse(http_resp)
        data = Types::FieldLevelEncryptionConfigAlreadyExists.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TooManyFieldLevelEncryptionContentTypeProfiles
    class TooManyFieldLevelEncryptionContentTypeProfiles
      def self.parse(http_resp)
        data = Types::TooManyFieldLevelEncryptionContentTypeProfiles.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for NoSuchFieldLevelEncryptionProfile
    class NoSuchFieldLevelEncryptionProfile
      def self.parse(http_resp)
        data = Types::NoSuchFieldLevelEncryptionProfile.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TooManyFieldLevelEncryptionConfigs
    class TooManyFieldLevelEncryptionConfigs
      def self.parse(http_resp)
        data = Types::TooManyFieldLevelEncryptionConfigs.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TooManyFieldLevelEncryptionQueryArgProfiles
    class TooManyFieldLevelEncryptionQueryArgProfiles
      def self.parse(http_resp)
        data = Types::TooManyFieldLevelEncryptionQueryArgProfiles.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateFieldLevelEncryptionProfile
    class CreateFieldLevelEncryptionProfile
      def self.parse(http_resp)
        data = Types::CreateFieldLevelEncryptionProfileOutput.new
        data.location = http_resp.headers['Location']
        data.e_tag = http_resp.headers['ETag']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.field_level_encryption_profile = Parsers::FieldLevelEncryptionProfile.parse(xml)
        data
      end
    end

    class FieldLevelEncryptionProfile
      def self.parse(xml)
        data = Types::FieldLevelEncryptionProfile.new
        xml.at('Id') do |node|
          data.id = (node.text || '')
        end
        xml.at('LastModifiedTime') do |node|
          data.last_modified_time = Time.parse(node.text) if node.text
        end
        xml.at('FieldLevelEncryptionProfileConfig') do |node|
          data.field_level_encryption_profile_config = Parsers::FieldLevelEncryptionProfileConfig.parse(node)
        end
        return data
      end
    end

    class FieldLevelEncryptionProfileConfig
      def self.parse(xml)
        data = Types::FieldLevelEncryptionProfileConfig.new
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        xml.at('CallerReference') do |node|
          data.caller_reference = (node.text || '')
        end
        xml.at('Comment') do |node|
          data.comment = (node.text || '')
        end
        xml.at('EncryptionEntities') do |node|
          data.encryption_entities = Parsers::EncryptionEntities.parse(node)
        end
        return data
      end
    end

    class EncryptionEntities
      def self.parse(xml)
        data = Types::EncryptionEntities.new
        xml.at('Quantity') do |node|
          data.quantity = node.text&.to_i
        end
        xml.at('Items') do |node|
          children = node.children('EncryptionEntity')
          data.items = Parsers::EncryptionEntityList.parse(children)
        end
        return data
      end
    end

    class EncryptionEntityList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::EncryptionEntity.parse(node)
        end
        data
      end
    end

    class EncryptionEntity
      def self.parse(xml)
        data = Types::EncryptionEntity.new
        xml.at('PublicKeyId') do |node|
          data.public_key_id = (node.text || '')
        end
        xml.at('ProviderId') do |node|
          data.provider_id = (node.text || '')
        end
        xml.at('FieldPatterns') do |node|
          data.field_patterns = Parsers::FieldPatterns.parse(node)
        end
        return data
      end
    end

    class FieldPatterns
      def self.parse(xml)
        data = Types::FieldPatterns.new
        xml.at('Quantity') do |node|
          data.quantity = node.text&.to_i
        end
        xml.at('Items') do |node|
          children = node.children('FieldPattern')
          data.items = Parsers::FieldPatternList.parse(children)
        end
        return data
      end
    end

    class FieldPatternList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Error Parser for FieldLevelEncryptionProfileAlreadyExists
    class FieldLevelEncryptionProfileAlreadyExists
      def self.parse(http_resp)
        data = Types::FieldLevelEncryptionProfileAlreadyExists.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TooManyFieldLevelEncryptionFieldPatterns
    class TooManyFieldLevelEncryptionFieldPatterns
      def self.parse(http_resp)
        data = Types::TooManyFieldLevelEncryptionFieldPatterns.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for NoSuchPublicKey
    class NoSuchPublicKey
      def self.parse(http_resp)
        data = Types::NoSuchPublicKey.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TooManyFieldLevelEncryptionEncryptionEntities
    class TooManyFieldLevelEncryptionEncryptionEntities
      def self.parse(http_resp)
        data = Types::TooManyFieldLevelEncryptionEncryptionEntities.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TooManyFieldLevelEncryptionProfiles
    class TooManyFieldLevelEncryptionProfiles
      def self.parse(http_resp)
        data = Types::TooManyFieldLevelEncryptionProfiles.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for FieldLevelEncryptionProfileSizeExceeded
    class FieldLevelEncryptionProfileSizeExceeded
      def self.parse(http_resp)
        data = Types::FieldLevelEncryptionProfileSizeExceeded.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateFunction
    class CreateFunction
      def self.parse(http_resp)
        data = Types::CreateFunctionOutput.new
        data.location = http_resp.headers['Location']
        data.e_tag = http_resp.headers['ETag']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.function_summary = Parsers::FunctionSummary.parse(xml)
        data
      end
    end

    class FunctionSummary
      def self.parse(xml)
        data = Types::FunctionSummary.new
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('FunctionConfig') do |node|
          data.function_config = Parsers::FunctionConfig.parse(node)
        end
        xml.at('FunctionMetadata') do |node|
          data.function_metadata = Parsers::FunctionMetadata.parse(node)
        end
        return data
      end
    end

    class FunctionMetadata
      def self.parse(xml)
        data = Types::FunctionMetadata.new
        xml.at('FunctionARN') do |node|
          data.function_arn = (node.text || '')
        end
        xml.at('Stage') do |node|
          data.stage = (node.text || '')
        end
        xml.at('CreatedTime') do |node|
          data.created_time = Time.parse(node.text) if node.text
        end
        xml.at('LastModifiedTime') do |node|
          data.last_modified_time = Time.parse(node.text) if node.text
        end
        return data
      end
    end

    class FunctionConfig
      def self.parse(xml)
        data = Types::FunctionConfig.new
        xml.at('Comment') do |node|
          data.comment = (node.text || '')
        end
        xml.at('Runtime') do |node|
          data.runtime = (node.text || '')
        end
        return data
      end
    end

    # Error Parser for UnsupportedOperation
    class UnsupportedOperation
      def self.parse(http_resp)
        data = Types::UnsupportedOperation.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TooManyFunctions
    class TooManyFunctions
      def self.parse(http_resp)
        data = Types::TooManyFunctions.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for FunctionAlreadyExists
    class FunctionAlreadyExists
      def self.parse(http_resp)
        data = Types::FunctionAlreadyExists.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for FunctionSizeLimitExceeded
    class FunctionSizeLimitExceeded
      def self.parse(http_resp)
        data = Types::FunctionSizeLimitExceeded.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateInvalidation
    class CreateInvalidation
      def self.parse(http_resp)
        data = Types::CreateInvalidationOutput.new
        data.location = http_resp.headers['Location']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.invalidation = Parsers::Invalidation.parse(xml)
        data
      end
    end

    class Invalidation
      def self.parse(xml)
        data = Types::Invalidation.new
        xml.at('Id') do |node|
          data.id = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('CreateTime') do |node|
          data.create_time = Time.parse(node.text) if node.text
        end
        xml.at('InvalidationBatch') do |node|
          data.invalidation_batch = Parsers::InvalidationBatch.parse(node)
        end
        return data
      end
    end

    class InvalidationBatch
      def self.parse(xml)
        data = Types::InvalidationBatch.new
        xml.at('Paths') do |node|
          data.paths = Parsers::Paths.parse(node)
        end
        xml.at('CallerReference') do |node|
          data.caller_reference = (node.text || '')
        end
        return data
      end
    end

    class Paths
      def self.parse(xml)
        data = Types::Paths.new
        xml.at('Quantity') do |node|
          data.quantity = node.text&.to_i
        end
        xml.at('Items') do |node|
          children = node.children('Path')
          data.items = Parsers::PathList.parse(children)
        end
        return data
      end
    end

    class PathList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Error Parser for TooManyInvalidationsInProgress
    class TooManyInvalidationsInProgress
      def self.parse(http_resp)
        data = Types::TooManyInvalidationsInProgress.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for BatchTooLarge
    class BatchTooLarge
      def self.parse(http_resp)
        data = Types::BatchTooLarge.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateKeyGroup
    class CreateKeyGroup
      def self.parse(http_resp)
        data = Types::CreateKeyGroupOutput.new
        data.location = http_resp.headers['Location']
        data.e_tag = http_resp.headers['ETag']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.key_group = Parsers::KeyGroup.parse(xml)
        data
      end
    end

    class KeyGroup
      def self.parse(xml)
        data = Types::KeyGroup.new
        xml.at('Id') do |node|
          data.id = (node.text || '')
        end
        xml.at('LastModifiedTime') do |node|
          data.last_modified_time = Time.parse(node.text) if node.text
        end
        xml.at('KeyGroupConfig') do |node|
          data.key_group_config = Parsers::KeyGroupConfig.parse(node)
        end
        return data
      end
    end

    class KeyGroupConfig
      def self.parse(xml)
        data = Types::KeyGroupConfig.new
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        xml.at('Items') do |node|
          children = node.children('PublicKey')
          data.items = Parsers::PublicKeyIdList.parse(children)
        end
        xml.at('Comment') do |node|
          data.comment = (node.text || '')
        end
        return data
      end
    end

    class PublicKeyIdList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Error Parser for KeyGroupAlreadyExists
    class KeyGroupAlreadyExists
      def self.parse(http_resp)
        data = Types::KeyGroupAlreadyExists.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TooManyKeyGroups
    class TooManyKeyGroups
      def self.parse(http_resp)
        data = Types::TooManyKeyGroups.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TooManyPublicKeysInKeyGroup
    class TooManyPublicKeysInKeyGroup
      def self.parse(http_resp)
        data = Types::TooManyPublicKeysInKeyGroup.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateMonitoringSubscription
    class CreateMonitoringSubscription
      def self.parse(http_resp)
        data = Types::CreateMonitoringSubscriptionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.monitoring_subscription = Parsers::MonitoringSubscription.parse(xml)
        data
      end
    end

    class MonitoringSubscription
      def self.parse(xml)
        data = Types::MonitoringSubscription.new
        xml.at('RealtimeMetricsSubscriptionConfig') do |node|
          data.realtime_metrics_subscription_config = Parsers::RealtimeMetricsSubscriptionConfig.parse(node)
        end
        return data
      end
    end

    class RealtimeMetricsSubscriptionConfig
      def self.parse(xml)
        data = Types::RealtimeMetricsSubscriptionConfig.new
        xml.at('RealtimeMetricsSubscriptionStatus') do |node|
          data.realtime_metrics_subscription_status = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for CreateOriginRequestPolicy
    class CreateOriginRequestPolicy
      def self.parse(http_resp)
        data = Types::CreateOriginRequestPolicyOutput.new
        data.location = http_resp.headers['Location']
        data.e_tag = http_resp.headers['ETag']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.origin_request_policy = Parsers::OriginRequestPolicy.parse(xml)
        data
      end
    end

    class OriginRequestPolicy
      def self.parse(xml)
        data = Types::OriginRequestPolicy.new
        xml.at('Id') do |node|
          data.id = (node.text || '')
        end
        xml.at('LastModifiedTime') do |node|
          data.last_modified_time = Time.parse(node.text) if node.text
        end
        xml.at('OriginRequestPolicyConfig') do |node|
          data.origin_request_policy_config = Parsers::OriginRequestPolicyConfig.parse(node)
        end
        return data
      end
    end

    class OriginRequestPolicyConfig
      def self.parse(xml)
        data = Types::OriginRequestPolicyConfig.new
        xml.at('Comment') do |node|
          data.comment = (node.text || '')
        end
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        xml.at('HeadersConfig') do |node|
          data.headers_config = Parsers::OriginRequestPolicyHeadersConfig.parse(node)
        end
        xml.at('CookiesConfig') do |node|
          data.cookies_config = Parsers::OriginRequestPolicyCookiesConfig.parse(node)
        end
        xml.at('QueryStringsConfig') do |node|
          data.query_strings_config = Parsers::OriginRequestPolicyQueryStringsConfig.parse(node)
        end
        return data
      end
    end

    class OriginRequestPolicyQueryStringsConfig
      def self.parse(xml)
        data = Types::OriginRequestPolicyQueryStringsConfig.new
        xml.at('QueryStringBehavior') do |node|
          data.query_string_behavior = (node.text || '')
        end
        xml.at('QueryStrings') do |node|
          data.query_strings = Parsers::QueryStringNames.parse(node)
        end
        return data
      end
    end

    class OriginRequestPolicyCookiesConfig
      def self.parse(xml)
        data = Types::OriginRequestPolicyCookiesConfig.new
        xml.at('CookieBehavior') do |node|
          data.cookie_behavior = (node.text || '')
        end
        xml.at('Cookies') do |node|
          data.cookies = Parsers::CookieNames.parse(node)
        end
        return data
      end
    end

    class OriginRequestPolicyHeadersConfig
      def self.parse(xml)
        data = Types::OriginRequestPolicyHeadersConfig.new
        xml.at('HeaderBehavior') do |node|
          data.header_behavior = (node.text || '')
        end
        xml.at('Headers') do |node|
          data.headers = Parsers::Headers.parse(node)
        end
        return data
      end
    end

    # Error Parser for TooManyHeadersInOriginRequestPolicy
    class TooManyHeadersInOriginRequestPolicy
      def self.parse(http_resp)
        data = Types::TooManyHeadersInOriginRequestPolicy.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TooManyOriginRequestPolicies
    class TooManyOriginRequestPolicies
      def self.parse(http_resp)
        data = Types::TooManyOriginRequestPolicies.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TooManyQueryStringsInOriginRequestPolicy
    class TooManyQueryStringsInOriginRequestPolicy
      def self.parse(http_resp)
        data = Types::TooManyQueryStringsInOriginRequestPolicy.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for OriginRequestPolicyAlreadyExists
    class OriginRequestPolicyAlreadyExists
      def self.parse(http_resp)
        data = Types::OriginRequestPolicyAlreadyExists.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TooManyCookiesInOriginRequestPolicy
    class TooManyCookiesInOriginRequestPolicy
      def self.parse(http_resp)
        data = Types::TooManyCookiesInOriginRequestPolicy.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreatePublicKey
    class CreatePublicKey
      def self.parse(http_resp)
        data = Types::CreatePublicKeyOutput.new
        data.location = http_resp.headers['Location']
        data.e_tag = http_resp.headers['ETag']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.public_key = Parsers::PublicKey.parse(xml)
        data
      end
    end

    class PublicKey
      def self.parse(xml)
        data = Types::PublicKey.new
        xml.at('Id') do |node|
          data.id = (node.text || '')
        end
        xml.at('CreatedTime') do |node|
          data.created_time = Time.parse(node.text) if node.text
        end
        xml.at('PublicKeyConfig') do |node|
          data.public_key_config = Parsers::PublicKeyConfig.parse(node)
        end
        return data
      end
    end

    class PublicKeyConfig
      def self.parse(xml)
        data = Types::PublicKeyConfig.new
        xml.at('CallerReference') do |node|
          data.caller_reference = (node.text || '')
        end
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        xml.at('EncodedKey') do |node|
          data.encoded_key = (node.text || '')
        end
        xml.at('Comment') do |node|
          data.comment = (node.text || '')
        end
        return data
      end
    end

    # Error Parser for TooManyPublicKeys
    class TooManyPublicKeys
      def self.parse(http_resp)
        data = Types::TooManyPublicKeys.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for PublicKeyAlreadyExists
    class PublicKeyAlreadyExists
      def self.parse(http_resp)
        data = Types::PublicKeyAlreadyExists.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateRealtimeLogConfig
    class CreateRealtimeLogConfig
      def self.parse(http_resp)
        data = Types::CreateRealtimeLogConfigOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('RealtimeLogConfig') do |node|
          data.realtime_log_config = Parsers::RealtimeLogConfig.parse(node)
        end
        data
      end
    end

    class RealtimeLogConfig
      def self.parse(xml)
        data = Types::RealtimeLogConfig.new
        xml.at('ARN') do |node|
          data.arn = (node.text || '')
        end
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        xml.at('SamplingRate') do |node|
          data.sampling_rate = node.text&.to_i
        end
        xml.at('EndPoints') do |node|
          children = node.children('member')
          data.end_points = Parsers::EndPointList.parse(children)
        end
        xml.at('Fields') do |node|
          children = node.children('Field')
          data.fields = Parsers::FieldList.parse(children)
        end
        return data
      end
    end

    class FieldList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class EndPointList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::EndPoint.parse(node)
        end
        data
      end
    end

    class EndPoint
      def self.parse(xml)
        data = Types::EndPoint.new
        xml.at('StreamType') do |node|
          data.stream_type = (node.text || '')
        end
        xml.at('KinesisStreamConfig') do |node|
          data.kinesis_stream_config = Parsers::KinesisStreamConfig.parse(node)
        end
        return data
      end
    end

    class KinesisStreamConfig
      def self.parse(xml)
        data = Types::KinesisStreamConfig.new
        xml.at('RoleARN') do |node|
          data.role_arn = (node.text || '')
        end
        xml.at('StreamARN') do |node|
          data.stream_arn = (node.text || '')
        end
        return data
      end
    end

    # Error Parser for TooManyRealtimeLogConfigs
    class TooManyRealtimeLogConfigs
      def self.parse(http_resp)
        data = Types::TooManyRealtimeLogConfigs.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for RealtimeLogConfigAlreadyExists
    class RealtimeLogConfigAlreadyExists
      def self.parse(http_resp)
        data = Types::RealtimeLogConfigAlreadyExists.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateResponseHeadersPolicy
    class CreateResponseHeadersPolicy
      def self.parse(http_resp)
        data = Types::CreateResponseHeadersPolicyOutput.new
        data.location = http_resp.headers['Location']
        data.e_tag = http_resp.headers['ETag']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.response_headers_policy = Parsers::ResponseHeadersPolicy.parse(xml)
        data
      end
    end

    class ResponseHeadersPolicy
      def self.parse(xml)
        data = Types::ResponseHeadersPolicy.new
        xml.at('Id') do |node|
          data.id = (node.text || '')
        end
        xml.at('LastModifiedTime') do |node|
          data.last_modified_time = Time.parse(node.text) if node.text
        end
        xml.at('ResponseHeadersPolicyConfig') do |node|
          data.response_headers_policy_config = Parsers::ResponseHeadersPolicyConfig.parse(node)
        end
        return data
      end
    end

    class ResponseHeadersPolicyConfig
      def self.parse(xml)
        data = Types::ResponseHeadersPolicyConfig.new
        xml.at('Comment') do |node|
          data.comment = (node.text || '')
        end
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        xml.at('CorsConfig') do |node|
          data.cors_config = Parsers::ResponseHeadersPolicyCorsConfig.parse(node)
        end
        xml.at('SecurityHeadersConfig') do |node|
          data.security_headers_config = Parsers::ResponseHeadersPolicySecurityHeadersConfig.parse(node)
        end
        xml.at('CustomHeadersConfig') do |node|
          data.custom_headers_config = Parsers::ResponseHeadersPolicyCustomHeadersConfig.parse(node)
        end
        xml.at('ServerTimingHeadersConfig') do |node|
          data.server_timing_headers_config = Parsers::ResponseHeadersPolicyServerTimingHeadersConfig.parse(node)
        end
        return data
      end
    end

    class ResponseHeadersPolicyServerTimingHeadersConfig
      def self.parse(xml)
        data = Types::ResponseHeadersPolicyServerTimingHeadersConfig.new
        xml.at('Enabled') do |node|
          data.enabled = (node.text == 'true')
        end
        xml.at('SamplingRate') do |node|
          data.sampling_rate = Hearth::NumberHelper.deserialize(node.text)
        end
        return data
      end
    end

    class ResponseHeadersPolicyCustomHeadersConfig
      def self.parse(xml)
        data = Types::ResponseHeadersPolicyCustomHeadersConfig.new
        xml.at('Quantity') do |node|
          data.quantity = node.text&.to_i
        end
        xml.at('Items') do |node|
          children = node.children('ResponseHeadersPolicyCustomHeader')
          data.items = Parsers::ResponseHeadersPolicyCustomHeaderList.parse(children)
        end
        return data
      end
    end

    class ResponseHeadersPolicyCustomHeaderList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ResponseHeadersPolicyCustomHeader.parse(node)
        end
        data
      end
    end

    class ResponseHeadersPolicyCustomHeader
      def self.parse(xml)
        data = Types::ResponseHeadersPolicyCustomHeader.new
        xml.at('Header') do |node|
          data.header = (node.text || '')
        end
        xml.at('Value') do |node|
          data.value = (node.text || '')
        end
        xml.at('Override') do |node|
          data.override = (node.text == 'true')
        end
        return data
      end
    end

    class ResponseHeadersPolicySecurityHeadersConfig
      def self.parse(xml)
        data = Types::ResponseHeadersPolicySecurityHeadersConfig.new
        xml.at('XSSProtection') do |node|
          data.xss_protection = Parsers::ResponseHeadersPolicyXSSProtection.parse(node)
        end
        xml.at('FrameOptions') do |node|
          data.frame_options = Parsers::ResponseHeadersPolicyFrameOptions.parse(node)
        end
        xml.at('ReferrerPolicy') do |node|
          data.referrer_policy = Parsers::ResponseHeadersPolicyReferrerPolicy.parse(node)
        end
        xml.at('ContentSecurityPolicy') do |node|
          data.content_security_policy = Parsers::ResponseHeadersPolicyContentSecurityPolicy.parse(node)
        end
        xml.at('ContentTypeOptions') do |node|
          data.content_type_options = Parsers::ResponseHeadersPolicyContentTypeOptions.parse(node)
        end
        xml.at('StrictTransportSecurity') do |node|
          data.strict_transport_security = Parsers::ResponseHeadersPolicyStrictTransportSecurity.parse(node)
        end
        return data
      end
    end

    class ResponseHeadersPolicyStrictTransportSecurity
      def self.parse(xml)
        data = Types::ResponseHeadersPolicyStrictTransportSecurity.new
        xml.at('Override') do |node|
          data.override = (node.text == 'true')
        end
        xml.at('IncludeSubdomains') do |node|
          data.include_subdomains = (node.text == 'true')
        end
        xml.at('Preload') do |node|
          data.preload = (node.text == 'true')
        end
        xml.at('AccessControlMaxAgeSec') do |node|
          data.access_control_max_age_sec = node.text&.to_i
        end
        return data
      end
    end

    class ResponseHeadersPolicyContentTypeOptions
      def self.parse(xml)
        data = Types::ResponseHeadersPolicyContentTypeOptions.new
        xml.at('Override') do |node|
          data.override = (node.text == 'true')
        end
        return data
      end
    end

    class ResponseHeadersPolicyContentSecurityPolicy
      def self.parse(xml)
        data = Types::ResponseHeadersPolicyContentSecurityPolicy.new
        xml.at('Override') do |node|
          data.override = (node.text == 'true')
        end
        xml.at('ContentSecurityPolicy') do |node|
          data.content_security_policy = (node.text || '')
        end
        return data
      end
    end

    class ResponseHeadersPolicyReferrerPolicy
      def self.parse(xml)
        data = Types::ResponseHeadersPolicyReferrerPolicy.new
        xml.at('Override') do |node|
          data.override = (node.text == 'true')
        end
        xml.at('ReferrerPolicy') do |node|
          data.referrer_policy = (node.text || '')
        end
        return data
      end
    end

    class ResponseHeadersPolicyFrameOptions
      def self.parse(xml)
        data = Types::ResponseHeadersPolicyFrameOptions.new
        xml.at('Override') do |node|
          data.override = (node.text == 'true')
        end
        xml.at('FrameOption') do |node|
          data.frame_option = (node.text || '')
        end
        return data
      end
    end

    class ResponseHeadersPolicyXSSProtection
      def self.parse(xml)
        data = Types::ResponseHeadersPolicyXSSProtection.new
        xml.at('Override') do |node|
          data.override = (node.text == 'true')
        end
        xml.at('Protection') do |node|
          data.protection = (node.text == 'true')
        end
        xml.at('ModeBlock') do |node|
          data.mode_block = (node.text == 'true')
        end
        xml.at('ReportUri') do |node|
          data.report_uri = (node.text || '')
        end
        return data
      end
    end

    class ResponseHeadersPolicyCorsConfig
      def self.parse(xml)
        data = Types::ResponseHeadersPolicyCorsConfig.new
        xml.at('AccessControlAllowOrigins') do |node|
          data.access_control_allow_origins = Parsers::ResponseHeadersPolicyAccessControlAllowOrigins.parse(node)
        end
        xml.at('AccessControlAllowHeaders') do |node|
          data.access_control_allow_headers = Parsers::ResponseHeadersPolicyAccessControlAllowHeaders.parse(node)
        end
        xml.at('AccessControlAllowMethods') do |node|
          data.access_control_allow_methods = Parsers::ResponseHeadersPolicyAccessControlAllowMethods.parse(node)
        end
        xml.at('AccessControlAllowCredentials') do |node|
          data.access_control_allow_credentials = (node.text == 'true')
        end
        xml.at('AccessControlExposeHeaders') do |node|
          data.access_control_expose_headers = Parsers::ResponseHeadersPolicyAccessControlExposeHeaders.parse(node)
        end
        xml.at('AccessControlMaxAgeSec') do |node|
          data.access_control_max_age_sec = node.text&.to_i
        end
        xml.at('OriginOverride') do |node|
          data.origin_override = (node.text == 'true')
        end
        return data
      end
    end

    class ResponseHeadersPolicyAccessControlExposeHeaders
      def self.parse(xml)
        data = Types::ResponseHeadersPolicyAccessControlExposeHeaders.new
        xml.at('Quantity') do |node|
          data.quantity = node.text&.to_i
        end
        xml.at('Items') do |node|
          children = node.children('Header')
          data.items = Parsers::AccessControlExposeHeadersList.parse(children)
        end
        return data
      end
    end

    class AccessControlExposeHeadersList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class ResponseHeadersPolicyAccessControlAllowMethods
      def self.parse(xml)
        data = Types::ResponseHeadersPolicyAccessControlAllowMethods.new
        xml.at('Quantity') do |node|
          data.quantity = node.text&.to_i
        end
        xml.at('Items') do |node|
          children = node.children('Method')
          data.items = Parsers::AccessControlAllowMethodsList.parse(children)
        end
        return data
      end
    end

    class AccessControlAllowMethodsList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class ResponseHeadersPolicyAccessControlAllowHeaders
      def self.parse(xml)
        data = Types::ResponseHeadersPolicyAccessControlAllowHeaders.new
        xml.at('Quantity') do |node|
          data.quantity = node.text&.to_i
        end
        xml.at('Items') do |node|
          children = node.children('Header')
          data.items = Parsers::AccessControlAllowHeadersList.parse(children)
        end
        return data
      end
    end

    class AccessControlAllowHeadersList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class ResponseHeadersPolicyAccessControlAllowOrigins
      def self.parse(xml)
        data = Types::ResponseHeadersPolicyAccessControlAllowOrigins.new
        xml.at('Quantity') do |node|
          data.quantity = node.text&.to_i
        end
        xml.at('Items') do |node|
          children = node.children('Origin')
          data.items = Parsers::AccessControlAllowOriginsList.parse(children)
        end
        return data
      end
    end

    class AccessControlAllowOriginsList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Error Parser for TooManyCustomHeadersInResponseHeadersPolicy
    class TooManyCustomHeadersInResponseHeadersPolicy
      def self.parse(http_resp)
        data = Types::TooManyCustomHeadersInResponseHeadersPolicy.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TooLongCSPInResponseHeadersPolicy
    class TooLongCSPInResponseHeadersPolicy
      def self.parse(http_resp)
        data = Types::TooLongCSPInResponseHeadersPolicy.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TooManyResponseHeadersPolicies
    class TooManyResponseHeadersPolicies
      def self.parse(http_resp)
        data = Types::TooManyResponseHeadersPolicies.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for ResponseHeadersPolicyAlreadyExists
    class ResponseHeadersPolicyAlreadyExists
      def self.parse(http_resp)
        data = Types::ResponseHeadersPolicyAlreadyExists.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateStreamingDistribution
    class CreateStreamingDistribution
      def self.parse(http_resp)
        data = Types::CreateStreamingDistributionOutput.new
        data.location = http_resp.headers['Location']
        data.e_tag = http_resp.headers['ETag']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.streaming_distribution = Parsers::StreamingDistribution.parse(xml)
        data
      end
    end

    class StreamingDistribution
      def self.parse(xml)
        data = Types::StreamingDistribution.new
        xml.at('Id') do |node|
          data.id = (node.text || '')
        end
        xml.at('ARN') do |node|
          data.arn = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('LastModifiedTime') do |node|
          data.last_modified_time = Time.parse(node.text) if node.text
        end
        xml.at('DomainName') do |node|
          data.domain_name = (node.text || '')
        end
        xml.at('ActiveTrustedSigners') do |node|
          data.active_trusted_signers = Parsers::ActiveTrustedSigners.parse(node)
        end
        xml.at('StreamingDistributionConfig') do |node|
          data.streaming_distribution_config = Parsers::StreamingDistributionConfig.parse(node)
        end
        return data
      end
    end

    class StreamingDistributionConfig
      def self.parse(xml)
        data = Types::StreamingDistributionConfig.new
        xml.at('CallerReference') do |node|
          data.caller_reference = (node.text || '')
        end
        xml.at('S3Origin') do |node|
          data.s3_origin = Parsers::S3Origin.parse(node)
        end
        xml.at('Aliases') do |node|
          data.aliases = Parsers::Aliases.parse(node)
        end
        xml.at('Comment') do |node|
          data.comment = (node.text || '')
        end
        xml.at('Logging') do |node|
          data.logging = Parsers::StreamingLoggingConfig.parse(node)
        end
        xml.at('TrustedSigners') do |node|
          data.trusted_signers = Parsers::TrustedSigners.parse(node)
        end
        xml.at('PriceClass') do |node|
          data.price_class = (node.text || '')
        end
        xml.at('Enabled') do |node|
          data.enabled = (node.text == 'true')
        end
        return data
      end
    end

    class StreamingLoggingConfig
      def self.parse(xml)
        data = Types::StreamingLoggingConfig.new
        xml.at('Enabled') do |node|
          data.enabled = (node.text == 'true')
        end
        xml.at('Bucket') do |node|
          data.bucket = (node.text || '')
        end
        xml.at('Prefix') do |node|
          data.prefix = (node.text || '')
        end
        return data
      end
    end

    class S3Origin
      def self.parse(xml)
        data = Types::S3Origin.new
        xml.at('DomainName') do |node|
          data.domain_name = (node.text || '')
        end
        xml.at('OriginAccessIdentity') do |node|
          data.origin_access_identity = (node.text || '')
        end
        return data
      end
    end

    # Error Parser for TooManyStreamingDistributions
    class TooManyStreamingDistributions
      def self.parse(http_resp)
        data = Types::TooManyStreamingDistributions.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for StreamingDistributionAlreadyExists
    class StreamingDistributionAlreadyExists
      def self.parse(http_resp)
        data = Types::StreamingDistributionAlreadyExists.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TooManyStreamingDistributionCNAMEs
    class TooManyStreamingDistributionCNAMEs
      def self.parse(http_resp)
        data = Types::TooManyStreamingDistributionCNAMEs.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateStreamingDistributionWithTags
    class CreateStreamingDistributionWithTags
      def self.parse(http_resp)
        data = Types::CreateStreamingDistributionWithTagsOutput.new
        data.location = http_resp.headers['Location']
        data.e_tag = http_resp.headers['ETag']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.streaming_distribution = Parsers::StreamingDistribution.parse(xml)
        data
      end
    end

    # Operation Parser for DeleteCachePolicy
    class DeleteCachePolicy
      def self.parse(http_resp)
        data = Types::DeleteCachePolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Error Parser for PreconditionFailed
    class PreconditionFailed
      def self.parse(http_resp)
        data = Types::PreconditionFailed.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidIfMatchVersion
    class InvalidIfMatchVersion
      def self.parse(http_resp)
        data = Types::InvalidIfMatchVersion.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for IllegalDelete
    class IllegalDelete
      def self.parse(http_resp)
        data = Types::IllegalDelete.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for CachePolicyInUse
    class CachePolicyInUse
      def self.parse(http_resp)
        data = Types::CachePolicyInUse.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteCloudFrontOriginAccessIdentity
    class DeleteCloudFrontOriginAccessIdentity
      def self.parse(http_resp)
        data = Types::DeleteCloudFrontOriginAccessIdentityOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Error Parser for CloudFrontOriginAccessIdentityInUse
    class CloudFrontOriginAccessIdentityInUse
      def self.parse(http_resp)
        data = Types::CloudFrontOriginAccessIdentityInUse.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for NoSuchCloudFrontOriginAccessIdentity
    class NoSuchCloudFrontOriginAccessIdentity
      def self.parse(http_resp)
        data = Types::NoSuchCloudFrontOriginAccessIdentity.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteDistribution
    class DeleteDistribution
      def self.parse(http_resp)
        data = Types::DeleteDistributionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Error Parser for DistributionNotDisabled
    class DistributionNotDisabled
      def self.parse(http_resp)
        data = Types::DistributionNotDisabled.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteFieldLevelEncryptionConfig
    class DeleteFieldLevelEncryptionConfig
      def self.parse(http_resp)
        data = Types::DeleteFieldLevelEncryptionConfigOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Error Parser for FieldLevelEncryptionConfigInUse
    class FieldLevelEncryptionConfigInUse
      def self.parse(http_resp)
        data = Types::FieldLevelEncryptionConfigInUse.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteFieldLevelEncryptionProfile
    class DeleteFieldLevelEncryptionProfile
      def self.parse(http_resp)
        data = Types::DeleteFieldLevelEncryptionProfileOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Error Parser for FieldLevelEncryptionProfileInUse
    class FieldLevelEncryptionProfileInUse
      def self.parse(http_resp)
        data = Types::FieldLevelEncryptionProfileInUse.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteFunction
    class DeleteFunction
      def self.parse(http_resp)
        data = Types::DeleteFunctionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Error Parser for NoSuchFunctionExists
    class NoSuchFunctionExists
      def self.parse(http_resp)
        data = Types::NoSuchFunctionExists.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for FunctionInUse
    class FunctionInUse
      def self.parse(http_resp)
        data = Types::FunctionInUse.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteKeyGroup
    class DeleteKeyGroup
      def self.parse(http_resp)
        data = Types::DeleteKeyGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Error Parser for NoSuchResource
    class NoSuchResource
      def self.parse(http_resp)
        data = Types::NoSuchResource.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for ResourceInUse
    class ResourceInUse
      def self.parse(http_resp)
        data = Types::ResourceInUse.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteMonitoringSubscription
    class DeleteMonitoringSubscription
      def self.parse(http_resp)
        data = Types::DeleteMonitoringSubscriptionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for DeleteOriginRequestPolicy
    class DeleteOriginRequestPolicy
      def self.parse(http_resp)
        data = Types::DeleteOriginRequestPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Error Parser for OriginRequestPolicyInUse
    class OriginRequestPolicyInUse
      def self.parse(http_resp)
        data = Types::OriginRequestPolicyInUse.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeletePublicKey
    class DeletePublicKey
      def self.parse(http_resp)
        data = Types::DeletePublicKeyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Error Parser for PublicKeyInUse
    class PublicKeyInUse
      def self.parse(http_resp)
        data = Types::PublicKeyInUse.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteRealtimeLogConfig
    class DeleteRealtimeLogConfig
      def self.parse(http_resp)
        data = Types::DeleteRealtimeLogConfigOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Error Parser for RealtimeLogConfigInUse
    class RealtimeLogConfigInUse
      def self.parse(http_resp)
        data = Types::RealtimeLogConfigInUse.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteResponseHeadersPolicy
    class DeleteResponseHeadersPolicy
      def self.parse(http_resp)
        data = Types::DeleteResponseHeadersPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Error Parser for ResponseHeadersPolicyInUse
    class ResponseHeadersPolicyInUse
      def self.parse(http_resp)
        data = Types::ResponseHeadersPolicyInUse.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteStreamingDistribution
    class DeleteStreamingDistribution
      def self.parse(http_resp)
        data = Types::DeleteStreamingDistributionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Error Parser for StreamingDistributionNotDisabled
    class StreamingDistributionNotDisabled
      def self.parse(http_resp)
        data = Types::StreamingDistributionNotDisabled.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for NoSuchStreamingDistribution
    class NoSuchStreamingDistribution
      def self.parse(http_resp)
        data = Types::NoSuchStreamingDistribution.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DescribeFunction
    class DescribeFunction
      def self.parse(http_resp)
        data = Types::DescribeFunctionOutput.new
        data.e_tag = http_resp.headers['ETag']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.function_summary = Parsers::FunctionSummary.parse(xml)
        data
      end
    end

    # Operation Parser for GetCachePolicy
    class GetCachePolicy
      def self.parse(http_resp)
        data = Types::GetCachePolicyOutput.new
        data.e_tag = http_resp.headers['ETag']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.cache_policy = Parsers::CachePolicy.parse(xml)
        data
      end
    end

    # Operation Parser for GetCachePolicyConfig
    class GetCachePolicyConfig
      def self.parse(http_resp)
        data = Types::GetCachePolicyConfigOutput.new
        data.e_tag = http_resp.headers['ETag']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.cache_policy_config = Parsers::CachePolicyConfig.parse(xml)
        data
      end
    end

    # Operation Parser for GetCloudFrontOriginAccessIdentity
    class GetCloudFrontOriginAccessIdentity
      def self.parse(http_resp)
        data = Types::GetCloudFrontOriginAccessIdentityOutput.new
        data.e_tag = http_resp.headers['ETag']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.cloud_front_origin_access_identity = Parsers::CloudFrontOriginAccessIdentity.parse(xml)
        data
      end
    end

    # Operation Parser for GetCloudFrontOriginAccessIdentityConfig
    class GetCloudFrontOriginAccessIdentityConfig
      def self.parse(http_resp)
        data = Types::GetCloudFrontOriginAccessIdentityConfigOutput.new
        data.e_tag = http_resp.headers['ETag']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.cloud_front_origin_access_identity_config = Parsers::CloudFrontOriginAccessIdentityConfig.parse(xml)
        data
      end
    end

    # Operation Parser for GetDistribution
    class GetDistribution
      def self.parse(http_resp)
        data = Types::GetDistributionOutput.new
        data.e_tag = http_resp.headers['ETag']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.distribution = Parsers::Distribution.parse(xml)
        data
      end
    end

    # Operation Parser for GetDistributionConfig
    class GetDistributionConfig
      def self.parse(http_resp)
        data = Types::GetDistributionConfigOutput.new
        data.e_tag = http_resp.headers['ETag']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.distribution_config = Parsers::DistributionConfig.parse(xml)
        data
      end
    end

    # Operation Parser for GetFieldLevelEncryption
    class GetFieldLevelEncryption
      def self.parse(http_resp)
        data = Types::GetFieldLevelEncryptionOutput.new
        data.e_tag = http_resp.headers['ETag']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.field_level_encryption = Parsers::FieldLevelEncryption.parse(xml)
        data
      end
    end

    # Operation Parser for GetFieldLevelEncryptionConfig
    class GetFieldLevelEncryptionConfig
      def self.parse(http_resp)
        data = Types::GetFieldLevelEncryptionConfigOutput.new
        data.e_tag = http_resp.headers['ETag']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.field_level_encryption_config = Parsers::FieldLevelEncryptionConfig.parse(xml)
        data
      end
    end

    # Operation Parser for GetFieldLevelEncryptionProfile
    class GetFieldLevelEncryptionProfile
      def self.parse(http_resp)
        data = Types::GetFieldLevelEncryptionProfileOutput.new
        data.e_tag = http_resp.headers['ETag']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.field_level_encryption_profile = Parsers::FieldLevelEncryptionProfile.parse(xml)
        data
      end
    end

    # Operation Parser for GetFieldLevelEncryptionProfileConfig
    class GetFieldLevelEncryptionProfileConfig
      def self.parse(http_resp)
        data = Types::GetFieldLevelEncryptionProfileConfigOutput.new
        data.e_tag = http_resp.headers['ETag']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.field_level_encryption_profile_config = Parsers::FieldLevelEncryptionProfileConfig.parse(xml)
        data
      end
    end

    # Operation Parser for GetFunction
    class GetFunction
      def self.parse(http_resp)
        data = Types::GetFunctionOutput.new
        data.e_tag = http_resp.headers['ETag']
        data.content_type = http_resp.headers['Content-Type']
        payload = http_resp.body.read
        data.function_code = payload unless payload.empty?
        data
      end
    end

    # Operation Parser for GetInvalidation
    class GetInvalidation
      def self.parse(http_resp)
        data = Types::GetInvalidationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.invalidation = Parsers::Invalidation.parse(xml)
        data
      end
    end

    # Error Parser for NoSuchInvalidation
    class NoSuchInvalidation
      def self.parse(http_resp)
        data = Types::NoSuchInvalidation.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for GetKeyGroup
    class GetKeyGroup
      def self.parse(http_resp)
        data = Types::GetKeyGroupOutput.new
        data.e_tag = http_resp.headers['ETag']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.key_group = Parsers::KeyGroup.parse(xml)
        data
      end
    end

    # Operation Parser for GetKeyGroupConfig
    class GetKeyGroupConfig
      def self.parse(http_resp)
        data = Types::GetKeyGroupConfigOutput.new
        data.e_tag = http_resp.headers['ETag']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.key_group_config = Parsers::KeyGroupConfig.parse(xml)
        data
      end
    end

    # Operation Parser for GetMonitoringSubscription
    class GetMonitoringSubscription
      def self.parse(http_resp)
        data = Types::GetMonitoringSubscriptionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.monitoring_subscription = Parsers::MonitoringSubscription.parse(xml)
        data
      end
    end

    # Operation Parser for GetOriginRequestPolicy
    class GetOriginRequestPolicy
      def self.parse(http_resp)
        data = Types::GetOriginRequestPolicyOutput.new
        data.e_tag = http_resp.headers['ETag']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.origin_request_policy = Parsers::OriginRequestPolicy.parse(xml)
        data
      end
    end

    # Operation Parser for GetOriginRequestPolicyConfig
    class GetOriginRequestPolicyConfig
      def self.parse(http_resp)
        data = Types::GetOriginRequestPolicyConfigOutput.new
        data.e_tag = http_resp.headers['ETag']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.origin_request_policy_config = Parsers::OriginRequestPolicyConfig.parse(xml)
        data
      end
    end

    # Operation Parser for GetPublicKey
    class GetPublicKey
      def self.parse(http_resp)
        data = Types::GetPublicKeyOutput.new
        data.e_tag = http_resp.headers['ETag']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.public_key = Parsers::PublicKey.parse(xml)
        data
      end
    end

    # Operation Parser for GetPublicKeyConfig
    class GetPublicKeyConfig
      def self.parse(http_resp)
        data = Types::GetPublicKeyConfigOutput.new
        data.e_tag = http_resp.headers['ETag']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.public_key_config = Parsers::PublicKeyConfig.parse(xml)
        data
      end
    end

    # Operation Parser for GetRealtimeLogConfig
    class GetRealtimeLogConfig
      def self.parse(http_resp)
        data = Types::GetRealtimeLogConfigOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('RealtimeLogConfig') do |node|
          data.realtime_log_config = Parsers::RealtimeLogConfig.parse(node)
        end
        data
      end
    end

    # Operation Parser for GetResponseHeadersPolicy
    class GetResponseHeadersPolicy
      def self.parse(http_resp)
        data = Types::GetResponseHeadersPolicyOutput.new
        data.e_tag = http_resp.headers['ETag']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.response_headers_policy = Parsers::ResponseHeadersPolicy.parse(xml)
        data
      end
    end

    # Operation Parser for GetResponseHeadersPolicyConfig
    class GetResponseHeadersPolicyConfig
      def self.parse(http_resp)
        data = Types::GetResponseHeadersPolicyConfigOutput.new
        data.e_tag = http_resp.headers['ETag']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.response_headers_policy_config = Parsers::ResponseHeadersPolicyConfig.parse(xml)
        data
      end
    end

    # Operation Parser for GetStreamingDistribution
    class GetStreamingDistribution
      def self.parse(http_resp)
        data = Types::GetStreamingDistributionOutput.new
        data.e_tag = http_resp.headers['ETag']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.streaming_distribution = Parsers::StreamingDistribution.parse(xml)
        data
      end
    end

    # Operation Parser for GetStreamingDistributionConfig
    class GetStreamingDistributionConfig
      def self.parse(http_resp)
        data = Types::GetStreamingDistributionConfigOutput.new
        data.e_tag = http_resp.headers['ETag']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.streaming_distribution_config = Parsers::StreamingDistributionConfig.parse(xml)
        data
      end
    end

    # Operation Parser for ListCachePolicies
    class ListCachePolicies
      def self.parse(http_resp)
        data = Types::ListCachePoliciesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.cache_policy_list = Parsers::CachePolicyList.parse(xml)
        data
      end
    end

    class CachePolicyList
      def self.parse(xml)
        data = Types::CachePolicyList.new
        xml.at('NextMarker') do |node|
          data.next_marker = (node.text || '')
        end
        xml.at('MaxItems') do |node|
          data.max_items = node.text&.to_i
        end
        xml.at('Quantity') do |node|
          data.quantity = node.text&.to_i
        end
        xml.at('Items') do |node|
          children = node.children('CachePolicySummary')
          data.items = Parsers::CachePolicySummaryList.parse(children)
        end
        return data
      end
    end

    class CachePolicySummaryList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::CachePolicySummary.parse(node)
        end
        data
      end
    end

    class CachePolicySummary
      def self.parse(xml)
        data = Types::CachePolicySummary.new
        xml.at('Type') do |node|
          data.type = (node.text || '')
        end
        xml.at('CachePolicy') do |node|
          data.cache_policy = Parsers::CachePolicy.parse(node)
        end
        return data
      end
    end

    # Operation Parser for ListCloudFrontOriginAccessIdentities
    class ListCloudFrontOriginAccessIdentities
      def self.parse(http_resp)
        data = Types::ListCloudFrontOriginAccessIdentitiesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.cloud_front_origin_access_identity_list = Parsers::CloudFrontOriginAccessIdentityList.parse(xml)
        data
      end
    end

    class CloudFrontOriginAccessIdentityList
      def self.parse(xml)
        data = Types::CloudFrontOriginAccessIdentityList.new
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        xml.at('NextMarker') do |node|
          data.next_marker = (node.text || '')
        end
        xml.at('MaxItems') do |node|
          data.max_items = node.text&.to_i
        end
        xml.at('IsTruncated') do |node|
          data.is_truncated = (node.text == 'true')
        end
        xml.at('Quantity') do |node|
          data.quantity = node.text&.to_i
        end
        xml.at('Items') do |node|
          children = node.children('CloudFrontOriginAccessIdentitySummary')
          data.items = Parsers::CloudFrontOriginAccessIdentitySummaryList.parse(children)
        end
        return data
      end
    end

    class CloudFrontOriginAccessIdentitySummaryList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::CloudFrontOriginAccessIdentitySummary.parse(node)
        end
        data
      end
    end

    class CloudFrontOriginAccessIdentitySummary
      def self.parse(xml)
        data = Types::CloudFrontOriginAccessIdentitySummary.new
        xml.at('Id') do |node|
          data.id = (node.text || '')
        end
        xml.at('S3CanonicalUserId') do |node|
          data.s3_canonical_user_id = (node.text || '')
        end
        xml.at('Comment') do |node|
          data.comment = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for ListConflictingAliases
    class ListConflictingAliases
      def self.parse(http_resp)
        data = Types::ListConflictingAliasesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.conflicting_aliases_list = Parsers::ConflictingAliasesList.parse(xml)
        data
      end
    end

    class ConflictingAliasesList
      def self.parse(xml)
        data = Types::ConflictingAliasesList.new
        xml.at('NextMarker') do |node|
          data.next_marker = (node.text || '')
        end
        xml.at('MaxItems') do |node|
          data.max_items = node.text&.to_i
        end
        xml.at('Quantity') do |node|
          data.quantity = node.text&.to_i
        end
        xml.at('Items') do |node|
          children = node.children('ConflictingAlias')
          data.items = Parsers::ConflictingAliases.parse(children)
        end
        return data
      end
    end

    class ConflictingAliases
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ConflictingAlias.parse(node)
        end
        data
      end
    end

    class ConflictingAlias
      def self.parse(xml)
        data = Types::ConflictingAlias.new
        xml.at('Alias') do |node|
          data.alias = (node.text || '')
        end
        xml.at('DistributionId') do |node|
          data.distribution_id = (node.text || '')
        end
        xml.at('AccountId') do |node|
          data.account_id = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for ListDistributions
    class ListDistributions
      def self.parse(http_resp)
        data = Types::ListDistributionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.distribution_list = Parsers::DistributionList.parse(xml)
        data
      end
    end

    class DistributionList
      def self.parse(xml)
        data = Types::DistributionList.new
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        xml.at('NextMarker') do |node|
          data.next_marker = (node.text || '')
        end
        xml.at('MaxItems') do |node|
          data.max_items = node.text&.to_i
        end
        xml.at('IsTruncated') do |node|
          data.is_truncated = (node.text == 'true')
        end
        xml.at('Quantity') do |node|
          data.quantity = node.text&.to_i
        end
        xml.at('Items') do |node|
          children = node.children('DistributionSummary')
          data.items = Parsers::DistributionSummaryList.parse(children)
        end
        return data
      end
    end

    class DistributionSummaryList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::DistributionSummary.parse(node)
        end
        data
      end
    end

    class DistributionSummary
      def self.parse(xml)
        data = Types::DistributionSummary.new
        xml.at('Id') do |node|
          data.id = (node.text || '')
        end
        xml.at('ARN') do |node|
          data.arn = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('LastModifiedTime') do |node|
          data.last_modified_time = Time.parse(node.text) if node.text
        end
        xml.at('DomainName') do |node|
          data.domain_name = (node.text || '')
        end
        xml.at('Aliases') do |node|
          data.aliases = Parsers::Aliases.parse(node)
        end
        xml.at('Origins') do |node|
          data.origins = Parsers::Origins.parse(node)
        end
        xml.at('OriginGroups') do |node|
          data.origin_groups = Parsers::OriginGroups.parse(node)
        end
        xml.at('DefaultCacheBehavior') do |node|
          data.default_cache_behavior = Parsers::DefaultCacheBehavior.parse(node)
        end
        xml.at('CacheBehaviors') do |node|
          data.cache_behaviors = Parsers::CacheBehaviors.parse(node)
        end
        xml.at('CustomErrorResponses') do |node|
          data.custom_error_responses = Parsers::CustomErrorResponses.parse(node)
        end
        xml.at('Comment') do |node|
          data.comment = (node.text || '')
        end
        xml.at('PriceClass') do |node|
          data.price_class = (node.text || '')
        end
        xml.at('Enabled') do |node|
          data.enabled = (node.text == 'true')
        end
        xml.at('ViewerCertificate') do |node|
          data.viewer_certificate = Parsers::ViewerCertificate.parse(node)
        end
        xml.at('Restrictions') do |node|
          data.restrictions = Parsers::Restrictions.parse(node)
        end
        xml.at('WebACLId') do |node|
          data.web_acl_id = (node.text || '')
        end
        xml.at('HttpVersion') do |node|
          data.http_version = (node.text || '')
        end
        xml.at('IsIPV6Enabled') do |node|
          data.is_ipv6_enabled = (node.text == 'true')
        end
        xml.at('AliasICPRecordals') do |node|
          children = node.children('AliasICPRecordal')
          data.alias_icp_recordals = Parsers::AliasICPRecordals.parse(children)
        end
        return data
      end
    end

    # Operation Parser for ListDistributionsByCachePolicyId
    class ListDistributionsByCachePolicyId
      def self.parse(http_resp)
        data = Types::ListDistributionsByCachePolicyIdOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.distribution_id_list = Parsers::DistributionIdList.parse(xml)
        data
      end
    end

    class DistributionIdList
      def self.parse(xml)
        data = Types::DistributionIdList.new
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        xml.at('NextMarker') do |node|
          data.next_marker = (node.text || '')
        end
        xml.at('MaxItems') do |node|
          data.max_items = node.text&.to_i
        end
        xml.at('IsTruncated') do |node|
          data.is_truncated = (node.text == 'true')
        end
        xml.at('Quantity') do |node|
          data.quantity = node.text&.to_i
        end
        xml.at('Items') do |node|
          children = node.children('DistributionId')
          data.items = Parsers::DistributionIdListSummary.parse(children)
        end
        return data
      end
    end

    class DistributionIdListSummary
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ListDistributionsByKeyGroup
    class ListDistributionsByKeyGroup
      def self.parse(http_resp)
        data = Types::ListDistributionsByKeyGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.distribution_id_list = Parsers::DistributionIdList.parse(xml)
        data
      end
    end

    # Operation Parser for ListDistributionsByOriginRequestPolicyId
    class ListDistributionsByOriginRequestPolicyId
      def self.parse(http_resp)
        data = Types::ListDistributionsByOriginRequestPolicyIdOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.distribution_id_list = Parsers::DistributionIdList.parse(xml)
        data
      end
    end

    # Operation Parser for ListDistributionsByRealtimeLogConfig
    class ListDistributionsByRealtimeLogConfig
      def self.parse(http_resp)
        data = Types::ListDistributionsByRealtimeLogConfigOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.distribution_list = Parsers::DistributionList.parse(xml)
        data
      end
    end

    # Operation Parser for ListDistributionsByResponseHeadersPolicyId
    class ListDistributionsByResponseHeadersPolicyId
      def self.parse(http_resp)
        data = Types::ListDistributionsByResponseHeadersPolicyIdOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.distribution_id_list = Parsers::DistributionIdList.parse(xml)
        data
      end
    end

    # Operation Parser for ListDistributionsByWebACLId
    class ListDistributionsByWebACLId
      def self.parse(http_resp)
        data = Types::ListDistributionsByWebACLIdOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.distribution_list = Parsers::DistributionList.parse(xml)
        data
      end
    end

    # Operation Parser for ListFieldLevelEncryptionConfigs
    class ListFieldLevelEncryptionConfigs
      def self.parse(http_resp)
        data = Types::ListFieldLevelEncryptionConfigsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.field_level_encryption_list = Parsers::FieldLevelEncryptionList.parse(xml)
        data
      end
    end

    class FieldLevelEncryptionList
      def self.parse(xml)
        data = Types::FieldLevelEncryptionList.new
        xml.at('NextMarker') do |node|
          data.next_marker = (node.text || '')
        end
        xml.at('MaxItems') do |node|
          data.max_items = node.text&.to_i
        end
        xml.at('Quantity') do |node|
          data.quantity = node.text&.to_i
        end
        xml.at('Items') do |node|
          children = node.children('FieldLevelEncryptionSummary')
          data.items = Parsers::FieldLevelEncryptionSummaryList.parse(children)
        end
        return data
      end
    end

    class FieldLevelEncryptionSummaryList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::FieldLevelEncryptionSummary.parse(node)
        end
        data
      end
    end

    class FieldLevelEncryptionSummary
      def self.parse(xml)
        data = Types::FieldLevelEncryptionSummary.new
        xml.at('Id') do |node|
          data.id = (node.text || '')
        end
        xml.at('LastModifiedTime') do |node|
          data.last_modified_time = Time.parse(node.text) if node.text
        end
        xml.at('Comment') do |node|
          data.comment = (node.text || '')
        end
        xml.at('QueryArgProfileConfig') do |node|
          data.query_arg_profile_config = Parsers::QueryArgProfileConfig.parse(node)
        end
        xml.at('ContentTypeProfileConfig') do |node|
          data.content_type_profile_config = Parsers::ContentTypeProfileConfig.parse(node)
        end
        return data
      end
    end

    # Operation Parser for ListFieldLevelEncryptionProfiles
    class ListFieldLevelEncryptionProfiles
      def self.parse(http_resp)
        data = Types::ListFieldLevelEncryptionProfilesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.field_level_encryption_profile_list = Parsers::FieldLevelEncryptionProfileList.parse(xml)
        data
      end
    end

    class FieldLevelEncryptionProfileList
      def self.parse(xml)
        data = Types::FieldLevelEncryptionProfileList.new
        xml.at('NextMarker') do |node|
          data.next_marker = (node.text || '')
        end
        xml.at('MaxItems') do |node|
          data.max_items = node.text&.to_i
        end
        xml.at('Quantity') do |node|
          data.quantity = node.text&.to_i
        end
        xml.at('Items') do |node|
          children = node.children('FieldLevelEncryptionProfileSummary')
          data.items = Parsers::FieldLevelEncryptionProfileSummaryList.parse(children)
        end
        return data
      end
    end

    class FieldLevelEncryptionProfileSummaryList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::FieldLevelEncryptionProfileSummary.parse(node)
        end
        data
      end
    end

    class FieldLevelEncryptionProfileSummary
      def self.parse(xml)
        data = Types::FieldLevelEncryptionProfileSummary.new
        xml.at('Id') do |node|
          data.id = (node.text || '')
        end
        xml.at('LastModifiedTime') do |node|
          data.last_modified_time = Time.parse(node.text) if node.text
        end
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        xml.at('EncryptionEntities') do |node|
          data.encryption_entities = Parsers::EncryptionEntities.parse(node)
        end
        xml.at('Comment') do |node|
          data.comment = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for ListFunctions
    class ListFunctions
      def self.parse(http_resp)
        data = Types::ListFunctionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.function_list = Parsers::FunctionList.parse(xml)
        data
      end
    end

    class FunctionList
      def self.parse(xml)
        data = Types::FunctionList.new
        xml.at('NextMarker') do |node|
          data.next_marker = (node.text || '')
        end
        xml.at('MaxItems') do |node|
          data.max_items = node.text&.to_i
        end
        xml.at('Quantity') do |node|
          data.quantity = node.text&.to_i
        end
        xml.at('Items') do |node|
          children = node.children('FunctionSummary')
          data.items = Parsers::FunctionSummaryList.parse(children)
        end
        return data
      end
    end

    class FunctionSummaryList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::FunctionSummary.parse(node)
        end
        data
      end
    end

    # Operation Parser for ListInvalidations
    class ListInvalidations
      def self.parse(http_resp)
        data = Types::ListInvalidationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.invalidation_list = Parsers::InvalidationList.parse(xml)
        data
      end
    end

    class InvalidationList
      def self.parse(xml)
        data = Types::InvalidationList.new
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        xml.at('NextMarker') do |node|
          data.next_marker = (node.text || '')
        end
        xml.at('MaxItems') do |node|
          data.max_items = node.text&.to_i
        end
        xml.at('IsTruncated') do |node|
          data.is_truncated = (node.text == 'true')
        end
        xml.at('Quantity') do |node|
          data.quantity = node.text&.to_i
        end
        xml.at('Items') do |node|
          children = node.children('InvalidationSummary')
          data.items = Parsers::InvalidationSummaryList.parse(children)
        end
        return data
      end
    end

    class InvalidationSummaryList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::InvalidationSummary.parse(node)
        end
        data
      end
    end

    class InvalidationSummary
      def self.parse(xml)
        data = Types::InvalidationSummary.new
        xml.at('Id') do |node|
          data.id = (node.text || '')
        end
        xml.at('CreateTime') do |node|
          data.create_time = Time.parse(node.text) if node.text
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for ListKeyGroups
    class ListKeyGroups
      def self.parse(http_resp)
        data = Types::ListKeyGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.key_group_list = Parsers::KeyGroupList.parse(xml)
        data
      end
    end

    class KeyGroupList
      def self.parse(xml)
        data = Types::KeyGroupList.new
        xml.at('NextMarker') do |node|
          data.next_marker = (node.text || '')
        end
        xml.at('MaxItems') do |node|
          data.max_items = node.text&.to_i
        end
        xml.at('Quantity') do |node|
          data.quantity = node.text&.to_i
        end
        xml.at('Items') do |node|
          children = node.children('KeyGroupSummary')
          data.items = Parsers::KeyGroupSummaryList.parse(children)
        end
        return data
      end
    end

    class KeyGroupSummaryList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::KeyGroupSummary.parse(node)
        end
        data
      end
    end

    class KeyGroupSummary
      def self.parse(xml)
        data = Types::KeyGroupSummary.new
        xml.at('KeyGroup') do |node|
          data.key_group = Parsers::KeyGroup.parse(node)
        end
        return data
      end
    end

    # Operation Parser for ListOriginRequestPolicies
    class ListOriginRequestPolicies
      def self.parse(http_resp)
        data = Types::ListOriginRequestPoliciesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.origin_request_policy_list = Parsers::OriginRequestPolicyList.parse(xml)
        data
      end
    end

    class OriginRequestPolicyList
      def self.parse(xml)
        data = Types::OriginRequestPolicyList.new
        xml.at('NextMarker') do |node|
          data.next_marker = (node.text || '')
        end
        xml.at('MaxItems') do |node|
          data.max_items = node.text&.to_i
        end
        xml.at('Quantity') do |node|
          data.quantity = node.text&.to_i
        end
        xml.at('Items') do |node|
          children = node.children('OriginRequestPolicySummary')
          data.items = Parsers::OriginRequestPolicySummaryList.parse(children)
        end
        return data
      end
    end

    class OriginRequestPolicySummaryList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::OriginRequestPolicySummary.parse(node)
        end
        data
      end
    end

    class OriginRequestPolicySummary
      def self.parse(xml)
        data = Types::OriginRequestPolicySummary.new
        xml.at('Type') do |node|
          data.type = (node.text || '')
        end
        xml.at('OriginRequestPolicy') do |node|
          data.origin_request_policy = Parsers::OriginRequestPolicy.parse(node)
        end
        return data
      end
    end

    # Operation Parser for ListPublicKeys
    class ListPublicKeys
      def self.parse(http_resp)
        data = Types::ListPublicKeysOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.public_key_list = Parsers::PublicKeyList.parse(xml)
        data
      end
    end

    class PublicKeyList
      def self.parse(xml)
        data = Types::PublicKeyList.new
        xml.at('NextMarker') do |node|
          data.next_marker = (node.text || '')
        end
        xml.at('MaxItems') do |node|
          data.max_items = node.text&.to_i
        end
        xml.at('Quantity') do |node|
          data.quantity = node.text&.to_i
        end
        xml.at('Items') do |node|
          children = node.children('PublicKeySummary')
          data.items = Parsers::PublicKeySummaryList.parse(children)
        end
        return data
      end
    end

    class PublicKeySummaryList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::PublicKeySummary.parse(node)
        end
        data
      end
    end

    class PublicKeySummary
      def self.parse(xml)
        data = Types::PublicKeySummary.new
        xml.at('Id') do |node|
          data.id = (node.text || '')
        end
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        xml.at('CreatedTime') do |node|
          data.created_time = Time.parse(node.text) if node.text
        end
        xml.at('EncodedKey') do |node|
          data.encoded_key = (node.text || '')
        end
        xml.at('Comment') do |node|
          data.comment = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for ListRealtimeLogConfigs
    class ListRealtimeLogConfigs
      def self.parse(http_resp)
        data = Types::ListRealtimeLogConfigsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.realtime_log_configs = Parsers::RealtimeLogConfigs.parse(xml)
        data
      end
    end

    class RealtimeLogConfigs
      def self.parse(xml)
        data = Types::RealtimeLogConfigs.new
        xml.at('MaxItems') do |node|
          data.max_items = node.text&.to_i
        end
        xml.at('Items') do |node|
          children = node.children('member')
          data.items = Parsers::RealtimeLogConfigList.parse(children)
        end
        xml.at('IsTruncated') do |node|
          data.is_truncated = (node.text == 'true')
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        xml.at('NextMarker') do |node|
          data.next_marker = (node.text || '')
        end
        return data
      end
    end

    class RealtimeLogConfigList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::RealtimeLogConfig.parse(node)
        end
        data
      end
    end

    # Operation Parser for ListResponseHeadersPolicies
    class ListResponseHeadersPolicies
      def self.parse(http_resp)
        data = Types::ListResponseHeadersPoliciesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.response_headers_policy_list = Parsers::ResponseHeadersPolicyList.parse(xml)
        data
      end
    end

    class ResponseHeadersPolicyList
      def self.parse(xml)
        data = Types::ResponseHeadersPolicyList.new
        xml.at('NextMarker') do |node|
          data.next_marker = (node.text || '')
        end
        xml.at('MaxItems') do |node|
          data.max_items = node.text&.to_i
        end
        xml.at('Quantity') do |node|
          data.quantity = node.text&.to_i
        end
        xml.at('Items') do |node|
          children = node.children('ResponseHeadersPolicySummary')
          data.items = Parsers::ResponseHeadersPolicySummaryList.parse(children)
        end
        return data
      end
    end

    class ResponseHeadersPolicySummaryList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ResponseHeadersPolicySummary.parse(node)
        end
        data
      end
    end

    class ResponseHeadersPolicySummary
      def self.parse(xml)
        data = Types::ResponseHeadersPolicySummary.new
        xml.at('Type') do |node|
          data.type = (node.text || '')
        end
        xml.at('ResponseHeadersPolicy') do |node|
          data.response_headers_policy = Parsers::ResponseHeadersPolicy.parse(node)
        end
        return data
      end
    end

    # Operation Parser for ListStreamingDistributions
    class ListStreamingDistributions
      def self.parse(http_resp)
        data = Types::ListStreamingDistributionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.streaming_distribution_list = Parsers::StreamingDistributionList.parse(xml)
        data
      end
    end

    class StreamingDistributionList
      def self.parse(xml)
        data = Types::StreamingDistributionList.new
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        xml.at('NextMarker') do |node|
          data.next_marker = (node.text || '')
        end
        xml.at('MaxItems') do |node|
          data.max_items = node.text&.to_i
        end
        xml.at('IsTruncated') do |node|
          data.is_truncated = (node.text == 'true')
        end
        xml.at('Quantity') do |node|
          data.quantity = node.text&.to_i
        end
        xml.at('Items') do |node|
          children = node.children('StreamingDistributionSummary')
          data.items = Parsers::StreamingDistributionSummaryList.parse(children)
        end
        return data
      end
    end

    class StreamingDistributionSummaryList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::StreamingDistributionSummary.parse(node)
        end
        data
      end
    end

    class StreamingDistributionSummary
      def self.parse(xml)
        data = Types::StreamingDistributionSummary.new
        xml.at('Id') do |node|
          data.id = (node.text || '')
        end
        xml.at('ARN') do |node|
          data.arn = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('LastModifiedTime') do |node|
          data.last_modified_time = Time.parse(node.text) if node.text
        end
        xml.at('DomainName') do |node|
          data.domain_name = (node.text || '')
        end
        xml.at('S3Origin') do |node|
          data.s3_origin = Parsers::S3Origin.parse(node)
        end
        xml.at('Aliases') do |node|
          data.aliases = Parsers::Aliases.parse(node)
        end
        xml.at('TrustedSigners') do |node|
          data.trusted_signers = Parsers::TrustedSigners.parse(node)
        end
        xml.at('Comment') do |node|
          data.comment = (node.text || '')
        end
        xml.at('PriceClass') do |node|
          data.price_class = (node.text || '')
        end
        xml.at('Enabled') do |node|
          data.enabled = (node.text == 'true')
        end
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.tags = Parsers::Tags.parse(xml)
        data
      end
    end

    class Tags
      def self.parse(xml)
        data = Types::Tags.new
        xml.at('Items') do |node|
          children = node.children('Tag')
          data.items = Parsers::TagList.parse(children)
        end
        return data
      end
    end

    class TagList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Tag.parse(node)
        end
        data
      end
    end

    class Tag
      def self.parse(xml)
        data = Types::Tag.new
        xml.at('Key') do |node|
          data.key = (node.text || '')
        end
        xml.at('Value') do |node|
          data.value = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for PublishFunction
    class PublishFunction
      def self.parse(http_resp)
        data = Types::PublishFunctionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.function_summary = Parsers::FunctionSummary.parse(xml)
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for TestFunction
    class TestFunction
      def self.parse(http_resp)
        data = Types::TestFunctionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.test_result = Parsers::TestResult.parse(xml)
        data
      end
    end

    class TestResult
      def self.parse(xml)
        data = Types::TestResult.new
        xml.at('FunctionSummary') do |node|
          data.function_summary = Parsers::FunctionSummary.parse(node)
        end
        xml.at('ComputeUtilization') do |node|
          data.compute_utilization = (node.text || '')
        end
        xml.at('FunctionExecutionLogs') do |node|
          children = node.children('member')
          data.function_execution_logs = Parsers::FunctionExecutionLogList.parse(children)
        end
        xml.at('FunctionErrorMessage') do |node|
          data.function_error_message = (node.text || '')
        end
        xml.at('FunctionOutput') do |node|
          data.function_output = (node.text || '')
        end
        return data
      end
    end

    class FunctionExecutionLogList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Error Parser for TestFunctionFailed
    class TestFunctionFailed
      def self.parse(http_resp)
        data = Types::TestFunctionFailed.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for UpdateCachePolicy
    class UpdateCachePolicy
      def self.parse(http_resp)
        data = Types::UpdateCachePolicyOutput.new
        data.e_tag = http_resp.headers['ETag']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.cache_policy = Parsers::CachePolicy.parse(xml)
        data
      end
    end

    # Operation Parser for UpdateCloudFrontOriginAccessIdentity
    class UpdateCloudFrontOriginAccessIdentity
      def self.parse(http_resp)
        data = Types::UpdateCloudFrontOriginAccessIdentityOutput.new
        data.e_tag = http_resp.headers['ETag']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.cloud_front_origin_access_identity = Parsers::CloudFrontOriginAccessIdentity.parse(xml)
        data
      end
    end

    # Operation Parser for UpdateDistribution
    class UpdateDistribution
      def self.parse(http_resp)
        data = Types::UpdateDistributionOutput.new
        data.e_tag = http_resp.headers['ETag']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.distribution = Parsers::Distribution.parse(xml)
        data
      end
    end

    # Operation Parser for UpdateFieldLevelEncryptionConfig
    class UpdateFieldLevelEncryptionConfig
      def self.parse(http_resp)
        data = Types::UpdateFieldLevelEncryptionConfigOutput.new
        data.e_tag = http_resp.headers['ETag']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.field_level_encryption = Parsers::FieldLevelEncryption.parse(xml)
        data
      end
    end

    # Operation Parser for UpdateFieldLevelEncryptionProfile
    class UpdateFieldLevelEncryptionProfile
      def self.parse(http_resp)
        data = Types::UpdateFieldLevelEncryptionProfileOutput.new
        data.e_tag = http_resp.headers['ETag']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.field_level_encryption_profile = Parsers::FieldLevelEncryptionProfile.parse(xml)
        data
      end
    end

    # Operation Parser for UpdateFunction
    class UpdateFunction
      def self.parse(http_resp)
        data = Types::UpdateFunctionOutput.new
        data.e_tag = http_resp.headers['ETtag']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.function_summary = Parsers::FunctionSummary.parse(xml)
        data
      end
    end

    # Operation Parser for UpdateKeyGroup
    class UpdateKeyGroup
      def self.parse(http_resp)
        data = Types::UpdateKeyGroupOutput.new
        data.e_tag = http_resp.headers['ETag']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.key_group = Parsers::KeyGroup.parse(xml)
        data
      end
    end

    # Operation Parser for UpdateOriginRequestPolicy
    class UpdateOriginRequestPolicy
      def self.parse(http_resp)
        data = Types::UpdateOriginRequestPolicyOutput.new
        data.e_tag = http_resp.headers['ETag']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.origin_request_policy = Parsers::OriginRequestPolicy.parse(xml)
        data
      end
    end

    # Operation Parser for UpdatePublicKey
    class UpdatePublicKey
      def self.parse(http_resp)
        data = Types::UpdatePublicKeyOutput.new
        data.e_tag = http_resp.headers['ETag']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.public_key = Parsers::PublicKey.parse(xml)
        data
      end
    end

    # Error Parser for CannotChangeImmutablePublicKeyFields
    class CannotChangeImmutablePublicKeyFields
      def self.parse(http_resp)
        data = Types::CannotChangeImmutablePublicKeyFields.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for UpdateRealtimeLogConfig
    class UpdateRealtimeLogConfig
      def self.parse(http_resp)
        data = Types::UpdateRealtimeLogConfigOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('RealtimeLogConfig') do |node|
          data.realtime_log_config = Parsers::RealtimeLogConfig.parse(node)
        end
        data
      end
    end

    # Operation Parser for UpdateResponseHeadersPolicy
    class UpdateResponseHeadersPolicy
      def self.parse(http_resp)
        data = Types::UpdateResponseHeadersPolicyOutput.new
        data.e_tag = http_resp.headers['ETag']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.response_headers_policy = Parsers::ResponseHeadersPolicy.parse(xml)
        data
      end
    end

    # Operation Parser for UpdateStreamingDistribution
    class UpdateStreamingDistribution
      def self.parse(http_resp)
        data = Types::UpdateStreamingDistributionOutput.new
        data.e_tag = http_resp.headers['ETag']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.streaming_distribution = Parsers::StreamingDistribution.parse(xml)
        data
      end
    end
  end
end
