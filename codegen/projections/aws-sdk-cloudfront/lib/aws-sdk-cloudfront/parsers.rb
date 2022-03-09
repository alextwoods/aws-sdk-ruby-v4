# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::Cloudfront
  module Parsers

    # Operation Parser for AssociateAlias
    class AssociateAlias
    end

    # Error Parser for AccessDenied
    class AccessDenied
    end

    # Error Parser for IllegalUpdate
    class IllegalUpdate
    end

    # Error Parser for NoSuchDistribution
    class NoSuchDistribution
    end

    # Error Parser for InvalidArgument
    class InvalidArgument
    end

    # Error Parser for TooManyDistributionCNAMEs
    class TooManyDistributionCNAMEs
    end

    # Operation Parser for CreateCachePolicy
    class CreateCachePolicy
    end

    class CachePolicy
    end

    class CachePolicyConfig
    end

    class ParametersInCacheKeyAndForwardedToOrigin
    end

    class CachePolicyQueryStringsConfig
    end

    class QueryStringNames
    end

    class QueryStringNamesList
    end

    class CachePolicyCookiesConfig
    end

    class CookieNames
    end

    class CookieNameList
    end

    class CachePolicyHeadersConfig
    end

    class Headers
    end

    class HeaderList
    end

    # Error Parser for TooManyCookiesInCachePolicy
    class TooManyCookiesInCachePolicy
    end

    # Error Parser for TooManyHeadersInCachePolicy
    class TooManyHeadersInCachePolicy
    end

    # Error Parser for InconsistentQuantities
    class InconsistentQuantities
    end

    # Error Parser for TooManyCachePolicies
    class TooManyCachePolicies
    end

    # Error Parser for TooManyQueryStringsInCachePolicy
    class TooManyQueryStringsInCachePolicy
    end

    # Error Parser for CachePolicyAlreadyExists
    class CachePolicyAlreadyExists
    end

    # Operation Parser for CreateCloudFrontOriginAccessIdentity
    class CreateCloudFrontOriginAccessIdentity
    end

    class CloudFrontOriginAccessIdentity
    end

    class CloudFrontOriginAccessIdentityConfig
    end

    # Error Parser for MissingBody
    class MissingBody
    end

    # Error Parser for CloudFrontOriginAccessIdentityAlreadyExists
    class CloudFrontOriginAccessIdentityAlreadyExists
    end

    # Error Parser for TooManyCloudFrontOriginAccessIdentities
    class TooManyCloudFrontOriginAccessIdentities
    end

    # Operation Parser for CreateDistribution
    class CreateDistribution
    end

    class Distribution
    end

    class AliasICPRecordals
    end

    class AliasICPRecordal
    end

    class DistributionConfig
    end

    class Restrictions
    end

    class GeoRestriction
    end

    class LocationList
    end

    class ViewerCertificate
    end

    class LoggingConfig
    end

    class CustomErrorResponses
    end

    class CustomErrorResponseList
    end

    class CustomErrorResponse
    end

    class CacheBehaviors
    end

    class CacheBehaviorList
    end

    class CacheBehavior
    end

    class ForwardedValues
    end

    class QueryStringCacheKeys
    end

    class QueryStringCacheKeysList
    end

    class CookiePreference
    end

    class FunctionAssociations
    end

    class FunctionAssociationList
    end

    class FunctionAssociation
    end

    class LambdaFunctionAssociations
    end

    class LambdaFunctionAssociationList
    end

    class LambdaFunctionAssociation
    end

    class AllowedMethods
    end

    class CachedMethods
    end

    class MethodsList
    end

    class TrustedKeyGroups
    end

    class TrustedKeyGroupIdList
    end

    class TrustedSigners
    end

    class AwsAccountNumberList
    end

    class DefaultCacheBehavior
    end

    class OriginGroups
    end

    class OriginGroupList
    end

    class OriginGroup
    end

    class OriginGroupMembers
    end

    class OriginGroupMemberList
    end

    class OriginGroupMember
    end

    class OriginGroupFailoverCriteria
    end

    class StatusCodes
    end

    class StatusCodeList
    end

    class Origins
    end

    class OriginList
    end

    class Origin
    end

    class OriginShield
    end

    class CustomOriginConfig
    end

    class OriginSslProtocols
    end

    class SslProtocolsList
    end

    class S3OriginConfig
    end

    class CustomHeaders
    end

    class OriginCustomHeadersList
    end

    class OriginCustomHeader
    end

    class Aliases
    end

    class AliasList
    end

    class ActiveTrustedKeyGroups
    end

    class KGKeyPairIdsList
    end

    class KGKeyPairIds
    end

    class KeyPairIds
    end

    class KeyPairIdList
    end

    class ActiveTrustedSigners
    end

    class SignerList
    end

    class Signer
    end

    # Error Parser for TooManyDistributionsAssociatedToOriginRequestPolicy
    class TooManyDistributionsAssociatedToOriginRequestPolicy
    end

    # Error Parser for InvalidRelativePath
    class InvalidRelativePath
    end

    # Error Parser for TooManyQueryStringParameters
    class TooManyQueryStringParameters
    end

    # Error Parser for TooManyLambdaFunctionAssociations
    class TooManyLambdaFunctionAssociations
    end

    # Error Parser for InvalidWebACLId
    class InvalidWebACLId
    end

    # Error Parser for InvalidTTLOrder
    class InvalidTTLOrder
    end

    # Error Parser for TooManyDistributions
    class TooManyDistributions
    end

    # Error Parser for TooManyDistributionsWithFunctionAssociations
    class TooManyDistributionsWithFunctionAssociations
    end

    # Error Parser for TooManyHeadersInForwardedValues
    class TooManyHeadersInForwardedValues
    end

    # Error Parser for TooManyDistributionsAssociatedToFieldLevelEncryptionConfig
    class TooManyDistributionsAssociatedToFieldLevelEncryptionConfig
    end

    # Error Parser for InvalidOriginAccessIdentity
    class InvalidOriginAccessIdentity
    end

    # Error Parser for DistributionAlreadyExists
    class DistributionAlreadyExists
    end

    # Error Parser for RealtimeLogConfigOwnerMismatch
    class RealtimeLogConfigOwnerMismatch
    end

    # Error Parser for TooManyCacheBehaviors
    class TooManyCacheBehaviors
    end

    # Error Parser for NoSuchOrigin
    class NoSuchOrigin
    end

    # Error Parser for TooManyDistributionsAssociatedToCachePolicy
    class TooManyDistributionsAssociatedToCachePolicy
    end

    # Error Parser for InvalidViewerCertificate
    class InvalidViewerCertificate
    end

    # Error Parser for InvalidFunctionAssociation
    class InvalidFunctionAssociation
    end

    # Error Parser for NoSuchResponseHeadersPolicy
    class NoSuchResponseHeadersPolicy
    end

    # Error Parser for InvalidDefaultRootObject
    class InvalidDefaultRootObject
    end

    # Error Parser for NoSuchCachePolicy
    class NoSuchCachePolicy
    end

    # Error Parser for InvalidProtocolSettings
    class InvalidProtocolSettings
    end

    # Error Parser for InvalidMinimumProtocolVersion
    class InvalidMinimumProtocolVersion
    end

    # Error Parser for InvalidLambdaFunctionAssociation
    class InvalidLambdaFunctionAssociation
    end

    # Error Parser for InvalidResponseCode
    class InvalidResponseCode
    end

    # Error Parser for NoSuchOriginRequestPolicy
    class NoSuchOriginRequestPolicy
    end

    # Error Parser for NoSuchFieldLevelEncryptionConfig
    class NoSuchFieldLevelEncryptionConfig
    end

    # Error Parser for InvalidHeadersForS3Origin
    class InvalidHeadersForS3Origin
    end

    # Error Parser for TrustedSignerDoesNotExist
    class TrustedSignerDoesNotExist
    end

    # Error Parser for TooManyCookieNamesInWhiteList
    class TooManyCookieNamesInWhiteList
    end

    # Error Parser for TooManyDistributionsAssociatedToKeyGroup
    class TooManyDistributionsAssociatedToKeyGroup
    end

    # Error Parser for TooManyOrigins
    class TooManyOrigins
    end

    # Error Parser for TooManyTrustedSigners
    class TooManyTrustedSigners
    end

    # Error Parser for TooManyDistributionsWithSingleFunctionARN
    class TooManyDistributionsWithSingleFunctionARN
    end

    # Error Parser for InvalidGeoRestrictionParameter
    class InvalidGeoRestrictionParameter
    end

    # Error Parser for NoSuchRealtimeLogConfig
    class NoSuchRealtimeLogConfig
    end

    # Error Parser for InvalidOriginReadTimeout
    class InvalidOriginReadTimeout
    end

    # Error Parser for TooManyCertificates
    class TooManyCertificates
    end

    # Error Parser for InvalidLocationCode
    class InvalidLocationCode
    end

    # Error Parser for InvalidQueryStringParameters
    class InvalidQueryStringParameters
    end

    # Error Parser for CNAMEAlreadyExists
    class CNAMEAlreadyExists
    end

    # Error Parser for IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior
    class IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior
    end

    # Error Parser for InvalidErrorCode
    class InvalidErrorCode
    end

    # Error Parser for TooManyKeyGroupsAssociatedToDistribution
    class TooManyKeyGroupsAssociatedToDistribution
    end

    # Error Parser for TooManyDistributionsWithLambdaAssociations
    class TooManyDistributionsWithLambdaAssociations
    end

    # Error Parser for TooManyOriginCustomHeaders
    class TooManyOriginCustomHeaders
    end

    # Error Parser for TrustedKeyGroupDoesNotExist
    class TrustedKeyGroupDoesNotExist
    end

    # Error Parser for InvalidOriginKeepaliveTimeout
    class InvalidOriginKeepaliveTimeout
    end

    # Error Parser for InvalidForwardCookies
    class InvalidForwardCookies
    end

    # Error Parser for InvalidOrigin
    class InvalidOrigin
    end

    # Error Parser for TooManyDistributionsAssociatedToResponseHeadersPolicy
    class TooManyDistributionsAssociatedToResponseHeadersPolicy
    end

    # Error Parser for TooManyOriginGroupsPerDistribution
    class TooManyOriginGroupsPerDistribution
    end

    # Error Parser for InvalidRequiredProtocol
    class InvalidRequiredProtocol
    end

    # Error Parser for TooManyFunctionAssociations
    class TooManyFunctionAssociations
    end

    # Operation Parser for CreateDistributionWithTags
    class CreateDistributionWithTags
    end

    # Error Parser for InvalidTagging
    class InvalidTagging
    end

    # Operation Parser for CreateFieldLevelEncryptionConfig
    class CreateFieldLevelEncryptionConfig
    end

    class FieldLevelEncryption
    end

    class FieldLevelEncryptionConfig
    end

    class ContentTypeProfileConfig
    end

    class ContentTypeProfiles
    end

    class ContentTypeProfileList
    end

    class ContentTypeProfile
    end

    class QueryArgProfileConfig
    end

    class QueryArgProfiles
    end

    class QueryArgProfileList
    end

    class QueryArgProfile
    end

    # Error Parser for QueryArgProfileEmpty
    class QueryArgProfileEmpty
    end

    # Error Parser for FieldLevelEncryptionConfigAlreadyExists
    class FieldLevelEncryptionConfigAlreadyExists
    end

    # Error Parser for TooManyFieldLevelEncryptionContentTypeProfiles
    class TooManyFieldLevelEncryptionContentTypeProfiles
    end

    # Error Parser for NoSuchFieldLevelEncryptionProfile
    class NoSuchFieldLevelEncryptionProfile
    end

    # Error Parser for TooManyFieldLevelEncryptionConfigs
    class TooManyFieldLevelEncryptionConfigs
    end

    # Error Parser for TooManyFieldLevelEncryptionQueryArgProfiles
    class TooManyFieldLevelEncryptionQueryArgProfiles
    end

    # Operation Parser for CreateFieldLevelEncryptionProfile
    class CreateFieldLevelEncryptionProfile
    end

    class FieldLevelEncryptionProfile
    end

    class FieldLevelEncryptionProfileConfig
    end

    class EncryptionEntities
    end

    class EncryptionEntityList
    end

    class EncryptionEntity
    end

    class FieldPatterns
    end

    class FieldPatternList
    end

    # Error Parser for FieldLevelEncryptionProfileAlreadyExists
    class FieldLevelEncryptionProfileAlreadyExists
    end

    # Error Parser for TooManyFieldLevelEncryptionFieldPatterns
    class TooManyFieldLevelEncryptionFieldPatterns
    end

    # Error Parser for NoSuchPublicKey
    class NoSuchPublicKey
    end

    # Error Parser for TooManyFieldLevelEncryptionEncryptionEntities
    class TooManyFieldLevelEncryptionEncryptionEntities
    end

    # Error Parser for TooManyFieldLevelEncryptionProfiles
    class TooManyFieldLevelEncryptionProfiles
    end

    # Error Parser for FieldLevelEncryptionProfileSizeExceeded
    class FieldLevelEncryptionProfileSizeExceeded
    end

    # Operation Parser for CreateFunction
    class CreateFunction
    end

    class FunctionSummary
    end

    class FunctionMetadata
    end

    class FunctionConfig
    end

    # Error Parser for UnsupportedOperation
    class UnsupportedOperation
    end

    # Error Parser for TooManyFunctions
    class TooManyFunctions
    end

    # Error Parser for FunctionAlreadyExists
    class FunctionAlreadyExists
    end

    # Error Parser for FunctionSizeLimitExceeded
    class FunctionSizeLimitExceeded
    end

    # Operation Parser for CreateInvalidation
    class CreateInvalidation
    end

    class Invalidation
    end

    class InvalidationBatch
    end

    class Paths
    end

    class PathList
    end

    # Error Parser for TooManyInvalidationsInProgress
    class TooManyInvalidationsInProgress
    end

    # Error Parser for BatchTooLarge
    class BatchTooLarge
    end

    # Operation Parser for CreateKeyGroup
    class CreateKeyGroup
    end

    class KeyGroup
    end

    class KeyGroupConfig
    end

    class PublicKeyIdList
    end

    # Error Parser for KeyGroupAlreadyExists
    class KeyGroupAlreadyExists
    end

    # Error Parser for TooManyKeyGroups
    class TooManyKeyGroups
    end

    # Error Parser for TooManyPublicKeysInKeyGroup
    class TooManyPublicKeysInKeyGroup
    end

    # Operation Parser for CreateMonitoringSubscription
    class CreateMonitoringSubscription
    end

    class MonitoringSubscription
    end

    class RealtimeMetricsSubscriptionConfig
    end

    # Operation Parser for CreateOriginRequestPolicy
    class CreateOriginRequestPolicy
    end

    class OriginRequestPolicy
    end

    class OriginRequestPolicyConfig
    end

    class OriginRequestPolicyQueryStringsConfig
    end

    class OriginRequestPolicyCookiesConfig
    end

    class OriginRequestPolicyHeadersConfig
    end

    # Error Parser for TooManyHeadersInOriginRequestPolicy
    class TooManyHeadersInOriginRequestPolicy
    end

    # Error Parser for TooManyOriginRequestPolicies
    class TooManyOriginRequestPolicies
    end

    # Error Parser for TooManyQueryStringsInOriginRequestPolicy
    class TooManyQueryStringsInOriginRequestPolicy
    end

    # Error Parser for OriginRequestPolicyAlreadyExists
    class OriginRequestPolicyAlreadyExists
    end

    # Error Parser for TooManyCookiesInOriginRequestPolicy
    class TooManyCookiesInOriginRequestPolicy
    end

    # Operation Parser for CreatePublicKey
    class CreatePublicKey
    end

    class PublicKey
    end

    class PublicKeyConfig
    end

    # Error Parser for TooManyPublicKeys
    class TooManyPublicKeys
    end

    # Error Parser for PublicKeyAlreadyExists
    class PublicKeyAlreadyExists
    end

    # Operation Parser for CreateRealtimeLogConfig
    class CreateRealtimeLogConfig
    end

    class RealtimeLogConfig
    end

    class FieldList
    end

    class EndPointList
    end

    class EndPoint
    end

    class KinesisStreamConfig
    end

    # Error Parser for TooManyRealtimeLogConfigs
    class TooManyRealtimeLogConfigs
    end

    # Error Parser for RealtimeLogConfigAlreadyExists
    class RealtimeLogConfigAlreadyExists
    end

    # Operation Parser for CreateResponseHeadersPolicy
    class CreateResponseHeadersPolicy
    end

    class ResponseHeadersPolicy
    end

    class ResponseHeadersPolicyConfig
    end

    class ResponseHeadersPolicyCustomHeadersConfig
    end

    class ResponseHeadersPolicyCustomHeaderList
    end

    class ResponseHeadersPolicyCustomHeader
    end

    class ResponseHeadersPolicySecurityHeadersConfig
    end

    class ResponseHeadersPolicyStrictTransportSecurity
    end

    class ResponseHeadersPolicyContentTypeOptions
    end

    class ResponseHeadersPolicyContentSecurityPolicy
    end

    class ResponseHeadersPolicyReferrerPolicy
    end

    class ResponseHeadersPolicyFrameOptions
    end

    class ResponseHeadersPolicyXSSProtection
    end

    class ResponseHeadersPolicyCorsConfig
    end

    class ResponseHeadersPolicyAccessControlExposeHeaders
    end

    class AccessControlExposeHeadersList
    end

    class ResponseHeadersPolicyAccessControlAllowMethods
    end

    class AccessControlAllowMethodsList
    end

    class ResponseHeadersPolicyAccessControlAllowHeaders
    end

    class AccessControlAllowHeadersList
    end

    class ResponseHeadersPolicyAccessControlAllowOrigins
    end

    class AccessControlAllowOriginsList
    end

    # Error Parser for TooManyCustomHeadersInResponseHeadersPolicy
    class TooManyCustomHeadersInResponseHeadersPolicy
    end

    # Error Parser for TooManyResponseHeadersPolicies
    class TooManyResponseHeadersPolicies
    end

    # Error Parser for ResponseHeadersPolicyAlreadyExists
    class ResponseHeadersPolicyAlreadyExists
    end

    # Operation Parser for CreateStreamingDistribution
    class CreateStreamingDistribution
    end

    class StreamingDistribution
    end

    class StreamingDistributionConfig
    end

    class StreamingLoggingConfig
    end

    class S3Origin
    end

    # Error Parser for TooManyStreamingDistributions
    class TooManyStreamingDistributions
    end

    # Error Parser for StreamingDistributionAlreadyExists
    class StreamingDistributionAlreadyExists
    end

    # Error Parser for TooManyStreamingDistributionCNAMEs
    class TooManyStreamingDistributionCNAMEs
    end

    # Operation Parser for CreateStreamingDistributionWithTags
    class CreateStreamingDistributionWithTags
    end

    # Operation Parser for DeleteCachePolicy
    class DeleteCachePolicy
    end

    # Error Parser for PreconditionFailed
    class PreconditionFailed
    end

    # Error Parser for InvalidIfMatchVersion
    class InvalidIfMatchVersion
    end

    # Error Parser for IllegalDelete
    class IllegalDelete
    end

    # Error Parser for CachePolicyInUse
    class CachePolicyInUse
    end

    # Operation Parser for DeleteCloudFrontOriginAccessIdentity
    class DeleteCloudFrontOriginAccessIdentity
    end

    # Error Parser for CloudFrontOriginAccessIdentityInUse
    class CloudFrontOriginAccessIdentityInUse
    end

    # Error Parser for NoSuchCloudFrontOriginAccessIdentity
    class NoSuchCloudFrontOriginAccessIdentity
    end

    # Operation Parser for DeleteDistribution
    class DeleteDistribution
    end

    # Error Parser for DistributionNotDisabled
    class DistributionNotDisabled
    end

    # Operation Parser for DeleteFieldLevelEncryptionConfig
    class DeleteFieldLevelEncryptionConfig
    end

    # Error Parser for FieldLevelEncryptionConfigInUse
    class FieldLevelEncryptionConfigInUse
    end

    # Operation Parser for DeleteFieldLevelEncryptionProfile
    class DeleteFieldLevelEncryptionProfile
    end

    # Error Parser for FieldLevelEncryptionProfileInUse
    class FieldLevelEncryptionProfileInUse
    end

    # Operation Parser for DeleteFunction
    class DeleteFunction
    end

    # Error Parser for NoSuchFunctionExists
    class NoSuchFunctionExists
    end

    # Error Parser for FunctionInUse
    class FunctionInUse
    end

    # Operation Parser for DeleteKeyGroup
    class DeleteKeyGroup
    end

    # Error Parser for NoSuchResource
    class NoSuchResource
    end

    # Error Parser for ResourceInUse
    class ResourceInUse
    end

    # Operation Parser for DeleteMonitoringSubscription
    class DeleteMonitoringSubscription
    end

    # Operation Parser for DeleteOriginRequestPolicy
    class DeleteOriginRequestPolicy
    end

    # Error Parser for OriginRequestPolicyInUse
    class OriginRequestPolicyInUse
    end

    # Operation Parser for DeletePublicKey
    class DeletePublicKey
    end

    # Error Parser for PublicKeyInUse
    class PublicKeyInUse
    end

    # Operation Parser for DeleteRealtimeLogConfig
    class DeleteRealtimeLogConfig
    end

    # Error Parser for RealtimeLogConfigInUse
    class RealtimeLogConfigInUse
    end

    # Operation Parser for DeleteResponseHeadersPolicy
    class DeleteResponseHeadersPolicy
    end

    # Error Parser for ResponseHeadersPolicyInUse
    class ResponseHeadersPolicyInUse
    end

    # Operation Parser for DeleteStreamingDistribution
    class DeleteStreamingDistribution
    end

    # Error Parser for StreamingDistributionNotDisabled
    class StreamingDistributionNotDisabled
    end

    # Error Parser for NoSuchStreamingDistribution
    class NoSuchStreamingDistribution
    end

    # Operation Parser for DescribeFunction
    class DescribeFunction
    end

    # Operation Parser for GetCachePolicy
    class GetCachePolicy
    end

    # Operation Parser for GetCachePolicyConfig
    class GetCachePolicyConfig
    end

    # Operation Parser for GetCloudFrontOriginAccessIdentity
    class GetCloudFrontOriginAccessIdentity
    end

    # Operation Parser for GetCloudFrontOriginAccessIdentityConfig
    class GetCloudFrontOriginAccessIdentityConfig
    end

    # Operation Parser for GetDistribution
    class GetDistribution
    end

    # Operation Parser for GetDistributionConfig
    class GetDistributionConfig
    end

    # Operation Parser for GetFieldLevelEncryption
    class GetFieldLevelEncryption
    end

    # Operation Parser for GetFieldLevelEncryptionConfig
    class GetFieldLevelEncryptionConfig
    end

    # Operation Parser for GetFieldLevelEncryptionProfile
    class GetFieldLevelEncryptionProfile
    end

    # Operation Parser for GetFieldLevelEncryptionProfileConfig
    class GetFieldLevelEncryptionProfileConfig
    end

    # Operation Parser for GetFunction
    class GetFunction
    end

    # Operation Parser for GetInvalidation
    class GetInvalidation
    end

    # Error Parser for NoSuchInvalidation
    class NoSuchInvalidation
    end

    # Operation Parser for GetKeyGroup
    class GetKeyGroup
    end

    # Operation Parser for GetKeyGroupConfig
    class GetKeyGroupConfig
    end

    # Operation Parser for GetMonitoringSubscription
    class GetMonitoringSubscription
    end

    # Operation Parser for GetOriginRequestPolicy
    class GetOriginRequestPolicy
    end

    # Operation Parser for GetOriginRequestPolicyConfig
    class GetOriginRequestPolicyConfig
    end

    # Operation Parser for GetPublicKey
    class GetPublicKey
    end

    # Operation Parser for GetPublicKeyConfig
    class GetPublicKeyConfig
    end

    # Operation Parser for GetRealtimeLogConfig
    class GetRealtimeLogConfig
    end

    # Operation Parser for GetResponseHeadersPolicy
    class GetResponseHeadersPolicy
    end

    # Operation Parser for GetResponseHeadersPolicyConfig
    class GetResponseHeadersPolicyConfig
    end

    # Operation Parser for GetStreamingDistribution
    class GetStreamingDistribution
    end

    # Operation Parser for GetStreamingDistributionConfig
    class GetStreamingDistributionConfig
    end

    # Operation Parser for ListCachePolicies
    class ListCachePolicies
    end

    class CachePolicyList
    end

    class CachePolicySummaryList
    end

    class CachePolicySummary
    end

    # Operation Parser for ListCloudFrontOriginAccessIdentities
    class ListCloudFrontOriginAccessIdentities
    end

    class CloudFrontOriginAccessIdentityList
    end

    class CloudFrontOriginAccessIdentitySummaryList
    end

    class CloudFrontOriginAccessIdentitySummary
    end

    # Operation Parser for ListConflictingAliases
    class ListConflictingAliases
    end

    class ConflictingAliasesList
    end

    class ConflictingAliases
    end

    class ConflictingAlias
    end

    # Operation Parser for ListDistributions
    class ListDistributions
    end

    class DistributionList
    end

    class DistributionSummaryList
    end

    class DistributionSummary
    end

    # Operation Parser for ListDistributionsByCachePolicyId
    class ListDistributionsByCachePolicyId
    end

    class DistributionIdList
    end

    class DistributionIdListSummary
    end

    # Operation Parser for ListDistributionsByKeyGroup
    class ListDistributionsByKeyGroup
    end

    # Operation Parser for ListDistributionsByOriginRequestPolicyId
    class ListDistributionsByOriginRequestPolicyId
    end

    # Operation Parser for ListDistributionsByRealtimeLogConfig
    class ListDistributionsByRealtimeLogConfig
    end

    # Operation Parser for ListDistributionsByResponseHeadersPolicyId
    class ListDistributionsByResponseHeadersPolicyId
    end

    # Operation Parser for ListDistributionsByWebACLId
    class ListDistributionsByWebACLId
    end

    # Operation Parser for ListFieldLevelEncryptionConfigs
    class ListFieldLevelEncryptionConfigs
    end

    class FieldLevelEncryptionList
    end

    class FieldLevelEncryptionSummaryList
    end

    class FieldLevelEncryptionSummary
    end

    # Operation Parser for ListFieldLevelEncryptionProfiles
    class ListFieldLevelEncryptionProfiles
    end

    class FieldLevelEncryptionProfileList
    end

    class FieldLevelEncryptionProfileSummaryList
    end

    class FieldLevelEncryptionProfileSummary
    end

    # Operation Parser for ListFunctions
    class ListFunctions
    end

    class FunctionList
    end

    class FunctionSummaryList
    end

    # Operation Parser for ListInvalidations
    class ListInvalidations
    end

    class InvalidationList
    end

    class InvalidationSummaryList
    end

    class InvalidationSummary
    end

    # Operation Parser for ListKeyGroups
    class ListKeyGroups
    end

    class KeyGroupList
    end

    class KeyGroupSummaryList
    end

    class KeyGroupSummary
    end

    # Operation Parser for ListOriginRequestPolicies
    class ListOriginRequestPolicies
    end

    class OriginRequestPolicyList
    end

    class OriginRequestPolicySummaryList
    end

    class OriginRequestPolicySummary
    end

    # Operation Parser for ListPublicKeys
    class ListPublicKeys
    end

    class PublicKeyList
    end

    class PublicKeySummaryList
    end

    class PublicKeySummary
    end

    # Operation Parser for ListRealtimeLogConfigs
    class ListRealtimeLogConfigs
    end

    class RealtimeLogConfigs
    end

    class RealtimeLogConfigList
    end

    # Operation Parser for ListResponseHeadersPolicies
    class ListResponseHeadersPolicies
    end

    class ResponseHeadersPolicyList
    end

    class ResponseHeadersPolicySummaryList
    end

    class ResponseHeadersPolicySummary
    end

    # Operation Parser for ListStreamingDistributions
    class ListStreamingDistributions
    end

    class StreamingDistributionList
    end

    class StreamingDistributionSummaryList
    end

    class StreamingDistributionSummary
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
    end

    class Tags
    end

    class TagList
    end

    class Tag
    end

    # Operation Parser for PublishFunction
    class PublishFunction
    end

    # Operation Parser for TagResource
    class TagResource
    end

    # Operation Parser for TestFunction
    class TestFunction
    end

    class TestResult
    end

    class FunctionExecutionLogList
    end

    # Error Parser for TestFunctionFailed
    class TestFunctionFailed
    end

    # Operation Parser for UntagResource
    class UntagResource
    end

    # Operation Parser for UpdateCachePolicy
    class UpdateCachePolicy
    end

    # Operation Parser for UpdateCloudFrontOriginAccessIdentity
    class UpdateCloudFrontOriginAccessIdentity
    end

    # Operation Parser for UpdateDistribution
    class UpdateDistribution
    end

    # Operation Parser for UpdateFieldLevelEncryptionConfig
    class UpdateFieldLevelEncryptionConfig
    end

    # Operation Parser for UpdateFieldLevelEncryptionProfile
    class UpdateFieldLevelEncryptionProfile
    end

    # Operation Parser for UpdateFunction
    class UpdateFunction
    end

    # Operation Parser for UpdateKeyGroup
    class UpdateKeyGroup
    end

    # Operation Parser for UpdateOriginRequestPolicy
    class UpdateOriginRequestPolicy
    end

    # Operation Parser for UpdatePublicKey
    class UpdatePublicKey
    end

    # Error Parser for CannotChangeImmutablePublicKeyFields
    class CannotChangeImmutablePublicKeyFields
    end

    # Operation Parser for UpdateRealtimeLogConfig
    class UpdateRealtimeLogConfig
    end

    # Operation Parser for UpdateResponseHeadersPolicy
    class UpdateResponseHeadersPolicy
    end

    # Operation Parser for UpdateStreamingDistribution
    class UpdateStreamingDistribution
    end
  end
end
