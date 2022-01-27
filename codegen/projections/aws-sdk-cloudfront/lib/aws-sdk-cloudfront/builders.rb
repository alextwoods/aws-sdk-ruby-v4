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
            TargetDistributionId: Seahorse::HTTP.uri_escape(input[:target_distribution_id].to_s)
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
    end

    # Structure Builder for ParametersInCacheKeyAndForwardedToOrigin
    class ParametersInCacheKeyAndForwardedToOrigin
    end

    # Structure Builder for CachePolicyQueryStringsConfig
    class CachePolicyQueryStringsConfig
    end

    # Structure Builder for QueryStringNames
    class QueryStringNames
    end

    # List Builder for QueryStringNamesList
    class QueryStringNamesList
    end

    # Structure Builder for CachePolicyCookiesConfig
    class CachePolicyCookiesConfig
    end

    # Structure Builder for CookieNames
    class CookieNames
    end

    # List Builder for CookieNameList
    class CookieNameList
    end

    # Structure Builder for CachePolicyHeadersConfig
    class CachePolicyHeadersConfig
    end

    # Structure Builder for Headers
    class Headers
    end

    # List Builder for HeaderList
    class HeaderList
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
    end

    # Structure Builder for Restrictions
    class Restrictions
    end

    # Structure Builder for GeoRestriction
    class GeoRestriction
    end

    # List Builder for LocationList
    class LocationList
    end

    # Structure Builder for ViewerCertificate
    class ViewerCertificate
    end

    # Structure Builder for LoggingConfig
    class LoggingConfig
    end

    # Structure Builder for CustomErrorResponses
    class CustomErrorResponses
    end

    # List Builder for CustomErrorResponseList
    class CustomErrorResponseList
    end

    # Structure Builder for CustomErrorResponse
    class CustomErrorResponse
    end

    # Structure Builder for CacheBehaviors
    class CacheBehaviors
    end

    # List Builder for CacheBehaviorList
    class CacheBehaviorList
    end

    # Structure Builder for CacheBehavior
    class CacheBehavior
    end

    # Structure Builder for ForwardedValues
    class ForwardedValues
    end

    # Structure Builder for QueryStringCacheKeys
    class QueryStringCacheKeys
    end

    # List Builder for QueryStringCacheKeysList
    class QueryStringCacheKeysList
    end

    # Structure Builder for CookiePreference
    class CookiePreference
    end

    # Structure Builder for FunctionAssociations
    class FunctionAssociations
    end

    # List Builder for FunctionAssociationList
    class FunctionAssociationList
    end

    # Structure Builder for FunctionAssociation
    class FunctionAssociation
    end

    # Structure Builder for LambdaFunctionAssociations
    class LambdaFunctionAssociations
    end

    # List Builder for LambdaFunctionAssociationList
    class LambdaFunctionAssociationList
    end

    # Structure Builder for LambdaFunctionAssociation
    class LambdaFunctionAssociation
    end

    # Structure Builder for AllowedMethods
    class AllowedMethods
    end

    # Structure Builder for CachedMethods
    class CachedMethods
    end

    # List Builder for MethodsList
    class MethodsList
    end

    # Structure Builder for TrustedKeyGroups
    class TrustedKeyGroups
    end

    # List Builder for TrustedKeyGroupIdList
    class TrustedKeyGroupIdList
    end

    # Structure Builder for TrustedSigners
    class TrustedSigners
    end

    # List Builder for AwsAccountNumberList
    class AwsAccountNumberList
    end

    # Structure Builder for DefaultCacheBehavior
    class DefaultCacheBehavior
    end

    # Structure Builder for OriginGroups
    class OriginGroups
    end

    # List Builder for OriginGroupList
    class OriginGroupList
    end

    # Structure Builder for OriginGroup
    class OriginGroup
    end

    # Structure Builder for OriginGroupMembers
    class OriginGroupMembers
    end

    # List Builder for OriginGroupMemberList
    class OriginGroupMemberList
    end

    # Structure Builder for OriginGroupMember
    class OriginGroupMember
    end

    # Structure Builder for OriginGroupFailoverCriteria
    class OriginGroupFailoverCriteria
    end

    # Structure Builder for StatusCodes
    class StatusCodes
    end

    # List Builder for StatusCodeList
    class StatusCodeList
    end

    # Structure Builder for Origins
    class Origins
    end

    # List Builder for OriginList
    class OriginList
    end

    # Structure Builder for Origin
    class Origin
    end

    # Structure Builder for OriginShield
    class OriginShield
    end

    # Structure Builder for CustomOriginConfig
    class CustomOriginConfig
    end

    # Structure Builder for OriginSslProtocols
    class OriginSslProtocols
    end

    # List Builder for SslProtocolsList
    class SslProtocolsList
    end

    # Structure Builder for S3OriginConfig
    class S3OriginConfig
    end

    # Structure Builder for CustomHeaders
    class CustomHeaders
    end

    # List Builder for OriginCustomHeadersList
    class OriginCustomHeadersList
    end

    # Structure Builder for OriginCustomHeader
    class OriginCustomHeader
    end

    # Structure Builder for Aliases
    class Aliases
    end

    # List Builder for AliasList
    class AliasList
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
    end

    # Structure Builder for Tags
    class Tags
    end

    # List Builder for TagList
    class TagList
    end

    # Structure Builder for Tag
    class Tag
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
    end

    # Structure Builder for ContentTypeProfileConfig
    class ContentTypeProfileConfig
    end

    # Structure Builder for ContentTypeProfiles
    class ContentTypeProfiles
    end

    # List Builder for ContentTypeProfileList
    class ContentTypeProfileList
    end

    # Structure Builder for ContentTypeProfile
    class ContentTypeProfile
    end

    # Structure Builder for QueryArgProfileConfig
    class QueryArgProfileConfig
    end

    # Structure Builder for QueryArgProfiles
    class QueryArgProfiles
    end

    # List Builder for QueryArgProfileList
    class QueryArgProfileList
    end

    # Structure Builder for QueryArgProfile
    class QueryArgProfile
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
    end

    # Structure Builder for EncryptionEntities
    class EncryptionEntities
    end

    # List Builder for EncryptionEntityList
    class EncryptionEntityList
    end

    # Structure Builder for EncryptionEntity
    class EncryptionEntity
    end

    # Structure Builder for FieldPatterns
    class FieldPatterns
    end

    # List Builder for FieldPatternList
    class FieldPatternList
    end

    # Operation Builder for CreateFunction
    class CreateFunction
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/2020-05-31/function')
      end
    end

    # Structure Builder for FunctionConfig
    class FunctionConfig
    end

    # Operation Builder for CreateInvalidation
    class CreateInvalidation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path(format(
            '/2020-05-31/distribution/%<DistributionId>s/invalidation',
            DistributionId: Seahorse::HTTP.uri_escape(input[:distribution_id].to_s)
          )
        )
      end
    end

    # Structure Builder for InvalidationBatch
    class InvalidationBatch
    end

    # Structure Builder for Paths
    class Paths
    end

    # List Builder for PathList
    class PathList
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
    end

    # List Builder for PublicKeyIdList
    class PublicKeyIdList
    end

    # Operation Builder for CreateMonitoringSubscription
    class CreateMonitoringSubscription
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path(format(
            '/2020-05-31/distributions/%<DistributionId>s/monitoring-subscription',
            DistributionId: Seahorse::HTTP.uri_escape(input[:distribution_id].to_s)
          )
        )
      end
    end

    # Structure Builder for MonitoringSubscription
    class MonitoringSubscription
    end

    # Structure Builder for RealtimeMetricsSubscriptionConfig
    class RealtimeMetricsSubscriptionConfig
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
    end

    # Structure Builder for OriginRequestPolicyQueryStringsConfig
    class OriginRequestPolicyQueryStringsConfig
    end

    # Structure Builder for OriginRequestPolicyCookiesConfig
    class OriginRequestPolicyCookiesConfig
    end

    # Structure Builder for OriginRequestPolicyHeadersConfig
    class OriginRequestPolicyHeadersConfig
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
    end

    # Operation Builder for CreateRealtimeLogConfig
    class CreateRealtimeLogConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/2020-05-31/realtime-log-config')
      end
    end

    # List Builder for FieldList
    class FieldList
    end

    # List Builder for EndPointList
    class EndPointList
    end

    # Structure Builder for EndPoint
    class EndPoint
    end

    # Structure Builder for KinesisStreamConfig
    class KinesisStreamConfig
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
    end

    # Structure Builder for ResponseHeadersPolicyCustomHeadersConfig
    class ResponseHeadersPolicyCustomHeadersConfig
    end

    # List Builder for ResponseHeadersPolicyCustomHeaderList
    class ResponseHeadersPolicyCustomHeaderList
    end

    # Structure Builder for ResponseHeadersPolicyCustomHeader
    class ResponseHeadersPolicyCustomHeader
    end

    # Structure Builder for ResponseHeadersPolicySecurityHeadersConfig
    class ResponseHeadersPolicySecurityHeadersConfig
    end

    # Structure Builder for ResponseHeadersPolicyStrictTransportSecurity
    class ResponseHeadersPolicyStrictTransportSecurity
    end

    # Structure Builder for ResponseHeadersPolicyContentTypeOptions
    class ResponseHeadersPolicyContentTypeOptions
    end

    # Structure Builder for ResponseHeadersPolicyContentSecurityPolicy
    class ResponseHeadersPolicyContentSecurityPolicy
    end

    # Structure Builder for ResponseHeadersPolicyReferrerPolicy
    class ResponseHeadersPolicyReferrerPolicy
    end

    # Structure Builder for ResponseHeadersPolicyFrameOptions
    class ResponseHeadersPolicyFrameOptions
    end

    # Structure Builder for ResponseHeadersPolicyXSSProtection
    class ResponseHeadersPolicyXSSProtection
    end

    # Structure Builder for ResponseHeadersPolicyCorsConfig
    class ResponseHeadersPolicyCorsConfig
    end

    # Structure Builder for ResponseHeadersPolicyAccessControlExposeHeaders
    class ResponseHeadersPolicyAccessControlExposeHeaders
    end

    # List Builder for AccessControlExposeHeadersList
    class AccessControlExposeHeadersList
    end

    # Structure Builder for ResponseHeadersPolicyAccessControlAllowMethods
    class ResponseHeadersPolicyAccessControlAllowMethods
    end

    # List Builder for AccessControlAllowMethodsList
    class AccessControlAllowMethodsList
    end

    # Structure Builder for ResponseHeadersPolicyAccessControlAllowHeaders
    class ResponseHeadersPolicyAccessControlAllowHeaders
    end

    # List Builder for AccessControlAllowHeadersList
    class AccessControlAllowHeadersList
    end

    # Structure Builder for ResponseHeadersPolicyAccessControlAllowOrigins
    class ResponseHeadersPolicyAccessControlAllowOrigins
    end

    # List Builder for AccessControlAllowOriginsList
    class AccessControlAllowOriginsList
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
    end

    # Structure Builder for StreamingLoggingConfig
    class StreamingLoggingConfig
    end

    # Structure Builder for S3Origin
    class S3Origin
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
    end

    # Operation Builder for DeleteCachePolicy
    class DeleteCachePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        http_req.append_path(format(
            '/2020-05-31/cache-policy/%<Id>s',
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
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
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
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
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
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
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
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
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
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
            Name: Seahorse::HTTP.uri_escape(input[:member_name].to_s)
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
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
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
            DistributionId: Seahorse::HTTP.uri_escape(input[:distribution_id].to_s)
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
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
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
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
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
      end
    end

    # Operation Builder for DeleteResponseHeadersPolicy
    class DeleteResponseHeadersPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        http_req.append_path(format(
            '/2020-05-31/response-headers-policy/%<Id>s',
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
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
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
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
            Name: Seahorse::HTTP.uri_escape(input[:member_name].to_s)
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
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
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
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
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
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
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
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
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
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
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
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
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
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
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
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
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
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
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
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
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
            Name: Seahorse::HTTP.uri_escape(input[:member_name].to_s)
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
            DistributionId: Seahorse::HTTP.uri_escape(input[:distribution_id].to_s),
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
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
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
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
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
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
            DistributionId: Seahorse::HTTP.uri_escape(input[:distribution_id].to_s)
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
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
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
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
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
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
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
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
          )
        )
      end
    end

    # Operation Builder for GetRealtimeLogConfig
    class GetRealtimeLogConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/2020-05-31/get-realtime-log-config')
      end
    end

    # Operation Builder for GetResponseHeadersPolicy
    class GetResponseHeadersPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path(format(
            '/2020-05-31/response-headers-policy/%<Id>s',
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
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
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
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
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
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
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
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
            CachePolicyId: Seahorse::HTTP.uri_escape(input[:cache_policy_id].to_s)
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
            KeyGroupId: Seahorse::HTTP.uri_escape(input[:key_group_id].to_s)
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
            OriginRequestPolicyId: Seahorse::HTTP.uri_escape(input[:origin_request_policy_id].to_s)
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
      end
    end

    # Operation Builder for ListDistributionsByResponseHeadersPolicyId
    class ListDistributionsByResponseHeadersPolicyId
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path(format(
            '/2020-05-31/distributionsByResponseHeadersPolicyId/%<ResponseHeadersPolicyId>s',
            ResponseHeadersPolicyId: Seahorse::HTTP.uri_escape(input[:response_headers_policy_id].to_s)
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
            WebACLId: Seahorse::HTTP.uri_escape(input[:web_acl_id].to_s)
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
            DistributionId: Seahorse::HTTP.uri_escape(input[:distribution_id].to_s)
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
            Name: Seahorse::HTTP.uri_escape(input[:member_name].to_s)
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
            Name: Seahorse::HTTP.uri_escape(input[:member_name].to_s)
          )
        )
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
    end

    # List Builder for TagKeyList
    class TagKeyList
    end

    # Operation Builder for UpdateCachePolicy
    class UpdateCachePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path(format(
            '/2020-05-31/cache-policy/%<Id>s',
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
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
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
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
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
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
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
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
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
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
            Name: Seahorse::HTTP.uri_escape(input[:member_name].to_s)
          )
        )
        http_req.headers['If-Match'] = input[:if_match] unless input[:if_match].nil? || input[:if_match].empty?
      end
    end

    # Operation Builder for UpdateKeyGroup
    class UpdateKeyGroup
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path(format(
            '/2020-05-31/key-group/%<Id>s',
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
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
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
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
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
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
      end
    end

    # Operation Builder for UpdateResponseHeadersPolicy
    class UpdateResponseHeadersPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path(format(
            '/2020-05-31/response-headers-policy/%<Id>s',
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
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
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
          )
        )
        http_req.headers['If-Match'] = input[:if_match] unless input[:if_match].nil? || input[:if_match].empty?
      end
    end
  end
end
