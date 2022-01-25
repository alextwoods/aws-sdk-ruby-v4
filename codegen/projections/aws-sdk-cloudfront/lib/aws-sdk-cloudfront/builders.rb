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
        http_req.http_method = 'todo'
        http_req.append_path(format(
            'todo',
            TargetDistributionId: Seahorse::HTTP.uri_escape(input[:target_distribution_id].to_s)
          )
        )
        http_req.append_query_param('Alias', input[:alias].to_s) unless input[:alias].nil?
      end
    end

    # Operation Builder for CreateCachePolicy
    class CreateCachePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # Structure Builder for CachePolicyConfig
    class CachePolicyConfig
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for ParametersInCacheKeyAndForwardedToOrigin
    class ParametersInCacheKeyAndForwardedToOrigin
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for CachePolicyQueryStringsConfig
    class CachePolicyQueryStringsConfig
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for QueryStringNames
    class QueryStringNames
      def self.build(input)
        data = {}
        data
      end
    end

    # List Builder for QueryStringNamesList
    class QueryStringNamesList
      def self.build(input)
        data = []
        input.each do |element|
        end
        data
      end
    end

    # Structure Builder for CachePolicyCookiesConfig
    class CachePolicyCookiesConfig
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for CookieNames
    class CookieNames
      def self.build(input)
        data = {}
        data
      end
    end

    # List Builder for CookieNameList
    class CookieNameList
      def self.build(input)
        data = []
        input.each do |element|
        end
        data
      end
    end

    # Structure Builder for CachePolicyHeadersConfig
    class CachePolicyHeadersConfig
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for Headers
    class Headers
      def self.build(input)
        data = {}
        data
      end
    end

    # List Builder for HeaderList
    class HeaderList
      def self.build(input)
        data = []
        input.each do |element|
        end
        data
      end
    end

    # Operation Builder for CreateCloudFrontOriginAccessIdentity
    class CreateCloudFrontOriginAccessIdentity
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # Structure Builder for CloudFrontOriginAccessIdentityConfig
    class CloudFrontOriginAccessIdentityConfig
      def self.build(input)
        data = {}
        data
      end
    end

    # Operation Builder for CreateDistribution
    class CreateDistribution
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # Structure Builder for DistributionConfig
    class DistributionConfig
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for Restrictions
    class Restrictions
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for GeoRestriction
    class GeoRestriction
      def self.build(input)
        data = {}
        data
      end
    end

    # List Builder for LocationList
    class LocationList
      def self.build(input)
        data = []
        input.each do |element|
        end
        data
      end
    end

    # Structure Builder for ViewerCertificate
    class ViewerCertificate
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for LoggingConfig
    class LoggingConfig
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for CustomErrorResponses
    class CustomErrorResponses
      def self.build(input)
        data = {}
        data
      end
    end

    # List Builder for CustomErrorResponseList
    class CustomErrorResponseList
      def self.build(input)
        data = []
        input.each do |element|
        end
        data
      end
    end

    # Structure Builder for CustomErrorResponse
    class CustomErrorResponse
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for CacheBehaviors
    class CacheBehaviors
      def self.build(input)
        data = {}
        data
      end
    end

    # List Builder for CacheBehaviorList
    class CacheBehaviorList
      def self.build(input)
        data = []
        input.each do |element|
        end
        data
      end
    end

    # Structure Builder for CacheBehavior
    class CacheBehavior
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for ForwardedValues
    class ForwardedValues
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for QueryStringCacheKeys
    class QueryStringCacheKeys
      def self.build(input)
        data = {}
        data
      end
    end

    # List Builder for QueryStringCacheKeysList
    class QueryStringCacheKeysList
      def self.build(input)
        data = []
        input.each do |element|
        end
        data
      end
    end

    # Structure Builder for CookiePreference
    class CookiePreference
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for FunctionAssociations
    class FunctionAssociations
      def self.build(input)
        data = {}
        data
      end
    end

    # List Builder for FunctionAssociationList
    class FunctionAssociationList
      def self.build(input)
        data = []
        input.each do |element|
        end
        data
      end
    end

    # Structure Builder for FunctionAssociation
    class FunctionAssociation
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for LambdaFunctionAssociations
    class LambdaFunctionAssociations
      def self.build(input)
        data = {}
        data
      end
    end

    # List Builder for LambdaFunctionAssociationList
    class LambdaFunctionAssociationList
      def self.build(input)
        data = []
        input.each do |element|
        end
        data
      end
    end

    # Structure Builder for LambdaFunctionAssociation
    class LambdaFunctionAssociation
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for AllowedMethods
    class AllowedMethods
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for CachedMethods
    class CachedMethods
      def self.build(input)
        data = {}
        data
      end
    end

    # List Builder for MethodsList
    class MethodsList
      def self.build(input)
        data = []
        input.each do |element|
        end
        data
      end
    end

    # Structure Builder for TrustedKeyGroups
    class TrustedKeyGroups
      def self.build(input)
        data = {}
        data
      end
    end

    # List Builder for TrustedKeyGroupIdList
    class TrustedKeyGroupIdList
      def self.build(input)
        data = []
        input.each do |element|
        end
        data
      end
    end

    # Structure Builder for TrustedSigners
    class TrustedSigners
      def self.build(input)
        data = {}
        data
      end
    end

    # List Builder for AwsAccountNumberList
    class AwsAccountNumberList
      def self.build(input)
        data = []
        input.each do |element|
        end
        data
      end
    end

    # Structure Builder for DefaultCacheBehavior
    class DefaultCacheBehavior
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for OriginGroups
    class OriginGroups
      def self.build(input)
        data = {}
        data
      end
    end

    # List Builder for OriginGroupList
    class OriginGroupList
      def self.build(input)
        data = []
        input.each do |element|
        end
        data
      end
    end

    # Structure Builder for OriginGroup
    class OriginGroup
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for OriginGroupMembers
    class OriginGroupMembers
      def self.build(input)
        data = {}
        data
      end
    end

    # List Builder for OriginGroupMemberList
    class OriginGroupMemberList
      def self.build(input)
        data = []
        input.each do |element|
        end
        data
      end
    end

    # Structure Builder for OriginGroupMember
    class OriginGroupMember
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for OriginGroupFailoverCriteria
    class OriginGroupFailoverCriteria
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for StatusCodes
    class StatusCodes
      def self.build(input)
        data = {}
        data
      end
    end

    # List Builder for StatusCodeList
    class StatusCodeList
      def self.build(input)
        data = []
        input.each do |element|
        end
        data
      end
    end

    # Structure Builder for Origins
    class Origins
      def self.build(input)
        data = {}
        data
      end
    end

    # List Builder for OriginList
    class OriginList
      def self.build(input)
        data = []
        input.each do |element|
        end
        data
      end
    end

    # Structure Builder for Origin
    class Origin
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for OriginShield
    class OriginShield
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for CustomOriginConfig
    class CustomOriginConfig
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for OriginSslProtocols
    class OriginSslProtocols
      def self.build(input)
        data = {}
        data
      end
    end

    # List Builder for SslProtocolsList
    class SslProtocolsList
      def self.build(input)
        data = []
        input.each do |element|
        end
        data
      end
    end

    # Structure Builder for S3OriginConfig
    class S3OriginConfig
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for CustomHeaders
    class CustomHeaders
      def self.build(input)
        data = {}
        data
      end
    end

    # List Builder for OriginCustomHeadersList
    class OriginCustomHeadersList
      def self.build(input)
        data = []
        input.each do |element|
        end
        data
      end
    end

    # Structure Builder for OriginCustomHeader
    class OriginCustomHeader
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for Aliases
    class Aliases
      def self.build(input)
        data = {}
        data
      end
    end

    # List Builder for AliasList
    class AliasList
      def self.build(input)
        data = []
        input.each do |element|
        end
        data
      end
    end

    # Operation Builder for CreateDistributionWithTags
    class CreateDistributionWithTags
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # Structure Builder for DistributionConfigWithTags
    class DistributionConfigWithTags
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for Tags
    class Tags
      def self.build(input)
        data = {}
        data
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input)
        data = []
        input.each do |element|
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data
      end
    end

    # Operation Builder for CreateFieldLevelEncryptionConfig
    class CreateFieldLevelEncryptionConfig
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # Structure Builder for FieldLevelEncryptionConfig
    class FieldLevelEncryptionConfig
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for ContentTypeProfileConfig
    class ContentTypeProfileConfig
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for ContentTypeProfiles
    class ContentTypeProfiles
      def self.build(input)
        data = {}
        data
      end
    end

    # List Builder for ContentTypeProfileList
    class ContentTypeProfileList
      def self.build(input)
        data = []
        input.each do |element|
        end
        data
      end
    end

    # Structure Builder for ContentTypeProfile
    class ContentTypeProfile
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for QueryArgProfileConfig
    class QueryArgProfileConfig
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for QueryArgProfiles
    class QueryArgProfiles
      def self.build(input)
        data = {}
        data
      end
    end

    # List Builder for QueryArgProfileList
    class QueryArgProfileList
      def self.build(input)
        data = []
        input.each do |element|
        end
        data
      end
    end

    # Structure Builder for QueryArgProfile
    class QueryArgProfile
      def self.build(input)
        data = {}
        data
      end
    end

    # Operation Builder for CreateFieldLevelEncryptionProfile
    class CreateFieldLevelEncryptionProfile
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # Structure Builder for FieldLevelEncryptionProfileConfig
    class FieldLevelEncryptionProfileConfig
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for EncryptionEntities
    class EncryptionEntities
      def self.build(input)
        data = {}
        data
      end
    end

    # List Builder for EncryptionEntityList
    class EncryptionEntityList
      def self.build(input)
        data = []
        input.each do |element|
        end
        data
      end
    end

    # Structure Builder for EncryptionEntity
    class EncryptionEntity
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for FieldPatterns
    class FieldPatterns
      def self.build(input)
        data = {}
        data
      end
    end

    # List Builder for FieldPatternList
    class FieldPatternList
      def self.build(input)
        data = []
        input.each do |element|
        end
        data
      end
    end

    # Operation Builder for CreateFunction
    class CreateFunction
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # Structure Builder for FunctionConfig
    class FunctionConfig
      def self.build(input)
        data = {}
        data
      end
    end

    # Operation Builder for CreateInvalidation
    class CreateInvalidation
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path(format(
            'todo',
            DistributionId: Seahorse::HTTP.uri_escape(input[:distribution_id].to_s)
          )
        )
      end
    end

    # Structure Builder for InvalidationBatch
    class InvalidationBatch
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for Paths
    class Paths
      def self.build(input)
        data = {}
        data
      end
    end

    # List Builder for PathList
    class PathList
      def self.build(input)
        data = []
        input.each do |element|
        end
        data
      end
    end

    # Operation Builder for CreateKeyGroup
    class CreateKeyGroup
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # Structure Builder for KeyGroupConfig
    class KeyGroupConfig
      def self.build(input)
        data = {}
        data
      end
    end

    # List Builder for PublicKeyIdList
    class PublicKeyIdList
      def self.build(input)
        data = []
        input.each do |element|
        end
        data
      end
    end

    # Operation Builder for CreateMonitoringSubscription
    class CreateMonitoringSubscription
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path(format(
            'todo',
            DistributionId: Seahorse::HTTP.uri_escape(input[:distribution_id].to_s)
          )
        )
      end
    end

    # Structure Builder for MonitoringSubscription
    class MonitoringSubscription
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for RealtimeMetricsSubscriptionConfig
    class RealtimeMetricsSubscriptionConfig
      def self.build(input)
        data = {}
        data
      end
    end

    # Operation Builder for CreateOriginRequestPolicy
    class CreateOriginRequestPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # Structure Builder for OriginRequestPolicyConfig
    class OriginRequestPolicyConfig
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for OriginRequestPolicyQueryStringsConfig
    class OriginRequestPolicyQueryStringsConfig
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for OriginRequestPolicyCookiesConfig
    class OriginRequestPolicyCookiesConfig
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for OriginRequestPolicyHeadersConfig
    class OriginRequestPolicyHeadersConfig
      def self.build(input)
        data = {}
        data
      end
    end

    # Operation Builder for CreatePublicKey
    class CreatePublicKey
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # Structure Builder for PublicKeyConfig
    class PublicKeyConfig
      def self.build(input)
        data = {}
        data
      end
    end

    # Operation Builder for CreateRealtimeLogConfig
    class CreateRealtimeLogConfig
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # List Builder for FieldList
    class FieldList
      def self.build(input)
        data = []
        input.each do |element|
        end
        data
      end
    end

    # List Builder for EndPointList
    class EndPointList
      def self.build(input)
        data = []
        input.each do |element|
        end
        data
      end
    end

    # Structure Builder for EndPoint
    class EndPoint
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for KinesisStreamConfig
    class KinesisStreamConfig
      def self.build(input)
        data = {}
        data
      end
    end

    # Operation Builder for CreateResponseHeadersPolicy
    class CreateResponseHeadersPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # Structure Builder for ResponseHeadersPolicyConfig
    class ResponseHeadersPolicyConfig
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for ResponseHeadersPolicyCustomHeadersConfig
    class ResponseHeadersPolicyCustomHeadersConfig
      def self.build(input)
        data = {}
        data
      end
    end

    # List Builder for ResponseHeadersPolicyCustomHeaderList
    class ResponseHeadersPolicyCustomHeaderList
      def self.build(input)
        data = []
        input.each do |element|
        end
        data
      end
    end

    # Structure Builder for ResponseHeadersPolicyCustomHeader
    class ResponseHeadersPolicyCustomHeader
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for ResponseHeadersPolicySecurityHeadersConfig
    class ResponseHeadersPolicySecurityHeadersConfig
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for ResponseHeadersPolicyStrictTransportSecurity
    class ResponseHeadersPolicyStrictTransportSecurity
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for ResponseHeadersPolicyContentTypeOptions
    class ResponseHeadersPolicyContentTypeOptions
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for ResponseHeadersPolicyContentSecurityPolicy
    class ResponseHeadersPolicyContentSecurityPolicy
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for ResponseHeadersPolicyReferrerPolicy
    class ResponseHeadersPolicyReferrerPolicy
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for ResponseHeadersPolicyFrameOptions
    class ResponseHeadersPolicyFrameOptions
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for ResponseHeadersPolicyXSSProtection
    class ResponseHeadersPolicyXSSProtection
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for ResponseHeadersPolicyCorsConfig
    class ResponseHeadersPolicyCorsConfig
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for ResponseHeadersPolicyAccessControlExposeHeaders
    class ResponseHeadersPolicyAccessControlExposeHeaders
      def self.build(input)
        data = {}
        data
      end
    end

    # List Builder for AccessControlExposeHeadersList
    class AccessControlExposeHeadersList
      def self.build(input)
        data = []
        input.each do |element|
        end
        data
      end
    end

    # Structure Builder for ResponseHeadersPolicyAccessControlAllowMethods
    class ResponseHeadersPolicyAccessControlAllowMethods
      def self.build(input)
        data = {}
        data
      end
    end

    # List Builder for AccessControlAllowMethodsList
    class AccessControlAllowMethodsList
      def self.build(input)
        data = []
        input.each do |element|
        end
        data
      end
    end

    # Structure Builder for ResponseHeadersPolicyAccessControlAllowHeaders
    class ResponseHeadersPolicyAccessControlAllowHeaders
      def self.build(input)
        data = {}
        data
      end
    end

    # List Builder for AccessControlAllowHeadersList
    class AccessControlAllowHeadersList
      def self.build(input)
        data = []
        input.each do |element|
        end
        data
      end
    end

    # Structure Builder for ResponseHeadersPolicyAccessControlAllowOrigins
    class ResponseHeadersPolicyAccessControlAllowOrigins
      def self.build(input)
        data = {}
        data
      end
    end

    # List Builder for AccessControlAllowOriginsList
    class AccessControlAllowOriginsList
      def self.build(input)
        data = []
        input.each do |element|
        end
        data
      end
    end

    # Operation Builder for CreateStreamingDistribution
    class CreateStreamingDistribution
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # Structure Builder for StreamingDistributionConfig
    class StreamingDistributionConfig
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for StreamingLoggingConfig
    class StreamingLoggingConfig
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for S3Origin
    class S3Origin
      def self.build(input)
        data = {}
        data
      end
    end

    # Operation Builder for CreateStreamingDistributionWithTags
    class CreateStreamingDistributionWithTags
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # Structure Builder for StreamingDistributionConfigWithTags
    class StreamingDistributionConfigWithTags
      def self.build(input)
        data = {}
        data
      end
    end

    # Operation Builder for DeleteCachePolicy
    class DeleteCachePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path(format(
            'todo',
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
          )
        )
        http_req.headers['If-Match'] = input[:if_match] unless input[:if_match].nil? || input[:if_match].empty?
      end
    end

    # Operation Builder for DeleteCloudFrontOriginAccessIdentity
    class DeleteCloudFrontOriginAccessIdentity
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path(format(
            'todo',
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
          )
        )
        http_req.headers['If-Match'] = input[:if_match] unless input[:if_match].nil? || input[:if_match].empty?
      end
    end

    # Operation Builder for DeleteDistribution
    class DeleteDistribution
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path(format(
            'todo',
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
          )
        )
        http_req.headers['If-Match'] = input[:if_match] unless input[:if_match].nil? || input[:if_match].empty?
      end
    end

    # Operation Builder for DeleteFieldLevelEncryptionConfig
    class DeleteFieldLevelEncryptionConfig
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path(format(
            'todo',
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
          )
        )
        http_req.headers['If-Match'] = input[:if_match] unless input[:if_match].nil? || input[:if_match].empty?
      end
    end

    # Operation Builder for DeleteFieldLevelEncryptionProfile
    class DeleteFieldLevelEncryptionProfile
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path(format(
            'todo',
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
          )
        )
        http_req.headers['If-Match'] = input[:if_match] unless input[:if_match].nil? || input[:if_match].empty?
      end
    end

    # Operation Builder for DeleteFunction
    class DeleteFunction
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path(format(
            'todo',
            Name: Seahorse::HTTP.uri_escape(input[:member_name].to_s)
          )
        )
        http_req.headers['If-Match'] = input[:if_match] unless input[:if_match].nil? || input[:if_match].empty?
      end
    end

    # Operation Builder for DeleteKeyGroup
    class DeleteKeyGroup
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path(format(
            'todo',
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
          )
        )
        http_req.headers['If-Match'] = input[:if_match] unless input[:if_match].nil? || input[:if_match].empty?
      end
    end

    # Operation Builder for DeleteMonitoringSubscription
    class DeleteMonitoringSubscription
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path(format(
            'todo',
            DistributionId: Seahorse::HTTP.uri_escape(input[:distribution_id].to_s)
          )
        )
      end
    end

    # Operation Builder for DeleteOriginRequestPolicy
    class DeleteOriginRequestPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path(format(
            'todo',
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
          )
        )
        http_req.headers['If-Match'] = input[:if_match] unless input[:if_match].nil? || input[:if_match].empty?
      end
    end

    # Operation Builder for DeletePublicKey
    class DeletePublicKey
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path(format(
            'todo',
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
          )
        )
        http_req.headers['If-Match'] = input[:if_match] unless input[:if_match].nil? || input[:if_match].empty?
      end
    end

    # Operation Builder for DeleteRealtimeLogConfig
    class DeleteRealtimeLogConfig
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # Operation Builder for DeleteResponseHeadersPolicy
    class DeleteResponseHeadersPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path(format(
            'todo',
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
          )
        )
        http_req.headers['If-Match'] = input[:if_match] unless input[:if_match].nil? || input[:if_match].empty?
      end
    end

    # Operation Builder for DeleteStreamingDistribution
    class DeleteStreamingDistribution
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path(format(
            'todo',
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
          )
        )
        http_req.headers['If-Match'] = input[:if_match] unless input[:if_match].nil? || input[:if_match].empty?
      end
    end

    # Operation Builder for DescribeFunction
    class DescribeFunction
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path(format(
            'todo',
            Name: Seahorse::HTTP.uri_escape(input[:member_name].to_s)
          )
        )
        http_req.append_query_param('Stage', input[:stage].to_s) unless input[:stage].nil?
      end
    end

    # Operation Builder for GetCachePolicy
    class GetCachePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path(format(
            'todo',
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
          )
        )
      end
    end

    # Operation Builder for GetCachePolicyConfig
    class GetCachePolicyConfig
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path(format(
            'todo',
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
          )
        )
      end
    end

    # Operation Builder for GetCloudFrontOriginAccessIdentity
    class GetCloudFrontOriginAccessIdentity
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path(format(
            'todo',
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
          )
        )
      end
    end

    # Operation Builder for GetCloudFrontOriginAccessIdentityConfig
    class GetCloudFrontOriginAccessIdentityConfig
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path(format(
            'todo',
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
          )
        )
      end
    end

    # Operation Builder for GetDistribution
    class GetDistribution
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path(format(
            'todo',
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
          )
        )
      end
    end

    # Operation Builder for GetDistributionConfig
    class GetDistributionConfig
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path(format(
            'todo',
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
          )
        )
      end
    end

    # Operation Builder for GetFieldLevelEncryption
    class GetFieldLevelEncryption
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path(format(
            'todo',
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
          )
        )
      end
    end

    # Operation Builder for GetFieldLevelEncryptionConfig
    class GetFieldLevelEncryptionConfig
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path(format(
            'todo',
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
          )
        )
      end
    end

    # Operation Builder for GetFieldLevelEncryptionProfile
    class GetFieldLevelEncryptionProfile
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path(format(
            'todo',
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
          )
        )
      end
    end

    # Operation Builder for GetFieldLevelEncryptionProfileConfig
    class GetFieldLevelEncryptionProfileConfig
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path(format(
            'todo',
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
          )
        )
      end
    end

    # Operation Builder for GetFunction
    class GetFunction
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path(format(
            'todo',
            Name: Seahorse::HTTP.uri_escape(input[:member_name].to_s)
          )
        )
        http_req.append_query_param('Stage', input[:stage].to_s) unless input[:stage].nil?
      end
    end

    # Operation Builder for GetInvalidation
    class GetInvalidation
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path(format(
            'todo',
            DistributionId: Seahorse::HTTP.uri_escape(input[:distribution_id].to_s),
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
          )
        )
      end
    end

    # Operation Builder for GetKeyGroup
    class GetKeyGroup
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path(format(
            'todo',
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
          )
        )
      end
    end

    # Operation Builder for GetKeyGroupConfig
    class GetKeyGroupConfig
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path(format(
            'todo',
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
          )
        )
      end
    end

    # Operation Builder for GetMonitoringSubscription
    class GetMonitoringSubscription
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path(format(
            'todo',
            DistributionId: Seahorse::HTTP.uri_escape(input[:distribution_id].to_s)
          )
        )
      end
    end

    # Operation Builder for GetOriginRequestPolicy
    class GetOriginRequestPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path(format(
            'todo',
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
          )
        )
      end
    end

    # Operation Builder for GetOriginRequestPolicyConfig
    class GetOriginRequestPolicyConfig
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path(format(
            'todo',
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
          )
        )
      end
    end

    # Operation Builder for GetPublicKey
    class GetPublicKey
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path(format(
            'todo',
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
          )
        )
      end
    end

    # Operation Builder for GetPublicKeyConfig
    class GetPublicKeyConfig
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path(format(
            'todo',
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
          )
        )
      end
    end

    # Operation Builder for GetRealtimeLogConfig
    class GetRealtimeLogConfig
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # Operation Builder for GetResponseHeadersPolicy
    class GetResponseHeadersPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path(format(
            'todo',
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
          )
        )
      end
    end

    # Operation Builder for GetResponseHeadersPolicyConfig
    class GetResponseHeadersPolicyConfig
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path(format(
            'todo',
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
          )
        )
      end
    end

    # Operation Builder for GetStreamingDistribution
    class GetStreamingDistribution
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path(format(
            'todo',
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
          )
        )
      end
    end

    # Operation Builder for GetStreamingDistributionConfig
    class GetStreamingDistributionConfig
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path(format(
            'todo',
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
          )
        )
      end
    end

    # Operation Builder for ListCachePolicies
    class ListCachePolicies
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
        http_req.append_query_param('Type', input[:type].to_s) unless input[:type].nil?
        http_req.append_query_param('Marker', input[:marker].to_s) unless input[:marker].nil?
        http_req.append_query_param('MaxItems', input[:max_items].to_s) unless input[:max_items].nil?
      end
    end

    # Operation Builder for ListCloudFrontOriginAccessIdentities
    class ListCloudFrontOriginAccessIdentities
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
        http_req.append_query_param('Marker', input[:marker].to_s) unless input[:marker].nil?
        http_req.append_query_param('MaxItems', input[:max_items].to_s) unless input[:max_items].nil?
      end
    end

    # Operation Builder for ListConflictingAliases
    class ListConflictingAliases
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
        http_req.append_query_param('DistributionId', input[:distribution_id].to_s) unless input[:distribution_id].nil?
        http_req.append_query_param('Alias', input[:alias].to_s) unless input[:alias].nil?
        http_req.append_query_param('Marker', input[:marker].to_s) unless input[:marker].nil?
        http_req.append_query_param('MaxItems', input[:max_items].to_s) unless input[:max_items].nil?
      end
    end

    # Operation Builder for ListDistributions
    class ListDistributions
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
        http_req.append_query_param('Marker', input[:marker].to_s) unless input[:marker].nil?
        http_req.append_query_param('MaxItems', input[:max_items].to_s) unless input[:max_items].nil?
      end
    end

    # Operation Builder for ListDistributionsByCachePolicyId
    class ListDistributionsByCachePolicyId
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path(format(
            'todo',
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
        http_req.http_method = 'todo'
        http_req.append_path(format(
            'todo',
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
        http_req.http_method = 'todo'
        http_req.append_path(format(
            'todo',
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
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # Operation Builder for ListDistributionsByResponseHeadersPolicyId
    class ListDistributionsByResponseHeadersPolicyId
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path(format(
            'todo',
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
        http_req.http_method = 'todo'
        http_req.append_path(format(
            'todo',
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
        http_req.http_method = 'todo'
        http_req.append_path('todo')
        http_req.append_query_param('Marker', input[:marker].to_s) unless input[:marker].nil?
        http_req.append_query_param('MaxItems', input[:max_items].to_s) unless input[:max_items].nil?
      end
    end

    # Operation Builder for ListFieldLevelEncryptionProfiles
    class ListFieldLevelEncryptionProfiles
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
        http_req.append_query_param('Marker', input[:marker].to_s) unless input[:marker].nil?
        http_req.append_query_param('MaxItems', input[:max_items].to_s) unless input[:max_items].nil?
      end
    end

    # Operation Builder for ListFunctions
    class ListFunctions
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
        http_req.append_query_param('Marker', input[:marker].to_s) unless input[:marker].nil?
        http_req.append_query_param('MaxItems', input[:max_items].to_s) unless input[:max_items].nil?
        http_req.append_query_param('Stage', input[:stage].to_s) unless input[:stage].nil?
      end
    end

    # Operation Builder for ListInvalidations
    class ListInvalidations
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path(format(
            'todo',
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
        http_req.http_method = 'todo'
        http_req.append_path('todo')
        http_req.append_query_param('Marker', input[:marker].to_s) unless input[:marker].nil?
        http_req.append_query_param('MaxItems', input[:max_items].to_s) unless input[:max_items].nil?
      end
    end

    # Operation Builder for ListOriginRequestPolicies
    class ListOriginRequestPolicies
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
        http_req.append_query_param('Type', input[:type].to_s) unless input[:type].nil?
        http_req.append_query_param('Marker', input[:marker].to_s) unless input[:marker].nil?
        http_req.append_query_param('MaxItems', input[:max_items].to_s) unless input[:max_items].nil?
      end
    end

    # Operation Builder for ListPublicKeys
    class ListPublicKeys
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
        http_req.append_query_param('Marker', input[:marker].to_s) unless input[:marker].nil?
        http_req.append_query_param('MaxItems', input[:max_items].to_s) unless input[:max_items].nil?
      end
    end

    # Operation Builder for ListRealtimeLogConfigs
    class ListRealtimeLogConfigs
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
        http_req.append_query_param('MaxItems', input[:max_items].to_s) unless input[:max_items].nil?
        http_req.append_query_param('Marker', input[:marker].to_s) unless input[:marker].nil?
      end
    end

    # Operation Builder for ListResponseHeadersPolicies
    class ListResponseHeadersPolicies
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
        http_req.append_query_param('Type', input[:type].to_s) unless input[:type].nil?
        http_req.append_query_param('Marker', input[:marker].to_s) unless input[:marker].nil?
        http_req.append_query_param('MaxItems', input[:max_items].to_s) unless input[:max_items].nil?
      end
    end

    # Operation Builder for ListStreamingDistributions
    class ListStreamingDistributions
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
        http_req.append_query_param('Marker', input[:marker].to_s) unless input[:marker].nil?
        http_req.append_query_param('MaxItems', input[:max_items].to_s) unless input[:max_items].nil?
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
        http_req.append_query_param('Resource', input[:resource].to_s) unless input[:resource].nil?
      end
    end

    # Operation Builder for PublishFunction
    class PublishFunction
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path(format(
            'todo',
            Name: Seahorse::HTTP.uri_escape(input[:member_name].to_s)
          )
        )
        http_req.headers['If-Match'] = input[:if_match] unless input[:if_match].nil? || input[:if_match].empty?
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
        http_req.append_query_param('Resource', input[:resource].to_s) unless input[:resource].nil?
      end
    end

    # Operation Builder for TestFunction
    class TestFunction
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path(format(
            'todo',
            Name: Seahorse::HTTP.uri_escape(input[:member_name].to_s)
          )
        )
        http_req.headers['If-Match'] = input[:if_match] unless input[:if_match].nil? || input[:if_match].empty?
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
        http_req.append_query_param('Resource', input[:resource].to_s) unless input[:resource].nil?
      end
    end

    # Structure Builder for TagKeys
    class TagKeys
      def self.build(input)
        data = {}
        data
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
        end
        data
      end
    end

    # Operation Builder for UpdateCachePolicy
    class UpdateCachePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path(format(
            'todo',
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
          )
        )
        http_req.headers['If-Match'] = input[:if_match] unless input[:if_match].nil? || input[:if_match].empty?
      end
    end

    # Operation Builder for UpdateCloudFrontOriginAccessIdentity
    class UpdateCloudFrontOriginAccessIdentity
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path(format(
            'todo',
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
          )
        )
        http_req.headers['If-Match'] = input[:if_match] unless input[:if_match].nil? || input[:if_match].empty?
      end
    end

    # Operation Builder for UpdateDistribution
    class UpdateDistribution
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path(format(
            'todo',
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
          )
        )
        http_req.headers['If-Match'] = input[:if_match] unless input[:if_match].nil? || input[:if_match].empty?
      end
    end

    # Operation Builder for UpdateFieldLevelEncryptionConfig
    class UpdateFieldLevelEncryptionConfig
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path(format(
            'todo',
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
          )
        )
        http_req.headers['If-Match'] = input[:if_match] unless input[:if_match].nil? || input[:if_match].empty?
      end
    end

    # Operation Builder for UpdateFieldLevelEncryptionProfile
    class UpdateFieldLevelEncryptionProfile
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path(format(
            'todo',
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
          )
        )
        http_req.headers['If-Match'] = input[:if_match] unless input[:if_match].nil? || input[:if_match].empty?
      end
    end

    # Operation Builder for UpdateFunction
    class UpdateFunction
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path(format(
            'todo',
            Name: Seahorse::HTTP.uri_escape(input[:member_name].to_s)
          )
        )
        http_req.headers['If-Match'] = input[:if_match] unless input[:if_match].nil? || input[:if_match].empty?
      end
    end

    # Operation Builder for UpdateKeyGroup
    class UpdateKeyGroup
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path(format(
            'todo',
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
          )
        )
        http_req.headers['If-Match'] = input[:if_match] unless input[:if_match].nil? || input[:if_match].empty?
      end
    end

    # Operation Builder for UpdateOriginRequestPolicy
    class UpdateOriginRequestPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path(format(
            'todo',
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
          )
        )
        http_req.headers['If-Match'] = input[:if_match] unless input[:if_match].nil? || input[:if_match].empty?
      end
    end

    # Operation Builder for UpdatePublicKey
    class UpdatePublicKey
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path(format(
            'todo',
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
          )
        )
        http_req.headers['If-Match'] = input[:if_match] unless input[:if_match].nil? || input[:if_match].empty?
      end
    end

    # Operation Builder for UpdateRealtimeLogConfig
    class UpdateRealtimeLogConfig
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path('todo')
      end
    end

    # Operation Builder for UpdateResponseHeadersPolicy
    class UpdateResponseHeadersPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path(format(
            'todo',
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
          )
        )
        http_req.headers['If-Match'] = input[:if_match] unless input[:if_match].nil? || input[:if_match].empty?
      end
    end

    # Operation Builder for UpdateStreamingDistribution
    class UpdateStreamingDistribution
      def self.build(http_req, input:)
        http_req.http_method = 'todo'
        http_req.append_path(format(
            'todo',
            Id: Seahorse::HTTP.uri_escape(input[:id].to_s)
          )
        )
        http_req.headers['If-Match'] = input[:if_match] unless input[:if_match].nil? || input[:if_match].empty?
      end
    end
  end
end
