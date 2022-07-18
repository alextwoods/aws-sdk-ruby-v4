# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::Signer
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
      end
    end

    class AddProfilePermissionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddProfilePermissionInput, context: context)
        Hearth::Validator.validate!(input[:profile_name], ::String, context: "#{context}[:profile_name]")
        Hearth::Validator.validate!(input[:profile_version], ::String, context: "#{context}[:profile_version]")
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        Hearth::Validator.validate!(input[:principal], ::String, context: "#{context}[:principal]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
        Hearth::Validator.validate!(input[:statement_id], ::String, context: "#{context}[:statement_id]")
      end
    end

    class AddProfilePermissionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddProfilePermissionOutput, context: context)
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
      end
    end

    class BadRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BadRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
      end
    end

    class CancelSigningProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelSigningProfileInput, context: context)
        Hearth::Validator.validate!(input[:profile_name], ::String, context: "#{context}[:profile_name]")
      end
    end

    class CancelSigningProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelSigningProfileOutput, context: context)
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
      end
    end

    class DescribeSigningJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSigningJobInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class DescribeSigningJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSigningJobOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Source.validate!(input[:source], context: "#{context}[:source]") unless input[:source].nil?
        SigningMaterial.validate!(input[:signing_material], context: "#{context}[:signing_material]") unless input[:signing_material].nil?
        Hearth::Validator.validate!(input[:platform_id], ::String, context: "#{context}[:platform_id]")
        Hearth::Validator.validate!(input[:platform_display_name], ::String, context: "#{context}[:platform_display_name]")
        Hearth::Validator.validate!(input[:profile_name], ::String, context: "#{context}[:profile_name]")
        Hearth::Validator.validate!(input[:profile_version], ::String, context: "#{context}[:profile_version]")
        SigningPlatformOverrides.validate!(input[:overrides], context: "#{context}[:overrides]") unless input[:overrides].nil?
        SigningParameters.validate!(input[:signing_parameters], context: "#{context}[:signing_parameters]") unless input[:signing_parameters].nil?
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:completed_at], ::Time, context: "#{context}[:completed_at]")
        Hearth::Validator.validate!(input[:signature_expires_at], ::Time, context: "#{context}[:signature_expires_at]")
        Hearth::Validator.validate!(input[:requested_by], ::String, context: "#{context}[:requested_by]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_reason], ::String, context: "#{context}[:status_reason]")
        SigningJobRevocationRecord.validate!(input[:revocation_record], context: "#{context}[:revocation_record]") unless input[:revocation_record].nil?
        SignedObject.validate!(input[:signed_object], context: "#{context}[:signed_object]") unless input[:signed_object].nil?
        Hearth::Validator.validate!(input[:job_owner], ::String, context: "#{context}[:job_owner]")
        Hearth::Validator.validate!(input[:job_invoker], ::String, context: "#{context}[:job_invoker]")
      end
    end

    class Destination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Destination, context: context)
        S3Destination.validate!(input[:s3], context: "#{context}[:s3]") unless input[:s3].nil?
      end
    end

    class EncryptionAlgorithmOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EncryptionAlgorithmOptions, context: context)
        EncryptionAlgorithms.validate!(input[:allowed_values], context: "#{context}[:allowed_values]") unless input[:allowed_values].nil?
        Hearth::Validator.validate!(input[:default_value], ::String, context: "#{context}[:default_value]")
      end
    end

    class EncryptionAlgorithms
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class GetSigningPlatformInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSigningPlatformInput, context: context)
        Hearth::Validator.validate!(input[:platform_id], ::String, context: "#{context}[:platform_id]")
      end
    end

    class GetSigningPlatformOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSigningPlatformOutput, context: context)
        Hearth::Validator.validate!(input[:platform_id], ::String, context: "#{context}[:platform_id]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:partner], ::String, context: "#{context}[:partner]")
        Hearth::Validator.validate!(input[:target], ::String, context: "#{context}[:target]")
        Hearth::Validator.validate!(input[:category], ::String, context: "#{context}[:category]")
        SigningConfiguration.validate!(input[:signing_configuration], context: "#{context}[:signing_configuration]") unless input[:signing_configuration].nil?
        SigningImageFormat.validate!(input[:signing_image_format], context: "#{context}[:signing_image_format]") unless input[:signing_image_format].nil?
        Hearth::Validator.validate!(input[:max_size_in_mb], ::Integer, context: "#{context}[:max_size_in_mb]")
        Hearth::Validator.validate!(input[:revocation_supported], ::TrueClass, ::FalseClass, context: "#{context}[:revocation_supported]")
      end
    end

    class GetSigningProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSigningProfileInput, context: context)
        Hearth::Validator.validate!(input[:profile_name], ::String, context: "#{context}[:profile_name]")
        Hearth::Validator.validate!(input[:profile_owner], ::String, context: "#{context}[:profile_owner]")
      end
    end

    class GetSigningProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSigningProfileOutput, context: context)
        Hearth::Validator.validate!(input[:profile_name], ::String, context: "#{context}[:profile_name]")
        Hearth::Validator.validate!(input[:profile_version], ::String, context: "#{context}[:profile_version]")
        Hearth::Validator.validate!(input[:profile_version_arn], ::String, context: "#{context}[:profile_version_arn]")
        SigningProfileRevocationRecord.validate!(input[:revocation_record], context: "#{context}[:revocation_record]") unless input[:revocation_record].nil?
        SigningMaterial.validate!(input[:signing_material], context: "#{context}[:signing_material]") unless input[:signing_material].nil?
        Hearth::Validator.validate!(input[:platform_id], ::String, context: "#{context}[:platform_id]")
        Hearth::Validator.validate!(input[:platform_display_name], ::String, context: "#{context}[:platform_display_name]")
        SignatureValidityPeriod.validate!(input[:signature_validity_period], context: "#{context}[:signature_validity_period]") unless input[:signature_validity_period].nil?
        SigningPlatformOverrides.validate!(input[:overrides], context: "#{context}[:overrides]") unless input[:overrides].nil?
        SigningParameters.validate!(input[:signing_parameters], context: "#{context}[:signing_parameters]") unless input[:signing_parameters].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_reason], ::String, context: "#{context}[:status_reason]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class HashAlgorithmOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HashAlgorithmOptions, context: context)
        HashAlgorithms.validate!(input[:allowed_values], context: "#{context}[:allowed_values]") unless input[:allowed_values].nil?
        Hearth::Validator.validate!(input[:default_value], ::String, context: "#{context}[:default_value]")
      end
    end

    class HashAlgorithms
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ImageFormats
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InternalServiceErrorException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServiceErrorException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
      end
    end

    class ListProfilePermissionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProfilePermissionsInput, context: context)
        Hearth::Validator.validate!(input[:profile_name], ::String, context: "#{context}[:profile_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListProfilePermissionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProfilePermissionsOutput, context: context)
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
        Hearth::Validator.validate!(input[:policy_size_bytes], ::Integer, context: "#{context}[:policy_size_bytes]")
        Permissions.validate!(input[:permissions], context: "#{context}[:permissions]") unless input[:permissions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSigningJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSigningJobsInput, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:platform_id], ::String, context: "#{context}[:platform_id]")
        Hearth::Validator.validate!(input[:requested_by], ::String, context: "#{context}[:requested_by]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:is_revoked], ::TrueClass, ::FalseClass, context: "#{context}[:is_revoked]")
        Hearth::Validator.validate!(input[:signature_expires_before], ::Time, context: "#{context}[:signature_expires_before]")
        Hearth::Validator.validate!(input[:signature_expires_after], ::Time, context: "#{context}[:signature_expires_after]")
        Hearth::Validator.validate!(input[:job_invoker], ::String, context: "#{context}[:job_invoker]")
      end
    end

    class ListSigningJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSigningJobsOutput, context: context)
        SigningJobs.validate!(input[:jobs], context: "#{context}[:jobs]") unless input[:jobs].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSigningPlatformsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSigningPlatformsInput, context: context)
        Hearth::Validator.validate!(input[:category], ::String, context: "#{context}[:category]")
        Hearth::Validator.validate!(input[:partner], ::String, context: "#{context}[:partner]")
        Hearth::Validator.validate!(input[:target], ::String, context: "#{context}[:target]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSigningPlatformsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSigningPlatformsOutput, context: context)
        SigningPlatforms.validate!(input[:platforms], context: "#{context}[:platforms]") unless input[:platforms].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSigningProfilesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSigningProfilesInput, context: context)
        Hearth::Validator.validate!(input[:include_canceled], ::TrueClass, ::FalseClass, context: "#{context}[:include_canceled]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:platform_id], ::String, context: "#{context}[:platform_id]")
        Statuses.validate!(input[:statuses], context: "#{context}[:statuses]") unless input[:statuses].nil?
      end
    end

    class ListSigningProfilesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSigningProfilesOutput, context: context)
        SigningProfiles.validate!(input[:profiles], context: "#{context}[:profiles]") unless input[:profiles].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class NotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
      end
    end

    class Permission
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Permission, context: context)
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        Hearth::Validator.validate!(input[:principal], ::String, context: "#{context}[:principal]")
        Hearth::Validator.validate!(input[:statement_id], ::String, context: "#{context}[:statement_id]")
        Hearth::Validator.validate!(input[:profile_version], ::String, context: "#{context}[:profile_version]")
      end
    end

    class Permissions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Permission.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PutSigningProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutSigningProfileInput, context: context)
        Hearth::Validator.validate!(input[:profile_name], ::String, context: "#{context}[:profile_name]")
        SigningMaterial.validate!(input[:signing_material], context: "#{context}[:signing_material]") unless input[:signing_material].nil?
        SignatureValidityPeriod.validate!(input[:signature_validity_period], context: "#{context}[:signature_validity_period]") unless input[:signature_validity_period].nil?
        Hearth::Validator.validate!(input[:platform_id], ::String, context: "#{context}[:platform_id]")
        SigningPlatformOverrides.validate!(input[:overrides], context: "#{context}[:overrides]") unless input[:overrides].nil?
        SigningParameters.validate!(input[:signing_parameters], context: "#{context}[:signing_parameters]") unless input[:signing_parameters].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class PutSigningProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutSigningProfileOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:profile_version], ::String, context: "#{context}[:profile_version]")
        Hearth::Validator.validate!(input[:profile_version_arn], ::String, context: "#{context}[:profile_version_arn]")
      end
    end

    class RemoveProfilePermissionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveProfilePermissionInput, context: context)
        Hearth::Validator.validate!(input[:profile_name], ::String, context: "#{context}[:profile_name]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
        Hearth::Validator.validate!(input[:statement_id], ::String, context: "#{context}[:statement_id]")
      end
    end

    class RemoveProfilePermissionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveProfilePermissionOutput, context: context)
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
      end
    end

    class RevokeSignatureInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RevokeSignatureInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:job_owner], ::String, context: "#{context}[:job_owner]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
      end
    end

    class RevokeSignatureOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RevokeSignatureOutput, context: context)
      end
    end

    class RevokeSigningProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RevokeSigningProfileInput, context: context)
        Hearth::Validator.validate!(input[:profile_name], ::String, context: "#{context}[:profile_name]")
        Hearth::Validator.validate!(input[:profile_version], ::String, context: "#{context}[:profile_version]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
        Hearth::Validator.validate!(input[:effective_time], ::Time, context: "#{context}[:effective_time]")
      end
    end

    class RevokeSigningProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RevokeSigningProfileOutput, context: context)
      end
    end

    class S3Destination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3Destination, context: context)
        Hearth::Validator.validate!(input[:bucket_name], ::String, context: "#{context}[:bucket_name]")
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
      end
    end

    class S3SignedObject
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3SignedObject, context: context)
        Hearth::Validator.validate!(input[:bucket_name], ::String, context: "#{context}[:bucket_name]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
      end
    end

    class S3Source
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3Source, context: context)
        Hearth::Validator.validate!(input[:bucket_name], ::String, context: "#{context}[:bucket_name]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class ServiceLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
      end
    end

    class SignatureValidityPeriod
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SignatureValidityPeriod, context: context)
        Hearth::Validator.validate!(input[:value], ::Integer, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class SignedObject
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SignedObject, context: context)
        S3SignedObject.validate!(input[:s3], context: "#{context}[:s3]") unless input[:s3].nil?
      end
    end

    class SigningConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SigningConfiguration, context: context)
        EncryptionAlgorithmOptions.validate!(input[:encryption_algorithm_options], context: "#{context}[:encryption_algorithm_options]") unless input[:encryption_algorithm_options].nil?
        HashAlgorithmOptions.validate!(input[:hash_algorithm_options], context: "#{context}[:hash_algorithm_options]") unless input[:hash_algorithm_options].nil?
      end
    end

    class SigningConfigurationOverrides
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SigningConfigurationOverrides, context: context)
        Hearth::Validator.validate!(input[:encryption_algorithm], ::String, context: "#{context}[:encryption_algorithm]")
        Hearth::Validator.validate!(input[:hash_algorithm], ::String, context: "#{context}[:hash_algorithm]")
      end
    end

    class SigningImageFormat
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SigningImageFormat, context: context)
        ImageFormats.validate!(input[:supported_formats], context: "#{context}[:supported_formats]") unless input[:supported_formats].nil?
        Hearth::Validator.validate!(input[:default_format], ::String, context: "#{context}[:default_format]")
      end
    end

    class SigningJob
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SigningJob, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Source.validate!(input[:source], context: "#{context}[:source]") unless input[:source].nil?
        SignedObject.validate!(input[:signed_object], context: "#{context}[:signed_object]") unless input[:signed_object].nil?
        SigningMaterial.validate!(input[:signing_material], context: "#{context}[:signing_material]") unless input[:signing_material].nil?
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:is_revoked], ::TrueClass, ::FalseClass, context: "#{context}[:is_revoked]")
        Hearth::Validator.validate!(input[:profile_name], ::String, context: "#{context}[:profile_name]")
        Hearth::Validator.validate!(input[:profile_version], ::String, context: "#{context}[:profile_version]")
        Hearth::Validator.validate!(input[:platform_id], ::String, context: "#{context}[:platform_id]")
        Hearth::Validator.validate!(input[:platform_display_name], ::String, context: "#{context}[:platform_display_name]")
        Hearth::Validator.validate!(input[:signature_expires_at], ::Time, context: "#{context}[:signature_expires_at]")
        Hearth::Validator.validate!(input[:job_owner], ::String, context: "#{context}[:job_owner]")
        Hearth::Validator.validate!(input[:job_invoker], ::String, context: "#{context}[:job_invoker]")
      end
    end

    class SigningJobRevocationRecord
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SigningJobRevocationRecord, context: context)
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
        Hearth::Validator.validate!(input[:revoked_at], ::Time, context: "#{context}[:revoked_at]")
        Hearth::Validator.validate!(input[:revoked_by], ::String, context: "#{context}[:revoked_by]")
      end
    end

    class SigningJobs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SigningJob.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SigningMaterial
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SigningMaterial, context: context)
        Hearth::Validator.validate!(input[:certificate_arn], ::String, context: "#{context}[:certificate_arn]")
      end
    end

    class SigningParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class SigningPlatform
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SigningPlatform, context: context)
        Hearth::Validator.validate!(input[:platform_id], ::String, context: "#{context}[:platform_id]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:partner], ::String, context: "#{context}[:partner]")
        Hearth::Validator.validate!(input[:target], ::String, context: "#{context}[:target]")
        Hearth::Validator.validate!(input[:category], ::String, context: "#{context}[:category]")
        SigningConfiguration.validate!(input[:signing_configuration], context: "#{context}[:signing_configuration]") unless input[:signing_configuration].nil?
        SigningImageFormat.validate!(input[:signing_image_format], context: "#{context}[:signing_image_format]") unless input[:signing_image_format].nil?
        Hearth::Validator.validate!(input[:max_size_in_mb], ::Integer, context: "#{context}[:max_size_in_mb]")
        Hearth::Validator.validate!(input[:revocation_supported], ::TrueClass, ::FalseClass, context: "#{context}[:revocation_supported]")
      end
    end

    class SigningPlatformOverrides
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SigningPlatformOverrides, context: context)
        SigningConfigurationOverrides.validate!(input[:signing_configuration], context: "#{context}[:signing_configuration]") unless input[:signing_configuration].nil?
        Hearth::Validator.validate!(input[:signing_image_format], ::String, context: "#{context}[:signing_image_format]")
      end
    end

    class SigningPlatforms
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SigningPlatform.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SigningProfile
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SigningProfile, context: context)
        Hearth::Validator.validate!(input[:profile_name], ::String, context: "#{context}[:profile_name]")
        Hearth::Validator.validate!(input[:profile_version], ::String, context: "#{context}[:profile_version]")
        Hearth::Validator.validate!(input[:profile_version_arn], ::String, context: "#{context}[:profile_version_arn]")
        SigningMaterial.validate!(input[:signing_material], context: "#{context}[:signing_material]") unless input[:signing_material].nil?
        SignatureValidityPeriod.validate!(input[:signature_validity_period], context: "#{context}[:signature_validity_period]") unless input[:signature_validity_period].nil?
        Hearth::Validator.validate!(input[:platform_id], ::String, context: "#{context}[:platform_id]")
        Hearth::Validator.validate!(input[:platform_display_name], ::String, context: "#{context}[:platform_display_name]")
        SigningParameters.validate!(input[:signing_parameters], context: "#{context}[:signing_parameters]") unless input[:signing_parameters].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class SigningProfileRevocationRecord
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SigningProfileRevocationRecord, context: context)
        Hearth::Validator.validate!(input[:revocation_effective_from], ::Time, context: "#{context}[:revocation_effective_from]")
        Hearth::Validator.validate!(input[:revoked_at], ::Time, context: "#{context}[:revoked_at]")
        Hearth::Validator.validate!(input[:revoked_by], ::String, context: "#{context}[:revoked_by]")
      end
    end

    class SigningProfiles
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SigningProfile.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Source
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Source, context: context)
        S3Source.validate!(input[:s3], context: "#{context}[:s3]") unless input[:s3].nil?
      end
    end

    class StartSigningJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartSigningJobInput, context: context)
        Source.validate!(input[:source], context: "#{context}[:source]") unless input[:source].nil?
        Destination.validate!(input[:destination], context: "#{context}[:destination]") unless input[:destination].nil?
        Hearth::Validator.validate!(input[:profile_name], ::String, context: "#{context}[:profile_name]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:profile_owner], ::String, context: "#{context}[:profile_owner]")
      end
    end

    class StartSigningJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartSigningJobOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:job_owner], ::String, context: "#{context}[:job_owner]")
      end
    end

    class Statuses
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
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

    class TagMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
      end
    end

    class TooManyRequestsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyRequestsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
      end
    end

  end
end
