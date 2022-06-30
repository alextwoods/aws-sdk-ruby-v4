# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::Signer
  module Parsers

    # Operation Parser for AddProfilePermission
    class AddProfilePermission
      def self.parse(http_resp)
        data = Types::AddProfilePermissionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.revision_id = map['revisionId']
        data
      end
    end

    # Error Parser for TooManyRequestsException
    class TooManyRequestsException
      def self.parse(http_resp)
        data = Types::TooManyRequestsException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.code = map['code']
        data
      end
    end

    # Error Parser for ServiceLimitExceededException
    class ServiceLimitExceededException
      def self.parse(http_resp)
        data = Types::ServiceLimitExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.code = map['code']
        data
      end
    end

    # Error Parser for InternalServiceErrorException
    class InternalServiceErrorException
      def self.parse(http_resp)
        data = Types::InternalServiceErrorException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.code = map['code']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.code = map['code']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.code = map['code']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.code = map['code']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.code = map['code']
        data
      end
    end

    # Operation Parser for CancelSigningProfile
    class CancelSigningProfile
      def self.parse(http_resp)
        data = Types::CancelSigningProfileOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DescribeSigningJob
    class DescribeSigningJob
      def self.parse(http_resp)
        data = Types::DescribeSigningJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.job_id = map['jobId']
        data.source = (Parsers::Source.parse(map['source']) unless map['source'].nil?)
        data.signing_material = (Parsers::SigningMaterial.parse(map['signingMaterial']) unless map['signingMaterial'].nil?)
        data.platform_id = map['platformId']
        data.platform_display_name = map['platformDisplayName']
        data.profile_name = map['profileName']
        data.profile_version = map['profileVersion']
        data.overrides = (Parsers::SigningPlatformOverrides.parse(map['overrides']) unless map['overrides'].nil?)
        data.signing_parameters = (Parsers::SigningParameters.parse(map['signingParameters']) unless map['signingParameters'].nil?)
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.completed_at = Time.at(map['completedAt'].to_i) if map['completedAt']
        data.signature_expires_at = Time.at(map['signatureExpiresAt'].to_i) if map['signatureExpiresAt']
        data.requested_by = map['requestedBy']
        data.status = map['status']
        data.status_reason = map['statusReason']
        data.revocation_record = (Parsers::SigningJobRevocationRecord.parse(map['revocationRecord']) unless map['revocationRecord'].nil?)
        data.signed_object = (Parsers::SignedObject.parse(map['signedObject']) unless map['signedObject'].nil?)
        data.job_owner = map['jobOwner']
        data.job_invoker = map['jobInvoker']
        data
      end
    end

    class SignedObject
      def self.parse(map)
        data = Types::SignedObject.new
        data.s3 = (Parsers::S3SignedObject.parse(map['s3']) unless map['s3'].nil?)
        return data
      end
    end

    class S3SignedObject
      def self.parse(map)
        data = Types::S3SignedObject.new
        data.bucket_name = map['bucketName']
        data.key = map['key']
        return data
      end
    end

    class SigningJobRevocationRecord
      def self.parse(map)
        data = Types::SigningJobRevocationRecord.new
        data.reason = map['reason']
        data.revoked_at = Time.at(map['revokedAt'].to_i) if map['revokedAt']
        data.revoked_by = map['revokedBy']
        return data
      end
    end

    class SigningParameters
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class SigningPlatformOverrides
      def self.parse(map)
        data = Types::SigningPlatformOverrides.new
        data.signing_configuration = (Parsers::SigningConfigurationOverrides.parse(map['signingConfiguration']) unless map['signingConfiguration'].nil?)
        data.signing_image_format = map['signingImageFormat']
        return data
      end
    end

    class SigningConfigurationOverrides
      def self.parse(map)
        data = Types::SigningConfigurationOverrides.new
        data.encryption_algorithm = map['encryptionAlgorithm']
        data.hash_algorithm = map['hashAlgorithm']
        return data
      end
    end

    class SigningMaterial
      def self.parse(map)
        data = Types::SigningMaterial.new
        data.certificate_arn = map['certificateArn']
        return data
      end
    end

    class Source
      def self.parse(map)
        data = Types::Source.new
        data.s3 = (Parsers::S3Source.parse(map['s3']) unless map['s3'].nil?)
        return data
      end
    end

    class S3Source
      def self.parse(map)
        data = Types::S3Source.new
        data.bucket_name = map['bucketName']
        data.key = map['key']
        data.version = map['version']
        return data
      end
    end

    # Operation Parser for GetSigningPlatform
    class GetSigningPlatform
      def self.parse(http_resp)
        data = Types::GetSigningPlatformOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.platform_id = map['platformId']
        data.display_name = map['displayName']
        data.partner = map['partner']
        data.target = map['target']
        data.category = map['category']
        data.signing_configuration = (Parsers::SigningConfiguration.parse(map['signingConfiguration']) unless map['signingConfiguration'].nil?)
        data.signing_image_format = (Parsers::SigningImageFormat.parse(map['signingImageFormat']) unless map['signingImageFormat'].nil?)
        data.max_size_in_mb = map['maxSizeInMB']
        data.revocation_supported = map['revocationSupported']
        data
      end
    end

    class SigningImageFormat
      def self.parse(map)
        data = Types::SigningImageFormat.new
        data.supported_formats = (Parsers::ImageFormats.parse(map['supportedFormats']) unless map['supportedFormats'].nil?)
        data.default_format = map['defaultFormat']
        return data
      end
    end

    class ImageFormats
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class SigningConfiguration
      def self.parse(map)
        data = Types::SigningConfiguration.new
        data.encryption_algorithm_options = (Parsers::EncryptionAlgorithmOptions.parse(map['encryptionAlgorithmOptions']) unless map['encryptionAlgorithmOptions'].nil?)
        data.hash_algorithm_options = (Parsers::HashAlgorithmOptions.parse(map['hashAlgorithmOptions']) unless map['hashAlgorithmOptions'].nil?)
        return data
      end
    end

    class HashAlgorithmOptions
      def self.parse(map)
        data = Types::HashAlgorithmOptions.new
        data.allowed_values = (Parsers::HashAlgorithms.parse(map['allowedValues']) unless map['allowedValues'].nil?)
        data.default_value = map['defaultValue']
        return data
      end
    end

    class HashAlgorithms
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class EncryptionAlgorithmOptions
      def self.parse(map)
        data = Types::EncryptionAlgorithmOptions.new
        data.allowed_values = (Parsers::EncryptionAlgorithms.parse(map['allowedValues']) unless map['allowedValues'].nil?)
        data.default_value = map['defaultValue']
        return data
      end
    end

    class EncryptionAlgorithms
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetSigningProfile
    class GetSigningProfile
      def self.parse(http_resp)
        data = Types::GetSigningProfileOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.profile_name = map['profileName']
        data.profile_version = map['profileVersion']
        data.profile_version_arn = map['profileVersionArn']
        data.revocation_record = (Parsers::SigningProfileRevocationRecord.parse(map['revocationRecord']) unless map['revocationRecord'].nil?)
        data.signing_material = (Parsers::SigningMaterial.parse(map['signingMaterial']) unless map['signingMaterial'].nil?)
        data.platform_id = map['platformId']
        data.platform_display_name = map['platformDisplayName']
        data.signature_validity_period = (Parsers::SignatureValidityPeriod.parse(map['signatureValidityPeriod']) unless map['signatureValidityPeriod'].nil?)
        data.overrides = (Parsers::SigningPlatformOverrides.parse(map['overrides']) unless map['overrides'].nil?)
        data.signing_parameters = (Parsers::SigningParameters.parse(map['signingParameters']) unless map['signingParameters'].nil?)
        data.status = map['status']
        data.status_reason = map['statusReason']
        data.arn = map['arn']
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    class TagMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class SignatureValidityPeriod
      def self.parse(map)
        data = Types::SignatureValidityPeriod.new
        data.value = map['value']
        data.type = map['type']
        return data
      end
    end

    class SigningProfileRevocationRecord
      def self.parse(map)
        data = Types::SigningProfileRevocationRecord.new
        data.revocation_effective_from = Time.at(map['revocationEffectiveFrom'].to_i) if map['revocationEffectiveFrom']
        data.revoked_at = Time.at(map['revokedAt'].to_i) if map['revokedAt']
        data.revoked_by = map['revokedBy']
        return data
      end
    end

    # Operation Parser for ListProfilePermissions
    class ListProfilePermissions
      def self.parse(http_resp)
        data = Types::ListProfilePermissionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.revision_id = map['revisionId']
        data.policy_size_bytes = map['policySizeBytes']
        data.permissions = (Parsers::Permissions.parse(map['permissions']) unless map['permissions'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class Permissions
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Permission.parse(value) unless value.nil?
        end
        data
      end
    end

    class Permission
      def self.parse(map)
        data = Types::Permission.new
        data.action = map['action']
        data.principal = map['principal']
        data.statement_id = map['statementId']
        data.profile_version = map['profileVersion']
        return data
      end
    end

    # Operation Parser for ListSigningJobs
    class ListSigningJobs
      def self.parse(http_resp)
        data = Types::ListSigningJobsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.jobs = (Parsers::SigningJobs.parse(map['jobs']) unless map['jobs'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class SigningJobs
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::SigningJob.parse(value) unless value.nil?
        end
        data
      end
    end

    class SigningJob
      def self.parse(map)
        data = Types::SigningJob.new
        data.job_id = map['jobId']
        data.source = (Parsers::Source.parse(map['source']) unless map['source'].nil?)
        data.signed_object = (Parsers::SignedObject.parse(map['signedObject']) unless map['signedObject'].nil?)
        data.signing_material = (Parsers::SigningMaterial.parse(map['signingMaterial']) unless map['signingMaterial'].nil?)
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.status = map['status']
        data.is_revoked = map['isRevoked']
        data.profile_name = map['profileName']
        data.profile_version = map['profileVersion']
        data.platform_id = map['platformId']
        data.platform_display_name = map['platformDisplayName']
        data.signature_expires_at = Time.at(map['signatureExpiresAt'].to_i) if map['signatureExpiresAt']
        data.job_owner = map['jobOwner']
        data.job_invoker = map['jobInvoker']
        return data
      end
    end

    # Operation Parser for ListSigningPlatforms
    class ListSigningPlatforms
      def self.parse(http_resp)
        data = Types::ListSigningPlatformsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.platforms = (Parsers::SigningPlatforms.parse(map['platforms']) unless map['platforms'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class SigningPlatforms
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::SigningPlatform.parse(value) unless value.nil?
        end
        data
      end
    end

    class SigningPlatform
      def self.parse(map)
        data = Types::SigningPlatform.new
        data.platform_id = map['platformId']
        data.display_name = map['displayName']
        data.partner = map['partner']
        data.target = map['target']
        data.category = map['category']
        data.signing_configuration = (Parsers::SigningConfiguration.parse(map['signingConfiguration']) unless map['signingConfiguration'].nil?)
        data.signing_image_format = (Parsers::SigningImageFormat.parse(map['signingImageFormat']) unless map['signingImageFormat'].nil?)
        data.max_size_in_mb = map['maxSizeInMB']
        data.revocation_supported = map['revocationSupported']
        return data
      end
    end

    # Operation Parser for ListSigningProfiles
    class ListSigningProfiles
      def self.parse(http_resp)
        data = Types::ListSigningProfilesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.profiles = (Parsers::SigningProfiles.parse(map['profiles']) unless map['profiles'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class SigningProfiles
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::SigningProfile.parse(value) unless value.nil?
        end
        data
      end
    end

    class SigningProfile
      def self.parse(map)
        data = Types::SigningProfile.new
        data.profile_name = map['profileName']
        data.profile_version = map['profileVersion']
        data.profile_version_arn = map['profileVersionArn']
        data.signing_material = (Parsers::SigningMaterial.parse(map['signingMaterial']) unless map['signingMaterial'].nil?)
        data.signature_validity_period = (Parsers::SignatureValidityPeriod.parse(map['signatureValidityPeriod']) unless map['signatureValidityPeriod'].nil?)
        data.platform_id = map['platformId']
        data.platform_display_name = map['platformDisplayName']
        data.signing_parameters = (Parsers::SigningParameters.parse(map['signingParameters']) unless map['signingParameters'].nil?)
        data.status = map['status']
        data.arn = map['arn']
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Error Parser for BadRequestException
    class BadRequestException
      def self.parse(http_resp)
        data = Types::BadRequestException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.code = map['code']
        data
      end
    end

    # Error Parser for NotFoundException
    class NotFoundException
      def self.parse(http_resp)
        data = Types::NotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.code = map['code']
        data
      end
    end

    # Operation Parser for PutSigningProfile
    class PutSigningProfile
      def self.parse(http_resp)
        data = Types::PutSigningProfileOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.profile_version = map['profileVersion']
        data.profile_version_arn = map['profileVersionArn']
        data
      end
    end

    # Operation Parser for RemoveProfilePermission
    class RemoveProfilePermission
      def self.parse(http_resp)
        data = Types::RemoveProfilePermissionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.revision_id = map['revisionId']
        data
      end
    end

    # Operation Parser for RevokeSignature
    class RevokeSignature
      def self.parse(http_resp)
        data = Types::RevokeSignatureOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for RevokeSigningProfile
    class RevokeSigningProfile
      def self.parse(http_resp)
        data = Types::RevokeSigningProfileOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for StartSigningJob
    class StartSigningJob
      def self.parse(http_resp)
        data = Types::StartSigningJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.job_id = map['jobId']
        data.job_owner = map['jobOwner']
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.code = map['code']
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end
  end
end
