# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::Cloudfront
  module Errors

    # Base class for all errors returned by this service
    class ApiError < Hearth::HTTP::ApiError; end

    # Base class for all errors returned where the client is at fault.
    # These are generally errors with 4XX HTTP status codes.
    class ApiClientError < ApiError; end

    # Base class for all errors returned where the server is at fault.
    # These are generally errors with 5XX HTTP status codes.
    class ApiServerError < ApiError; end

    # Base class for all errors returned where the service returned
    # a 3XX redirection.
    class ApiRedirectError < ApiError
      def initialize(location:, **kwargs)
        @location = location
        super(**kwargs)
      end

      # @return [String] location
      attr_reader :location
    end

    class AccessDenied < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::AccessDenied.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::AccessDenied]
      #
      attr_reader :data
    end

    class BatchTooLarge < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::BatchTooLarge.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::BatchTooLarge]
      #
      attr_reader :data
    end

    class CNAMEAlreadyExists < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CNAMEAlreadyExists.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CNAMEAlreadyExists]
      #
      attr_reader :data
    end

    class CachePolicyAlreadyExists < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CachePolicyAlreadyExists.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CachePolicyAlreadyExists]
      #
      attr_reader :data
    end

    class CachePolicyInUse < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CachePolicyInUse.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CachePolicyInUse]
      #
      attr_reader :data
    end

    class CannotChangeImmutablePublicKeyFields < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CannotChangeImmutablePublicKeyFields.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CannotChangeImmutablePublicKeyFields]
      #
      attr_reader :data
    end

    class CloudFrontOriginAccessIdentityAlreadyExists < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CloudFrontOriginAccessIdentityAlreadyExists.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CloudFrontOriginAccessIdentityAlreadyExists]
      #
      attr_reader :data
    end

    class CloudFrontOriginAccessIdentityInUse < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CloudFrontOriginAccessIdentityInUse.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CloudFrontOriginAccessIdentityInUse]
      #
      attr_reader :data
    end

    class DistributionAlreadyExists < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DistributionAlreadyExists.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DistributionAlreadyExists]
      #
      attr_reader :data
    end

    class DistributionNotDisabled < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DistributionNotDisabled.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DistributionNotDisabled]
      #
      attr_reader :data
    end

    class FieldLevelEncryptionConfigAlreadyExists < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::FieldLevelEncryptionConfigAlreadyExists.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::FieldLevelEncryptionConfigAlreadyExists]
      #
      attr_reader :data
    end

    class FieldLevelEncryptionConfigInUse < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::FieldLevelEncryptionConfigInUse.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::FieldLevelEncryptionConfigInUse]
      #
      attr_reader :data
    end

    class FieldLevelEncryptionProfileAlreadyExists < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::FieldLevelEncryptionProfileAlreadyExists.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::FieldLevelEncryptionProfileAlreadyExists]
      #
      attr_reader :data
    end

    class FieldLevelEncryptionProfileInUse < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::FieldLevelEncryptionProfileInUse.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::FieldLevelEncryptionProfileInUse]
      #
      attr_reader :data
    end

    class FieldLevelEncryptionProfileSizeExceeded < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::FieldLevelEncryptionProfileSizeExceeded.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::FieldLevelEncryptionProfileSizeExceeded]
      #
      attr_reader :data
    end

    class FunctionAlreadyExists < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::FunctionAlreadyExists.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::FunctionAlreadyExists]
      #
      attr_reader :data
    end

    class FunctionInUse < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::FunctionInUse.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::FunctionInUse]
      #
      attr_reader :data
    end

    class FunctionSizeLimitExceeded < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::FunctionSizeLimitExceeded.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::FunctionSizeLimitExceeded]
      #
      attr_reader :data
    end

    class IllegalDelete < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::IllegalDelete.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::IllegalDelete]
      #
      attr_reader :data
    end

    class IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior]
      #
      attr_reader :data
    end

    class IllegalUpdate < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::IllegalUpdate.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::IllegalUpdate]
      #
      attr_reader :data
    end

    class InconsistentQuantities < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InconsistentQuantities.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InconsistentQuantities]
      #
      attr_reader :data
    end

    class InvalidArgument < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidArgument.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidArgument]
      #
      attr_reader :data
    end

    class InvalidDefaultRootObject < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidDefaultRootObject.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidDefaultRootObject]
      #
      attr_reader :data
    end

    class InvalidErrorCode < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidErrorCode.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidErrorCode]
      #
      attr_reader :data
    end

    class InvalidForwardCookies < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidForwardCookies.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidForwardCookies]
      #
      attr_reader :data
    end

    class InvalidFunctionAssociation < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidFunctionAssociation.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidFunctionAssociation]
      #
      attr_reader :data
    end

    class InvalidGeoRestrictionParameter < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidGeoRestrictionParameter.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidGeoRestrictionParameter]
      #
      attr_reader :data
    end

    class InvalidHeadersForS3Origin < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidHeadersForS3Origin.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidHeadersForS3Origin]
      #
      attr_reader :data
    end

    class InvalidIfMatchVersion < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidIfMatchVersion.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidIfMatchVersion]
      #
      attr_reader :data
    end

    class InvalidLambdaFunctionAssociation < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidLambdaFunctionAssociation.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidLambdaFunctionAssociation]
      #
      attr_reader :data
    end

    class InvalidLocationCode < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidLocationCode.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidLocationCode]
      #
      attr_reader :data
    end

    class InvalidMinimumProtocolVersion < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidMinimumProtocolVersion.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidMinimumProtocolVersion]
      #
      attr_reader :data
    end

    class InvalidOrigin < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidOrigin.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidOrigin]
      #
      attr_reader :data
    end

    class InvalidOriginAccessIdentity < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidOriginAccessIdentity.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidOriginAccessIdentity]
      #
      attr_reader :data
    end

    class InvalidOriginKeepaliveTimeout < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidOriginKeepaliveTimeout.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidOriginKeepaliveTimeout]
      #
      attr_reader :data
    end

    class InvalidOriginReadTimeout < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidOriginReadTimeout.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidOriginReadTimeout]
      #
      attr_reader :data
    end

    class InvalidProtocolSettings < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidProtocolSettings.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidProtocolSettings]
      #
      attr_reader :data
    end

    class InvalidQueryStringParameters < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidQueryStringParameters.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidQueryStringParameters]
      #
      attr_reader :data
    end

    class InvalidRelativePath < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidRelativePath.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidRelativePath]
      #
      attr_reader :data
    end

    class InvalidRequiredProtocol < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidRequiredProtocol.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidRequiredProtocol]
      #
      attr_reader :data
    end

    class InvalidResponseCode < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidResponseCode.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidResponseCode]
      #
      attr_reader :data
    end

    class InvalidTTLOrder < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidTTLOrder.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidTTLOrder]
      #
      attr_reader :data
    end

    class InvalidTagging < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidTagging.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidTagging]
      #
      attr_reader :data
    end

    class InvalidViewerCertificate < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidViewerCertificate.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidViewerCertificate]
      #
      attr_reader :data
    end

    class InvalidWebACLId < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidWebACLId.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidWebACLId]
      #
      attr_reader :data
    end

    class KeyGroupAlreadyExists < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::KeyGroupAlreadyExists.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::KeyGroupAlreadyExists]
      #
      attr_reader :data
    end

    class MissingBody < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::MissingBody.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::MissingBody]
      #
      attr_reader :data
    end

    class NoSuchCachePolicy < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NoSuchCachePolicy.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NoSuchCachePolicy]
      #
      attr_reader :data
    end

    class NoSuchCloudFrontOriginAccessIdentity < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NoSuchCloudFrontOriginAccessIdentity.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NoSuchCloudFrontOriginAccessIdentity]
      #
      attr_reader :data
    end

    class NoSuchDistribution < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NoSuchDistribution.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NoSuchDistribution]
      #
      attr_reader :data
    end

    class NoSuchFieldLevelEncryptionConfig < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NoSuchFieldLevelEncryptionConfig.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NoSuchFieldLevelEncryptionConfig]
      #
      attr_reader :data
    end

    class NoSuchFieldLevelEncryptionProfile < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NoSuchFieldLevelEncryptionProfile.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NoSuchFieldLevelEncryptionProfile]
      #
      attr_reader :data
    end

    class NoSuchFunctionExists < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NoSuchFunctionExists.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NoSuchFunctionExists]
      #
      attr_reader :data
    end

    class NoSuchInvalidation < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NoSuchInvalidation.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NoSuchInvalidation]
      #
      attr_reader :data
    end

    class NoSuchOrigin < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NoSuchOrigin.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NoSuchOrigin]
      #
      attr_reader :data
    end

    class NoSuchOriginRequestPolicy < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NoSuchOriginRequestPolicy.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NoSuchOriginRequestPolicy]
      #
      attr_reader :data
    end

    class NoSuchPublicKey < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NoSuchPublicKey.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NoSuchPublicKey]
      #
      attr_reader :data
    end

    class NoSuchRealtimeLogConfig < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NoSuchRealtimeLogConfig.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NoSuchRealtimeLogConfig]
      #
      attr_reader :data
    end

    class NoSuchResource < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NoSuchResource.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NoSuchResource]
      #
      attr_reader :data
    end

    class NoSuchResponseHeadersPolicy < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NoSuchResponseHeadersPolicy.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NoSuchResponseHeadersPolicy]
      #
      attr_reader :data
    end

    class NoSuchStreamingDistribution < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NoSuchStreamingDistribution.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NoSuchStreamingDistribution]
      #
      attr_reader :data
    end

    class OriginRequestPolicyAlreadyExists < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::OriginRequestPolicyAlreadyExists.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::OriginRequestPolicyAlreadyExists]
      #
      attr_reader :data
    end

    class OriginRequestPolicyInUse < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::OriginRequestPolicyInUse.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::OriginRequestPolicyInUse]
      #
      attr_reader :data
    end

    class PreconditionFailed < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::PreconditionFailed.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::PreconditionFailed]
      #
      attr_reader :data
    end

    class PublicKeyAlreadyExists < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::PublicKeyAlreadyExists.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::PublicKeyAlreadyExists]
      #
      attr_reader :data
    end

    class PublicKeyInUse < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::PublicKeyInUse.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::PublicKeyInUse]
      #
      attr_reader :data
    end

    class QueryArgProfileEmpty < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::QueryArgProfileEmpty.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::QueryArgProfileEmpty]
      #
      attr_reader :data
    end

    class RealtimeLogConfigAlreadyExists < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::RealtimeLogConfigAlreadyExists.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::RealtimeLogConfigAlreadyExists]
      #
      attr_reader :data
    end

    class RealtimeLogConfigInUse < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::RealtimeLogConfigInUse.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::RealtimeLogConfigInUse]
      #
      attr_reader :data
    end

    class RealtimeLogConfigOwnerMismatch < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::RealtimeLogConfigOwnerMismatch.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::RealtimeLogConfigOwnerMismatch]
      #
      attr_reader :data
    end

    class ResourceInUse < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ResourceInUse.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ResourceInUse]
      #
      attr_reader :data
    end

    class ResponseHeadersPolicyAlreadyExists < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ResponseHeadersPolicyAlreadyExists.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ResponseHeadersPolicyAlreadyExists]
      #
      attr_reader :data
    end

    class ResponseHeadersPolicyInUse < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ResponseHeadersPolicyInUse.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ResponseHeadersPolicyInUse]
      #
      attr_reader :data
    end

    class StreamingDistributionAlreadyExists < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::StreamingDistributionAlreadyExists.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::StreamingDistributionAlreadyExists]
      #
      attr_reader :data
    end

    class StreamingDistributionNotDisabled < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::StreamingDistributionNotDisabled.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::StreamingDistributionNotDisabled]
      #
      attr_reader :data
    end

    class TestFunctionFailed < ApiServerError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TestFunctionFailed.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TestFunctionFailed]
      #
      attr_reader :data
    end

    class TooManyCacheBehaviors < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyCacheBehaviors.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyCacheBehaviors]
      #
      attr_reader :data
    end

    class TooManyCachePolicies < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyCachePolicies.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyCachePolicies]
      #
      attr_reader :data
    end

    class TooManyCertificates < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyCertificates.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyCertificates]
      #
      attr_reader :data
    end

    class TooManyCloudFrontOriginAccessIdentities < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyCloudFrontOriginAccessIdentities.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyCloudFrontOriginAccessIdentities]
      #
      attr_reader :data
    end

    class TooManyCookieNamesInWhiteList < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyCookieNamesInWhiteList.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyCookieNamesInWhiteList]
      #
      attr_reader :data
    end

    class TooManyCookiesInCachePolicy < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyCookiesInCachePolicy.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyCookiesInCachePolicy]
      #
      attr_reader :data
    end

    class TooManyCookiesInOriginRequestPolicy < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyCookiesInOriginRequestPolicy.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyCookiesInOriginRequestPolicy]
      #
      attr_reader :data
    end

    class TooManyCustomHeadersInResponseHeadersPolicy < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyCustomHeadersInResponseHeadersPolicy.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyCustomHeadersInResponseHeadersPolicy]
      #
      attr_reader :data
    end

    class TooManyDistributionCNAMEs < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyDistributionCNAMEs.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyDistributionCNAMEs]
      #
      attr_reader :data
    end

    class TooManyDistributions < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyDistributions.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyDistributions]
      #
      attr_reader :data
    end

    class TooManyDistributionsAssociatedToCachePolicy < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyDistributionsAssociatedToCachePolicy.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyDistributionsAssociatedToCachePolicy]
      #
      attr_reader :data
    end

    class TooManyDistributionsAssociatedToFieldLevelEncryptionConfig < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyDistributionsAssociatedToFieldLevelEncryptionConfig.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyDistributionsAssociatedToFieldLevelEncryptionConfig]
      #
      attr_reader :data
    end

    class TooManyDistributionsAssociatedToKeyGroup < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyDistributionsAssociatedToKeyGroup.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyDistributionsAssociatedToKeyGroup]
      #
      attr_reader :data
    end

    class TooManyDistributionsAssociatedToOriginRequestPolicy < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyDistributionsAssociatedToOriginRequestPolicy.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyDistributionsAssociatedToOriginRequestPolicy]
      #
      attr_reader :data
    end

    class TooManyDistributionsAssociatedToResponseHeadersPolicy < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyDistributionsAssociatedToResponseHeadersPolicy.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyDistributionsAssociatedToResponseHeadersPolicy]
      #
      attr_reader :data
    end

    class TooManyDistributionsWithFunctionAssociations < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyDistributionsWithFunctionAssociations.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyDistributionsWithFunctionAssociations]
      #
      attr_reader :data
    end

    class TooManyDistributionsWithLambdaAssociations < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyDistributionsWithLambdaAssociations.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyDistributionsWithLambdaAssociations]
      #
      attr_reader :data
    end

    class TooManyDistributionsWithSingleFunctionARN < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyDistributionsWithSingleFunctionARN.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyDistributionsWithSingleFunctionARN]
      #
      attr_reader :data
    end

    class TooManyFieldLevelEncryptionConfigs < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyFieldLevelEncryptionConfigs.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyFieldLevelEncryptionConfigs]
      #
      attr_reader :data
    end

    class TooManyFieldLevelEncryptionContentTypeProfiles < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyFieldLevelEncryptionContentTypeProfiles.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyFieldLevelEncryptionContentTypeProfiles]
      #
      attr_reader :data
    end

    class TooManyFieldLevelEncryptionEncryptionEntities < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyFieldLevelEncryptionEncryptionEntities.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyFieldLevelEncryptionEncryptionEntities]
      #
      attr_reader :data
    end

    class TooManyFieldLevelEncryptionFieldPatterns < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyFieldLevelEncryptionFieldPatterns.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyFieldLevelEncryptionFieldPatterns]
      #
      attr_reader :data
    end

    class TooManyFieldLevelEncryptionProfiles < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyFieldLevelEncryptionProfiles.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyFieldLevelEncryptionProfiles]
      #
      attr_reader :data
    end

    class TooManyFieldLevelEncryptionQueryArgProfiles < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyFieldLevelEncryptionQueryArgProfiles.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyFieldLevelEncryptionQueryArgProfiles]
      #
      attr_reader :data
    end

    class TooManyFunctionAssociations < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyFunctionAssociations.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyFunctionAssociations]
      #
      attr_reader :data
    end

    class TooManyFunctions < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyFunctions.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyFunctions]
      #
      attr_reader :data
    end

    class TooManyHeadersInCachePolicy < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyHeadersInCachePolicy.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyHeadersInCachePolicy]
      #
      attr_reader :data
    end

    class TooManyHeadersInForwardedValues < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyHeadersInForwardedValues.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyHeadersInForwardedValues]
      #
      attr_reader :data
    end

    class TooManyHeadersInOriginRequestPolicy < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyHeadersInOriginRequestPolicy.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyHeadersInOriginRequestPolicy]
      #
      attr_reader :data
    end

    class TooManyInvalidationsInProgress < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyInvalidationsInProgress.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyInvalidationsInProgress]
      #
      attr_reader :data
    end

    class TooManyKeyGroups < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyKeyGroups.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyKeyGroups]
      #
      attr_reader :data
    end

    class TooManyKeyGroupsAssociatedToDistribution < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyKeyGroupsAssociatedToDistribution.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyKeyGroupsAssociatedToDistribution]
      #
      attr_reader :data
    end

    class TooManyLambdaFunctionAssociations < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyLambdaFunctionAssociations.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyLambdaFunctionAssociations]
      #
      attr_reader :data
    end

    class TooManyOriginCustomHeaders < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyOriginCustomHeaders.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyOriginCustomHeaders]
      #
      attr_reader :data
    end

    class TooManyOriginGroupsPerDistribution < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyOriginGroupsPerDistribution.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyOriginGroupsPerDistribution]
      #
      attr_reader :data
    end

    class TooManyOriginRequestPolicies < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyOriginRequestPolicies.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyOriginRequestPolicies]
      #
      attr_reader :data
    end

    class TooManyOrigins < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyOrigins.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyOrigins]
      #
      attr_reader :data
    end

    class TooManyPublicKeys < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyPublicKeys.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyPublicKeys]
      #
      attr_reader :data
    end

    class TooManyPublicKeysInKeyGroup < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyPublicKeysInKeyGroup.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyPublicKeysInKeyGroup]
      #
      attr_reader :data
    end

    class TooManyQueryStringParameters < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyQueryStringParameters.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyQueryStringParameters]
      #
      attr_reader :data
    end

    class TooManyQueryStringsInCachePolicy < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyQueryStringsInCachePolicy.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyQueryStringsInCachePolicy]
      #
      attr_reader :data
    end

    class TooManyQueryStringsInOriginRequestPolicy < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyQueryStringsInOriginRequestPolicy.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyQueryStringsInOriginRequestPolicy]
      #
      attr_reader :data
    end

    class TooManyRealtimeLogConfigs < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyRealtimeLogConfigs.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyRealtimeLogConfigs]
      #
      attr_reader :data
    end

    class TooManyResponseHeadersPolicies < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyResponseHeadersPolicies.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyResponseHeadersPolicies]
      #
      attr_reader :data
    end

    class TooManyStreamingDistributionCNAMEs < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyStreamingDistributionCNAMEs.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyStreamingDistributionCNAMEs]
      #
      attr_reader :data
    end

    class TooManyStreamingDistributions < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyStreamingDistributions.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyStreamingDistributions]
      #
      attr_reader :data
    end

    class TooManyTrustedSigners < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyTrustedSigners.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyTrustedSigners]
      #
      attr_reader :data
    end

    class TrustedKeyGroupDoesNotExist < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TrustedKeyGroupDoesNotExist.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TrustedKeyGroupDoesNotExist]
      #
      attr_reader :data
    end

    class TrustedSignerDoesNotExist < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TrustedSignerDoesNotExist.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TrustedSignerDoesNotExist]
      #
      attr_reader :data
    end

    class UnsupportedOperation < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UnsupportedOperation.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UnsupportedOperation]
      #
      attr_reader :data
    end

  end
end
