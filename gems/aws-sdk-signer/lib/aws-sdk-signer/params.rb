# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::Signer
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type.code = params[:code]
        type
      end
    end

    module AddProfilePermissionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddProfilePermissionInput, context: context)
        type = Types::AddProfilePermissionInput.new
        type.profile_name = params[:profile_name]
        type.profile_version = params[:profile_version]
        type.action = params[:action]
        type.principal = params[:principal]
        type.revision_id = params[:revision_id]
        type.statement_id = params[:statement_id]
        type
      end
    end

    module AddProfilePermissionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddProfilePermissionOutput, context: context)
        type = Types::AddProfilePermissionOutput.new
        type.revision_id = params[:revision_id]
        type
      end
    end

    module BadRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BadRequestException, context: context)
        type = Types::BadRequestException.new
        type.message = params[:message]
        type.code = params[:code]
        type
      end
    end

    module CancelSigningProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelSigningProfileInput, context: context)
        type = Types::CancelSigningProfileInput.new
        type.profile_name = params[:profile_name]
        type
      end
    end

    module CancelSigningProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelSigningProfileOutput, context: context)
        type = Types::CancelSigningProfileOutput.new
        type
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type.code = params[:code]
        type
      end
    end

    module DescribeSigningJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSigningJobInput, context: context)
        type = Types::DescribeSigningJobInput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module DescribeSigningJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSigningJobOutput, context: context)
        type = Types::DescribeSigningJobOutput.new
        type.job_id = params[:job_id]
        type.source = Source.build(params[:source], context: "#{context}[:source]") unless params[:source].nil?
        type.signing_material = SigningMaterial.build(params[:signing_material], context: "#{context}[:signing_material]") unless params[:signing_material].nil?
        type.platform_id = params[:platform_id]
        type.platform_display_name = params[:platform_display_name]
        type.profile_name = params[:profile_name]
        type.profile_version = params[:profile_version]
        type.overrides = SigningPlatformOverrides.build(params[:overrides], context: "#{context}[:overrides]") unless params[:overrides].nil?
        type.signing_parameters = SigningParameters.build(params[:signing_parameters], context: "#{context}[:signing_parameters]") unless params[:signing_parameters].nil?
        type.created_at = params[:created_at]
        type.completed_at = params[:completed_at]
        type.signature_expires_at = params[:signature_expires_at]
        type.requested_by = params[:requested_by]
        type.status = params[:status]
        type.status_reason = params[:status_reason]
        type.revocation_record = SigningJobRevocationRecord.build(params[:revocation_record], context: "#{context}[:revocation_record]") unless params[:revocation_record].nil?
        type.signed_object = SignedObject.build(params[:signed_object], context: "#{context}[:signed_object]") unless params[:signed_object].nil?
        type.job_owner = params[:job_owner]
        type.job_invoker = params[:job_invoker]
        type
      end
    end

    module Destination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Destination, context: context)
        type = Types::Destination.new
        type.s3 = S3Destination.build(params[:s3], context: "#{context}[:s3]") unless params[:s3].nil?
        type
      end
    end

    module EncryptionAlgorithmOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EncryptionAlgorithmOptions, context: context)
        type = Types::EncryptionAlgorithmOptions.new
        type.allowed_values = EncryptionAlgorithms.build(params[:allowed_values], context: "#{context}[:allowed_values]") unless params[:allowed_values].nil?
        type.default_value = params[:default_value]
        type
      end
    end

    module EncryptionAlgorithms
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module GetSigningPlatformInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSigningPlatformInput, context: context)
        type = Types::GetSigningPlatformInput.new
        type.platform_id = params[:platform_id]
        type
      end
    end

    module GetSigningPlatformOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSigningPlatformOutput, context: context)
        type = Types::GetSigningPlatformOutput.new
        type.platform_id = params[:platform_id]
        type.display_name = params[:display_name]
        type.partner = params[:partner]
        type.target = params[:target]
        type.category = params[:category]
        type.signing_configuration = SigningConfiguration.build(params[:signing_configuration], context: "#{context}[:signing_configuration]") unless params[:signing_configuration].nil?
        type.signing_image_format = SigningImageFormat.build(params[:signing_image_format], context: "#{context}[:signing_image_format]") unless params[:signing_image_format].nil?
        type.max_size_in_mb = params[:max_size_in_mb]
        type.revocation_supported = params[:revocation_supported]
        type
      end
    end

    module GetSigningProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSigningProfileInput, context: context)
        type = Types::GetSigningProfileInput.new
        type.profile_name = params[:profile_name]
        type.profile_owner = params[:profile_owner]
        type
      end
    end

    module GetSigningProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSigningProfileOutput, context: context)
        type = Types::GetSigningProfileOutput.new
        type.profile_name = params[:profile_name]
        type.profile_version = params[:profile_version]
        type.profile_version_arn = params[:profile_version_arn]
        type.revocation_record = SigningProfileRevocationRecord.build(params[:revocation_record], context: "#{context}[:revocation_record]") unless params[:revocation_record].nil?
        type.signing_material = SigningMaterial.build(params[:signing_material], context: "#{context}[:signing_material]") unless params[:signing_material].nil?
        type.platform_id = params[:platform_id]
        type.platform_display_name = params[:platform_display_name]
        type.signature_validity_period = SignatureValidityPeriod.build(params[:signature_validity_period], context: "#{context}[:signature_validity_period]") unless params[:signature_validity_period].nil?
        type.overrides = SigningPlatformOverrides.build(params[:overrides], context: "#{context}[:overrides]") unless params[:overrides].nil?
        type.signing_parameters = SigningParameters.build(params[:signing_parameters], context: "#{context}[:signing_parameters]") unless params[:signing_parameters].nil?
        type.status = params[:status]
        type.status_reason = params[:status_reason]
        type.arn = params[:arn]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module HashAlgorithmOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HashAlgorithmOptions, context: context)
        type = Types::HashAlgorithmOptions.new
        type.allowed_values = HashAlgorithms.build(params[:allowed_values], context: "#{context}[:allowed_values]") unless params[:allowed_values].nil?
        type.default_value = params[:default_value]
        type
      end
    end

    module HashAlgorithms
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ImageFormats
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module InternalServiceErrorException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServiceErrorException, context: context)
        type = Types::InternalServiceErrorException.new
        type.message = params[:message]
        type.code = params[:code]
        type
      end
    end

    module ListProfilePermissionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProfilePermissionsInput, context: context)
        type = Types::ListProfilePermissionsInput.new
        type.profile_name = params[:profile_name]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListProfilePermissionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProfilePermissionsOutput, context: context)
        type = Types::ListProfilePermissionsOutput.new
        type.revision_id = params[:revision_id]
        type.policy_size_bytes = params[:policy_size_bytes]
        type.permissions = Permissions.build(params[:permissions], context: "#{context}[:permissions]") unless params[:permissions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSigningJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSigningJobsInput, context: context)
        type = Types::ListSigningJobsInput.new
        type.status = params[:status]
        type.platform_id = params[:platform_id]
        type.requested_by = params[:requested_by]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.is_revoked = params[:is_revoked]
        type.signature_expires_before = params[:signature_expires_before]
        type.signature_expires_after = params[:signature_expires_after]
        type.job_invoker = params[:job_invoker]
        type
      end
    end

    module ListSigningJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSigningJobsOutput, context: context)
        type = Types::ListSigningJobsOutput.new
        type.jobs = SigningJobs.build(params[:jobs], context: "#{context}[:jobs]") unless params[:jobs].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSigningPlatformsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSigningPlatformsInput, context: context)
        type = Types::ListSigningPlatformsInput.new
        type.category = params[:category]
        type.partner = params[:partner]
        type.target = params[:target]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSigningPlatformsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSigningPlatformsOutput, context: context)
        type = Types::ListSigningPlatformsOutput.new
        type.platforms = SigningPlatforms.build(params[:platforms], context: "#{context}[:platforms]") unless params[:platforms].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSigningProfilesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSigningProfilesInput, context: context)
        type = Types::ListSigningProfilesInput.new
        type.include_canceled = params[:include_canceled]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.platform_id = params[:platform_id]
        type.statuses = Statuses.build(params[:statuses], context: "#{context}[:statuses]") unless params[:statuses].nil?
        type
      end
    end

    module ListSigningProfilesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSigningProfilesOutput, context: context)
        type = Types::ListSigningProfilesOutput.new
        type.profiles = SigningProfiles.build(params[:profiles], context: "#{context}[:profiles]") unless params[:profiles].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module NotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotFoundException, context: context)
        type = Types::NotFoundException.new
        type.message = params[:message]
        type.code = params[:code]
        type
      end
    end

    module Permission
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Permission, context: context)
        type = Types::Permission.new
        type.action = params[:action]
        type.principal = params[:principal]
        type.statement_id = params[:statement_id]
        type.profile_version = params[:profile_version]
        type
      end
    end

    module Permissions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Permission.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PutSigningProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutSigningProfileInput, context: context)
        type = Types::PutSigningProfileInput.new
        type.profile_name = params[:profile_name]
        type.signing_material = SigningMaterial.build(params[:signing_material], context: "#{context}[:signing_material]") unless params[:signing_material].nil?
        type.signature_validity_period = SignatureValidityPeriod.build(params[:signature_validity_period], context: "#{context}[:signature_validity_period]") unless params[:signature_validity_period].nil?
        type.platform_id = params[:platform_id]
        type.overrides = SigningPlatformOverrides.build(params[:overrides], context: "#{context}[:overrides]") unless params[:overrides].nil?
        type.signing_parameters = SigningParameters.build(params[:signing_parameters], context: "#{context}[:signing_parameters]") unless params[:signing_parameters].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module PutSigningProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutSigningProfileOutput, context: context)
        type = Types::PutSigningProfileOutput.new
        type.arn = params[:arn]
        type.profile_version = params[:profile_version]
        type.profile_version_arn = params[:profile_version_arn]
        type
      end
    end

    module RemoveProfilePermissionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveProfilePermissionInput, context: context)
        type = Types::RemoveProfilePermissionInput.new
        type.profile_name = params[:profile_name]
        type.revision_id = params[:revision_id]
        type.statement_id = params[:statement_id]
        type
      end
    end

    module RemoveProfilePermissionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveProfilePermissionOutput, context: context)
        type = Types::RemoveProfilePermissionOutput.new
        type.revision_id = params[:revision_id]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type.code = params[:code]
        type
      end
    end

    module RevokeSignatureInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RevokeSignatureInput, context: context)
        type = Types::RevokeSignatureInput.new
        type.job_id = params[:job_id]
        type.job_owner = params[:job_owner]
        type.reason = params[:reason]
        type
      end
    end

    module RevokeSignatureOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RevokeSignatureOutput, context: context)
        type = Types::RevokeSignatureOutput.new
        type
      end
    end

    module RevokeSigningProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RevokeSigningProfileInput, context: context)
        type = Types::RevokeSigningProfileInput.new
        type.profile_name = params[:profile_name]
        type.profile_version = params[:profile_version]
        type.reason = params[:reason]
        type.effective_time = params[:effective_time]
        type
      end
    end

    module RevokeSigningProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RevokeSigningProfileOutput, context: context)
        type = Types::RevokeSigningProfileOutput.new
        type
      end
    end

    module S3Destination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3Destination, context: context)
        type = Types::S3Destination.new
        type.bucket_name = params[:bucket_name]
        type.prefix = params[:prefix]
        type
      end
    end

    module S3SignedObject
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3SignedObject, context: context)
        type = Types::S3SignedObject.new
        type.bucket_name = params[:bucket_name]
        type.key = params[:key]
        type
      end
    end

    module S3Source
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3Source, context: context)
        type = Types::S3Source.new
        type.bucket_name = params[:bucket_name]
        type.key = params[:key]
        type.version = params[:version]
        type
      end
    end

    module ServiceLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceLimitExceededException, context: context)
        type = Types::ServiceLimitExceededException.new
        type.message = params[:message]
        type.code = params[:code]
        type
      end
    end

    module SignatureValidityPeriod
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SignatureValidityPeriod, context: context)
        type = Types::SignatureValidityPeriod.new
        type.value = params[:value]
        type.type = params[:type]
        type
      end
    end

    module SignedObject
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SignedObject, context: context)
        type = Types::SignedObject.new
        type.s3 = S3SignedObject.build(params[:s3], context: "#{context}[:s3]") unless params[:s3].nil?
        type
      end
    end

    module SigningConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SigningConfiguration, context: context)
        type = Types::SigningConfiguration.new
        type.encryption_algorithm_options = EncryptionAlgorithmOptions.build(params[:encryption_algorithm_options], context: "#{context}[:encryption_algorithm_options]") unless params[:encryption_algorithm_options].nil?
        type.hash_algorithm_options = HashAlgorithmOptions.build(params[:hash_algorithm_options], context: "#{context}[:hash_algorithm_options]") unless params[:hash_algorithm_options].nil?
        type
      end
    end

    module SigningConfigurationOverrides
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SigningConfigurationOverrides, context: context)
        type = Types::SigningConfigurationOverrides.new
        type.encryption_algorithm = params[:encryption_algorithm]
        type.hash_algorithm = params[:hash_algorithm]
        type
      end
    end

    module SigningImageFormat
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SigningImageFormat, context: context)
        type = Types::SigningImageFormat.new
        type.supported_formats = ImageFormats.build(params[:supported_formats], context: "#{context}[:supported_formats]") unless params[:supported_formats].nil?
        type.default_format = params[:default_format]
        type
      end
    end

    module SigningJob
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SigningJob, context: context)
        type = Types::SigningJob.new
        type.job_id = params[:job_id]
        type.source = Source.build(params[:source], context: "#{context}[:source]") unless params[:source].nil?
        type.signed_object = SignedObject.build(params[:signed_object], context: "#{context}[:signed_object]") unless params[:signed_object].nil?
        type.signing_material = SigningMaterial.build(params[:signing_material], context: "#{context}[:signing_material]") unless params[:signing_material].nil?
        type.created_at = params[:created_at]
        type.status = params[:status]
        type.is_revoked = params[:is_revoked]
        type.profile_name = params[:profile_name]
        type.profile_version = params[:profile_version]
        type.platform_id = params[:platform_id]
        type.platform_display_name = params[:platform_display_name]
        type.signature_expires_at = params[:signature_expires_at]
        type.job_owner = params[:job_owner]
        type.job_invoker = params[:job_invoker]
        type
      end
    end

    module SigningJobRevocationRecord
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SigningJobRevocationRecord, context: context)
        type = Types::SigningJobRevocationRecord.new
        type.reason = params[:reason]
        type.revoked_at = params[:revoked_at]
        type.revoked_by = params[:revoked_by]
        type
      end
    end

    module SigningJobs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SigningJob.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SigningMaterial
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SigningMaterial, context: context)
        type = Types::SigningMaterial.new
        type.certificate_arn = params[:certificate_arn]
        type
      end
    end

    module SigningParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module SigningPlatform
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SigningPlatform, context: context)
        type = Types::SigningPlatform.new
        type.platform_id = params[:platform_id]
        type.display_name = params[:display_name]
        type.partner = params[:partner]
        type.target = params[:target]
        type.category = params[:category]
        type.signing_configuration = SigningConfiguration.build(params[:signing_configuration], context: "#{context}[:signing_configuration]") unless params[:signing_configuration].nil?
        type.signing_image_format = SigningImageFormat.build(params[:signing_image_format], context: "#{context}[:signing_image_format]") unless params[:signing_image_format].nil?
        type.max_size_in_mb = params[:max_size_in_mb]
        type.revocation_supported = params[:revocation_supported]
        type
      end
    end

    module SigningPlatformOverrides
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SigningPlatformOverrides, context: context)
        type = Types::SigningPlatformOverrides.new
        type.signing_configuration = SigningConfigurationOverrides.build(params[:signing_configuration], context: "#{context}[:signing_configuration]") unless params[:signing_configuration].nil?
        type.signing_image_format = params[:signing_image_format]
        type
      end
    end

    module SigningPlatforms
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SigningPlatform.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SigningProfile
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SigningProfile, context: context)
        type = Types::SigningProfile.new
        type.profile_name = params[:profile_name]
        type.profile_version = params[:profile_version]
        type.profile_version_arn = params[:profile_version_arn]
        type.signing_material = SigningMaterial.build(params[:signing_material], context: "#{context}[:signing_material]") unless params[:signing_material].nil?
        type.signature_validity_period = SignatureValidityPeriod.build(params[:signature_validity_period], context: "#{context}[:signature_validity_period]") unless params[:signature_validity_period].nil?
        type.platform_id = params[:platform_id]
        type.platform_display_name = params[:platform_display_name]
        type.signing_parameters = SigningParameters.build(params[:signing_parameters], context: "#{context}[:signing_parameters]") unless params[:signing_parameters].nil?
        type.status = params[:status]
        type.arn = params[:arn]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module SigningProfileRevocationRecord
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SigningProfileRevocationRecord, context: context)
        type = Types::SigningProfileRevocationRecord.new
        type.revocation_effective_from = params[:revocation_effective_from]
        type.revoked_at = params[:revoked_at]
        type.revoked_by = params[:revoked_by]
        type
      end
    end

    module SigningProfiles
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SigningProfile.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Source
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Source, context: context)
        type = Types::Source.new
        type.s3 = S3Source.build(params[:s3], context: "#{context}[:s3]") unless params[:s3].nil?
        type
      end
    end

    module StartSigningJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartSigningJobInput, context: context)
        type = Types::StartSigningJobInput.new
        type.source = Source.build(params[:source], context: "#{context}[:source]") unless params[:source].nil?
        type.destination = Destination.build(params[:destination], context: "#{context}[:destination]") unless params[:destination].nil?
        type.profile_name = params[:profile_name]
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type.profile_owner = params[:profile_owner]
        type
      end
    end

    module StartSigningJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartSigningJobOutput, context: context)
        type = Types::StartSigningJobOutput.new
        type.job_id = params[:job_id]
        type.job_owner = params[:job_owner]
        type
      end
    end

    module Statuses
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type
      end
    end

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type.code = params[:code]
        type
      end
    end

    module TooManyRequestsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyRequestsException, context: context)
        type = Types::TooManyRequestsException.new
        type.message = params[:message]
        type.code = params[:code]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type.code = params[:code]
        type
      end
    end

  end
end
