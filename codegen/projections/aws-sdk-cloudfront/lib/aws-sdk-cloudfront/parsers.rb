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
      def self.parse(http_resp)
        data = Types::AssociateAliasOutput.new
        data
      end
    end

    # Error Parser for AccessDenied
    class AccessDenied
      def self.parse(http_resp)
        data = Types::AccessDenied.new
        data
      end
    end

    # Error Parser for IllegalUpdate
    class IllegalUpdate
      def self.parse(http_resp)
        data = Types::IllegalUpdate.new
        data
      end
    end

    # Error Parser for NoSuchDistribution
    class NoSuchDistribution
      def self.parse(http_resp)
        data = Types::NoSuchDistribution.new
        data
      end
    end

    # Error Parser for InvalidArgument
    class InvalidArgument
      def self.parse(http_resp)
        data = Types::InvalidArgument.new
        data
      end
    end

    # Error Parser for TooManyDistributionCNAMEs
    class TooManyDistributionCNAMEs
      def self.parse(http_resp)
        data = Types::TooManyDistributionCNAMEs.new
        data
      end
    end

    # Operation Parser for CreateCachePolicy
    class CreateCachePolicy
      def self.parse(http_resp)
        data = Types::CreateCachePolicyOutput.new
        data.location = http_resp.headers['Location']
        data.e_tag = http_resp.headers['ETag']
        data
      end
    end

    class CachePolicy
      def self.parse(map)
        data = Types::CachePolicy.new
        return data
      end
    end

    class CachePolicyConfig
      def self.parse(map)
        data = Types::CachePolicyConfig.new
        return data
      end
    end

    class ParametersInCacheKeyAndForwardedToOrigin
      def self.parse(map)
        data = Types::ParametersInCacheKeyAndForwardedToOrigin.new
        return data
      end
    end

    class CachePolicyQueryStringsConfig
      def self.parse(map)
        data = Types::CachePolicyQueryStringsConfig.new
        return data
      end
    end

    class QueryStringNames
      def self.parse(map)
        data = Types::QueryStringNames.new
        return data
      end
    end

    class QueryStringNamesList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class CachePolicyCookiesConfig
      def self.parse(map)
        data = Types::CachePolicyCookiesConfig.new
        return data
      end
    end

    class CookieNames
      def self.parse(map)
        data = Types::CookieNames.new
        return data
      end
    end

    class CookieNameList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class CachePolicyHeadersConfig
      def self.parse(map)
        data = Types::CachePolicyHeadersConfig.new
        return data
      end
    end

    class Headers
      def self.parse(map)
        data = Types::Headers.new
        return data
      end
    end

    class HeaderList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Error Parser for TooManyCookiesInCachePolicy
    class TooManyCookiesInCachePolicy
      def self.parse(http_resp)
        data = Types::TooManyCookiesInCachePolicy.new
        data
      end
    end

    # Error Parser for TooManyHeadersInCachePolicy
    class TooManyHeadersInCachePolicy
      def self.parse(http_resp)
        data = Types::TooManyHeadersInCachePolicy.new
        data
      end
    end

    # Error Parser for InconsistentQuantities
    class InconsistentQuantities
      def self.parse(http_resp)
        data = Types::InconsistentQuantities.new
        data
      end
    end

    # Error Parser for TooManyCachePolicies
    class TooManyCachePolicies
      def self.parse(http_resp)
        data = Types::TooManyCachePolicies.new
        data
      end
    end

    # Error Parser for TooManyQueryStringsInCachePolicy
    class TooManyQueryStringsInCachePolicy
      def self.parse(http_resp)
        data = Types::TooManyQueryStringsInCachePolicy.new
        data
      end
    end

    # Error Parser for CachePolicyAlreadyExists
    class CachePolicyAlreadyExists
      def self.parse(http_resp)
        data = Types::CachePolicyAlreadyExists.new
        data
      end
    end

    # Operation Parser for CreateCloudFrontOriginAccessIdentity
    class CreateCloudFrontOriginAccessIdentity
      def self.parse(http_resp)
        data = Types::CreateCloudFrontOriginAccessIdentityOutput.new
        data.location = http_resp.headers['Location']
        data.e_tag = http_resp.headers['ETag']
        data
      end
    end

    class CloudFrontOriginAccessIdentity
      def self.parse(map)
        data = Types::CloudFrontOriginAccessIdentity.new
        return data
      end
    end

    class CloudFrontOriginAccessIdentityConfig
      def self.parse(map)
        data = Types::CloudFrontOriginAccessIdentityConfig.new
        return data
      end
    end

    # Error Parser for MissingBody
    class MissingBody
      def self.parse(http_resp)
        data = Types::MissingBody.new
        data
      end
    end

    # Error Parser for CloudFrontOriginAccessIdentityAlreadyExists
    class CloudFrontOriginAccessIdentityAlreadyExists
      def self.parse(http_resp)
        data = Types::CloudFrontOriginAccessIdentityAlreadyExists.new
        data
      end
    end

    # Error Parser for TooManyCloudFrontOriginAccessIdentities
    class TooManyCloudFrontOriginAccessIdentities
      def self.parse(http_resp)
        data = Types::TooManyCloudFrontOriginAccessIdentities.new
        data
      end
    end

    # Operation Parser for CreateDistribution
    class CreateDistribution
      def self.parse(http_resp)
        data = Types::CreateDistributionOutput.new
        data.location = http_resp.headers['Location']
        data.e_tag = http_resp.headers['ETag']
        data
      end
    end

    class Distribution
      def self.parse(map)
        data = Types::Distribution.new
        return data
      end
    end

    class AliasICPRecordals
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class AliasICPRecordal
      def self.parse(map)
        data = Types::AliasICPRecordal.new
        return data
      end
    end

    class DistributionConfig
      def self.parse(map)
        data = Types::DistributionConfig.new
        return data
      end
    end

    class Restrictions
      def self.parse(map)
        data = Types::Restrictions.new
        return data
      end
    end

    class GeoRestriction
      def self.parse(map)
        data = Types::GeoRestriction.new
        return data
      end
    end

    class LocationList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class ViewerCertificate
      def self.parse(map)
        data = Types::ViewerCertificate.new
        return data
      end
    end

    class LoggingConfig
      def self.parse(map)
        data = Types::LoggingConfig.new
        return data
      end
    end

    class CustomErrorResponses
      def self.parse(map)
        data = Types::CustomErrorResponses.new
        return data
      end
    end

    class CustomErrorResponseList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class CustomErrorResponse
      def self.parse(map)
        data = Types::CustomErrorResponse.new
        return data
      end
    end

    class CacheBehaviors
      def self.parse(map)
        data = Types::CacheBehaviors.new
        return data
      end
    end

    class CacheBehaviorList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class CacheBehavior
      def self.parse(map)
        data = Types::CacheBehavior.new
        return data
      end
    end

    class ForwardedValues
      def self.parse(map)
        data = Types::ForwardedValues.new
        return data
      end
    end

    class QueryStringCacheKeys
      def self.parse(map)
        data = Types::QueryStringCacheKeys.new
        return data
      end
    end

    class QueryStringCacheKeysList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class CookiePreference
      def self.parse(map)
        data = Types::CookiePreference.new
        return data
      end
    end

    class FunctionAssociations
      def self.parse(map)
        data = Types::FunctionAssociations.new
        return data
      end
    end

    class FunctionAssociationList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class FunctionAssociation
      def self.parse(map)
        data = Types::FunctionAssociation.new
        return data
      end
    end

    class LambdaFunctionAssociations
      def self.parse(map)
        data = Types::LambdaFunctionAssociations.new
        return data
      end
    end

    class LambdaFunctionAssociationList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class LambdaFunctionAssociation
      def self.parse(map)
        data = Types::LambdaFunctionAssociation.new
        return data
      end
    end

    class AllowedMethods
      def self.parse(map)
        data = Types::AllowedMethods.new
        return data
      end
    end

    class CachedMethods
      def self.parse(map)
        data = Types::CachedMethods.new
        return data
      end
    end

    class MethodsList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class TrustedKeyGroups
      def self.parse(map)
        data = Types::TrustedKeyGroups.new
        return data
      end
    end

    class TrustedKeyGroupIdList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class TrustedSigners
      def self.parse(map)
        data = Types::TrustedSigners.new
        return data
      end
    end

    class AwsAccountNumberList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class DefaultCacheBehavior
      def self.parse(map)
        data = Types::DefaultCacheBehavior.new
        return data
      end
    end

    class OriginGroups
      def self.parse(map)
        data = Types::OriginGroups.new
        return data
      end
    end

    class OriginGroupList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class OriginGroup
      def self.parse(map)
        data = Types::OriginGroup.new
        return data
      end
    end

    class OriginGroupMembers
      def self.parse(map)
        data = Types::OriginGroupMembers.new
        return data
      end
    end

    class OriginGroupMemberList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class OriginGroupMember
      def self.parse(map)
        data = Types::OriginGroupMember.new
        return data
      end
    end

    class OriginGroupFailoverCriteria
      def self.parse(map)
        data = Types::OriginGroupFailoverCriteria.new
        return data
      end
    end

    class StatusCodes
      def self.parse(map)
        data = Types::StatusCodes.new
        return data
      end
    end

    class StatusCodeList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class Origins
      def self.parse(map)
        data = Types::Origins.new
        return data
      end
    end

    class OriginList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class Origin
      def self.parse(map)
        data = Types::Origin.new
        return data
      end
    end

    class OriginShield
      def self.parse(map)
        data = Types::OriginShield.new
        return data
      end
    end

    class CustomOriginConfig
      def self.parse(map)
        data = Types::CustomOriginConfig.new
        return data
      end
    end

    class OriginSslProtocols
      def self.parse(map)
        data = Types::OriginSslProtocols.new
        return data
      end
    end

    class SslProtocolsList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class S3OriginConfig
      def self.parse(map)
        data = Types::S3OriginConfig.new
        return data
      end
    end

    class CustomHeaders
      def self.parse(map)
        data = Types::CustomHeaders.new
        return data
      end
    end

    class OriginCustomHeadersList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class OriginCustomHeader
      def self.parse(map)
        data = Types::OriginCustomHeader.new
        return data
      end
    end

    class Aliases
      def self.parse(map)
        data = Types::Aliases.new
        return data
      end
    end

    class AliasList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class ActiveTrustedKeyGroups
      def self.parse(map)
        data = Types::ActiveTrustedKeyGroups.new
        return data
      end
    end

    class KGKeyPairIdsList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class KGKeyPairIds
      def self.parse(map)
        data = Types::KGKeyPairIds.new
        return data
      end
    end

    class KeyPairIds
      def self.parse(map)
        data = Types::KeyPairIds.new
        return data
      end
    end

    class KeyPairIdList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class ActiveTrustedSigners
      def self.parse(map)
        data = Types::ActiveTrustedSigners.new
        return data
      end
    end

    class SignerList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class Signer
      def self.parse(map)
        data = Types::Signer.new
        return data
      end
    end

    # Error Parser for TooManyDistributionsAssociatedToOriginRequestPolicy
    class TooManyDistributionsAssociatedToOriginRequestPolicy
      def self.parse(http_resp)
        data = Types::TooManyDistributionsAssociatedToOriginRequestPolicy.new
        data
      end
    end

    # Error Parser for InvalidRelativePath
    class InvalidRelativePath
      def self.parse(http_resp)
        data = Types::InvalidRelativePath.new
        data
      end
    end

    # Error Parser for TooManyQueryStringParameters
    class TooManyQueryStringParameters
      def self.parse(http_resp)
        data = Types::TooManyQueryStringParameters.new
        data
      end
    end

    # Error Parser for TooManyLambdaFunctionAssociations
    class TooManyLambdaFunctionAssociations
      def self.parse(http_resp)
        data = Types::TooManyLambdaFunctionAssociations.new
        data
      end
    end

    # Error Parser for InvalidWebACLId
    class InvalidWebACLId
      def self.parse(http_resp)
        data = Types::InvalidWebACLId.new
        data
      end
    end

    # Error Parser for InvalidTTLOrder
    class InvalidTTLOrder
      def self.parse(http_resp)
        data = Types::InvalidTTLOrder.new
        data
      end
    end

    # Error Parser for TooManyDistributions
    class TooManyDistributions
      def self.parse(http_resp)
        data = Types::TooManyDistributions.new
        data
      end
    end

    # Error Parser for TooManyDistributionsWithFunctionAssociations
    class TooManyDistributionsWithFunctionAssociations
      def self.parse(http_resp)
        data = Types::TooManyDistributionsWithFunctionAssociations.new
        data
      end
    end

    # Error Parser for TooManyHeadersInForwardedValues
    class TooManyHeadersInForwardedValues
      def self.parse(http_resp)
        data = Types::TooManyHeadersInForwardedValues.new
        data
      end
    end

    # Error Parser for TooManyDistributionsAssociatedToFieldLevelEncryptionConfig
    class TooManyDistributionsAssociatedToFieldLevelEncryptionConfig
      def self.parse(http_resp)
        data = Types::TooManyDistributionsAssociatedToFieldLevelEncryptionConfig.new
        data
      end
    end

    # Error Parser for InvalidOriginAccessIdentity
    class InvalidOriginAccessIdentity
      def self.parse(http_resp)
        data = Types::InvalidOriginAccessIdentity.new
        data
      end
    end

    # Error Parser for DistributionAlreadyExists
    class DistributionAlreadyExists
      def self.parse(http_resp)
        data = Types::DistributionAlreadyExists.new
        data
      end
    end

    # Error Parser for RealtimeLogConfigOwnerMismatch
    class RealtimeLogConfigOwnerMismatch
      def self.parse(http_resp)
        data = Types::RealtimeLogConfigOwnerMismatch.new
        data
      end
    end

    # Error Parser for TooManyCacheBehaviors
    class TooManyCacheBehaviors
      def self.parse(http_resp)
        data = Types::TooManyCacheBehaviors.new
        data
      end
    end

    # Error Parser for NoSuchOrigin
    class NoSuchOrigin
      def self.parse(http_resp)
        data = Types::NoSuchOrigin.new
        data
      end
    end

    # Error Parser for TooManyDistributionsAssociatedToCachePolicy
    class TooManyDistributionsAssociatedToCachePolicy
      def self.parse(http_resp)
        data = Types::TooManyDistributionsAssociatedToCachePolicy.new
        data
      end
    end

    # Error Parser for InvalidViewerCertificate
    class InvalidViewerCertificate
      def self.parse(http_resp)
        data = Types::InvalidViewerCertificate.new
        data
      end
    end

    # Error Parser for InvalidFunctionAssociation
    class InvalidFunctionAssociation
      def self.parse(http_resp)
        data = Types::InvalidFunctionAssociation.new
        data
      end
    end

    # Error Parser for NoSuchResponseHeadersPolicy
    class NoSuchResponseHeadersPolicy
      def self.parse(http_resp)
        data = Types::NoSuchResponseHeadersPolicy.new
        data
      end
    end

    # Error Parser for InvalidDefaultRootObject
    class InvalidDefaultRootObject
      def self.parse(http_resp)
        data = Types::InvalidDefaultRootObject.new
        data
      end
    end

    # Error Parser for NoSuchCachePolicy
    class NoSuchCachePolicy
      def self.parse(http_resp)
        data = Types::NoSuchCachePolicy.new
        data
      end
    end

    # Error Parser for InvalidProtocolSettings
    class InvalidProtocolSettings
      def self.parse(http_resp)
        data = Types::InvalidProtocolSettings.new
        data
      end
    end

    # Error Parser for InvalidMinimumProtocolVersion
    class InvalidMinimumProtocolVersion
      def self.parse(http_resp)
        data = Types::InvalidMinimumProtocolVersion.new
        data
      end
    end

    # Error Parser for InvalidLambdaFunctionAssociation
    class InvalidLambdaFunctionAssociation
      def self.parse(http_resp)
        data = Types::InvalidLambdaFunctionAssociation.new
        data
      end
    end

    # Error Parser for InvalidResponseCode
    class InvalidResponseCode
      def self.parse(http_resp)
        data = Types::InvalidResponseCode.new
        data
      end
    end

    # Error Parser for NoSuchOriginRequestPolicy
    class NoSuchOriginRequestPolicy
      def self.parse(http_resp)
        data = Types::NoSuchOriginRequestPolicy.new
        data
      end
    end

    # Error Parser for NoSuchFieldLevelEncryptionConfig
    class NoSuchFieldLevelEncryptionConfig
      def self.parse(http_resp)
        data = Types::NoSuchFieldLevelEncryptionConfig.new
        data
      end
    end

    # Error Parser for InvalidHeadersForS3Origin
    class InvalidHeadersForS3Origin
      def self.parse(http_resp)
        data = Types::InvalidHeadersForS3Origin.new
        data
      end
    end

    # Error Parser for TrustedSignerDoesNotExist
    class TrustedSignerDoesNotExist
      def self.parse(http_resp)
        data = Types::TrustedSignerDoesNotExist.new
        data
      end
    end

    # Error Parser for TooManyCookieNamesInWhiteList
    class TooManyCookieNamesInWhiteList
      def self.parse(http_resp)
        data = Types::TooManyCookieNamesInWhiteList.new
        data
      end
    end

    # Error Parser for TooManyDistributionsAssociatedToKeyGroup
    class TooManyDistributionsAssociatedToKeyGroup
      def self.parse(http_resp)
        data = Types::TooManyDistributionsAssociatedToKeyGroup.new
        data
      end
    end

    # Error Parser for TooManyOrigins
    class TooManyOrigins
      def self.parse(http_resp)
        data = Types::TooManyOrigins.new
        data
      end
    end

    # Error Parser for TooManyTrustedSigners
    class TooManyTrustedSigners
      def self.parse(http_resp)
        data = Types::TooManyTrustedSigners.new
        data
      end
    end

    # Error Parser for TooManyDistributionsWithSingleFunctionARN
    class TooManyDistributionsWithSingleFunctionARN
      def self.parse(http_resp)
        data = Types::TooManyDistributionsWithSingleFunctionARN.new
        data
      end
    end

    # Error Parser for InvalidGeoRestrictionParameter
    class InvalidGeoRestrictionParameter
      def self.parse(http_resp)
        data = Types::InvalidGeoRestrictionParameter.new
        data
      end
    end

    # Error Parser for NoSuchRealtimeLogConfig
    class NoSuchRealtimeLogConfig
      def self.parse(http_resp)
        data = Types::NoSuchRealtimeLogConfig.new
        data
      end
    end

    # Error Parser for InvalidOriginReadTimeout
    class InvalidOriginReadTimeout
      def self.parse(http_resp)
        data = Types::InvalidOriginReadTimeout.new
        data
      end
    end

    # Error Parser for TooManyCertificates
    class TooManyCertificates
      def self.parse(http_resp)
        data = Types::TooManyCertificates.new
        data
      end
    end

    # Error Parser for InvalidLocationCode
    class InvalidLocationCode
      def self.parse(http_resp)
        data = Types::InvalidLocationCode.new
        data
      end
    end

    # Error Parser for InvalidQueryStringParameters
    class InvalidQueryStringParameters
      def self.parse(http_resp)
        data = Types::InvalidQueryStringParameters.new
        data
      end
    end

    # Error Parser for CNAMEAlreadyExists
    class CNAMEAlreadyExists
      def self.parse(http_resp)
        data = Types::CNAMEAlreadyExists.new
        data
      end
    end

    # Error Parser for IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior
    class IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior
      def self.parse(http_resp)
        data = Types::IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior.new
        data
      end
    end

    # Error Parser for InvalidErrorCode
    class InvalidErrorCode
      def self.parse(http_resp)
        data = Types::InvalidErrorCode.new
        data
      end
    end

    # Error Parser for TooManyKeyGroupsAssociatedToDistribution
    class TooManyKeyGroupsAssociatedToDistribution
      def self.parse(http_resp)
        data = Types::TooManyKeyGroupsAssociatedToDistribution.new
        data
      end
    end

    # Error Parser for TooManyDistributionsWithLambdaAssociations
    class TooManyDistributionsWithLambdaAssociations
      def self.parse(http_resp)
        data = Types::TooManyDistributionsWithLambdaAssociations.new
        data
      end
    end

    # Error Parser for TooManyOriginCustomHeaders
    class TooManyOriginCustomHeaders
      def self.parse(http_resp)
        data = Types::TooManyOriginCustomHeaders.new
        data
      end
    end

    # Error Parser for TrustedKeyGroupDoesNotExist
    class TrustedKeyGroupDoesNotExist
      def self.parse(http_resp)
        data = Types::TrustedKeyGroupDoesNotExist.new
        data
      end
    end

    # Error Parser for InvalidOriginKeepaliveTimeout
    class InvalidOriginKeepaliveTimeout
      def self.parse(http_resp)
        data = Types::InvalidOriginKeepaliveTimeout.new
        data
      end
    end

    # Error Parser for InvalidForwardCookies
    class InvalidForwardCookies
      def self.parse(http_resp)
        data = Types::InvalidForwardCookies.new
        data
      end
    end

    # Error Parser for InvalidOrigin
    class InvalidOrigin
      def self.parse(http_resp)
        data = Types::InvalidOrigin.new
        data
      end
    end

    # Error Parser for TooManyDistributionsAssociatedToResponseHeadersPolicy
    class TooManyDistributionsAssociatedToResponseHeadersPolicy
      def self.parse(http_resp)
        data = Types::TooManyDistributionsAssociatedToResponseHeadersPolicy.new
        data
      end
    end

    # Error Parser for TooManyOriginGroupsPerDistribution
    class TooManyOriginGroupsPerDistribution
      def self.parse(http_resp)
        data = Types::TooManyOriginGroupsPerDistribution.new
        data
      end
    end

    # Error Parser for InvalidRequiredProtocol
    class InvalidRequiredProtocol
      def self.parse(http_resp)
        data = Types::InvalidRequiredProtocol.new
        data
      end
    end

    # Error Parser for TooManyFunctionAssociations
    class TooManyFunctionAssociations
      def self.parse(http_resp)
        data = Types::TooManyFunctionAssociations.new
        data
      end
    end

    # Operation Parser for CreateDistributionWithTags
    class CreateDistributionWithTags
      def self.parse(http_resp)
        data = Types::CreateDistributionWithTagsOutput.new
        data.location = http_resp.headers['Location']
        data.e_tag = http_resp.headers['ETag']
        data
      end
    end

    # Error Parser for InvalidTagging
    class InvalidTagging
      def self.parse(http_resp)
        data = Types::InvalidTagging.new
        data
      end
    end

    # Operation Parser for CreateFieldLevelEncryptionConfig
    class CreateFieldLevelEncryptionConfig
      def self.parse(http_resp)
        data = Types::CreateFieldLevelEncryptionConfigOutput.new
        data.location = http_resp.headers['Location']
        data.e_tag = http_resp.headers['ETag']
        data
      end
    end

    class FieldLevelEncryption
      def self.parse(map)
        data = Types::FieldLevelEncryption.new
        return data
      end
    end

    class FieldLevelEncryptionConfig
      def self.parse(map)
        data = Types::FieldLevelEncryptionConfig.new
        return data
      end
    end

    class ContentTypeProfileConfig
      def self.parse(map)
        data = Types::ContentTypeProfileConfig.new
        return data
      end
    end

    class ContentTypeProfiles
      def self.parse(map)
        data = Types::ContentTypeProfiles.new
        return data
      end
    end

    class ContentTypeProfileList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class ContentTypeProfile
      def self.parse(map)
        data = Types::ContentTypeProfile.new
        return data
      end
    end

    class QueryArgProfileConfig
      def self.parse(map)
        data = Types::QueryArgProfileConfig.new
        return data
      end
    end

    class QueryArgProfiles
      def self.parse(map)
        data = Types::QueryArgProfiles.new
        return data
      end
    end

    class QueryArgProfileList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class QueryArgProfile
      def self.parse(map)
        data = Types::QueryArgProfile.new
        return data
      end
    end

    # Error Parser for QueryArgProfileEmpty
    class QueryArgProfileEmpty
      def self.parse(http_resp)
        data = Types::QueryArgProfileEmpty.new
        data
      end
    end

    # Error Parser for FieldLevelEncryptionConfigAlreadyExists
    class FieldLevelEncryptionConfigAlreadyExists
      def self.parse(http_resp)
        data = Types::FieldLevelEncryptionConfigAlreadyExists.new
        data
      end
    end

    # Error Parser for TooManyFieldLevelEncryptionContentTypeProfiles
    class TooManyFieldLevelEncryptionContentTypeProfiles
      def self.parse(http_resp)
        data = Types::TooManyFieldLevelEncryptionContentTypeProfiles.new
        data
      end
    end

    # Error Parser for NoSuchFieldLevelEncryptionProfile
    class NoSuchFieldLevelEncryptionProfile
      def self.parse(http_resp)
        data = Types::NoSuchFieldLevelEncryptionProfile.new
        data
      end
    end

    # Error Parser for TooManyFieldLevelEncryptionConfigs
    class TooManyFieldLevelEncryptionConfigs
      def self.parse(http_resp)
        data = Types::TooManyFieldLevelEncryptionConfigs.new
        data
      end
    end

    # Error Parser for TooManyFieldLevelEncryptionQueryArgProfiles
    class TooManyFieldLevelEncryptionQueryArgProfiles
      def self.parse(http_resp)
        data = Types::TooManyFieldLevelEncryptionQueryArgProfiles.new
        data
      end
    end

    # Operation Parser for CreateFieldLevelEncryptionProfile
    class CreateFieldLevelEncryptionProfile
      def self.parse(http_resp)
        data = Types::CreateFieldLevelEncryptionProfileOutput.new
        data.location = http_resp.headers['Location']
        data.e_tag = http_resp.headers['ETag']
        data
      end
    end

    class FieldLevelEncryptionProfile
      def self.parse(map)
        data = Types::FieldLevelEncryptionProfile.new
        return data
      end
    end

    class FieldLevelEncryptionProfileConfig
      def self.parse(map)
        data = Types::FieldLevelEncryptionProfileConfig.new
        return data
      end
    end

    class EncryptionEntities
      def self.parse(map)
        data = Types::EncryptionEntities.new
        return data
      end
    end

    class EncryptionEntityList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class EncryptionEntity
      def self.parse(map)
        data = Types::EncryptionEntity.new
        return data
      end
    end

    class FieldPatterns
      def self.parse(map)
        data = Types::FieldPatterns.new
        return data
      end
    end

    class FieldPatternList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Error Parser for FieldLevelEncryptionProfileAlreadyExists
    class FieldLevelEncryptionProfileAlreadyExists
      def self.parse(http_resp)
        data = Types::FieldLevelEncryptionProfileAlreadyExists.new
        data
      end
    end

    # Error Parser for TooManyFieldLevelEncryptionFieldPatterns
    class TooManyFieldLevelEncryptionFieldPatterns
      def self.parse(http_resp)
        data = Types::TooManyFieldLevelEncryptionFieldPatterns.new
        data
      end
    end

    # Error Parser for NoSuchPublicKey
    class NoSuchPublicKey
      def self.parse(http_resp)
        data = Types::NoSuchPublicKey.new
        data
      end
    end

    # Error Parser for TooManyFieldLevelEncryptionEncryptionEntities
    class TooManyFieldLevelEncryptionEncryptionEntities
      def self.parse(http_resp)
        data = Types::TooManyFieldLevelEncryptionEncryptionEntities.new
        data
      end
    end

    # Error Parser for TooManyFieldLevelEncryptionProfiles
    class TooManyFieldLevelEncryptionProfiles
      def self.parse(http_resp)
        data = Types::TooManyFieldLevelEncryptionProfiles.new
        data
      end
    end

    # Error Parser for FieldLevelEncryptionProfileSizeExceeded
    class FieldLevelEncryptionProfileSizeExceeded
      def self.parse(http_resp)
        data = Types::FieldLevelEncryptionProfileSizeExceeded.new
        data
      end
    end

    # Operation Parser for CreateFunction
    class CreateFunction
      def self.parse(http_resp)
        data = Types::CreateFunctionOutput.new
        data.location = http_resp.headers['Location']
        data.e_tag = http_resp.headers['ETag']
        data
      end
    end

    class FunctionSummary
      def self.parse(map)
        data = Types::FunctionSummary.new
        return data
      end
    end

    class FunctionMetadata
      def self.parse(map)
        data = Types::FunctionMetadata.new
        return data
      end
    end

    class FunctionConfig
      def self.parse(map)
        data = Types::FunctionConfig.new
        return data
      end
    end

    # Error Parser for UnsupportedOperation
    class UnsupportedOperation
      def self.parse(http_resp)
        data = Types::UnsupportedOperation.new
        data
      end
    end

    # Error Parser for TooManyFunctions
    class TooManyFunctions
      def self.parse(http_resp)
        data = Types::TooManyFunctions.new
        data
      end
    end

    # Error Parser for FunctionAlreadyExists
    class FunctionAlreadyExists
      def self.parse(http_resp)
        data = Types::FunctionAlreadyExists.new
        data
      end
    end

    # Error Parser for FunctionSizeLimitExceeded
    class FunctionSizeLimitExceeded
      def self.parse(http_resp)
        data = Types::FunctionSizeLimitExceeded.new
        data
      end
    end

    # Operation Parser for CreateInvalidation
    class CreateInvalidation
      def self.parse(http_resp)
        data = Types::CreateInvalidationOutput.new
        data.location = http_resp.headers['Location']
        data
      end
    end

    class Invalidation
      def self.parse(map)
        data = Types::Invalidation.new
        return data
      end
    end

    class InvalidationBatch
      def self.parse(map)
        data = Types::InvalidationBatch.new
        return data
      end
    end

    class Paths
      def self.parse(map)
        data = Types::Paths.new
        return data
      end
    end

    class PathList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Error Parser for TooManyInvalidationsInProgress
    class TooManyInvalidationsInProgress
      def self.parse(http_resp)
        data = Types::TooManyInvalidationsInProgress.new
        data
      end
    end

    # Error Parser for BatchTooLarge
    class BatchTooLarge
      def self.parse(http_resp)
        data = Types::BatchTooLarge.new
        data
      end
    end

    # Operation Parser for CreateKeyGroup
    class CreateKeyGroup
      def self.parse(http_resp)
        data = Types::CreateKeyGroupOutput.new
        data.location = http_resp.headers['Location']
        data.e_tag = http_resp.headers['ETag']
        data
      end
    end

    class KeyGroup
      def self.parse(map)
        data = Types::KeyGroup.new
        return data
      end
    end

    class KeyGroupConfig
      def self.parse(map)
        data = Types::KeyGroupConfig.new
        return data
      end
    end

    class PublicKeyIdList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Error Parser for KeyGroupAlreadyExists
    class KeyGroupAlreadyExists
      def self.parse(http_resp)
        data = Types::KeyGroupAlreadyExists.new
        data
      end
    end

    # Error Parser for TooManyKeyGroups
    class TooManyKeyGroups
      def self.parse(http_resp)
        data = Types::TooManyKeyGroups.new
        data
      end
    end

    # Error Parser for TooManyPublicKeysInKeyGroup
    class TooManyPublicKeysInKeyGroup
      def self.parse(http_resp)
        data = Types::TooManyPublicKeysInKeyGroup.new
        data
      end
    end

    # Operation Parser for CreateMonitoringSubscription
    class CreateMonitoringSubscription
      def self.parse(http_resp)
        data = Types::CreateMonitoringSubscriptionOutput.new
        data
      end
    end

    class MonitoringSubscription
      def self.parse(map)
        data = Types::MonitoringSubscription.new
        return data
      end
    end

    class RealtimeMetricsSubscriptionConfig
      def self.parse(map)
        data = Types::RealtimeMetricsSubscriptionConfig.new
        return data
      end
    end

    # Operation Parser for CreateOriginRequestPolicy
    class CreateOriginRequestPolicy
      def self.parse(http_resp)
        data = Types::CreateOriginRequestPolicyOutput.new
        data.location = http_resp.headers['Location']
        data.e_tag = http_resp.headers['ETag']
        data
      end
    end

    class OriginRequestPolicy
      def self.parse(map)
        data = Types::OriginRequestPolicy.new
        return data
      end
    end

    class OriginRequestPolicyConfig
      def self.parse(map)
        data = Types::OriginRequestPolicyConfig.new
        return data
      end
    end

    class OriginRequestPolicyQueryStringsConfig
      def self.parse(map)
        data = Types::OriginRequestPolicyQueryStringsConfig.new
        return data
      end
    end

    class OriginRequestPolicyCookiesConfig
      def self.parse(map)
        data = Types::OriginRequestPolicyCookiesConfig.new
        return data
      end
    end

    class OriginRequestPolicyHeadersConfig
      def self.parse(map)
        data = Types::OriginRequestPolicyHeadersConfig.new
        return data
      end
    end

    # Error Parser for TooManyHeadersInOriginRequestPolicy
    class TooManyHeadersInOriginRequestPolicy
      def self.parse(http_resp)
        data = Types::TooManyHeadersInOriginRequestPolicy.new
        data
      end
    end

    # Error Parser for TooManyOriginRequestPolicies
    class TooManyOriginRequestPolicies
      def self.parse(http_resp)
        data = Types::TooManyOriginRequestPolicies.new
        data
      end
    end

    # Error Parser for TooManyQueryStringsInOriginRequestPolicy
    class TooManyQueryStringsInOriginRequestPolicy
      def self.parse(http_resp)
        data = Types::TooManyQueryStringsInOriginRequestPolicy.new
        data
      end
    end

    # Error Parser for OriginRequestPolicyAlreadyExists
    class OriginRequestPolicyAlreadyExists
      def self.parse(http_resp)
        data = Types::OriginRequestPolicyAlreadyExists.new
        data
      end
    end

    # Error Parser for TooManyCookiesInOriginRequestPolicy
    class TooManyCookiesInOriginRequestPolicy
      def self.parse(http_resp)
        data = Types::TooManyCookiesInOriginRequestPolicy.new
        data
      end
    end

    # Operation Parser for CreatePublicKey
    class CreatePublicKey
      def self.parse(http_resp)
        data = Types::CreatePublicKeyOutput.new
        data.location = http_resp.headers['Location']
        data.e_tag = http_resp.headers['ETag']
        data
      end
    end

    class PublicKey
      def self.parse(map)
        data = Types::PublicKey.new
        return data
      end
    end

    class PublicKeyConfig
      def self.parse(map)
        data = Types::PublicKeyConfig.new
        return data
      end
    end

    # Error Parser for TooManyPublicKeys
    class TooManyPublicKeys
      def self.parse(http_resp)
        data = Types::TooManyPublicKeys.new
        data
      end
    end

    # Error Parser for PublicKeyAlreadyExists
    class PublicKeyAlreadyExists
      def self.parse(http_resp)
        data = Types::PublicKeyAlreadyExists.new
        data
      end
    end

    # Operation Parser for CreateRealtimeLogConfig
    class CreateRealtimeLogConfig
      def self.parse(http_resp)
        data = Types::CreateRealtimeLogConfigOutput.new
        data
      end
    end

    class RealtimeLogConfig
      def self.parse(map)
        data = Types::RealtimeLogConfig.new
        return data
      end
    end

    class FieldList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class EndPointList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class EndPoint
      def self.parse(map)
        data = Types::EndPoint.new
        return data
      end
    end

    class KinesisStreamConfig
      def self.parse(map)
        data = Types::KinesisStreamConfig.new
        return data
      end
    end

    # Error Parser for TooManyRealtimeLogConfigs
    class TooManyRealtimeLogConfigs
      def self.parse(http_resp)
        data = Types::TooManyRealtimeLogConfigs.new
        data
      end
    end

    # Error Parser for RealtimeLogConfigAlreadyExists
    class RealtimeLogConfigAlreadyExists
      def self.parse(http_resp)
        data = Types::RealtimeLogConfigAlreadyExists.new
        data
      end
    end

    # Operation Parser for CreateResponseHeadersPolicy
    class CreateResponseHeadersPolicy
      def self.parse(http_resp)
        data = Types::CreateResponseHeadersPolicyOutput.new
        data.location = http_resp.headers['Location']
        data.e_tag = http_resp.headers['ETag']
        data
      end
    end

    class ResponseHeadersPolicy
      def self.parse(map)
        data = Types::ResponseHeadersPolicy.new
        return data
      end
    end

    class ResponseHeadersPolicyConfig
      def self.parse(map)
        data = Types::ResponseHeadersPolicyConfig.new
        return data
      end
    end

    class ResponseHeadersPolicyCustomHeadersConfig
      def self.parse(map)
        data = Types::ResponseHeadersPolicyCustomHeadersConfig.new
        return data
      end
    end

    class ResponseHeadersPolicyCustomHeaderList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class ResponseHeadersPolicyCustomHeader
      def self.parse(map)
        data = Types::ResponseHeadersPolicyCustomHeader.new
        return data
      end
    end

    class ResponseHeadersPolicySecurityHeadersConfig
      def self.parse(map)
        data = Types::ResponseHeadersPolicySecurityHeadersConfig.new
        return data
      end
    end

    class ResponseHeadersPolicyStrictTransportSecurity
      def self.parse(map)
        data = Types::ResponseHeadersPolicyStrictTransportSecurity.new
        return data
      end
    end

    class ResponseHeadersPolicyContentTypeOptions
      def self.parse(map)
        data = Types::ResponseHeadersPolicyContentTypeOptions.new
        return data
      end
    end

    class ResponseHeadersPolicyContentSecurityPolicy
      def self.parse(map)
        data = Types::ResponseHeadersPolicyContentSecurityPolicy.new
        return data
      end
    end

    class ResponseHeadersPolicyReferrerPolicy
      def self.parse(map)
        data = Types::ResponseHeadersPolicyReferrerPolicy.new
        return data
      end
    end

    class ResponseHeadersPolicyFrameOptions
      def self.parse(map)
        data = Types::ResponseHeadersPolicyFrameOptions.new
        return data
      end
    end

    class ResponseHeadersPolicyXSSProtection
      def self.parse(map)
        data = Types::ResponseHeadersPolicyXSSProtection.new
        return data
      end
    end

    class ResponseHeadersPolicyCorsConfig
      def self.parse(map)
        data = Types::ResponseHeadersPolicyCorsConfig.new
        return data
      end
    end

    class ResponseHeadersPolicyAccessControlExposeHeaders
      def self.parse(map)
        data = Types::ResponseHeadersPolicyAccessControlExposeHeaders.new
        return data
      end
    end

    class AccessControlExposeHeadersList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class ResponseHeadersPolicyAccessControlAllowMethods
      def self.parse(map)
        data = Types::ResponseHeadersPolicyAccessControlAllowMethods.new
        return data
      end
    end

    class AccessControlAllowMethodsList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class ResponseHeadersPolicyAccessControlAllowHeaders
      def self.parse(map)
        data = Types::ResponseHeadersPolicyAccessControlAllowHeaders.new
        return data
      end
    end

    class AccessControlAllowHeadersList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class ResponseHeadersPolicyAccessControlAllowOrigins
      def self.parse(map)
        data = Types::ResponseHeadersPolicyAccessControlAllowOrigins.new
        return data
      end
    end

    class AccessControlAllowOriginsList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Error Parser for TooManyCustomHeadersInResponseHeadersPolicy
    class TooManyCustomHeadersInResponseHeadersPolicy
      def self.parse(http_resp)
        data = Types::TooManyCustomHeadersInResponseHeadersPolicy.new
        data
      end
    end

    # Error Parser for TooManyResponseHeadersPolicies
    class TooManyResponseHeadersPolicies
      def self.parse(http_resp)
        data = Types::TooManyResponseHeadersPolicies.new
        data
      end
    end

    # Error Parser for ResponseHeadersPolicyAlreadyExists
    class ResponseHeadersPolicyAlreadyExists
      def self.parse(http_resp)
        data = Types::ResponseHeadersPolicyAlreadyExists.new
        data
      end
    end

    # Operation Parser for CreateStreamingDistribution
    class CreateStreamingDistribution
      def self.parse(http_resp)
        data = Types::CreateStreamingDistributionOutput.new
        data.location = http_resp.headers['Location']
        data.e_tag = http_resp.headers['ETag']
        data
      end
    end

    class StreamingDistribution
      def self.parse(map)
        data = Types::StreamingDistribution.new
        return data
      end
    end

    class StreamingDistributionConfig
      def self.parse(map)
        data = Types::StreamingDistributionConfig.new
        return data
      end
    end

    class StreamingLoggingConfig
      def self.parse(map)
        data = Types::StreamingLoggingConfig.new
        return data
      end
    end

    class S3Origin
      def self.parse(map)
        data = Types::S3Origin.new
        return data
      end
    end

    # Error Parser for TooManyStreamingDistributions
    class TooManyStreamingDistributions
      def self.parse(http_resp)
        data = Types::TooManyStreamingDistributions.new
        data
      end
    end

    # Error Parser for StreamingDistributionAlreadyExists
    class StreamingDistributionAlreadyExists
      def self.parse(http_resp)
        data = Types::StreamingDistributionAlreadyExists.new
        data
      end
    end

    # Error Parser for TooManyStreamingDistributionCNAMEs
    class TooManyStreamingDistributionCNAMEs
      def self.parse(http_resp)
        data = Types::TooManyStreamingDistributionCNAMEs.new
        data
      end
    end

    # Operation Parser for CreateStreamingDistributionWithTags
    class CreateStreamingDistributionWithTags
      def self.parse(http_resp)
        data = Types::CreateStreamingDistributionWithTagsOutput.new
        data.location = http_resp.headers['Location']
        data.e_tag = http_resp.headers['ETag']
        data
      end
    end

    # Operation Parser for DeleteCachePolicy
    class DeleteCachePolicy
      def self.parse(http_resp)
        data = Types::DeleteCachePolicyOutput.new
        data
      end
    end

    # Error Parser for PreconditionFailed
    class PreconditionFailed
      def self.parse(http_resp)
        data = Types::PreconditionFailed.new
        data
      end
    end

    # Error Parser for InvalidIfMatchVersion
    class InvalidIfMatchVersion
      def self.parse(http_resp)
        data = Types::InvalidIfMatchVersion.new
        data
      end
    end

    # Error Parser for IllegalDelete
    class IllegalDelete
      def self.parse(http_resp)
        data = Types::IllegalDelete.new
        data
      end
    end

    # Error Parser for CachePolicyInUse
    class CachePolicyInUse
      def self.parse(http_resp)
        data = Types::CachePolicyInUse.new
        data
      end
    end

    # Operation Parser for DeleteCloudFrontOriginAccessIdentity
    class DeleteCloudFrontOriginAccessIdentity
      def self.parse(http_resp)
        data = Types::DeleteCloudFrontOriginAccessIdentityOutput.new
        data
      end
    end

    # Error Parser for CloudFrontOriginAccessIdentityInUse
    class CloudFrontOriginAccessIdentityInUse
      def self.parse(http_resp)
        data = Types::CloudFrontOriginAccessIdentityInUse.new
        data
      end
    end

    # Error Parser for NoSuchCloudFrontOriginAccessIdentity
    class NoSuchCloudFrontOriginAccessIdentity
      def self.parse(http_resp)
        data = Types::NoSuchCloudFrontOriginAccessIdentity.new
        data
      end
    end

    # Operation Parser for DeleteDistribution
    class DeleteDistribution
      def self.parse(http_resp)
        data = Types::DeleteDistributionOutput.new
        data
      end
    end

    # Error Parser for DistributionNotDisabled
    class DistributionNotDisabled
      def self.parse(http_resp)
        data = Types::DistributionNotDisabled.new
        data
      end
    end

    # Operation Parser for DeleteFieldLevelEncryptionConfig
    class DeleteFieldLevelEncryptionConfig
      def self.parse(http_resp)
        data = Types::DeleteFieldLevelEncryptionConfigOutput.new
        data
      end
    end

    # Error Parser for FieldLevelEncryptionConfigInUse
    class FieldLevelEncryptionConfigInUse
      def self.parse(http_resp)
        data = Types::FieldLevelEncryptionConfigInUse.new
        data
      end
    end

    # Operation Parser for DeleteFieldLevelEncryptionProfile
    class DeleteFieldLevelEncryptionProfile
      def self.parse(http_resp)
        data = Types::DeleteFieldLevelEncryptionProfileOutput.new
        data
      end
    end

    # Error Parser for FieldLevelEncryptionProfileInUse
    class FieldLevelEncryptionProfileInUse
      def self.parse(http_resp)
        data = Types::FieldLevelEncryptionProfileInUse.new
        data
      end
    end

    # Operation Parser for DeleteFunction
    class DeleteFunction
      def self.parse(http_resp)
        data = Types::DeleteFunctionOutput.new
        data
      end
    end

    # Error Parser for NoSuchFunctionExists
    class NoSuchFunctionExists
      def self.parse(http_resp)
        data = Types::NoSuchFunctionExists.new
        data
      end
    end

    # Error Parser for FunctionInUse
    class FunctionInUse
      def self.parse(http_resp)
        data = Types::FunctionInUse.new
        data
      end
    end

    # Operation Parser for DeleteKeyGroup
    class DeleteKeyGroup
      def self.parse(http_resp)
        data = Types::DeleteKeyGroupOutput.new
        data
      end
    end

    # Error Parser for NoSuchResource
    class NoSuchResource
      def self.parse(http_resp)
        data = Types::NoSuchResource.new
        data
      end
    end

    # Error Parser for ResourceInUse
    class ResourceInUse
      def self.parse(http_resp)
        data = Types::ResourceInUse.new
        data
      end
    end

    # Operation Parser for DeleteMonitoringSubscription
    class DeleteMonitoringSubscription
      def self.parse(http_resp)
        data = Types::DeleteMonitoringSubscriptionOutput.new
        data
      end
    end

    # Operation Parser for DeleteOriginRequestPolicy
    class DeleteOriginRequestPolicy
      def self.parse(http_resp)
        data = Types::DeleteOriginRequestPolicyOutput.new
        data
      end
    end

    # Error Parser for OriginRequestPolicyInUse
    class OriginRequestPolicyInUse
      def self.parse(http_resp)
        data = Types::OriginRequestPolicyInUse.new
        data
      end
    end

    # Operation Parser for DeletePublicKey
    class DeletePublicKey
      def self.parse(http_resp)
        data = Types::DeletePublicKeyOutput.new
        data
      end
    end

    # Error Parser for PublicKeyInUse
    class PublicKeyInUse
      def self.parse(http_resp)
        data = Types::PublicKeyInUse.new
        data
      end
    end

    # Operation Parser for DeleteRealtimeLogConfig
    class DeleteRealtimeLogConfig
      def self.parse(http_resp)
        data = Types::DeleteRealtimeLogConfigOutput.new
        data
      end
    end

    # Error Parser for RealtimeLogConfigInUse
    class RealtimeLogConfigInUse
      def self.parse(http_resp)
        data = Types::RealtimeLogConfigInUse.new
        data
      end
    end

    # Operation Parser for DeleteResponseHeadersPolicy
    class DeleteResponseHeadersPolicy
      def self.parse(http_resp)
        data = Types::DeleteResponseHeadersPolicyOutput.new
        data
      end
    end

    # Error Parser for ResponseHeadersPolicyInUse
    class ResponseHeadersPolicyInUse
      def self.parse(http_resp)
        data = Types::ResponseHeadersPolicyInUse.new
        data
      end
    end

    # Operation Parser for DeleteStreamingDistribution
    class DeleteStreamingDistribution
      def self.parse(http_resp)
        data = Types::DeleteStreamingDistributionOutput.new
        data
      end
    end

    # Error Parser for StreamingDistributionNotDisabled
    class StreamingDistributionNotDisabled
      def self.parse(http_resp)
        data = Types::StreamingDistributionNotDisabled.new
        data
      end
    end

    # Error Parser for NoSuchStreamingDistribution
    class NoSuchStreamingDistribution
      def self.parse(http_resp)
        data = Types::NoSuchStreamingDistribution.new
        data
      end
    end

    # Operation Parser for DescribeFunction
    class DescribeFunction
      def self.parse(http_resp)
        data = Types::DescribeFunctionOutput.new
        data.e_tag = http_resp.headers['ETag']
        data
      end
    end

    # Operation Parser for GetCachePolicy
    class GetCachePolicy
      def self.parse(http_resp)
        data = Types::GetCachePolicyOutput.new
        data.e_tag = http_resp.headers['ETag']
        data
      end
    end

    # Operation Parser for GetCachePolicyConfig
    class GetCachePolicyConfig
      def self.parse(http_resp)
        data = Types::GetCachePolicyConfigOutput.new
        data.e_tag = http_resp.headers['ETag']
        data
      end
    end

    # Operation Parser for GetCloudFrontOriginAccessIdentity
    class GetCloudFrontOriginAccessIdentity
      def self.parse(http_resp)
        data = Types::GetCloudFrontOriginAccessIdentityOutput.new
        data.e_tag = http_resp.headers['ETag']
        data
      end
    end

    # Operation Parser for GetCloudFrontOriginAccessIdentityConfig
    class GetCloudFrontOriginAccessIdentityConfig
      def self.parse(http_resp)
        data = Types::GetCloudFrontOriginAccessIdentityConfigOutput.new
        data.e_tag = http_resp.headers['ETag']
        data
      end
    end

    # Operation Parser for GetDistribution
    class GetDistribution
      def self.parse(http_resp)
        data = Types::GetDistributionOutput.new
        data.e_tag = http_resp.headers['ETag']
        data
      end
    end

    # Operation Parser for GetDistributionConfig
    class GetDistributionConfig
      def self.parse(http_resp)
        data = Types::GetDistributionConfigOutput.new
        data.e_tag = http_resp.headers['ETag']
        data
      end
    end

    # Operation Parser for GetFieldLevelEncryption
    class GetFieldLevelEncryption
      def self.parse(http_resp)
        data = Types::GetFieldLevelEncryptionOutput.new
        data.e_tag = http_resp.headers['ETag']
        data
      end
    end

    # Operation Parser for GetFieldLevelEncryptionConfig
    class GetFieldLevelEncryptionConfig
      def self.parse(http_resp)
        data = Types::GetFieldLevelEncryptionConfigOutput.new
        data.e_tag = http_resp.headers['ETag']
        data
      end
    end

    # Operation Parser for GetFieldLevelEncryptionProfile
    class GetFieldLevelEncryptionProfile
      def self.parse(http_resp)
        data = Types::GetFieldLevelEncryptionProfileOutput.new
        data.e_tag = http_resp.headers['ETag']
        data
      end
    end

    # Operation Parser for GetFieldLevelEncryptionProfileConfig
    class GetFieldLevelEncryptionProfileConfig
      def self.parse(http_resp)
        data = Types::GetFieldLevelEncryptionProfileConfigOutput.new
        data.e_tag = http_resp.headers['ETag']
        data
      end
    end

    # Operation Parser for GetFunction
    class GetFunction
      def self.parse(http_resp)
        data = Types::GetFunctionOutput.new
        data.e_tag = http_resp.headers['ETag']
        data.content_type = http_resp.headers['Content-Type']
        data
      end
    end

    # Operation Parser for GetInvalidation
    class GetInvalidation
      def self.parse(http_resp)
        data = Types::GetInvalidationOutput.new
        data
      end
    end

    # Error Parser for NoSuchInvalidation
    class NoSuchInvalidation
      def self.parse(http_resp)
        data = Types::NoSuchInvalidation.new
        data
      end
    end

    # Operation Parser for GetKeyGroup
    class GetKeyGroup
      def self.parse(http_resp)
        data = Types::GetKeyGroupOutput.new
        data.e_tag = http_resp.headers['ETag']
        data
      end
    end

    # Operation Parser for GetKeyGroupConfig
    class GetKeyGroupConfig
      def self.parse(http_resp)
        data = Types::GetKeyGroupConfigOutput.new
        data.e_tag = http_resp.headers['ETag']
        data
      end
    end

    # Operation Parser for GetMonitoringSubscription
    class GetMonitoringSubscription
      def self.parse(http_resp)
        data = Types::GetMonitoringSubscriptionOutput.new
        data
      end
    end

    # Operation Parser for GetOriginRequestPolicy
    class GetOriginRequestPolicy
      def self.parse(http_resp)
        data = Types::GetOriginRequestPolicyOutput.new
        data.e_tag = http_resp.headers['ETag']
        data
      end
    end

    # Operation Parser for GetOriginRequestPolicyConfig
    class GetOriginRequestPolicyConfig
      def self.parse(http_resp)
        data = Types::GetOriginRequestPolicyConfigOutput.new
        data.e_tag = http_resp.headers['ETag']
        data
      end
    end

    # Operation Parser for GetPublicKey
    class GetPublicKey
      def self.parse(http_resp)
        data = Types::GetPublicKeyOutput.new
        data.e_tag = http_resp.headers['ETag']
        data
      end
    end

    # Operation Parser for GetPublicKeyConfig
    class GetPublicKeyConfig
      def self.parse(http_resp)
        data = Types::GetPublicKeyConfigOutput.new
        data.e_tag = http_resp.headers['ETag']
        data
      end
    end

    # Operation Parser for GetRealtimeLogConfig
    class GetRealtimeLogConfig
      def self.parse(http_resp)
        data = Types::GetRealtimeLogConfigOutput.new
        data
      end
    end

    # Operation Parser for GetResponseHeadersPolicy
    class GetResponseHeadersPolicy
      def self.parse(http_resp)
        data = Types::GetResponseHeadersPolicyOutput.new
        data.e_tag = http_resp.headers['ETag']
        data
      end
    end

    # Operation Parser for GetResponseHeadersPolicyConfig
    class GetResponseHeadersPolicyConfig
      def self.parse(http_resp)
        data = Types::GetResponseHeadersPolicyConfigOutput.new
        data.e_tag = http_resp.headers['ETag']
        data
      end
    end

    # Operation Parser for GetStreamingDistribution
    class GetStreamingDistribution
      def self.parse(http_resp)
        data = Types::GetStreamingDistributionOutput.new
        data.e_tag = http_resp.headers['ETag']
        data
      end
    end

    # Operation Parser for GetStreamingDistributionConfig
    class GetStreamingDistributionConfig
      def self.parse(http_resp)
        data = Types::GetStreamingDistributionConfigOutput.new
        data.e_tag = http_resp.headers['ETag']
        data
      end
    end

    # Operation Parser for ListCachePolicies
    class ListCachePolicies
      def self.parse(http_resp)
        data = Types::ListCachePoliciesOutput.new
        data
      end
    end

    class CachePolicyList
      def self.parse(map)
        data = Types::CachePolicyList.new
        return data
      end
    end

    class CachePolicySummaryList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class CachePolicySummary
      def self.parse(map)
        data = Types::CachePolicySummary.new
        return data
      end
    end

    # Operation Parser for ListCloudFrontOriginAccessIdentities
    class ListCloudFrontOriginAccessIdentities
      def self.parse(http_resp)
        data = Types::ListCloudFrontOriginAccessIdentitiesOutput.new
        data
      end
    end

    class CloudFrontOriginAccessIdentityList
      def self.parse(map)
        data = Types::CloudFrontOriginAccessIdentityList.new
        return data
      end
    end

    class CloudFrontOriginAccessIdentitySummaryList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class CloudFrontOriginAccessIdentitySummary
      def self.parse(map)
        data = Types::CloudFrontOriginAccessIdentitySummary.new
        return data
      end
    end

    # Operation Parser for ListConflictingAliases
    class ListConflictingAliases
      def self.parse(http_resp)
        data = Types::ListConflictingAliasesOutput.new
        data
      end
    end

    class ConflictingAliasesList
      def self.parse(map)
        data = Types::ConflictingAliasesList.new
        return data
      end
    end

    class ConflictingAliases
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class ConflictingAlias
      def self.parse(map)
        data = Types::ConflictingAlias.new
        return data
      end
    end

    # Operation Parser for ListDistributions
    class ListDistributions
      def self.parse(http_resp)
        data = Types::ListDistributionsOutput.new
        data
      end
    end

    class DistributionList
      def self.parse(map)
        data = Types::DistributionList.new
        return data
      end
    end

    class DistributionSummaryList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class DistributionSummary
      def self.parse(map)
        data = Types::DistributionSummary.new
        return data
      end
    end

    # Operation Parser for ListDistributionsByCachePolicyId
    class ListDistributionsByCachePolicyId
      def self.parse(http_resp)
        data = Types::ListDistributionsByCachePolicyIdOutput.new
        data
      end
    end

    class DistributionIdList
      def self.parse(map)
        data = Types::DistributionIdList.new
        return data
      end
    end

    class DistributionIdListSummary
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for ListDistributionsByKeyGroup
    class ListDistributionsByKeyGroup
      def self.parse(http_resp)
        data = Types::ListDistributionsByKeyGroupOutput.new
        data
      end
    end

    # Operation Parser for ListDistributionsByOriginRequestPolicyId
    class ListDistributionsByOriginRequestPolicyId
      def self.parse(http_resp)
        data = Types::ListDistributionsByOriginRequestPolicyIdOutput.new
        data
      end
    end

    # Operation Parser for ListDistributionsByRealtimeLogConfig
    class ListDistributionsByRealtimeLogConfig
      def self.parse(http_resp)
        data = Types::ListDistributionsByRealtimeLogConfigOutput.new
        data
      end
    end

    # Operation Parser for ListDistributionsByResponseHeadersPolicyId
    class ListDistributionsByResponseHeadersPolicyId
      def self.parse(http_resp)
        data = Types::ListDistributionsByResponseHeadersPolicyIdOutput.new
        data
      end
    end

    # Operation Parser for ListDistributionsByWebACLId
    class ListDistributionsByWebACLId
      def self.parse(http_resp)
        data = Types::ListDistributionsByWebACLIdOutput.new
        data
      end
    end

    # Operation Parser for ListFieldLevelEncryptionConfigs
    class ListFieldLevelEncryptionConfigs
      def self.parse(http_resp)
        data = Types::ListFieldLevelEncryptionConfigsOutput.new
        data
      end
    end

    class FieldLevelEncryptionList
      def self.parse(map)
        data = Types::FieldLevelEncryptionList.new
        return data
      end
    end

    class FieldLevelEncryptionSummaryList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class FieldLevelEncryptionSummary
      def self.parse(map)
        data = Types::FieldLevelEncryptionSummary.new
        return data
      end
    end

    # Operation Parser for ListFieldLevelEncryptionProfiles
    class ListFieldLevelEncryptionProfiles
      def self.parse(http_resp)
        data = Types::ListFieldLevelEncryptionProfilesOutput.new
        data
      end
    end

    class FieldLevelEncryptionProfileList
      def self.parse(map)
        data = Types::FieldLevelEncryptionProfileList.new
        return data
      end
    end

    class FieldLevelEncryptionProfileSummaryList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class FieldLevelEncryptionProfileSummary
      def self.parse(map)
        data = Types::FieldLevelEncryptionProfileSummary.new
        return data
      end
    end

    # Operation Parser for ListFunctions
    class ListFunctions
      def self.parse(http_resp)
        data = Types::ListFunctionsOutput.new
        data
      end
    end

    class FunctionList
      def self.parse(map)
        data = Types::FunctionList.new
        return data
      end
    end

    class FunctionSummaryList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for ListInvalidations
    class ListInvalidations
      def self.parse(http_resp)
        data = Types::ListInvalidationsOutput.new
        data
      end
    end

    class InvalidationList
      def self.parse(map)
        data = Types::InvalidationList.new
        return data
      end
    end

    class InvalidationSummaryList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class InvalidationSummary
      def self.parse(map)
        data = Types::InvalidationSummary.new
        return data
      end
    end

    # Operation Parser for ListKeyGroups
    class ListKeyGroups
      def self.parse(http_resp)
        data = Types::ListKeyGroupsOutput.new
        data
      end
    end

    class KeyGroupList
      def self.parse(map)
        data = Types::KeyGroupList.new
        return data
      end
    end

    class KeyGroupSummaryList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class KeyGroupSummary
      def self.parse(map)
        data = Types::KeyGroupSummary.new
        return data
      end
    end

    # Operation Parser for ListOriginRequestPolicies
    class ListOriginRequestPolicies
      def self.parse(http_resp)
        data = Types::ListOriginRequestPoliciesOutput.new
        data
      end
    end

    class OriginRequestPolicyList
      def self.parse(map)
        data = Types::OriginRequestPolicyList.new
        return data
      end
    end

    class OriginRequestPolicySummaryList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class OriginRequestPolicySummary
      def self.parse(map)
        data = Types::OriginRequestPolicySummary.new
        return data
      end
    end

    # Operation Parser for ListPublicKeys
    class ListPublicKeys
      def self.parse(http_resp)
        data = Types::ListPublicKeysOutput.new
        data
      end
    end

    class PublicKeyList
      def self.parse(map)
        data = Types::PublicKeyList.new
        return data
      end
    end

    class PublicKeySummaryList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class PublicKeySummary
      def self.parse(map)
        data = Types::PublicKeySummary.new
        return data
      end
    end

    # Operation Parser for ListRealtimeLogConfigs
    class ListRealtimeLogConfigs
      def self.parse(http_resp)
        data = Types::ListRealtimeLogConfigsOutput.new
        data
      end
    end

    class RealtimeLogConfigs
      def self.parse(map)
        data = Types::RealtimeLogConfigs.new
        return data
      end
    end

    class RealtimeLogConfigList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Operation Parser for ListResponseHeadersPolicies
    class ListResponseHeadersPolicies
      def self.parse(http_resp)
        data = Types::ListResponseHeadersPoliciesOutput.new
        data
      end
    end

    class ResponseHeadersPolicyList
      def self.parse(map)
        data = Types::ResponseHeadersPolicyList.new
        return data
      end
    end

    class ResponseHeadersPolicySummaryList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class ResponseHeadersPolicySummary
      def self.parse(map)
        data = Types::ResponseHeadersPolicySummary.new
        return data
      end
    end

    # Operation Parser for ListStreamingDistributions
    class ListStreamingDistributions
      def self.parse(http_resp)
        data = Types::ListStreamingDistributionsOutput.new
        data
      end
    end

    class StreamingDistributionList
      def self.parse(map)
        data = Types::StreamingDistributionList.new
        return data
      end
    end

    class StreamingDistributionSummaryList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class StreamingDistributionSummary
      def self.parse(map)
        data = Types::StreamingDistributionSummary.new
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        data
      end
    end

    class Tags
      def self.parse(map)
        data = Types::Tags.new
        return data
      end
    end

    class TagList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    class Tag
      def self.parse(map)
        data = Types::Tag.new
        return data
      end
    end

    # Operation Parser for PublishFunction
    class PublishFunction
      def self.parse(http_resp)
        data = Types::PublishFunctionOutput.new
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        data
      end
    end

    # Operation Parser for TestFunction
    class TestFunction
      def self.parse(http_resp)
        data = Types::TestFunctionOutput.new
        data
      end
    end

    class TestResult
      def self.parse(map)
        data = Types::TestResult.new
        return data
      end
    end

    class FunctionExecutionLogList
      def self.parse(list)
        list.map do |value|
        end
      end
    end

    # Error Parser for TestFunctionFailed
    class TestFunctionFailed
      def self.parse(http_resp)
        data = Types::TestFunctionFailed.new
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        data
      end
    end

    # Operation Parser for UpdateCachePolicy
    class UpdateCachePolicy
      def self.parse(http_resp)
        data = Types::UpdateCachePolicyOutput.new
        data.e_tag = http_resp.headers['ETag']
        data
      end
    end

    # Operation Parser for UpdateCloudFrontOriginAccessIdentity
    class UpdateCloudFrontOriginAccessIdentity
      def self.parse(http_resp)
        data = Types::UpdateCloudFrontOriginAccessIdentityOutput.new
        data.e_tag = http_resp.headers['ETag']
        data
      end
    end

    # Operation Parser for UpdateDistribution
    class UpdateDistribution
      def self.parse(http_resp)
        data = Types::UpdateDistributionOutput.new
        data.e_tag = http_resp.headers['ETag']
        data
      end
    end

    # Operation Parser for UpdateFieldLevelEncryptionConfig
    class UpdateFieldLevelEncryptionConfig
      def self.parse(http_resp)
        data = Types::UpdateFieldLevelEncryptionConfigOutput.new
        data.e_tag = http_resp.headers['ETag']
        data
      end
    end

    # Operation Parser for UpdateFieldLevelEncryptionProfile
    class UpdateFieldLevelEncryptionProfile
      def self.parse(http_resp)
        data = Types::UpdateFieldLevelEncryptionProfileOutput.new
        data.e_tag = http_resp.headers['ETag']
        data
      end
    end

    # Operation Parser for UpdateFunction
    class UpdateFunction
      def self.parse(http_resp)
        data = Types::UpdateFunctionOutput.new
        data.e_tag = http_resp.headers['ETtag']
        data
      end
    end

    # Operation Parser for UpdateKeyGroup
    class UpdateKeyGroup
      def self.parse(http_resp)
        data = Types::UpdateKeyGroupOutput.new
        data.e_tag = http_resp.headers['ETag']
        data
      end
    end

    # Operation Parser for UpdateOriginRequestPolicy
    class UpdateOriginRequestPolicy
      def self.parse(http_resp)
        data = Types::UpdateOriginRequestPolicyOutput.new
        data.e_tag = http_resp.headers['ETag']
        data
      end
    end

    # Operation Parser for UpdatePublicKey
    class UpdatePublicKey
      def self.parse(http_resp)
        data = Types::UpdatePublicKeyOutput.new
        data.e_tag = http_resp.headers['ETag']
        data
      end
    end

    # Error Parser for CannotChangeImmutablePublicKeyFields
    class CannotChangeImmutablePublicKeyFields
      def self.parse(http_resp)
        data = Types::CannotChangeImmutablePublicKeyFields.new
        data
      end
    end

    # Operation Parser for UpdateRealtimeLogConfig
    class UpdateRealtimeLogConfig
      def self.parse(http_resp)
        data = Types::UpdateRealtimeLogConfigOutput.new
        data
      end
    end

    # Operation Parser for UpdateResponseHeadersPolicy
    class UpdateResponseHeadersPolicy
      def self.parse(http_resp)
        data = Types::UpdateResponseHeadersPolicyOutput.new
        data.e_tag = http_resp.headers['ETag']
        data
      end
    end

    # Operation Parser for UpdateStreamingDistribution
    class UpdateStreamingDistribution
      def self.parse(http_resp)
        data = Types::UpdateStreamingDistributionOutput.new
        data.e_tag = http_resp.headers['ETag']
        data
      end
    end
  end
end
