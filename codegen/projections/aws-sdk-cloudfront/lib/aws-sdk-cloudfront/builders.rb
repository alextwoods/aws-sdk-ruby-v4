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
    end

    # Operation Builder for CreateCachePolicy
    class CreateCachePolicy
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
    end

    # Structure Builder for CloudFrontOriginAccessIdentityConfig
    class CloudFrontOriginAccessIdentityConfig
    end

    # Operation Builder for CreateDistribution
    class CreateDistribution
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
    end

    # Structure Builder for FunctionConfig
    class FunctionConfig
    end

    # Operation Builder for CreateInvalidation
    class CreateInvalidation
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
    end

    # Structure Builder for KeyGroupConfig
    class KeyGroupConfig
    end

    # List Builder for PublicKeyIdList
    class PublicKeyIdList
    end

    # Operation Builder for CreateMonitoringSubscription
    class CreateMonitoringSubscription
    end

    # Structure Builder for MonitoringSubscription
    class MonitoringSubscription
    end

    # Structure Builder for RealtimeMetricsSubscriptionConfig
    class RealtimeMetricsSubscriptionConfig
    end

    # Operation Builder for CreateOriginRequestPolicy
    class CreateOriginRequestPolicy
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
    end

    # Structure Builder for PublicKeyConfig
    class PublicKeyConfig
    end

    # Operation Builder for CreateRealtimeLogConfig
    class CreateRealtimeLogConfig
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
    end

    # Structure Builder for StreamingDistributionConfigWithTags
    class StreamingDistributionConfigWithTags
    end

    # Operation Builder for DeleteCachePolicy
    class DeleteCachePolicy
    end

    # Operation Builder for DeleteCloudFrontOriginAccessIdentity
    class DeleteCloudFrontOriginAccessIdentity
    end

    # Operation Builder for DeleteDistribution
    class DeleteDistribution
    end

    # Operation Builder for DeleteFieldLevelEncryptionConfig
    class DeleteFieldLevelEncryptionConfig
    end

    # Operation Builder for DeleteFieldLevelEncryptionProfile
    class DeleteFieldLevelEncryptionProfile
    end

    # Operation Builder for DeleteFunction
    class DeleteFunction
    end

    # Operation Builder for DeleteKeyGroup
    class DeleteKeyGroup
    end

    # Operation Builder for DeleteMonitoringSubscription
    class DeleteMonitoringSubscription
    end

    # Operation Builder for DeleteOriginRequestPolicy
    class DeleteOriginRequestPolicy
    end

    # Operation Builder for DeletePublicKey
    class DeletePublicKey
    end

    # Operation Builder for DeleteRealtimeLogConfig
    class DeleteRealtimeLogConfig
    end

    # Operation Builder for DeleteResponseHeadersPolicy
    class DeleteResponseHeadersPolicy
    end

    # Operation Builder for DeleteStreamingDistribution
    class DeleteStreamingDistribution
    end

    # Operation Builder for DescribeFunction
    class DescribeFunction
    end

    # Operation Builder for GetCachePolicy
    class GetCachePolicy
    end

    # Operation Builder for GetCachePolicyConfig
    class GetCachePolicyConfig
    end

    # Operation Builder for GetCloudFrontOriginAccessIdentity
    class GetCloudFrontOriginAccessIdentity
    end

    # Operation Builder for GetCloudFrontOriginAccessIdentityConfig
    class GetCloudFrontOriginAccessIdentityConfig
    end

    # Operation Builder for GetDistribution
    class GetDistribution
    end

    # Operation Builder for GetDistributionConfig
    class GetDistributionConfig
    end

    # Operation Builder for GetFieldLevelEncryption
    class GetFieldLevelEncryption
    end

    # Operation Builder for GetFieldLevelEncryptionConfig
    class GetFieldLevelEncryptionConfig
    end

    # Operation Builder for GetFieldLevelEncryptionProfile
    class GetFieldLevelEncryptionProfile
    end

    # Operation Builder for GetFieldLevelEncryptionProfileConfig
    class GetFieldLevelEncryptionProfileConfig
    end

    # Operation Builder for GetFunction
    class GetFunction
    end

    # Operation Builder for GetInvalidation
    class GetInvalidation
    end

    # Operation Builder for GetKeyGroup
    class GetKeyGroup
    end

    # Operation Builder for GetKeyGroupConfig
    class GetKeyGroupConfig
    end

    # Operation Builder for GetMonitoringSubscription
    class GetMonitoringSubscription
    end

    # Operation Builder for GetOriginRequestPolicy
    class GetOriginRequestPolicy
    end

    # Operation Builder for GetOriginRequestPolicyConfig
    class GetOriginRequestPolicyConfig
    end

    # Operation Builder for GetPublicKey
    class GetPublicKey
    end

    # Operation Builder for GetPublicKeyConfig
    class GetPublicKeyConfig
    end

    # Operation Builder for GetRealtimeLogConfig
    class GetRealtimeLogConfig
    end

    # Operation Builder for GetResponseHeadersPolicy
    class GetResponseHeadersPolicy
    end

    # Operation Builder for GetResponseHeadersPolicyConfig
    class GetResponseHeadersPolicyConfig
    end

    # Operation Builder for GetStreamingDistribution
    class GetStreamingDistribution
    end

    # Operation Builder for GetStreamingDistributionConfig
    class GetStreamingDistributionConfig
    end

    # Operation Builder for ListCachePolicies
    class ListCachePolicies
    end

    # Operation Builder for ListCloudFrontOriginAccessIdentities
    class ListCloudFrontOriginAccessIdentities
    end

    # Operation Builder for ListConflictingAliases
    class ListConflictingAliases
    end

    # Operation Builder for ListDistributions
    class ListDistributions
    end

    # Operation Builder for ListDistributionsByCachePolicyId
    class ListDistributionsByCachePolicyId
    end

    # Operation Builder for ListDistributionsByKeyGroup
    class ListDistributionsByKeyGroup
    end

    # Operation Builder for ListDistributionsByOriginRequestPolicyId
    class ListDistributionsByOriginRequestPolicyId
    end

    # Operation Builder for ListDistributionsByRealtimeLogConfig
    class ListDistributionsByRealtimeLogConfig
    end

    # Operation Builder for ListDistributionsByResponseHeadersPolicyId
    class ListDistributionsByResponseHeadersPolicyId
    end

    # Operation Builder for ListDistributionsByWebACLId
    class ListDistributionsByWebACLId
    end

    # Operation Builder for ListFieldLevelEncryptionConfigs
    class ListFieldLevelEncryptionConfigs
    end

    # Operation Builder for ListFieldLevelEncryptionProfiles
    class ListFieldLevelEncryptionProfiles
    end

    # Operation Builder for ListFunctions
    class ListFunctions
    end

    # Operation Builder for ListInvalidations
    class ListInvalidations
    end

    # Operation Builder for ListKeyGroups
    class ListKeyGroups
    end

    # Operation Builder for ListOriginRequestPolicies
    class ListOriginRequestPolicies
    end

    # Operation Builder for ListPublicKeys
    class ListPublicKeys
    end

    # Operation Builder for ListRealtimeLogConfigs
    class ListRealtimeLogConfigs
    end

    # Operation Builder for ListResponseHeadersPolicies
    class ListResponseHeadersPolicies
    end

    # Operation Builder for ListStreamingDistributions
    class ListStreamingDistributions
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
    end

    # Operation Builder for PublishFunction
    class PublishFunction
    end

    # Operation Builder for TagResource
    class TagResource
    end

    # Operation Builder for TestFunction
    class TestFunction
    end

    # Operation Builder for UntagResource
    class UntagResource
    end

    # Structure Builder for TagKeys
    class TagKeys
    end

    # List Builder for TagKeyList
    class TagKeyList
    end

    # Operation Builder for UpdateCachePolicy
    class UpdateCachePolicy
    end

    # Operation Builder for UpdateCloudFrontOriginAccessIdentity
    class UpdateCloudFrontOriginAccessIdentity
    end

    # Operation Builder for UpdateDistribution
    class UpdateDistribution
    end

    # Operation Builder for UpdateFieldLevelEncryptionConfig
    class UpdateFieldLevelEncryptionConfig
    end

    # Operation Builder for UpdateFieldLevelEncryptionProfile
    class UpdateFieldLevelEncryptionProfile
    end

    # Operation Builder for UpdateFunction
    class UpdateFunction
    end

    # Operation Builder for UpdateKeyGroup
    class UpdateKeyGroup
    end

    # Operation Builder for UpdateOriginRequestPolicy
    class UpdateOriginRequestPolicy
    end

    # Operation Builder for UpdatePublicKey
    class UpdatePublicKey
    end

    # Operation Builder for UpdateRealtimeLogConfig
    class UpdateRealtimeLogConfig
    end

    # Operation Builder for UpdateResponseHeadersPolicy
    class UpdateResponseHeadersPolicy
    end

    # Operation Builder for UpdateStreamingDistribution
    class UpdateStreamingDistribution
    end
  end
end
