# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::Macie2
  module Params

    module AcceptInvitationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcceptInvitationInput, context: context)
        type = Types::AcceptInvitationInput.new
        type.administrator_account_id = params[:administrator_account_id]
        type.invitation_id = params[:invitation_id]
        type.master_account = params[:master_account]
        type
      end
    end

    module AcceptInvitationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcceptInvitationOutput, context: context)
        type = Types::AcceptInvitationOutput.new
        type
      end
    end

    module AccessControlList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessControlList, context: context)
        type = Types::AccessControlList.new
        type.allows_public_read_access = params[:allows_public_read_access]
        type.allows_public_write_access = params[:allows_public_write_access]
        type
      end
    end

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module AccountDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccountDetail, context: context)
        type = Types::AccountDetail.new
        type.account_id = params[:account_id]
        type.email = params[:email]
        type
      end
    end

    module AccountLevelPermissions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccountLevelPermissions, context: context)
        type = Types::AccountLevelPermissions.new
        type.block_public_access = BlockPublicAccess.build(params[:block_public_access], context: "#{context}[:block_public_access]") unless params[:block_public_access].nil?
        type
      end
    end

    module AdminAccount
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdminAccount, context: context)
        type = Types::AdminAccount.new
        type.account_id = params[:account_id]
        type.status = params[:status]
        type
      end
    end

    module ApiCallDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApiCallDetails, context: context)
        type = Types::ApiCallDetails.new
        type.api = params[:api]
        type.api_service_name = params[:api_service_name]
        type.first_seen = params[:first_seen]
        type.last_seen = params[:last_seen]
        type
      end
    end

    module AssumedRole
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssumedRole, context: context)
        type = Types::AssumedRole.new
        type.access_key_id = params[:access_key_id]
        type.account_id = params[:account_id]
        type.arn = params[:arn]
        type.principal_id = params[:principal_id]
        type.session_context = SessionContext.build(params[:session_context], context: "#{context}[:session_context]") unless params[:session_context].nil?
        type
      end
    end

    module AwsAccount
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsAccount, context: context)
        type = Types::AwsAccount.new
        type.account_id = params[:account_id]
        type.principal_id = params[:principal_id]
        type
      end
    end

    module AwsService
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsService, context: context)
        type = Types::AwsService.new
        type.invoked_by = params[:invoked_by]
        type
      end
    end

    module BatchGetCustomDataIdentifierSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetCustomDataIdentifierSummary, context: context)
        type = Types::BatchGetCustomDataIdentifierSummary.new
        type.arn = params[:arn]
        type.created_at = params[:created_at]
        type.deleted = params[:deleted]
        type.description = params[:description]
        type.id = params[:id]
        type.name = params[:name]
        type
      end
    end

    module BatchGetCustomDataIdentifiersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetCustomDataIdentifiersInput, context: context)
        type = Types::BatchGetCustomDataIdentifiersInput.new
        type.ids = List____listOf__string.build(params[:ids], context: "#{context}[:ids]") unless params[:ids].nil?
        type
      end
    end

    module BatchGetCustomDataIdentifiersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetCustomDataIdentifiersOutput, context: context)
        type = Types::BatchGetCustomDataIdentifiersOutput.new
        type.custom_data_identifiers = List____listOfBatchGetCustomDataIdentifierSummary.build(params[:custom_data_identifiers], context: "#{context}[:custom_data_identifiers]") unless params[:custom_data_identifiers].nil?
        type.not_found_identifier_ids = List____listOf__string.build(params[:not_found_identifier_ids], context: "#{context}[:not_found_identifier_ids]") unless params[:not_found_identifier_ids].nil?
        type
      end
    end

    module BlockPublicAccess
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BlockPublicAccess, context: context)
        type = Types::BlockPublicAccess.new
        type.block_public_acls = params[:block_public_acls]
        type.block_public_policy = params[:block_public_policy]
        type.ignore_public_acls = params[:ignore_public_acls]
        type.restrict_public_buckets = params[:restrict_public_buckets]
        type
      end
    end

    module BucketCountByEffectivePermission
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BucketCountByEffectivePermission, context: context)
        type = Types::BucketCountByEffectivePermission.new
        type.publicly_accessible = params[:publicly_accessible]
        type.publicly_readable = params[:publicly_readable]
        type.publicly_writable = params[:publicly_writable]
        type.unknown = params[:unknown]
        type
      end
    end

    module BucketCountByEncryptionType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BucketCountByEncryptionType, context: context)
        type = Types::BucketCountByEncryptionType.new
        type.kms_managed = params[:kms_managed]
        type.s3_managed = params[:s3_managed]
        type.unencrypted = params[:unencrypted]
        type.unknown = params[:unknown]
        type
      end
    end

    module BucketCountBySharedAccessType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BucketCountBySharedAccessType, context: context)
        type = Types::BucketCountBySharedAccessType.new
        type.external = params[:external]
        type.internal = params[:internal]
        type.not_shared = params[:not_shared]
        type.unknown = params[:unknown]
        type
      end
    end

    module BucketCountPolicyAllowsUnencryptedObjectUploads
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BucketCountPolicyAllowsUnencryptedObjectUploads, context: context)
        type = Types::BucketCountPolicyAllowsUnencryptedObjectUploads.new
        type.allows_unencrypted_object_uploads = params[:allows_unencrypted_object_uploads]
        type.denies_unencrypted_object_uploads = params[:denies_unencrypted_object_uploads]
        type.unknown = params[:unknown]
        type
      end
    end

    module BucketCriteria
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = BucketCriteriaAdditionalProperties.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module BucketCriteriaAdditionalProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BucketCriteriaAdditionalProperties, context: context)
        type = Types::BucketCriteriaAdditionalProperties.new
        type.eq = List____listOf__string.build(params[:eq], context: "#{context}[:eq]") unless params[:eq].nil?
        type.gt = params[:gt]
        type.gte = params[:gte]
        type.lt = params[:lt]
        type.lte = params[:lte]
        type.neq = List____listOf__string.build(params[:neq], context: "#{context}[:neq]") unless params[:neq].nil?
        type.prefix = params[:prefix]
        type
      end
    end

    module BucketLevelPermissions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BucketLevelPermissions, context: context)
        type = Types::BucketLevelPermissions.new
        type.access_control_list = AccessControlList.build(params[:access_control_list], context: "#{context}[:access_control_list]") unless params[:access_control_list].nil?
        type.block_public_access = BlockPublicAccess.build(params[:block_public_access], context: "#{context}[:block_public_access]") unless params[:block_public_access].nil?
        type.bucket_policy = BucketPolicy.build(params[:bucket_policy], context: "#{context}[:bucket_policy]") unless params[:bucket_policy].nil?
        type
      end
    end

    module BucketMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BucketMetadata, context: context)
        type = Types::BucketMetadata.new
        type.account_id = params[:account_id]
        type.allows_unencrypted_object_uploads = params[:allows_unencrypted_object_uploads]
        type.bucket_arn = params[:bucket_arn]
        type.bucket_created_at = params[:bucket_created_at]
        type.bucket_name = params[:bucket_name]
        type.classifiable_object_count = params[:classifiable_object_count]
        type.classifiable_size_in_bytes = params[:classifiable_size_in_bytes]
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type.job_details = JobDetails.build(params[:job_details], context: "#{context}[:job_details]") unless params[:job_details].nil?
        type.last_updated = params[:last_updated]
        type.object_count = params[:object_count]
        type.object_count_by_encryption_type = ObjectCountByEncryptionType.build(params[:object_count_by_encryption_type], context: "#{context}[:object_count_by_encryption_type]") unless params[:object_count_by_encryption_type].nil?
        type.public_access = BucketPublicAccess.build(params[:public_access], context: "#{context}[:public_access]") unless params[:public_access].nil?
        type.region = params[:region]
        type.replication_details = ReplicationDetails.build(params[:replication_details], context: "#{context}[:replication_details]") unless params[:replication_details].nil?
        type.server_side_encryption = BucketServerSideEncryption.build(params[:server_side_encryption], context: "#{context}[:server_side_encryption]") unless params[:server_side_encryption].nil?
        type.shared_access = params[:shared_access]
        type.size_in_bytes = params[:size_in_bytes]
        type.size_in_bytes_compressed = params[:size_in_bytes_compressed]
        type.tags = List____listOfKeyValuePair.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.unclassifiable_object_count = ObjectLevelStatistics.build(params[:unclassifiable_object_count], context: "#{context}[:unclassifiable_object_count]") unless params[:unclassifiable_object_count].nil?
        type.unclassifiable_object_size_in_bytes = ObjectLevelStatistics.build(params[:unclassifiable_object_size_in_bytes], context: "#{context}[:unclassifiable_object_size_in_bytes]") unless params[:unclassifiable_object_size_in_bytes].nil?
        type.versioning = params[:versioning]
        type
      end
    end

    module BucketPermissionConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BucketPermissionConfiguration, context: context)
        type = Types::BucketPermissionConfiguration.new
        type.account_level_permissions = AccountLevelPermissions.build(params[:account_level_permissions], context: "#{context}[:account_level_permissions]") unless params[:account_level_permissions].nil?
        type.bucket_level_permissions = BucketLevelPermissions.build(params[:bucket_level_permissions], context: "#{context}[:bucket_level_permissions]") unless params[:bucket_level_permissions].nil?
        type
      end
    end

    module BucketPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BucketPolicy, context: context)
        type = Types::BucketPolicy.new
        type.allows_public_read_access = params[:allows_public_read_access]
        type.allows_public_write_access = params[:allows_public_write_access]
        type
      end
    end

    module BucketPublicAccess
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BucketPublicAccess, context: context)
        type = Types::BucketPublicAccess.new
        type.effective_permission = params[:effective_permission]
        type.permission_configuration = BucketPermissionConfiguration.build(params[:permission_configuration], context: "#{context}[:permission_configuration]") unless params[:permission_configuration].nil?
        type
      end
    end

    module BucketServerSideEncryption
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BucketServerSideEncryption, context: context)
        type = Types::BucketServerSideEncryption.new
        type.kms_master_key_id = params[:kms_master_key_id]
        type.type = params[:type]
        type
      end
    end

    module BucketSortCriteria
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BucketSortCriteria, context: context)
        type = Types::BucketSortCriteria.new
        type.attribute_name = params[:attribute_name]
        type.order_by = params[:order_by]
        type
      end
    end

    module Cell
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Cell, context: context)
        type = Types::Cell.new
        type.cell_reference = params[:cell_reference]
        type.column = params[:column]
        type.column_name = params[:column_name]
        type.row = params[:row]
        type
      end
    end

    module Cells
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Cell.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ClassificationDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClassificationDetails, context: context)
        type = Types::ClassificationDetails.new
        type.detailed_results_location = params[:detailed_results_location]
        type.job_arn = params[:job_arn]
        type.job_id = params[:job_id]
        type.origin_type = params[:origin_type]
        type.result = ClassificationResult.build(params[:result], context: "#{context}[:result]") unless params[:result].nil?
        type
      end
    end

    module ClassificationExportConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClassificationExportConfiguration, context: context)
        type = Types::ClassificationExportConfiguration.new
        type.s3_destination = S3Destination.build(params[:s3_destination], context: "#{context}[:s3_destination]") unless params[:s3_destination].nil?
        type
      end
    end

    module ClassificationResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClassificationResult, context: context)
        type = Types::ClassificationResult.new
        type.additional_occurrences = params[:additional_occurrences]
        type.custom_data_identifiers = CustomDataIdentifiers.build(params[:custom_data_identifiers], context: "#{context}[:custom_data_identifiers]") unless params[:custom_data_identifiers].nil?
        type.mime_type = params[:mime_type]
        type.sensitive_data = SensitiveData.build(params[:sensitive_data], context: "#{context}[:sensitive_data]") unless params[:sensitive_data].nil?
        type.size_classified = params[:size_classified]
        type.status = ClassificationResultStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type
      end
    end

    module ClassificationResultStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClassificationResultStatus, context: context)
        type = Types::ClassificationResultStatus.new
        type.code = params[:code]
        type.reason = params[:reason]
        type
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type
      end
    end

    module CreateClassificationJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateClassificationJobInput, context: context)
        type = Types::CreateClassificationJobInput.new
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.custom_data_identifier_ids = List____listOf__string.build(params[:custom_data_identifier_ids], context: "#{context}[:custom_data_identifier_ids]") unless params[:custom_data_identifier_ids].nil?
        type.description = params[:description]
        type.initial_run = params[:initial_run]
        type.job_type = params[:job_type]
        type.managed_data_identifier_ids = List____listOf__string.build(params[:managed_data_identifier_ids], context: "#{context}[:managed_data_identifier_ids]") unless params[:managed_data_identifier_ids].nil?
        type.managed_data_identifier_selector = params[:managed_data_identifier_selector]
        type.name = params[:name]
        type.s3_job_definition = S3JobDefinition.build(params[:s3_job_definition], context: "#{context}[:s3_job_definition]") unless params[:s3_job_definition].nil?
        type.sampling_percentage = params[:sampling_percentage]
        type.schedule_frequency = JobScheduleFrequency.build(params[:schedule_frequency], context: "#{context}[:schedule_frequency]") unless params[:schedule_frequency].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateClassificationJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateClassificationJobOutput, context: context)
        type = Types::CreateClassificationJobOutput.new
        type.job_arn = params[:job_arn]
        type.job_id = params[:job_id]
        type
      end
    end

    module CreateCustomDataIdentifierInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCustomDataIdentifierInput, context: context)
        type = Types::CreateCustomDataIdentifierInput.new
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.description = params[:description]
        type.ignore_words = List____listOf__string.build(params[:ignore_words], context: "#{context}[:ignore_words]") unless params[:ignore_words].nil?
        type.keywords = List____listOf__string.build(params[:keywords], context: "#{context}[:keywords]") unless params[:keywords].nil?
        type.maximum_match_distance = params[:maximum_match_distance]
        type.name = params[:name]
        type.regex = params[:regex]
        type.severity_levels = SeverityLevelList.build(params[:severity_levels], context: "#{context}[:severity_levels]") unless params[:severity_levels].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateCustomDataIdentifierOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCustomDataIdentifierOutput, context: context)
        type = Types::CreateCustomDataIdentifierOutput.new
        type.custom_data_identifier_id = params[:custom_data_identifier_id]
        type
      end
    end

    module CreateFindingsFilterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFindingsFilterInput, context: context)
        type = Types::CreateFindingsFilterInput.new
        type.action = params[:action]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.description = params[:description]
        type.finding_criteria = FindingCriteria.build(params[:finding_criteria], context: "#{context}[:finding_criteria]") unless params[:finding_criteria].nil?
        type.name = params[:name]
        type.position = params[:position]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateFindingsFilterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFindingsFilterOutput, context: context)
        type = Types::CreateFindingsFilterOutput.new
        type.arn = params[:arn]
        type.id = params[:id]
        type
      end
    end

    module CreateInvitationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateInvitationsInput, context: context)
        type = Types::CreateInvitationsInput.new
        type.account_ids = List____listOf__string.build(params[:account_ids], context: "#{context}[:account_ids]") unless params[:account_ids].nil?
        type.disable_email_notification = params[:disable_email_notification]
        type.message = params[:message]
        type
      end
    end

    module CreateInvitationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateInvitationsOutput, context: context)
        type = Types::CreateInvitationsOutput.new
        type.unprocessed_accounts = List____listOfUnprocessedAccount.build(params[:unprocessed_accounts], context: "#{context}[:unprocessed_accounts]") unless params[:unprocessed_accounts].nil?
        type
      end
    end

    module CreateMemberInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMemberInput, context: context)
        type = Types::CreateMemberInput.new
        type.account = AccountDetail.build(params[:account], context: "#{context}[:account]") unless params[:account].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateMemberOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMemberOutput, context: context)
        type = Types::CreateMemberOutput.new
        type.arn = params[:arn]
        type
      end
    end

    module CreateSampleFindingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSampleFindingsInput, context: context)
        type = Types::CreateSampleFindingsInput.new
        type.finding_types = List____listOfFindingType.build(params[:finding_types], context: "#{context}[:finding_types]") unless params[:finding_types].nil?
        type
      end
    end

    module CreateSampleFindingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSampleFindingsOutput, context: context)
        type = Types::CreateSampleFindingsOutput.new
        type
      end
    end

    module CriteriaBlockForJob
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CriteriaBlockForJob, context: context)
        type = Types::CriteriaBlockForJob.new
        type.and = List____listOfCriteriaForJob.build(params[:and], context: "#{context}[:and]") unless params[:and].nil?
        type
      end
    end

    module CriteriaForJob
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CriteriaForJob, context: context)
        type = Types::CriteriaForJob.new
        type.simple_criterion = SimpleCriterionForJob.build(params[:simple_criterion], context: "#{context}[:simple_criterion]") unless params[:simple_criterion].nil?
        type.tag_criterion = TagCriterionForJob.build(params[:tag_criterion], context: "#{context}[:tag_criterion]") unless params[:tag_criterion].nil?
        type
      end
    end

    module Criterion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = CriterionAdditionalProperties.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module CriterionAdditionalProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CriterionAdditionalProperties, context: context)
        type = Types::CriterionAdditionalProperties.new
        type.eq = List____listOf__string.build(params[:eq], context: "#{context}[:eq]") unless params[:eq].nil?
        type.eq_exact_match = List____listOf__string.build(params[:eq_exact_match], context: "#{context}[:eq_exact_match]") unless params[:eq_exact_match].nil?
        type.gt = params[:gt]
        type.gte = params[:gte]
        type.lt = params[:lt]
        type.lte = params[:lte]
        type.neq = List____listOf__string.build(params[:neq], context: "#{context}[:neq]") unless params[:neq].nil?
        type
      end
    end

    module CustomDataIdentifierSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomDataIdentifierSummary, context: context)
        type = Types::CustomDataIdentifierSummary.new
        type.arn = params[:arn]
        type.created_at = params[:created_at]
        type.description = params[:description]
        type.id = params[:id]
        type.name = params[:name]
        type
      end
    end

    module CustomDataIdentifiers
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomDataIdentifiers, context: context)
        type = Types::CustomDataIdentifiers.new
        type.detections = CustomDetections.build(params[:detections], context: "#{context}[:detections]") unless params[:detections].nil?
        type.total_count = params[:total_count]
        type
      end
    end

    module CustomDetection
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomDetection, context: context)
        type = Types::CustomDetection.new
        type.arn = params[:arn]
        type.count = params[:count]
        type.name = params[:name]
        type.occurrences = Occurrences.build(params[:occurrences], context: "#{context}[:occurrences]") unless params[:occurrences].nil?
        type
      end
    end

    module CustomDetections
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CustomDetection.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DailySchedule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DailySchedule, context: context)
        type = Types::DailySchedule.new
        type
      end
    end

    module DeclineInvitationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeclineInvitationsInput, context: context)
        type = Types::DeclineInvitationsInput.new
        type.account_ids = List____listOf__string.build(params[:account_ids], context: "#{context}[:account_ids]") unless params[:account_ids].nil?
        type
      end
    end

    module DeclineInvitationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeclineInvitationsOutput, context: context)
        type = Types::DeclineInvitationsOutput.new
        type.unprocessed_accounts = List____listOfUnprocessedAccount.build(params[:unprocessed_accounts], context: "#{context}[:unprocessed_accounts]") unless params[:unprocessed_accounts].nil?
        type
      end
    end

    module DefaultDetection
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DefaultDetection, context: context)
        type = Types::DefaultDetection.new
        type.count = params[:count]
        type.occurrences = Occurrences.build(params[:occurrences], context: "#{context}[:occurrences]") unless params[:occurrences].nil?
        type.type = params[:type]
        type
      end
    end

    module DefaultDetections
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DefaultDetection.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeleteCustomDataIdentifierInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCustomDataIdentifierInput, context: context)
        type = Types::DeleteCustomDataIdentifierInput.new
        type.id = params[:id]
        type
      end
    end

    module DeleteCustomDataIdentifierOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCustomDataIdentifierOutput, context: context)
        type = Types::DeleteCustomDataIdentifierOutput.new
        type
      end
    end

    module DeleteFindingsFilterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFindingsFilterInput, context: context)
        type = Types::DeleteFindingsFilterInput.new
        type.id = params[:id]
        type
      end
    end

    module DeleteFindingsFilterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFindingsFilterOutput, context: context)
        type = Types::DeleteFindingsFilterOutput.new
        type
      end
    end

    module DeleteInvitationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteInvitationsInput, context: context)
        type = Types::DeleteInvitationsInput.new
        type.account_ids = List____listOf__string.build(params[:account_ids], context: "#{context}[:account_ids]") unless params[:account_ids].nil?
        type
      end
    end

    module DeleteInvitationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteInvitationsOutput, context: context)
        type = Types::DeleteInvitationsOutput.new
        type.unprocessed_accounts = List____listOfUnprocessedAccount.build(params[:unprocessed_accounts], context: "#{context}[:unprocessed_accounts]") unless params[:unprocessed_accounts].nil?
        type
      end
    end

    module DeleteMemberInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMemberInput, context: context)
        type = Types::DeleteMemberInput.new
        type.id = params[:id]
        type
      end
    end

    module DeleteMemberOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMemberOutput, context: context)
        type = Types::DeleteMemberOutput.new
        type
      end
    end

    module DescribeBucketsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeBucketsInput, context: context)
        type = Types::DescribeBucketsInput.new
        type.criteria = BucketCriteria.build(params[:criteria], context: "#{context}[:criteria]") unless params[:criteria].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.sort_criteria = BucketSortCriteria.build(params[:sort_criteria], context: "#{context}[:sort_criteria]") unless params[:sort_criteria].nil?
        type
      end
    end

    module DescribeBucketsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeBucketsOutput, context: context)
        type = Types::DescribeBucketsOutput.new
        type.buckets = List____listOfBucketMetadata.build(params[:buckets], context: "#{context}[:buckets]") unless params[:buckets].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeClassificationJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeClassificationJobInput, context: context)
        type = Types::DescribeClassificationJobInput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module DescribeClassificationJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeClassificationJobOutput, context: context)
        type = Types::DescribeClassificationJobOutput.new
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.created_at = params[:created_at]
        type.custom_data_identifier_ids = List____listOf__string.build(params[:custom_data_identifier_ids], context: "#{context}[:custom_data_identifier_ids]") unless params[:custom_data_identifier_ids].nil?
        type.description = params[:description]
        type.initial_run = params[:initial_run]
        type.job_arn = params[:job_arn]
        type.job_id = params[:job_id]
        type.job_status = params[:job_status]
        type.job_type = params[:job_type]
        type.last_run_error_status = LastRunErrorStatus.build(params[:last_run_error_status], context: "#{context}[:last_run_error_status]") unless params[:last_run_error_status].nil?
        type.last_run_time = params[:last_run_time]
        type.managed_data_identifier_ids = List____listOf__string.build(params[:managed_data_identifier_ids], context: "#{context}[:managed_data_identifier_ids]") unless params[:managed_data_identifier_ids].nil?
        type.managed_data_identifier_selector = params[:managed_data_identifier_selector]
        type.name = params[:name]
        type.s3_job_definition = S3JobDefinition.build(params[:s3_job_definition], context: "#{context}[:s3_job_definition]") unless params[:s3_job_definition].nil?
        type.sampling_percentage = params[:sampling_percentage]
        type.schedule_frequency = JobScheduleFrequency.build(params[:schedule_frequency], context: "#{context}[:schedule_frequency]") unless params[:schedule_frequency].nil?
        type.statistics = Statistics.build(params[:statistics], context: "#{context}[:statistics]") unless params[:statistics].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.user_paused_details = UserPausedDetails.build(params[:user_paused_details], context: "#{context}[:user_paused_details]") unless params[:user_paused_details].nil?
        type
      end
    end

    module DescribeOrganizationConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeOrganizationConfigurationInput, context: context)
        type = Types::DescribeOrganizationConfigurationInput.new
        type
      end
    end

    module DescribeOrganizationConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeOrganizationConfigurationOutput, context: context)
        type = Types::DescribeOrganizationConfigurationOutput.new
        type.auto_enable = params[:auto_enable]
        type.max_account_limit_reached = params[:max_account_limit_reached]
        type
      end
    end

    module DisableMacieInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableMacieInput, context: context)
        type = Types::DisableMacieInput.new
        type
      end
    end

    module DisableMacieOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableMacieOutput, context: context)
        type = Types::DisableMacieOutput.new
        type
      end
    end

    module DisableOrganizationAdminAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableOrganizationAdminAccountInput, context: context)
        type = Types::DisableOrganizationAdminAccountInput.new
        type.admin_account_id = params[:admin_account_id]
        type
      end
    end

    module DisableOrganizationAdminAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableOrganizationAdminAccountOutput, context: context)
        type = Types::DisableOrganizationAdminAccountOutput.new
        type
      end
    end

    module DisassociateFromAdministratorAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateFromAdministratorAccountInput, context: context)
        type = Types::DisassociateFromAdministratorAccountInput.new
        type
      end
    end

    module DisassociateFromAdministratorAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateFromAdministratorAccountOutput, context: context)
        type = Types::DisassociateFromAdministratorAccountOutput.new
        type
      end
    end

    module DisassociateFromMasterAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateFromMasterAccountInput, context: context)
        type = Types::DisassociateFromMasterAccountInput.new
        type
      end
    end

    module DisassociateFromMasterAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateFromMasterAccountOutput, context: context)
        type = Types::DisassociateFromMasterAccountOutput.new
        type
      end
    end

    module DisassociateMemberInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateMemberInput, context: context)
        type = Types::DisassociateMemberInput.new
        type.id = params[:id]
        type
      end
    end

    module DisassociateMemberOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateMemberOutput, context: context)
        type = Types::DisassociateMemberOutput.new
        type
      end
    end

    module DomainDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DomainDetails, context: context)
        type = Types::DomainDetails.new
        type.domain_name = params[:domain_name]
        type
      end
    end

    module EnableMacieInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableMacieInput, context: context)
        type = Types::EnableMacieInput.new
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.finding_publishing_frequency = params[:finding_publishing_frequency]
        type.status = params[:status]
        type
      end
    end

    module EnableMacieOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableMacieOutput, context: context)
        type = Types::EnableMacieOutput.new
        type
      end
    end

    module EnableOrganizationAdminAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableOrganizationAdminAccountInput, context: context)
        type = Types::EnableOrganizationAdminAccountInput.new
        type.admin_account_id = params[:admin_account_id]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module EnableOrganizationAdminAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableOrganizationAdminAccountOutput, context: context)
        type = Types::EnableOrganizationAdminAccountOutput.new
        type
      end
    end

    module FederatedUser
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FederatedUser, context: context)
        type = Types::FederatedUser.new
        type.access_key_id = params[:access_key_id]
        type.account_id = params[:account_id]
        type.arn = params[:arn]
        type.principal_id = params[:principal_id]
        type.session_context = SessionContext.build(params[:session_context], context: "#{context}[:session_context]") unless params[:session_context].nil?
        type
      end
    end

    module Finding
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Finding, context: context)
        type = Types::Finding.new
        type.account_id = params[:account_id]
        type.archived = params[:archived]
        type.category = params[:category]
        type.classification_details = ClassificationDetails.build(params[:classification_details], context: "#{context}[:classification_details]") unless params[:classification_details].nil?
        type.count = params[:count]
        type.created_at = params[:created_at]
        type.description = params[:description]
        type.id = params[:id]
        type.partition = params[:partition]
        type.policy_details = PolicyDetails.build(params[:policy_details], context: "#{context}[:policy_details]") unless params[:policy_details].nil?
        type.region = params[:region]
        type.resources_affected = ResourcesAffected.build(params[:resources_affected], context: "#{context}[:resources_affected]") unless params[:resources_affected].nil?
        type.sample = params[:sample]
        type.schema_version = params[:schema_version]
        type.severity = Severity.build(params[:severity], context: "#{context}[:severity]") unless params[:severity].nil?
        type.title = params[:title]
        type.type = params[:type]
        type.updated_at = params[:updated_at]
        type
      end
    end

    module FindingAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FindingAction, context: context)
        type = Types::FindingAction.new
        type.action_type = params[:action_type]
        type.api_call_details = ApiCallDetails.build(params[:api_call_details], context: "#{context}[:api_call_details]") unless params[:api_call_details].nil?
        type
      end
    end

    module FindingActor
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FindingActor, context: context)
        type = Types::FindingActor.new
        type.domain_details = DomainDetails.build(params[:domain_details], context: "#{context}[:domain_details]") unless params[:domain_details].nil?
        type.ip_address_details = IpAddressDetails.build(params[:ip_address_details], context: "#{context}[:ip_address_details]") unless params[:ip_address_details].nil?
        type.user_identity = UserIdentity.build(params[:user_identity], context: "#{context}[:user_identity]") unless params[:user_identity].nil?
        type
      end
    end

    module FindingCriteria
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FindingCriteria, context: context)
        type = Types::FindingCriteria.new
        type.criterion = Criterion.build(params[:criterion], context: "#{context}[:criterion]") unless params[:criterion].nil?
        type
      end
    end

    module FindingStatisticsSortCriteria
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FindingStatisticsSortCriteria, context: context)
        type = Types::FindingStatisticsSortCriteria.new
        type.attribute_name = params[:attribute_name]
        type.order_by = params[:order_by]
        type
      end
    end

    module FindingsFilterListItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FindingsFilterListItem, context: context)
        type = Types::FindingsFilterListItem.new
        type.action = params[:action]
        type.arn = params[:arn]
        type.id = params[:id]
        type.name = params[:name]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module GetAdministratorAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAdministratorAccountInput, context: context)
        type = Types::GetAdministratorAccountInput.new
        type
      end
    end

    module GetAdministratorAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAdministratorAccountOutput, context: context)
        type = Types::GetAdministratorAccountOutput.new
        type.administrator = Invitation.build(params[:administrator], context: "#{context}[:administrator]") unless params[:administrator].nil?
        type
      end
    end

    module GetBucketStatisticsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBucketStatisticsInput, context: context)
        type = Types::GetBucketStatisticsInput.new
        type.account_id = params[:account_id]
        type
      end
    end

    module GetBucketStatisticsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBucketStatisticsOutput, context: context)
        type = Types::GetBucketStatisticsOutput.new
        type.bucket_count = params[:bucket_count]
        type.bucket_count_by_effective_permission = BucketCountByEffectivePermission.build(params[:bucket_count_by_effective_permission], context: "#{context}[:bucket_count_by_effective_permission]") unless params[:bucket_count_by_effective_permission].nil?
        type.bucket_count_by_encryption_type = BucketCountByEncryptionType.build(params[:bucket_count_by_encryption_type], context: "#{context}[:bucket_count_by_encryption_type]") unless params[:bucket_count_by_encryption_type].nil?
        type.bucket_count_by_object_encryption_requirement = BucketCountPolicyAllowsUnencryptedObjectUploads.build(params[:bucket_count_by_object_encryption_requirement], context: "#{context}[:bucket_count_by_object_encryption_requirement]") unless params[:bucket_count_by_object_encryption_requirement].nil?
        type.bucket_count_by_shared_access_type = BucketCountBySharedAccessType.build(params[:bucket_count_by_shared_access_type], context: "#{context}[:bucket_count_by_shared_access_type]") unless params[:bucket_count_by_shared_access_type].nil?
        type.classifiable_object_count = params[:classifiable_object_count]
        type.classifiable_size_in_bytes = params[:classifiable_size_in_bytes]
        type.last_updated = params[:last_updated]
        type.object_count = params[:object_count]
        type.size_in_bytes = params[:size_in_bytes]
        type.size_in_bytes_compressed = params[:size_in_bytes_compressed]
        type.unclassifiable_object_count = ObjectLevelStatistics.build(params[:unclassifiable_object_count], context: "#{context}[:unclassifiable_object_count]") unless params[:unclassifiable_object_count].nil?
        type.unclassifiable_object_size_in_bytes = ObjectLevelStatistics.build(params[:unclassifiable_object_size_in_bytes], context: "#{context}[:unclassifiable_object_size_in_bytes]") unless params[:unclassifiable_object_size_in_bytes].nil?
        type
      end
    end

    module GetClassificationExportConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetClassificationExportConfigurationInput, context: context)
        type = Types::GetClassificationExportConfigurationInput.new
        type
      end
    end

    module GetClassificationExportConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetClassificationExportConfigurationOutput, context: context)
        type = Types::GetClassificationExportConfigurationOutput.new
        type.configuration = ClassificationExportConfiguration.build(params[:configuration], context: "#{context}[:configuration]") unless params[:configuration].nil?
        type
      end
    end

    module GetCustomDataIdentifierInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCustomDataIdentifierInput, context: context)
        type = Types::GetCustomDataIdentifierInput.new
        type.id = params[:id]
        type
      end
    end

    module GetCustomDataIdentifierOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCustomDataIdentifierOutput, context: context)
        type = Types::GetCustomDataIdentifierOutput.new
        type.arn = params[:arn]
        type.created_at = params[:created_at]
        type.deleted = params[:deleted]
        type.description = params[:description]
        type.id = params[:id]
        type.ignore_words = List____listOf__string.build(params[:ignore_words], context: "#{context}[:ignore_words]") unless params[:ignore_words].nil?
        type.keywords = List____listOf__string.build(params[:keywords], context: "#{context}[:keywords]") unless params[:keywords].nil?
        type.maximum_match_distance = params[:maximum_match_distance]
        type.name = params[:name]
        type.regex = params[:regex]
        type.severity_levels = SeverityLevelList.build(params[:severity_levels], context: "#{context}[:severity_levels]") unless params[:severity_levels].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module GetFindingStatisticsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFindingStatisticsInput, context: context)
        type = Types::GetFindingStatisticsInput.new
        type.finding_criteria = FindingCriteria.build(params[:finding_criteria], context: "#{context}[:finding_criteria]") unless params[:finding_criteria].nil?
        type.group_by = params[:group_by]
        type.size = params[:size]
        type.sort_criteria = FindingStatisticsSortCriteria.build(params[:sort_criteria], context: "#{context}[:sort_criteria]") unless params[:sort_criteria].nil?
        type
      end
    end

    module GetFindingStatisticsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFindingStatisticsOutput, context: context)
        type = Types::GetFindingStatisticsOutput.new
        type.counts_by_group = List____listOfGroupCount.build(params[:counts_by_group], context: "#{context}[:counts_by_group]") unless params[:counts_by_group].nil?
        type
      end
    end

    module GetFindingsFilterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFindingsFilterInput, context: context)
        type = Types::GetFindingsFilterInput.new
        type.id = params[:id]
        type
      end
    end

    module GetFindingsFilterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFindingsFilterOutput, context: context)
        type = Types::GetFindingsFilterOutput.new
        type.action = params[:action]
        type.arn = params[:arn]
        type.description = params[:description]
        type.finding_criteria = FindingCriteria.build(params[:finding_criteria], context: "#{context}[:finding_criteria]") unless params[:finding_criteria].nil?
        type.id = params[:id]
        type.name = params[:name]
        type.position = params[:position]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module GetFindingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFindingsInput, context: context)
        type = Types::GetFindingsInput.new
        type.finding_ids = List____listOf__string.build(params[:finding_ids], context: "#{context}[:finding_ids]") unless params[:finding_ids].nil?
        type.sort_criteria = SortCriteria.build(params[:sort_criteria], context: "#{context}[:sort_criteria]") unless params[:sort_criteria].nil?
        type
      end
    end

    module GetFindingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFindingsOutput, context: context)
        type = Types::GetFindingsOutput.new
        type.findings = List____listOfFinding.build(params[:findings], context: "#{context}[:findings]") unless params[:findings].nil?
        type
      end
    end

    module GetFindingsPublicationConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFindingsPublicationConfigurationInput, context: context)
        type = Types::GetFindingsPublicationConfigurationInput.new
        type
      end
    end

    module GetFindingsPublicationConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFindingsPublicationConfigurationOutput, context: context)
        type = Types::GetFindingsPublicationConfigurationOutput.new
        type.security_hub_configuration = SecurityHubConfiguration.build(params[:security_hub_configuration], context: "#{context}[:security_hub_configuration]") unless params[:security_hub_configuration].nil?
        type
      end
    end

    module GetInvitationsCountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInvitationsCountInput, context: context)
        type = Types::GetInvitationsCountInput.new
        type
      end
    end

    module GetInvitationsCountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInvitationsCountOutput, context: context)
        type = Types::GetInvitationsCountOutput.new
        type.invitations_count = params[:invitations_count]
        type
      end
    end

    module GetMacieSessionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMacieSessionInput, context: context)
        type = Types::GetMacieSessionInput.new
        type
      end
    end

    module GetMacieSessionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMacieSessionOutput, context: context)
        type = Types::GetMacieSessionOutput.new
        type.created_at = params[:created_at]
        type.finding_publishing_frequency = params[:finding_publishing_frequency]
        type.service_role = params[:service_role]
        type.status = params[:status]
        type.updated_at = params[:updated_at]
        type
      end
    end

    module GetMasterAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMasterAccountInput, context: context)
        type = Types::GetMasterAccountInput.new
        type
      end
    end

    module GetMasterAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMasterAccountOutput, context: context)
        type = Types::GetMasterAccountOutput.new
        type.master = Invitation.build(params[:master], context: "#{context}[:master]") unless params[:master].nil?
        type
      end
    end

    module GetMemberInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMemberInput, context: context)
        type = Types::GetMemberInput.new
        type.id = params[:id]
        type
      end
    end

    module GetMemberOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMemberOutput, context: context)
        type = Types::GetMemberOutput.new
        type.account_id = params[:account_id]
        type.administrator_account_id = params[:administrator_account_id]
        type.arn = params[:arn]
        type.email = params[:email]
        type.invited_at = params[:invited_at]
        type.master_account_id = params[:master_account_id]
        type.relationship_status = params[:relationship_status]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.updated_at = params[:updated_at]
        type
      end
    end

    module GetUsageStatisticsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetUsageStatisticsInput, context: context)
        type = Types::GetUsageStatisticsInput.new
        type.filter_by = List____listOfUsageStatisticsFilter.build(params[:filter_by], context: "#{context}[:filter_by]") unless params[:filter_by].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.sort_by = UsageStatisticsSortBy.build(params[:sort_by], context: "#{context}[:sort_by]") unless params[:sort_by].nil?
        type.time_range = params[:time_range]
        type
      end
    end

    module GetUsageStatisticsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetUsageStatisticsOutput, context: context)
        type = Types::GetUsageStatisticsOutput.new
        type.next_token = params[:next_token]
        type.records = List____listOfUsageRecord.build(params[:records], context: "#{context}[:records]") unless params[:records].nil?
        type.time_range = params[:time_range]
        type
      end
    end

    module GetUsageTotalsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetUsageTotalsInput, context: context)
        type = Types::GetUsageTotalsInput.new
        type.time_range = params[:time_range]
        type
      end
    end

    module GetUsageTotalsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetUsageTotalsOutput, context: context)
        type = Types::GetUsageTotalsOutput.new
        type.time_range = params[:time_range]
        type.usage_totals = List____listOfUsageTotal.build(params[:usage_totals], context: "#{context}[:usage_totals]") unless params[:usage_totals].nil?
        type
      end
    end

    module GroupCount
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GroupCount, context: context)
        type = Types::GroupCount.new
        type.count = params[:count]
        type.group_key = params[:group_key]
        type
      end
    end

    module IamUser
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IamUser, context: context)
        type = Types::IamUser.new
        type.account_id = params[:account_id]
        type.arn = params[:arn]
        type.principal_id = params[:principal_id]
        type.user_name = params[:user_name]
        type
      end
    end

    module InternalServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        type.message = params[:message]
        type
      end
    end

    module Invitation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Invitation, context: context)
        type = Types::Invitation.new
        type.account_id = params[:account_id]
        type.invitation_id = params[:invitation_id]
        type.invited_at = params[:invited_at]
        type.relationship_status = params[:relationship_status]
        type
      end
    end

    module IpAddressDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IpAddressDetails, context: context)
        type = Types::IpAddressDetails.new
        type.ip_address_v4 = params[:ip_address_v4]
        type.ip_city = IpCity.build(params[:ip_city], context: "#{context}[:ip_city]") unless params[:ip_city].nil?
        type.ip_country = IpCountry.build(params[:ip_country], context: "#{context}[:ip_country]") unless params[:ip_country].nil?
        type.ip_geo_location = IpGeoLocation.build(params[:ip_geo_location], context: "#{context}[:ip_geo_location]") unless params[:ip_geo_location].nil?
        type.ip_owner = IpOwner.build(params[:ip_owner], context: "#{context}[:ip_owner]") unless params[:ip_owner].nil?
        type
      end
    end

    module IpCity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IpCity, context: context)
        type = Types::IpCity.new
        type.name = params[:name]
        type
      end
    end

    module IpCountry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IpCountry, context: context)
        type = Types::IpCountry.new
        type.code = params[:code]
        type.name = params[:name]
        type
      end
    end

    module IpGeoLocation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IpGeoLocation, context: context)
        type = Types::IpGeoLocation.new
        type.lat = params[:lat]
        type.lon = params[:lon]
        type
      end
    end

    module IpOwner
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IpOwner, context: context)
        type = Types::IpOwner.new
        type.asn = params[:asn]
        type.asn_org = params[:asn_org]
        type.isp = params[:isp]
        type.org = params[:org]
        type
      end
    end

    module JobDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobDetails, context: context)
        type = Types::JobDetails.new
        type.is_defined_in_job = params[:is_defined_in_job]
        type.is_monitored_by_job = params[:is_monitored_by_job]
        type.last_job_id = params[:last_job_id]
        type.last_job_run_time = params[:last_job_run_time]
        type
      end
    end

    module JobScheduleFrequency
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobScheduleFrequency, context: context)
        type = Types::JobScheduleFrequency.new
        type.daily_schedule = DailySchedule.build(params[:daily_schedule], context: "#{context}[:daily_schedule]") unless params[:daily_schedule].nil?
        type.monthly_schedule = MonthlySchedule.build(params[:monthly_schedule], context: "#{context}[:monthly_schedule]") unless params[:monthly_schedule].nil?
        type.weekly_schedule = WeeklySchedule.build(params[:weekly_schedule], context: "#{context}[:weekly_schedule]") unless params[:weekly_schedule].nil?
        type
      end
    end

    module JobScopeTerm
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobScopeTerm, context: context)
        type = Types::JobScopeTerm.new
        type.simple_scope_term = SimpleScopeTerm.build(params[:simple_scope_term], context: "#{context}[:simple_scope_term]") unless params[:simple_scope_term].nil?
        type.tag_scope_term = TagScopeTerm.build(params[:tag_scope_term], context: "#{context}[:tag_scope_term]") unless params[:tag_scope_term].nil?
        type
      end
    end

    module JobScopingBlock
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobScopingBlock, context: context)
        type = Types::JobScopingBlock.new
        type.and = List____listOfJobScopeTerm.build(params[:and], context: "#{context}[:and]") unless params[:and].nil?
        type
      end
    end

    module JobSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobSummary, context: context)
        type = Types::JobSummary.new
        type.bucket_definitions = List____listOfS3BucketDefinitionForJob.build(params[:bucket_definitions], context: "#{context}[:bucket_definitions]") unless params[:bucket_definitions].nil?
        type.created_at = params[:created_at]
        type.job_id = params[:job_id]
        type.job_status = params[:job_status]
        type.job_type = params[:job_type]
        type.last_run_error_status = LastRunErrorStatus.build(params[:last_run_error_status], context: "#{context}[:last_run_error_status]") unless params[:last_run_error_status].nil?
        type.name = params[:name]
        type.user_paused_details = UserPausedDetails.build(params[:user_paused_details], context: "#{context}[:user_paused_details]") unless params[:user_paused_details].nil?
        type.bucket_criteria = S3BucketCriteriaForJob.build(params[:bucket_criteria], context: "#{context}[:bucket_criteria]") unless params[:bucket_criteria].nil?
        type
      end
    end

    module KeyValuePair
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KeyValuePair, context: context)
        type = Types::KeyValuePair.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module KeyValuePairList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << KeyValuePair.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LastRunErrorStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LastRunErrorStatus, context: context)
        type = Types::LastRunErrorStatus.new
        type.code = params[:code]
        type
      end
    end

    module ListClassificationJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListClassificationJobsInput, context: context)
        type = Types::ListClassificationJobsInput.new
        type.filter_criteria = ListJobsFilterCriteria.build(params[:filter_criteria], context: "#{context}[:filter_criteria]") unless params[:filter_criteria].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.sort_criteria = ListJobsSortCriteria.build(params[:sort_criteria], context: "#{context}[:sort_criteria]") unless params[:sort_criteria].nil?
        type
      end
    end

    module ListClassificationJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListClassificationJobsOutput, context: context)
        type = Types::ListClassificationJobsOutput.new
        type.items = List____listOfJobSummary.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListCustomDataIdentifiersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCustomDataIdentifiersInput, context: context)
        type = Types::ListCustomDataIdentifiersInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListCustomDataIdentifiersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCustomDataIdentifiersOutput, context: context)
        type = Types::ListCustomDataIdentifiersOutput.new
        type.items = List____listOfCustomDataIdentifierSummary.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListFindingsFiltersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFindingsFiltersInput, context: context)
        type = Types::ListFindingsFiltersInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListFindingsFiltersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFindingsFiltersOutput, context: context)
        type = Types::ListFindingsFiltersOutput.new
        type.findings_filter_list_items = List____listOfFindingsFilterListItem.build(params[:findings_filter_list_items], context: "#{context}[:findings_filter_list_items]") unless params[:findings_filter_list_items].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListFindingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFindingsInput, context: context)
        type = Types::ListFindingsInput.new
        type.finding_criteria = FindingCriteria.build(params[:finding_criteria], context: "#{context}[:finding_criteria]") unless params[:finding_criteria].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.sort_criteria = SortCriteria.build(params[:sort_criteria], context: "#{context}[:sort_criteria]") unless params[:sort_criteria].nil?
        type
      end
    end

    module ListFindingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFindingsOutput, context: context)
        type = Types::ListFindingsOutput.new
        type.finding_ids = List____listOf__string.build(params[:finding_ids], context: "#{context}[:finding_ids]") unless params[:finding_ids].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListInvitationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListInvitationsInput, context: context)
        type = Types::ListInvitationsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListInvitationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListInvitationsOutput, context: context)
        type = Types::ListInvitationsOutput.new
        type.invitations = List____listOfInvitation.build(params[:invitations], context: "#{context}[:invitations]") unless params[:invitations].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListJobsFilterCriteria
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListJobsFilterCriteria, context: context)
        type = Types::ListJobsFilterCriteria.new
        type.excludes = List____listOfListJobsFilterTerm.build(params[:excludes], context: "#{context}[:excludes]") unless params[:excludes].nil?
        type.includes = List____listOfListJobsFilterTerm.build(params[:includes], context: "#{context}[:includes]") unless params[:includes].nil?
        type
      end
    end

    module ListJobsFilterTerm
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListJobsFilterTerm, context: context)
        type = Types::ListJobsFilterTerm.new
        type.comparator = params[:comparator]
        type.key = params[:key]
        type.values = List____listOf__string.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module ListJobsSortCriteria
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListJobsSortCriteria, context: context)
        type = Types::ListJobsSortCriteria.new
        type.attribute_name = params[:attribute_name]
        type.order_by = params[:order_by]
        type
      end
    end

    module ListManagedDataIdentifiersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListManagedDataIdentifiersInput, context: context)
        type = Types::ListManagedDataIdentifiersInput.new
        type.next_token = params[:next_token]
        type
      end
    end

    module ListManagedDataIdentifiersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListManagedDataIdentifiersOutput, context: context)
        type = Types::ListManagedDataIdentifiersOutput.new
        type.items = List____listOfManagedDataIdentifierSummary.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListMembersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMembersInput, context: context)
        type = Types::ListMembersInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.only_associated = params[:only_associated]
        type
      end
    end

    module ListMembersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMembersOutput, context: context)
        type = Types::ListMembersOutput.new
        type.members = List____listOfMember.build(params[:members], context: "#{context}[:members]") unless params[:members].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListOrganizationAdminAccountsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListOrganizationAdminAccountsInput, context: context)
        type = Types::ListOrganizationAdminAccountsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListOrganizationAdminAccountsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListOrganizationAdminAccountsOutput, context: context)
        type = Types::ListOrganizationAdminAccountsOutput.new
        type.admin_accounts = List____listOfAdminAccount.build(params[:admin_accounts], context: "#{context}[:admin_accounts]") unless params[:admin_accounts].nil?
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

    module ManagedDataIdentifierSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ManagedDataIdentifierSummary, context: context)
        type = Types::ManagedDataIdentifierSummary.new
        type.category = params[:category]
        type.id = params[:id]
        type
      end
    end

    module MatchingBucket
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MatchingBucket, context: context)
        type = Types::MatchingBucket.new
        type.account_id = params[:account_id]
        type.bucket_name = params[:bucket_name]
        type.classifiable_object_count = params[:classifiable_object_count]
        type.classifiable_size_in_bytes = params[:classifiable_size_in_bytes]
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type.job_details = JobDetails.build(params[:job_details], context: "#{context}[:job_details]") unless params[:job_details].nil?
        type.object_count = params[:object_count]
        type.object_count_by_encryption_type = ObjectCountByEncryptionType.build(params[:object_count_by_encryption_type], context: "#{context}[:object_count_by_encryption_type]") unless params[:object_count_by_encryption_type].nil?
        type.size_in_bytes = params[:size_in_bytes]
        type.size_in_bytes_compressed = params[:size_in_bytes_compressed]
        type.unclassifiable_object_count = ObjectLevelStatistics.build(params[:unclassifiable_object_count], context: "#{context}[:unclassifiable_object_count]") unless params[:unclassifiable_object_count].nil?
        type.unclassifiable_object_size_in_bytes = ObjectLevelStatistics.build(params[:unclassifiable_object_size_in_bytes], context: "#{context}[:unclassifiable_object_size_in_bytes]") unless params[:unclassifiable_object_size_in_bytes].nil?
        type
      end
    end

    module MatchingResource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MatchingResource, context: context)
        type = Types::MatchingResource.new
        type.matching_bucket = MatchingBucket.build(params[:matching_bucket], context: "#{context}[:matching_bucket]") unless params[:matching_bucket].nil?
        type
      end
    end

    module Member
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Member, context: context)
        type = Types::Member.new
        type.account_id = params[:account_id]
        type.administrator_account_id = params[:administrator_account_id]
        type.arn = params[:arn]
        type.email = params[:email]
        type.invited_at = params[:invited_at]
        type.master_account_id = params[:master_account_id]
        type.relationship_status = params[:relationship_status]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.updated_at = params[:updated_at]
        type
      end
    end

    module MonthlySchedule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MonthlySchedule, context: context)
        type = Types::MonthlySchedule.new
        type.day_of_month = params[:day_of_month]
        type
      end
    end

    module ObjectCountByEncryptionType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ObjectCountByEncryptionType, context: context)
        type = Types::ObjectCountByEncryptionType.new
        type.customer_managed = params[:customer_managed]
        type.kms_managed = params[:kms_managed]
        type.s3_managed = params[:s3_managed]
        type.unencrypted = params[:unencrypted]
        type.unknown = params[:unknown]
        type
      end
    end

    module ObjectLevelStatistics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ObjectLevelStatistics, context: context)
        type = Types::ObjectLevelStatistics.new
        type.file_type = params[:file_type]
        type.storage_class = params[:storage_class]
        type.total = params[:total]
        type
      end
    end

    module Occurrences
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Occurrences, context: context)
        type = Types::Occurrences.new
        type.cells = Cells.build(params[:cells], context: "#{context}[:cells]") unless params[:cells].nil?
        type.line_ranges = Ranges.build(params[:line_ranges], context: "#{context}[:line_ranges]") unless params[:line_ranges].nil?
        type.offset_ranges = Ranges.build(params[:offset_ranges], context: "#{context}[:offset_ranges]") unless params[:offset_ranges].nil?
        type.pages = Pages.build(params[:pages], context: "#{context}[:pages]") unless params[:pages].nil?
        type.records = Records.build(params[:records], context: "#{context}[:records]") unless params[:records].nil?
        type
      end
    end

    module Page
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Page, context: context)
        type = Types::Page.new
        type.line_range = Range.build(params[:line_range], context: "#{context}[:line_range]") unless params[:line_range].nil?
        type.offset_range = Range.build(params[:offset_range], context: "#{context}[:offset_range]") unless params[:offset_range].nil?
        type.page_number = params[:page_number]
        type
      end
    end

    module Pages
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Page.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PolicyDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PolicyDetails, context: context)
        type = Types::PolicyDetails.new
        type.action = FindingAction.build(params[:action], context: "#{context}[:action]") unless params[:action].nil?
        type.actor = FindingActor.build(params[:actor], context: "#{context}[:actor]") unless params[:actor].nil?
        type
      end
    end

    module PutClassificationExportConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutClassificationExportConfigurationInput, context: context)
        type = Types::PutClassificationExportConfigurationInput.new
        type.configuration = ClassificationExportConfiguration.build(params[:configuration], context: "#{context}[:configuration]") unless params[:configuration].nil?
        type
      end
    end

    module PutClassificationExportConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutClassificationExportConfigurationOutput, context: context)
        type = Types::PutClassificationExportConfigurationOutput.new
        type.configuration = ClassificationExportConfiguration.build(params[:configuration], context: "#{context}[:configuration]") unless params[:configuration].nil?
        type
      end
    end

    module PutFindingsPublicationConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutFindingsPublicationConfigurationInput, context: context)
        type = Types::PutFindingsPublicationConfigurationInput.new
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.security_hub_configuration = SecurityHubConfiguration.build(params[:security_hub_configuration], context: "#{context}[:security_hub_configuration]") unless params[:security_hub_configuration].nil?
        type
      end
    end

    module PutFindingsPublicationConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutFindingsPublicationConfigurationOutput, context: context)
        type = Types::PutFindingsPublicationConfigurationOutput.new
        type
      end
    end

    module Range
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Range, context: context)
        type = Types::Range.new
        type.end = params[:end]
        type.start = params[:start]
        type.start_column = params[:start_column]
        type
      end
    end

    module Ranges
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Range.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Record
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Record, context: context)
        type = Types::Record.new
        type.json_path = params[:json_path]
        type.record_index = params[:record_index]
        type
      end
    end

    module Records
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Record.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReplicationDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReplicationDetails, context: context)
        type = Types::ReplicationDetails.new
        type.replicated = params[:replicated]
        type.replicated_externally = params[:replicated_externally]
        type.replication_accounts = List____listOf__string.build(params[:replication_accounts], context: "#{context}[:replication_accounts]") unless params[:replication_accounts].nil?
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module ResourcesAffected
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourcesAffected, context: context)
        type = Types::ResourcesAffected.new
        type.s3_bucket = S3Bucket.build(params[:s3_bucket], context: "#{context}[:s3_bucket]") unless params[:s3_bucket].nil?
        type.s3_object = S3Object.build(params[:s3_object], context: "#{context}[:s3_object]") unless params[:s3_object].nil?
        type
      end
    end

    module S3Bucket
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3Bucket, context: context)
        type = Types::S3Bucket.new
        type.allows_unencrypted_object_uploads = params[:allows_unencrypted_object_uploads]
        type.arn = params[:arn]
        type.created_at = params[:created_at]
        type.default_server_side_encryption = ServerSideEncryption.build(params[:default_server_side_encryption], context: "#{context}[:default_server_side_encryption]") unless params[:default_server_side_encryption].nil?
        type.name = params[:name]
        type.owner = S3BucketOwner.build(params[:owner], context: "#{context}[:owner]") unless params[:owner].nil?
        type.public_access = BucketPublicAccess.build(params[:public_access], context: "#{context}[:public_access]") unless params[:public_access].nil?
        type.tags = KeyValuePairList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module S3BucketCriteriaForJob
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3BucketCriteriaForJob, context: context)
        type = Types::S3BucketCriteriaForJob.new
        type.excludes = CriteriaBlockForJob.build(params[:excludes], context: "#{context}[:excludes]") unless params[:excludes].nil?
        type.includes = CriteriaBlockForJob.build(params[:includes], context: "#{context}[:includes]") unless params[:includes].nil?
        type
      end
    end

    module S3BucketDefinitionForJob
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3BucketDefinitionForJob, context: context)
        type = Types::S3BucketDefinitionForJob.new
        type.account_id = params[:account_id]
        type.buckets = List____listOf__string.build(params[:buckets], context: "#{context}[:buckets]") unless params[:buckets].nil?
        type
      end
    end

    module S3BucketOwner
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3BucketOwner, context: context)
        type = Types::S3BucketOwner.new
        type.display_name = params[:display_name]
        type.id = params[:id]
        type
      end
    end

    module S3Destination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3Destination, context: context)
        type = Types::S3Destination.new
        type.bucket_name = params[:bucket_name]
        type.key_prefix = params[:key_prefix]
        type.kms_key_arn = params[:kms_key_arn]
        type
      end
    end

    module S3JobDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3JobDefinition, context: context)
        type = Types::S3JobDefinition.new
        type.bucket_definitions = List____listOfS3BucketDefinitionForJob.build(params[:bucket_definitions], context: "#{context}[:bucket_definitions]") unless params[:bucket_definitions].nil?
        type.scoping = Scoping.build(params[:scoping], context: "#{context}[:scoping]") unless params[:scoping].nil?
        type.bucket_criteria = S3BucketCriteriaForJob.build(params[:bucket_criteria], context: "#{context}[:bucket_criteria]") unless params[:bucket_criteria].nil?
        type
      end
    end

    module S3Object
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3Object, context: context)
        type = Types::S3Object.new
        type.bucket_arn = params[:bucket_arn]
        type.e_tag = params[:e_tag]
        type.extension = params[:extension]
        type.key = params[:key]
        type.last_modified = params[:last_modified]
        type.path = params[:path]
        type.public_access = params[:public_access]
        type.server_side_encryption = ServerSideEncryption.build(params[:server_side_encryption], context: "#{context}[:server_side_encryption]") unless params[:server_side_encryption].nil?
        type.size = params[:size]
        type.storage_class = params[:storage_class]
        type.tags = KeyValuePairList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.version_id = params[:version_id]
        type
      end
    end

    module Scoping
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Scoping, context: context)
        type = Types::Scoping.new
        type.excludes = JobScopingBlock.build(params[:excludes], context: "#{context}[:excludes]") unless params[:excludes].nil?
        type.includes = JobScopingBlock.build(params[:includes], context: "#{context}[:includes]") unless params[:includes].nil?
        type
      end
    end

    module SearchResourcesBucketCriteria
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchResourcesBucketCriteria, context: context)
        type = Types::SearchResourcesBucketCriteria.new
        type.excludes = SearchResourcesCriteriaBlock.build(params[:excludes], context: "#{context}[:excludes]") unless params[:excludes].nil?
        type.includes = SearchResourcesCriteriaBlock.build(params[:includes], context: "#{context}[:includes]") unless params[:includes].nil?
        type
      end
    end

    module SearchResourcesCriteria
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchResourcesCriteria, context: context)
        type = Types::SearchResourcesCriteria.new
        type.simple_criterion = SearchResourcesSimpleCriterion.build(params[:simple_criterion], context: "#{context}[:simple_criterion]") unless params[:simple_criterion].nil?
        type.tag_criterion = SearchResourcesTagCriterion.build(params[:tag_criterion], context: "#{context}[:tag_criterion]") unless params[:tag_criterion].nil?
        type
      end
    end

    module SearchResourcesCriteriaBlock
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchResourcesCriteriaBlock, context: context)
        type = Types::SearchResourcesCriteriaBlock.new
        type.and = List____listOfSearchResourcesCriteria.build(params[:and], context: "#{context}[:and]") unless params[:and].nil?
        type
      end
    end

    module SearchResourcesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchResourcesInput, context: context)
        type = Types::SearchResourcesInput.new
        type.bucket_criteria = SearchResourcesBucketCriteria.build(params[:bucket_criteria], context: "#{context}[:bucket_criteria]") unless params[:bucket_criteria].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.sort_criteria = SearchResourcesSortCriteria.build(params[:sort_criteria], context: "#{context}[:sort_criteria]") unless params[:sort_criteria].nil?
        type
      end
    end

    module SearchResourcesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchResourcesOutput, context: context)
        type = Types::SearchResourcesOutput.new
        type.matching_resources = List____listOfMatchingResource.build(params[:matching_resources], context: "#{context}[:matching_resources]") unless params[:matching_resources].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module SearchResourcesSimpleCriterion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchResourcesSimpleCriterion, context: context)
        type = Types::SearchResourcesSimpleCriterion.new
        type.comparator = params[:comparator]
        type.key = params[:key]
        type.values = List____listOf__string.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module SearchResourcesSortCriteria
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchResourcesSortCriteria, context: context)
        type = Types::SearchResourcesSortCriteria.new
        type.attribute_name = params[:attribute_name]
        type.order_by = params[:order_by]
        type
      end
    end

    module SearchResourcesTagCriterion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchResourcesTagCriterion, context: context)
        type = Types::SearchResourcesTagCriterion.new
        type.comparator = params[:comparator]
        type.tag_values = List____listOfSearchResourcesTagCriterionPair.build(params[:tag_values], context: "#{context}[:tag_values]") unless params[:tag_values].nil?
        type
      end
    end

    module SearchResourcesTagCriterionPair
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchResourcesTagCriterionPair, context: context)
        type = Types::SearchResourcesTagCriterionPair.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module SecurityHubConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SecurityHubConfiguration, context: context)
        type = Types::SecurityHubConfiguration.new
        type.publish_classification_findings = params[:publish_classification_findings]
        type.publish_policy_findings = params[:publish_policy_findings]
        type
      end
    end

    module SensitiveData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SensitiveDataItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SensitiveDataItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SensitiveDataItem, context: context)
        type = Types::SensitiveDataItem.new
        type.category = params[:category]
        type.detections = DefaultDetections.build(params[:detections], context: "#{context}[:detections]") unless params[:detections].nil?
        type.total_count = params[:total_count]
        type
      end
    end

    module ServerSideEncryption
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServerSideEncryption, context: context)
        type = Types::ServerSideEncryption.new
        type.encryption_type = params[:encryption_type]
        type.kms_master_key_id = params[:kms_master_key_id]
        type
      end
    end

    module ServiceLimit
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceLimit, context: context)
        type = Types::ServiceLimit.new
        type.is_service_limited = params[:is_service_limited]
        type.unit = params[:unit]
        type.value = params[:value]
        type
      end
    end

    module ServiceQuotaExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceQuotaExceededException, context: context)
        type = Types::ServiceQuotaExceededException.new
        type.message = params[:message]
        type
      end
    end

    module SessionContext
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SessionContext, context: context)
        type = Types::SessionContext.new
        type.attributes = SessionContextAttributes.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.session_issuer = SessionIssuer.build(params[:session_issuer], context: "#{context}[:session_issuer]") unless params[:session_issuer].nil?
        type
      end
    end

    module SessionContextAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SessionContextAttributes, context: context)
        type = Types::SessionContextAttributes.new
        type.creation_date = params[:creation_date]
        type.mfa_authenticated = params[:mfa_authenticated]
        type
      end
    end

    module SessionIssuer
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SessionIssuer, context: context)
        type = Types::SessionIssuer.new
        type.account_id = params[:account_id]
        type.arn = params[:arn]
        type.principal_id = params[:principal_id]
        type.type = params[:type]
        type.user_name = params[:user_name]
        type
      end
    end

    module Severity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Severity, context: context)
        type = Types::Severity.new
        type.description = params[:description]
        type.score = params[:score]
        type
      end
    end

    module SeverityLevel
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SeverityLevel, context: context)
        type = Types::SeverityLevel.new
        type.occurrences_threshold = params[:occurrences_threshold]
        type.severity = params[:severity]
        type
      end
    end

    module SeverityLevelList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SeverityLevel.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SimpleCriterionForJob
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SimpleCriterionForJob, context: context)
        type = Types::SimpleCriterionForJob.new
        type.comparator = params[:comparator]
        type.key = params[:key]
        type.values = List____listOf__string.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module SimpleScopeTerm
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SimpleScopeTerm, context: context)
        type = Types::SimpleScopeTerm.new
        type.comparator = params[:comparator]
        type.key = params[:key]
        type.values = List____listOf__string.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module SortCriteria
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SortCriteria, context: context)
        type = Types::SortCriteria.new
        type.attribute_name = params[:attribute_name]
        type.order_by = params[:order_by]
        type
      end
    end

    module Statistics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Statistics, context: context)
        type = Types::Statistics.new
        type.approximate_number_of_objects_to_process = params[:approximate_number_of_objects_to_process]
        type.number_of_runs = params[:number_of_runs]
        type
      end
    end

    module TagCriterionForJob
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagCriterionForJob, context: context)
        type = Types::TagCriterionForJob.new
        type.comparator = params[:comparator]
        type.tag_values = List____listOfTagCriterionPairForJob.build(params[:tag_values], context: "#{context}[:tag_values]") unless params[:tag_values].nil?
        type
      end
    end

    module TagCriterionPairForJob
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagCriterionPairForJob, context: context)
        type = Types::TagCriterionPairForJob.new
        type.key = params[:key]
        type.value = params[:value]
        type
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

    module TagScopeTerm
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagScopeTerm, context: context)
        type = Types::TagScopeTerm.new
        type.comparator = params[:comparator]
        type.key = params[:key]
        type.tag_values = List____listOfTagValuePair.build(params[:tag_values], context: "#{context}[:tag_values]") unless params[:tag_values].nil?
        type.target = params[:target]
        type
      end
    end

    module TagValuePair
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagValuePair, context: context)
        type = Types::TagValuePair.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module TestCustomDataIdentifierInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TestCustomDataIdentifierInput, context: context)
        type = Types::TestCustomDataIdentifierInput.new
        type.ignore_words = List____listOf__string.build(params[:ignore_words], context: "#{context}[:ignore_words]") unless params[:ignore_words].nil?
        type.keywords = List____listOf__string.build(params[:keywords], context: "#{context}[:keywords]") unless params[:keywords].nil?
        type.maximum_match_distance = params[:maximum_match_distance]
        type.regex = params[:regex]
        type.sample_text = params[:sample_text]
        type
      end
    end

    module TestCustomDataIdentifierOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TestCustomDataIdentifierOutput, context: context)
        type = Types::TestCustomDataIdentifierOutput.new
        type.match_count = params[:match_count]
        type
      end
    end

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type
      end
    end

    module UnprocessedAccount
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnprocessedAccount, context: context)
        type = Types::UnprocessedAccount.new
        type.account_id = params[:account_id]
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = List____listOf__string.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
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

    module UpdateClassificationJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateClassificationJobInput, context: context)
        type = Types::UpdateClassificationJobInput.new
        type.job_id = params[:job_id]
        type.job_status = params[:job_status]
        type
      end
    end

    module UpdateClassificationJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateClassificationJobOutput, context: context)
        type = Types::UpdateClassificationJobOutput.new
        type
      end
    end

    module UpdateFindingsFilterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFindingsFilterInput, context: context)
        type = Types::UpdateFindingsFilterInput.new
        type.action = params[:action]
        type.description = params[:description]
        type.finding_criteria = FindingCriteria.build(params[:finding_criteria], context: "#{context}[:finding_criteria]") unless params[:finding_criteria].nil?
        type.id = params[:id]
        type.name = params[:name]
        type.position = params[:position]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module UpdateFindingsFilterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFindingsFilterOutput, context: context)
        type = Types::UpdateFindingsFilterOutput.new
        type.arn = params[:arn]
        type.id = params[:id]
        type
      end
    end

    module UpdateMacieSessionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateMacieSessionInput, context: context)
        type = Types::UpdateMacieSessionInput.new
        type.finding_publishing_frequency = params[:finding_publishing_frequency]
        type.status = params[:status]
        type
      end
    end

    module UpdateMacieSessionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateMacieSessionOutput, context: context)
        type = Types::UpdateMacieSessionOutput.new
        type
      end
    end

    module UpdateMemberSessionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateMemberSessionInput, context: context)
        type = Types::UpdateMemberSessionInput.new
        type.id = params[:id]
        type.status = params[:status]
        type
      end
    end

    module UpdateMemberSessionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateMemberSessionOutput, context: context)
        type = Types::UpdateMemberSessionOutput.new
        type
      end
    end

    module UpdateOrganizationConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateOrganizationConfigurationInput, context: context)
        type = Types::UpdateOrganizationConfigurationInput.new
        type.auto_enable = params[:auto_enable]
        type
      end
    end

    module UpdateOrganizationConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateOrganizationConfigurationOutput, context: context)
        type = Types::UpdateOrganizationConfigurationOutput.new
        type
      end
    end

    module UsageByAccount
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UsageByAccount, context: context)
        type = Types::UsageByAccount.new
        type.currency = params[:currency]
        type.estimated_cost = params[:estimated_cost]
        type.service_limit = ServiceLimit.build(params[:service_limit], context: "#{context}[:service_limit]") unless params[:service_limit].nil?
        type.type = params[:type]
        type
      end
    end

    module UsageRecord
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UsageRecord, context: context)
        type = Types::UsageRecord.new
        type.account_id = params[:account_id]
        type.free_trial_start_date = params[:free_trial_start_date]
        type.usage = List____listOfUsageByAccount.build(params[:usage], context: "#{context}[:usage]") unless params[:usage].nil?
        type
      end
    end

    module UsageStatisticsFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UsageStatisticsFilter, context: context)
        type = Types::UsageStatisticsFilter.new
        type.comparator = params[:comparator]
        type.key = params[:key]
        type.values = List____listOf__string.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module UsageStatisticsSortBy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UsageStatisticsSortBy, context: context)
        type = Types::UsageStatisticsSortBy.new
        type.key = params[:key]
        type.order_by = params[:order_by]
        type
      end
    end

    module UsageTotal
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UsageTotal, context: context)
        type = Types::UsageTotal.new
        type.currency = params[:currency]
        type.estimated_cost = params[:estimated_cost]
        type.type = params[:type]
        type
      end
    end

    module UserIdentity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserIdentity, context: context)
        type = Types::UserIdentity.new
        type.assumed_role = AssumedRole.build(params[:assumed_role], context: "#{context}[:assumed_role]") unless params[:assumed_role].nil?
        type.aws_account = AwsAccount.build(params[:aws_account], context: "#{context}[:aws_account]") unless params[:aws_account].nil?
        type.aws_service = AwsService.build(params[:aws_service], context: "#{context}[:aws_service]") unless params[:aws_service].nil?
        type.federated_user = FederatedUser.build(params[:federated_user], context: "#{context}[:federated_user]") unless params[:federated_user].nil?
        type.iam_user = IamUser.build(params[:iam_user], context: "#{context}[:iam_user]") unless params[:iam_user].nil?
        type.root = UserIdentityRoot.build(params[:root], context: "#{context}[:root]") unless params[:root].nil?
        type.type = params[:type]
        type
      end
    end

    module UserIdentityRoot
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserIdentityRoot, context: context)
        type = Types::UserIdentityRoot.new
        type.account_id = params[:account_id]
        type.arn = params[:arn]
        type.principal_id = params[:principal_id]
        type
      end
    end

    module UserPausedDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserPausedDetails, context: context)
        type = Types::UserPausedDetails.new
        type.job_expires_at = params[:job_expires_at]
        type.job_imminent_expiration_health_event_arn = params[:job_imminent_expiration_health_event_arn]
        type.job_paused_at = params[:job_paused_at]
        type
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type
      end
    end

    module WeeklySchedule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WeeklySchedule, context: context)
        type = Types::WeeklySchedule.new
        type.day_of_week = params[:day_of_week]
        type
      end
    end

    module List____listOfAdminAccount
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AdminAccount.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfBatchGetCustomDataIdentifierSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchGetCustomDataIdentifierSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfBucketMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BucketMetadata.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfCriteriaForJob
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CriteriaForJob.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfCustomDataIdentifierSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CustomDataIdentifierSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfFinding
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Finding.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfFindingType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module List____listOfFindingsFilterListItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FindingsFilterListItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfGroupCount
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GroupCount.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfInvitation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Invitation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfJobScopeTerm
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << JobScopeTerm.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfJobSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << JobSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfKeyValuePair
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << KeyValuePair.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfListJobsFilterTerm
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ListJobsFilterTerm.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfManagedDataIdentifierSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ManagedDataIdentifierSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfMatchingResource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MatchingResource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfMember
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Member.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfS3BucketDefinitionForJob
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << S3BucketDefinitionForJob.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfSearchResourcesCriteria
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SearchResourcesCriteria.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfSearchResourcesTagCriterionPair
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SearchResourcesTagCriterionPair.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfTagCriterionPairForJob
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TagCriterionPairForJob.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfTagValuePair
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TagValuePair.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfUnprocessedAccount
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UnprocessedAccount.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfUsageByAccount
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UsageByAccount.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfUsageRecord
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UsageRecord.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfUsageStatisticsFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UsageStatisticsFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfUsageTotal
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UsageTotal.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOf__string
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

  end
end
