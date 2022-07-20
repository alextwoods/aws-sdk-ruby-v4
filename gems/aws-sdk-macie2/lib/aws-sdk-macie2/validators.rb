# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::Macie2
  module Validators

    class AcceptInvitationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcceptInvitationInput, context: context)
        Hearth::Validator.validate!(input[:administrator_account_id], ::String, context: "#{context}[:administrator_account_id]")
        Hearth::Validator.validate!(input[:invitation_id], ::String, context: "#{context}[:invitation_id]")
        Hearth::Validator.validate!(input[:master_account], ::String, context: "#{context}[:master_account]")
      end
    end

    class AcceptInvitationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcceptInvitationOutput, context: context)
      end
    end

    class AccessControlList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessControlList, context: context)
        Hearth::Validator.validate!(input[:allows_public_read_access], ::TrueClass, ::FalseClass, context: "#{context}[:allows_public_read_access]")
        Hearth::Validator.validate!(input[:allows_public_write_access], ::TrueClass, ::FalseClass, context: "#{context}[:allows_public_write_access]")
      end
    end

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AccountDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccountDetail, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:email], ::String, context: "#{context}[:email]")
      end
    end

    class AccountLevelPermissions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccountLevelPermissions, context: context)
        BlockPublicAccess.validate!(input[:block_public_access], context: "#{context}[:block_public_access]") unless input[:block_public_access].nil?
      end
    end

    class AdminAccount
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdminAccount, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class ApiCallDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApiCallDetails, context: context)
        Hearth::Validator.validate!(input[:api], ::String, context: "#{context}[:api]")
        Hearth::Validator.validate!(input[:api_service_name], ::String, context: "#{context}[:api_service_name]")
        Hearth::Validator.validate!(input[:first_seen], ::Time, context: "#{context}[:first_seen]")
        Hearth::Validator.validate!(input[:last_seen], ::Time, context: "#{context}[:last_seen]")
      end
    end

    class AssumedRole
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssumedRole, context: context)
        Hearth::Validator.validate!(input[:access_key_id], ::String, context: "#{context}[:access_key_id]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:principal_id], ::String, context: "#{context}[:principal_id]")
        SessionContext.validate!(input[:session_context], context: "#{context}[:session_context]") unless input[:session_context].nil?
      end
    end

    class AwsAccount
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsAccount, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:principal_id], ::String, context: "#{context}[:principal_id]")
      end
    end

    class AwsService
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsService, context: context)
        Hearth::Validator.validate!(input[:invoked_by], ::String, context: "#{context}[:invoked_by]")
      end
    end

    class BatchGetCustomDataIdentifierSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetCustomDataIdentifierSummary, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:deleted], ::TrueClass, ::FalseClass, context: "#{context}[:deleted]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class BatchGetCustomDataIdentifiersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetCustomDataIdentifiersInput, context: context)
        List____listOf__string.validate!(input[:ids], context: "#{context}[:ids]") unless input[:ids].nil?
      end
    end

    class BatchGetCustomDataIdentifiersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetCustomDataIdentifiersOutput, context: context)
        List____listOfBatchGetCustomDataIdentifierSummary.validate!(input[:custom_data_identifiers], context: "#{context}[:custom_data_identifiers]") unless input[:custom_data_identifiers].nil?
        List____listOf__string.validate!(input[:not_found_identifier_ids], context: "#{context}[:not_found_identifier_ids]") unless input[:not_found_identifier_ids].nil?
      end
    end

    class BlockPublicAccess
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BlockPublicAccess, context: context)
        Hearth::Validator.validate!(input[:block_public_acls], ::TrueClass, ::FalseClass, context: "#{context}[:block_public_acls]")
        Hearth::Validator.validate!(input[:block_public_policy], ::TrueClass, ::FalseClass, context: "#{context}[:block_public_policy]")
        Hearth::Validator.validate!(input[:ignore_public_acls], ::TrueClass, ::FalseClass, context: "#{context}[:ignore_public_acls]")
        Hearth::Validator.validate!(input[:restrict_public_buckets], ::TrueClass, ::FalseClass, context: "#{context}[:restrict_public_buckets]")
      end
    end

    class BucketCountByEffectivePermission
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BucketCountByEffectivePermission, context: context)
        Hearth::Validator.validate!(input[:publicly_accessible], ::Integer, context: "#{context}[:publicly_accessible]")
        Hearth::Validator.validate!(input[:publicly_readable], ::Integer, context: "#{context}[:publicly_readable]")
        Hearth::Validator.validate!(input[:publicly_writable], ::Integer, context: "#{context}[:publicly_writable]")
        Hearth::Validator.validate!(input[:unknown], ::Integer, context: "#{context}[:unknown]")
      end
    end

    class BucketCountByEncryptionType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BucketCountByEncryptionType, context: context)
        Hearth::Validator.validate!(input[:kms_managed], ::Integer, context: "#{context}[:kms_managed]")
        Hearth::Validator.validate!(input[:s3_managed], ::Integer, context: "#{context}[:s3_managed]")
        Hearth::Validator.validate!(input[:unencrypted], ::Integer, context: "#{context}[:unencrypted]")
        Hearth::Validator.validate!(input[:unknown], ::Integer, context: "#{context}[:unknown]")
      end
    end

    class BucketCountBySharedAccessType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BucketCountBySharedAccessType, context: context)
        Hearth::Validator.validate!(input[:external], ::Integer, context: "#{context}[:external]")
        Hearth::Validator.validate!(input[:internal], ::Integer, context: "#{context}[:internal]")
        Hearth::Validator.validate!(input[:not_shared], ::Integer, context: "#{context}[:not_shared]")
        Hearth::Validator.validate!(input[:unknown], ::Integer, context: "#{context}[:unknown]")
      end
    end

    class BucketCountPolicyAllowsUnencryptedObjectUploads
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BucketCountPolicyAllowsUnencryptedObjectUploads, context: context)
        Hearth::Validator.validate!(input[:allows_unencrypted_object_uploads], ::Integer, context: "#{context}[:allows_unencrypted_object_uploads]")
        Hearth::Validator.validate!(input[:denies_unencrypted_object_uploads], ::Integer, context: "#{context}[:denies_unencrypted_object_uploads]")
        Hearth::Validator.validate!(input[:unknown], ::Integer, context: "#{context}[:unknown]")
      end
    end

    class BucketCriteria
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          BucketCriteriaAdditionalProperties.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class BucketCriteriaAdditionalProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BucketCriteriaAdditionalProperties, context: context)
        List____listOf__string.validate!(input[:eq], context: "#{context}[:eq]") unless input[:eq].nil?
        Hearth::Validator.validate!(input[:gt], ::Integer, context: "#{context}[:gt]")
        Hearth::Validator.validate!(input[:gte], ::Integer, context: "#{context}[:gte]")
        Hearth::Validator.validate!(input[:lt], ::Integer, context: "#{context}[:lt]")
        Hearth::Validator.validate!(input[:lte], ::Integer, context: "#{context}[:lte]")
        List____listOf__string.validate!(input[:neq], context: "#{context}[:neq]") unless input[:neq].nil?
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
      end
    end

    class BucketLevelPermissions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BucketLevelPermissions, context: context)
        AccessControlList.validate!(input[:access_control_list], context: "#{context}[:access_control_list]") unless input[:access_control_list].nil?
        BlockPublicAccess.validate!(input[:block_public_access], context: "#{context}[:block_public_access]") unless input[:block_public_access].nil?
        BucketPolicy.validate!(input[:bucket_policy], context: "#{context}[:bucket_policy]") unless input[:bucket_policy].nil?
      end
    end

    class BucketMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BucketMetadata, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:allows_unencrypted_object_uploads], ::String, context: "#{context}[:allows_unencrypted_object_uploads]")
        Hearth::Validator.validate!(input[:bucket_arn], ::String, context: "#{context}[:bucket_arn]")
        Hearth::Validator.validate!(input[:bucket_created_at], ::Time, context: "#{context}[:bucket_created_at]")
        Hearth::Validator.validate!(input[:bucket_name], ::String, context: "#{context}[:bucket_name]")
        Hearth::Validator.validate!(input[:classifiable_object_count], ::Integer, context: "#{context}[:classifiable_object_count]")
        Hearth::Validator.validate!(input[:classifiable_size_in_bytes], ::Integer, context: "#{context}[:classifiable_size_in_bytes]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
        JobDetails.validate!(input[:job_details], context: "#{context}[:job_details]") unless input[:job_details].nil?
        Hearth::Validator.validate!(input[:last_updated], ::Time, context: "#{context}[:last_updated]")
        Hearth::Validator.validate!(input[:object_count], ::Integer, context: "#{context}[:object_count]")
        ObjectCountByEncryptionType.validate!(input[:object_count_by_encryption_type], context: "#{context}[:object_count_by_encryption_type]") unless input[:object_count_by_encryption_type].nil?
        BucketPublicAccess.validate!(input[:public_access], context: "#{context}[:public_access]") unless input[:public_access].nil?
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        ReplicationDetails.validate!(input[:replication_details], context: "#{context}[:replication_details]") unless input[:replication_details].nil?
        BucketServerSideEncryption.validate!(input[:server_side_encryption], context: "#{context}[:server_side_encryption]") unless input[:server_side_encryption].nil?
        Hearth::Validator.validate!(input[:shared_access], ::String, context: "#{context}[:shared_access]")
        Hearth::Validator.validate!(input[:size_in_bytes], ::Integer, context: "#{context}[:size_in_bytes]")
        Hearth::Validator.validate!(input[:size_in_bytes_compressed], ::Integer, context: "#{context}[:size_in_bytes_compressed]")
        List____listOfKeyValuePair.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        ObjectLevelStatistics.validate!(input[:unclassifiable_object_count], context: "#{context}[:unclassifiable_object_count]") unless input[:unclassifiable_object_count].nil?
        ObjectLevelStatistics.validate!(input[:unclassifiable_object_size_in_bytes], context: "#{context}[:unclassifiable_object_size_in_bytes]") unless input[:unclassifiable_object_size_in_bytes].nil?
        Hearth::Validator.validate!(input[:versioning], ::TrueClass, ::FalseClass, context: "#{context}[:versioning]")
      end
    end

    class BucketPermissionConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BucketPermissionConfiguration, context: context)
        AccountLevelPermissions.validate!(input[:account_level_permissions], context: "#{context}[:account_level_permissions]") unless input[:account_level_permissions].nil?
        BucketLevelPermissions.validate!(input[:bucket_level_permissions], context: "#{context}[:bucket_level_permissions]") unless input[:bucket_level_permissions].nil?
      end
    end

    class BucketPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BucketPolicy, context: context)
        Hearth::Validator.validate!(input[:allows_public_read_access], ::TrueClass, ::FalseClass, context: "#{context}[:allows_public_read_access]")
        Hearth::Validator.validate!(input[:allows_public_write_access], ::TrueClass, ::FalseClass, context: "#{context}[:allows_public_write_access]")
      end
    end

    class BucketPublicAccess
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BucketPublicAccess, context: context)
        Hearth::Validator.validate!(input[:effective_permission], ::String, context: "#{context}[:effective_permission]")
        BucketPermissionConfiguration.validate!(input[:permission_configuration], context: "#{context}[:permission_configuration]") unless input[:permission_configuration].nil?
      end
    end

    class BucketServerSideEncryption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BucketServerSideEncryption, context: context)
        Hearth::Validator.validate!(input[:kms_master_key_id], ::String, context: "#{context}[:kms_master_key_id]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class BucketSortCriteria
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BucketSortCriteria, context: context)
        Hearth::Validator.validate!(input[:attribute_name], ::String, context: "#{context}[:attribute_name]")
        Hearth::Validator.validate!(input[:order_by], ::String, context: "#{context}[:order_by]")
      end
    end

    class Cell
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Cell, context: context)
        Hearth::Validator.validate!(input[:cell_reference], ::String, context: "#{context}[:cell_reference]")
        Hearth::Validator.validate!(input[:column], ::Integer, context: "#{context}[:column]")
        Hearth::Validator.validate!(input[:column_name], ::String, context: "#{context}[:column_name]")
        Hearth::Validator.validate!(input[:row], ::Integer, context: "#{context}[:row]")
      end
    end

    class Cells
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Cell.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ClassificationDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClassificationDetails, context: context)
        Hearth::Validator.validate!(input[:detailed_results_location], ::String, context: "#{context}[:detailed_results_location]")
        Hearth::Validator.validate!(input[:job_arn], ::String, context: "#{context}[:job_arn]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:origin_type], ::String, context: "#{context}[:origin_type]")
        ClassificationResult.validate!(input[:result], context: "#{context}[:result]") unless input[:result].nil?
      end
    end

    class ClassificationExportConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClassificationExportConfiguration, context: context)
        S3Destination.validate!(input[:s3_destination], context: "#{context}[:s3_destination]") unless input[:s3_destination].nil?
      end
    end

    class ClassificationResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClassificationResult, context: context)
        Hearth::Validator.validate!(input[:additional_occurrences], ::TrueClass, ::FalseClass, context: "#{context}[:additional_occurrences]")
        CustomDataIdentifiers.validate!(input[:custom_data_identifiers], context: "#{context}[:custom_data_identifiers]") unless input[:custom_data_identifiers].nil?
        Hearth::Validator.validate!(input[:mime_type], ::String, context: "#{context}[:mime_type]")
        SensitiveData.validate!(input[:sensitive_data], context: "#{context}[:sensitive_data]") unless input[:sensitive_data].nil?
        Hearth::Validator.validate!(input[:size_classified], ::Integer, context: "#{context}[:size_classified]")
        ClassificationResultStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
      end
    end

    class ClassificationResultStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClassificationResultStatus, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CreateClassificationJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateClassificationJobInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        List____listOf__string.validate!(input[:custom_data_identifier_ids], context: "#{context}[:custom_data_identifier_ids]") unless input[:custom_data_identifier_ids].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:initial_run], ::TrueClass, ::FalseClass, context: "#{context}[:initial_run]")
        Hearth::Validator.validate!(input[:job_type], ::String, context: "#{context}[:job_type]")
        List____listOf__string.validate!(input[:managed_data_identifier_ids], context: "#{context}[:managed_data_identifier_ids]") unless input[:managed_data_identifier_ids].nil?
        Hearth::Validator.validate!(input[:managed_data_identifier_selector], ::String, context: "#{context}[:managed_data_identifier_selector]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        S3JobDefinition.validate!(input[:s3_job_definition], context: "#{context}[:s3_job_definition]") unless input[:s3_job_definition].nil?
        Hearth::Validator.validate!(input[:sampling_percentage], ::Integer, context: "#{context}[:sampling_percentage]")
        JobScheduleFrequency.validate!(input[:schedule_frequency], context: "#{context}[:schedule_frequency]") unless input[:schedule_frequency].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateClassificationJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateClassificationJobOutput, context: context)
        Hearth::Validator.validate!(input[:job_arn], ::String, context: "#{context}[:job_arn]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class CreateCustomDataIdentifierInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCustomDataIdentifierInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        List____listOf__string.validate!(input[:ignore_words], context: "#{context}[:ignore_words]") unless input[:ignore_words].nil?
        List____listOf__string.validate!(input[:keywords], context: "#{context}[:keywords]") unless input[:keywords].nil?
        Hearth::Validator.validate!(input[:maximum_match_distance], ::Integer, context: "#{context}[:maximum_match_distance]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:regex], ::String, context: "#{context}[:regex]")
        SeverityLevelList.validate!(input[:severity_levels], context: "#{context}[:severity_levels]") unless input[:severity_levels].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateCustomDataIdentifierOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCustomDataIdentifierOutput, context: context)
        Hearth::Validator.validate!(input[:custom_data_identifier_id], ::String, context: "#{context}[:custom_data_identifier_id]")
      end
    end

    class CreateFindingsFilterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFindingsFilterInput, context: context)
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        FindingCriteria.validate!(input[:finding_criteria], context: "#{context}[:finding_criteria]") unless input[:finding_criteria].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:position], ::Integer, context: "#{context}[:position]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateFindingsFilterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFindingsFilterOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class CreateInvitationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateInvitationsInput, context: context)
        List____listOf__string.validate!(input[:account_ids], context: "#{context}[:account_ids]") unless input[:account_ids].nil?
        Hearth::Validator.validate!(input[:disable_email_notification], ::TrueClass, ::FalseClass, context: "#{context}[:disable_email_notification]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CreateInvitationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateInvitationsOutput, context: context)
        List____listOfUnprocessedAccount.validate!(input[:unprocessed_accounts], context: "#{context}[:unprocessed_accounts]") unless input[:unprocessed_accounts].nil?
      end
    end

    class CreateMemberInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMemberInput, context: context)
        AccountDetail.validate!(input[:account], context: "#{context}[:account]") unless input[:account].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateMemberOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMemberOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class CreateSampleFindingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSampleFindingsInput, context: context)
        List____listOfFindingType.validate!(input[:finding_types], context: "#{context}[:finding_types]") unless input[:finding_types].nil?
      end
    end

    class CreateSampleFindingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSampleFindingsOutput, context: context)
      end
    end

    class CriteriaBlockForJob
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CriteriaBlockForJob, context: context)
        List____listOfCriteriaForJob.validate!(input[:and], context: "#{context}[:and]") unless input[:and].nil?
      end
    end

    class CriteriaForJob
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CriteriaForJob, context: context)
        SimpleCriterionForJob.validate!(input[:simple_criterion], context: "#{context}[:simple_criterion]") unless input[:simple_criterion].nil?
        TagCriterionForJob.validate!(input[:tag_criterion], context: "#{context}[:tag_criterion]") unless input[:tag_criterion].nil?
      end
    end

    class Criterion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          CriterionAdditionalProperties.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class CriterionAdditionalProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CriterionAdditionalProperties, context: context)
        List____listOf__string.validate!(input[:eq], context: "#{context}[:eq]") unless input[:eq].nil?
        List____listOf__string.validate!(input[:eq_exact_match], context: "#{context}[:eq_exact_match]") unless input[:eq_exact_match].nil?
        Hearth::Validator.validate!(input[:gt], ::Integer, context: "#{context}[:gt]")
        Hearth::Validator.validate!(input[:gte], ::Integer, context: "#{context}[:gte]")
        Hearth::Validator.validate!(input[:lt], ::Integer, context: "#{context}[:lt]")
        Hearth::Validator.validate!(input[:lte], ::Integer, context: "#{context}[:lte]")
        List____listOf__string.validate!(input[:neq], context: "#{context}[:neq]") unless input[:neq].nil?
      end
    end

    class CustomDataIdentifierSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomDataIdentifierSummary, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class CustomDataIdentifiers
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomDataIdentifiers, context: context)
        CustomDetections.validate!(input[:detections], context: "#{context}[:detections]") unless input[:detections].nil?
        Hearth::Validator.validate!(input[:total_count], ::Integer, context: "#{context}[:total_count]")
      end
    end

    class CustomDetection
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomDetection, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:count], ::Integer, context: "#{context}[:count]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Occurrences.validate!(input[:occurrences], context: "#{context}[:occurrences]") unless input[:occurrences].nil?
      end
    end

    class CustomDetections
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CustomDetection.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DailySchedule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DailySchedule, context: context)
      end
    end

    class DeclineInvitationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeclineInvitationsInput, context: context)
        List____listOf__string.validate!(input[:account_ids], context: "#{context}[:account_ids]") unless input[:account_ids].nil?
      end
    end

    class DeclineInvitationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeclineInvitationsOutput, context: context)
        List____listOfUnprocessedAccount.validate!(input[:unprocessed_accounts], context: "#{context}[:unprocessed_accounts]") unless input[:unprocessed_accounts].nil?
      end
    end

    class DefaultDetection
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DefaultDetection, context: context)
        Hearth::Validator.validate!(input[:count], ::Integer, context: "#{context}[:count]")
        Occurrences.validate!(input[:occurrences], context: "#{context}[:occurrences]") unless input[:occurrences].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class DefaultDetections
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DefaultDetection.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeleteCustomDataIdentifierInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCustomDataIdentifierInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DeleteCustomDataIdentifierOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCustomDataIdentifierOutput, context: context)
      end
    end

    class DeleteFindingsFilterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFindingsFilterInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DeleteFindingsFilterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFindingsFilterOutput, context: context)
      end
    end

    class DeleteInvitationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteInvitationsInput, context: context)
        List____listOf__string.validate!(input[:account_ids], context: "#{context}[:account_ids]") unless input[:account_ids].nil?
      end
    end

    class DeleteInvitationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteInvitationsOutput, context: context)
        List____listOfUnprocessedAccount.validate!(input[:unprocessed_accounts], context: "#{context}[:unprocessed_accounts]") unless input[:unprocessed_accounts].nil?
      end
    end

    class DeleteMemberInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMemberInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DeleteMemberOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMemberOutput, context: context)
      end
    end

    class DescribeBucketsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeBucketsInput, context: context)
        BucketCriteria.validate!(input[:criteria], context: "#{context}[:criteria]") unless input[:criteria].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        BucketSortCriteria.validate!(input[:sort_criteria], context: "#{context}[:sort_criteria]") unless input[:sort_criteria].nil?
      end
    end

    class DescribeBucketsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeBucketsOutput, context: context)
        List____listOfBucketMetadata.validate!(input[:buckets], context: "#{context}[:buckets]") unless input[:buckets].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeClassificationJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeClassificationJobInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class DescribeClassificationJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeClassificationJobOutput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        List____listOf__string.validate!(input[:custom_data_identifier_ids], context: "#{context}[:custom_data_identifier_ids]") unless input[:custom_data_identifier_ids].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:initial_run], ::TrueClass, ::FalseClass, context: "#{context}[:initial_run]")
        Hearth::Validator.validate!(input[:job_arn], ::String, context: "#{context}[:job_arn]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
        Hearth::Validator.validate!(input[:job_type], ::String, context: "#{context}[:job_type]")
        LastRunErrorStatus.validate!(input[:last_run_error_status], context: "#{context}[:last_run_error_status]") unless input[:last_run_error_status].nil?
        Hearth::Validator.validate!(input[:last_run_time], ::Time, context: "#{context}[:last_run_time]")
        List____listOf__string.validate!(input[:managed_data_identifier_ids], context: "#{context}[:managed_data_identifier_ids]") unless input[:managed_data_identifier_ids].nil?
        Hearth::Validator.validate!(input[:managed_data_identifier_selector], ::String, context: "#{context}[:managed_data_identifier_selector]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        S3JobDefinition.validate!(input[:s3_job_definition], context: "#{context}[:s3_job_definition]") unless input[:s3_job_definition].nil?
        Hearth::Validator.validate!(input[:sampling_percentage], ::Integer, context: "#{context}[:sampling_percentage]")
        JobScheduleFrequency.validate!(input[:schedule_frequency], context: "#{context}[:schedule_frequency]") unless input[:schedule_frequency].nil?
        Statistics.validate!(input[:statistics], context: "#{context}[:statistics]") unless input[:statistics].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        UserPausedDetails.validate!(input[:user_paused_details], context: "#{context}[:user_paused_details]") unless input[:user_paused_details].nil?
      end
    end

    class DescribeOrganizationConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeOrganizationConfigurationInput, context: context)
      end
    end

    class DescribeOrganizationConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeOrganizationConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:auto_enable], ::TrueClass, ::FalseClass, context: "#{context}[:auto_enable]")
        Hearth::Validator.validate!(input[:max_account_limit_reached], ::TrueClass, ::FalseClass, context: "#{context}[:max_account_limit_reached]")
      end
    end

    class DisableMacieInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableMacieInput, context: context)
      end
    end

    class DisableMacieOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableMacieOutput, context: context)
      end
    end

    class DisableOrganizationAdminAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableOrganizationAdminAccountInput, context: context)
        Hearth::Validator.validate!(input[:admin_account_id], ::String, context: "#{context}[:admin_account_id]")
      end
    end

    class DisableOrganizationAdminAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableOrganizationAdminAccountOutput, context: context)
      end
    end

    class DisassociateFromAdministratorAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateFromAdministratorAccountInput, context: context)
      end
    end

    class DisassociateFromAdministratorAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateFromAdministratorAccountOutput, context: context)
      end
    end

    class DisassociateFromMasterAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateFromMasterAccountInput, context: context)
      end
    end

    class DisassociateFromMasterAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateFromMasterAccountOutput, context: context)
      end
    end

    class DisassociateMemberInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateMemberInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DisassociateMemberOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateMemberOutput, context: context)
      end
    end

    class DomainDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DomainDetails, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
      end
    end

    class EnableMacieInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableMacieInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:finding_publishing_frequency], ::String, context: "#{context}[:finding_publishing_frequency]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class EnableMacieOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableMacieOutput, context: context)
      end
    end

    class EnableOrganizationAdminAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableOrganizationAdminAccountInput, context: context)
        Hearth::Validator.validate!(input[:admin_account_id], ::String, context: "#{context}[:admin_account_id]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class EnableOrganizationAdminAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableOrganizationAdminAccountOutput, context: context)
      end
    end

    class FederatedUser
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FederatedUser, context: context)
        Hearth::Validator.validate!(input[:access_key_id], ::String, context: "#{context}[:access_key_id]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:principal_id], ::String, context: "#{context}[:principal_id]")
        SessionContext.validate!(input[:session_context], context: "#{context}[:session_context]") unless input[:session_context].nil?
      end
    end

    class Finding
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Finding, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:archived], ::TrueClass, ::FalseClass, context: "#{context}[:archived]")
        Hearth::Validator.validate!(input[:category], ::String, context: "#{context}[:category]")
        ClassificationDetails.validate!(input[:classification_details], context: "#{context}[:classification_details]") unless input[:classification_details].nil?
        Hearth::Validator.validate!(input[:count], ::Integer, context: "#{context}[:count]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:partition], ::String, context: "#{context}[:partition]")
        PolicyDetails.validate!(input[:policy_details], context: "#{context}[:policy_details]") unless input[:policy_details].nil?
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        ResourcesAffected.validate!(input[:resources_affected], context: "#{context}[:resources_affected]") unless input[:resources_affected].nil?
        Hearth::Validator.validate!(input[:sample], ::TrueClass, ::FalseClass, context: "#{context}[:sample]")
        Hearth::Validator.validate!(input[:schema_version], ::String, context: "#{context}[:schema_version]")
        Severity.validate!(input[:severity], context: "#{context}[:severity]") unless input[:severity].nil?
        Hearth::Validator.validate!(input[:title], ::String, context: "#{context}[:title]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
      end
    end

    class FindingAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FindingAction, context: context)
        Hearth::Validator.validate!(input[:action_type], ::String, context: "#{context}[:action_type]")
        ApiCallDetails.validate!(input[:api_call_details], context: "#{context}[:api_call_details]") unless input[:api_call_details].nil?
      end
    end

    class FindingActor
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FindingActor, context: context)
        DomainDetails.validate!(input[:domain_details], context: "#{context}[:domain_details]") unless input[:domain_details].nil?
        IpAddressDetails.validate!(input[:ip_address_details], context: "#{context}[:ip_address_details]") unless input[:ip_address_details].nil?
        UserIdentity.validate!(input[:user_identity], context: "#{context}[:user_identity]") unless input[:user_identity].nil?
      end
    end

    class FindingCriteria
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FindingCriteria, context: context)
        Criterion.validate!(input[:criterion], context: "#{context}[:criterion]") unless input[:criterion].nil?
      end
    end

    class FindingStatisticsSortCriteria
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FindingStatisticsSortCriteria, context: context)
        Hearth::Validator.validate!(input[:attribute_name], ::String, context: "#{context}[:attribute_name]")
        Hearth::Validator.validate!(input[:order_by], ::String, context: "#{context}[:order_by]")
      end
    end

    class FindingsFilterListItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FindingsFilterListItem, context: context)
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class GetAdministratorAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAdministratorAccountInput, context: context)
      end
    end

    class GetAdministratorAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAdministratorAccountOutput, context: context)
        Invitation.validate!(input[:administrator], context: "#{context}[:administrator]") unless input[:administrator].nil?
      end
    end

    class GetBucketStatisticsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBucketStatisticsInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
      end
    end

    class GetBucketStatisticsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBucketStatisticsOutput, context: context)
        Hearth::Validator.validate!(input[:bucket_count], ::Integer, context: "#{context}[:bucket_count]")
        BucketCountByEffectivePermission.validate!(input[:bucket_count_by_effective_permission], context: "#{context}[:bucket_count_by_effective_permission]") unless input[:bucket_count_by_effective_permission].nil?
        BucketCountByEncryptionType.validate!(input[:bucket_count_by_encryption_type], context: "#{context}[:bucket_count_by_encryption_type]") unless input[:bucket_count_by_encryption_type].nil?
        BucketCountPolicyAllowsUnencryptedObjectUploads.validate!(input[:bucket_count_by_object_encryption_requirement], context: "#{context}[:bucket_count_by_object_encryption_requirement]") unless input[:bucket_count_by_object_encryption_requirement].nil?
        BucketCountBySharedAccessType.validate!(input[:bucket_count_by_shared_access_type], context: "#{context}[:bucket_count_by_shared_access_type]") unless input[:bucket_count_by_shared_access_type].nil?
        Hearth::Validator.validate!(input[:classifiable_object_count], ::Integer, context: "#{context}[:classifiable_object_count]")
        Hearth::Validator.validate!(input[:classifiable_size_in_bytes], ::Integer, context: "#{context}[:classifiable_size_in_bytes]")
        Hearth::Validator.validate!(input[:last_updated], ::Time, context: "#{context}[:last_updated]")
        Hearth::Validator.validate!(input[:object_count], ::Integer, context: "#{context}[:object_count]")
        Hearth::Validator.validate!(input[:size_in_bytes], ::Integer, context: "#{context}[:size_in_bytes]")
        Hearth::Validator.validate!(input[:size_in_bytes_compressed], ::Integer, context: "#{context}[:size_in_bytes_compressed]")
        ObjectLevelStatistics.validate!(input[:unclassifiable_object_count], context: "#{context}[:unclassifiable_object_count]") unless input[:unclassifiable_object_count].nil?
        ObjectLevelStatistics.validate!(input[:unclassifiable_object_size_in_bytes], context: "#{context}[:unclassifiable_object_size_in_bytes]") unless input[:unclassifiable_object_size_in_bytes].nil?
      end
    end

    class GetClassificationExportConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetClassificationExportConfigurationInput, context: context)
      end
    end

    class GetClassificationExportConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetClassificationExportConfigurationOutput, context: context)
        ClassificationExportConfiguration.validate!(input[:configuration], context: "#{context}[:configuration]") unless input[:configuration].nil?
      end
    end

    class GetCustomDataIdentifierInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCustomDataIdentifierInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetCustomDataIdentifierOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCustomDataIdentifierOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:deleted], ::TrueClass, ::FalseClass, context: "#{context}[:deleted]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        List____listOf__string.validate!(input[:ignore_words], context: "#{context}[:ignore_words]") unless input[:ignore_words].nil?
        List____listOf__string.validate!(input[:keywords], context: "#{context}[:keywords]") unless input[:keywords].nil?
        Hearth::Validator.validate!(input[:maximum_match_distance], ::Integer, context: "#{context}[:maximum_match_distance]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:regex], ::String, context: "#{context}[:regex]")
        SeverityLevelList.validate!(input[:severity_levels], context: "#{context}[:severity_levels]") unless input[:severity_levels].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class GetFindingStatisticsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFindingStatisticsInput, context: context)
        FindingCriteria.validate!(input[:finding_criteria], context: "#{context}[:finding_criteria]") unless input[:finding_criteria].nil?
        Hearth::Validator.validate!(input[:group_by], ::String, context: "#{context}[:group_by]")
        Hearth::Validator.validate!(input[:size], ::Integer, context: "#{context}[:size]")
        FindingStatisticsSortCriteria.validate!(input[:sort_criteria], context: "#{context}[:sort_criteria]") unless input[:sort_criteria].nil?
      end
    end

    class GetFindingStatisticsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFindingStatisticsOutput, context: context)
        List____listOfGroupCount.validate!(input[:counts_by_group], context: "#{context}[:counts_by_group]") unless input[:counts_by_group].nil?
      end
    end

    class GetFindingsFilterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFindingsFilterInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetFindingsFilterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFindingsFilterOutput, context: context)
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        FindingCriteria.validate!(input[:finding_criteria], context: "#{context}[:finding_criteria]") unless input[:finding_criteria].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:position], ::Integer, context: "#{context}[:position]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class GetFindingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFindingsInput, context: context)
        List____listOf__string.validate!(input[:finding_ids], context: "#{context}[:finding_ids]") unless input[:finding_ids].nil?
        SortCriteria.validate!(input[:sort_criteria], context: "#{context}[:sort_criteria]") unless input[:sort_criteria].nil?
      end
    end

    class GetFindingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFindingsOutput, context: context)
        List____listOfFinding.validate!(input[:findings], context: "#{context}[:findings]") unless input[:findings].nil?
      end
    end

    class GetFindingsPublicationConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFindingsPublicationConfigurationInput, context: context)
      end
    end

    class GetFindingsPublicationConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFindingsPublicationConfigurationOutput, context: context)
        SecurityHubConfiguration.validate!(input[:security_hub_configuration], context: "#{context}[:security_hub_configuration]") unless input[:security_hub_configuration].nil?
      end
    end

    class GetInvitationsCountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInvitationsCountInput, context: context)
      end
    end

    class GetInvitationsCountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInvitationsCountOutput, context: context)
        Hearth::Validator.validate!(input[:invitations_count], ::Integer, context: "#{context}[:invitations_count]")
      end
    end

    class GetMacieSessionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMacieSessionInput, context: context)
      end
    end

    class GetMacieSessionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMacieSessionOutput, context: context)
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:finding_publishing_frequency], ::String, context: "#{context}[:finding_publishing_frequency]")
        Hearth::Validator.validate!(input[:service_role], ::String, context: "#{context}[:service_role]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
      end
    end

    class GetMasterAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMasterAccountInput, context: context)
      end
    end

    class GetMasterAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMasterAccountOutput, context: context)
        Invitation.validate!(input[:master], context: "#{context}[:master]") unless input[:master].nil?
      end
    end

    class GetMemberInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMemberInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetMemberOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMemberOutput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:administrator_account_id], ::String, context: "#{context}[:administrator_account_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:email], ::String, context: "#{context}[:email]")
        Hearth::Validator.validate!(input[:invited_at], ::Time, context: "#{context}[:invited_at]")
        Hearth::Validator.validate!(input[:master_account_id], ::String, context: "#{context}[:master_account_id]")
        Hearth::Validator.validate!(input[:relationship_status], ::String, context: "#{context}[:relationship_status]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
      end
    end

    class GetUsageStatisticsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetUsageStatisticsInput, context: context)
        List____listOfUsageStatisticsFilter.validate!(input[:filter_by], context: "#{context}[:filter_by]") unless input[:filter_by].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        UsageStatisticsSortBy.validate!(input[:sort_by], context: "#{context}[:sort_by]") unless input[:sort_by].nil?
        Hearth::Validator.validate!(input[:time_range], ::String, context: "#{context}[:time_range]")
      end
    end

    class GetUsageStatisticsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetUsageStatisticsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        List____listOfUsageRecord.validate!(input[:records], context: "#{context}[:records]") unless input[:records].nil?
        Hearth::Validator.validate!(input[:time_range], ::String, context: "#{context}[:time_range]")
      end
    end

    class GetUsageTotalsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetUsageTotalsInput, context: context)
        Hearth::Validator.validate!(input[:time_range], ::String, context: "#{context}[:time_range]")
      end
    end

    class GetUsageTotalsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetUsageTotalsOutput, context: context)
        Hearth::Validator.validate!(input[:time_range], ::String, context: "#{context}[:time_range]")
        List____listOfUsageTotal.validate!(input[:usage_totals], context: "#{context}[:usage_totals]") unless input[:usage_totals].nil?
      end
    end

    class GroupCount
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GroupCount, context: context)
        Hearth::Validator.validate!(input[:count], ::Integer, context: "#{context}[:count]")
        Hearth::Validator.validate!(input[:group_key], ::String, context: "#{context}[:group_key]")
      end
    end

    class IamUser
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IamUser, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:principal_id], ::String, context: "#{context}[:principal_id]")
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Invitation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Invitation, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:invitation_id], ::String, context: "#{context}[:invitation_id]")
        Hearth::Validator.validate!(input[:invited_at], ::Time, context: "#{context}[:invited_at]")
        Hearth::Validator.validate!(input[:relationship_status], ::String, context: "#{context}[:relationship_status]")
      end
    end

    class IpAddressDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IpAddressDetails, context: context)
        Hearth::Validator.validate!(input[:ip_address_v4], ::String, context: "#{context}[:ip_address_v4]")
        IpCity.validate!(input[:ip_city], context: "#{context}[:ip_city]") unless input[:ip_city].nil?
        IpCountry.validate!(input[:ip_country], context: "#{context}[:ip_country]") unless input[:ip_country].nil?
        IpGeoLocation.validate!(input[:ip_geo_location], context: "#{context}[:ip_geo_location]") unless input[:ip_geo_location].nil?
        IpOwner.validate!(input[:ip_owner], context: "#{context}[:ip_owner]") unless input[:ip_owner].nil?
      end
    end

    class IpCity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IpCity, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class IpCountry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IpCountry, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class IpGeoLocation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IpGeoLocation, context: context)
        Hearth::Validator.validate!(input[:lat], ::Float, context: "#{context}[:lat]")
        Hearth::Validator.validate!(input[:lon], ::Float, context: "#{context}[:lon]")
      end
    end

    class IpOwner
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IpOwner, context: context)
        Hearth::Validator.validate!(input[:asn], ::String, context: "#{context}[:asn]")
        Hearth::Validator.validate!(input[:asn_org], ::String, context: "#{context}[:asn_org]")
        Hearth::Validator.validate!(input[:isp], ::String, context: "#{context}[:isp]")
        Hearth::Validator.validate!(input[:org], ::String, context: "#{context}[:org]")
      end
    end

    class JobDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobDetails, context: context)
        Hearth::Validator.validate!(input[:is_defined_in_job], ::String, context: "#{context}[:is_defined_in_job]")
        Hearth::Validator.validate!(input[:is_monitored_by_job], ::String, context: "#{context}[:is_monitored_by_job]")
        Hearth::Validator.validate!(input[:last_job_id], ::String, context: "#{context}[:last_job_id]")
        Hearth::Validator.validate!(input[:last_job_run_time], ::Time, context: "#{context}[:last_job_run_time]")
      end
    end

    class JobScheduleFrequency
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobScheduleFrequency, context: context)
        DailySchedule.validate!(input[:daily_schedule], context: "#{context}[:daily_schedule]") unless input[:daily_schedule].nil?
        MonthlySchedule.validate!(input[:monthly_schedule], context: "#{context}[:monthly_schedule]") unless input[:monthly_schedule].nil?
        WeeklySchedule.validate!(input[:weekly_schedule], context: "#{context}[:weekly_schedule]") unless input[:weekly_schedule].nil?
      end
    end

    class JobScopeTerm
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobScopeTerm, context: context)
        SimpleScopeTerm.validate!(input[:simple_scope_term], context: "#{context}[:simple_scope_term]") unless input[:simple_scope_term].nil?
        TagScopeTerm.validate!(input[:tag_scope_term], context: "#{context}[:tag_scope_term]") unless input[:tag_scope_term].nil?
      end
    end

    class JobScopingBlock
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobScopingBlock, context: context)
        List____listOfJobScopeTerm.validate!(input[:and], context: "#{context}[:and]") unless input[:and].nil?
      end
    end

    class JobSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobSummary, context: context)
        List____listOfS3BucketDefinitionForJob.validate!(input[:bucket_definitions], context: "#{context}[:bucket_definitions]") unless input[:bucket_definitions].nil?
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
        Hearth::Validator.validate!(input[:job_type], ::String, context: "#{context}[:job_type]")
        LastRunErrorStatus.validate!(input[:last_run_error_status], context: "#{context}[:last_run_error_status]") unless input[:last_run_error_status].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        UserPausedDetails.validate!(input[:user_paused_details], context: "#{context}[:user_paused_details]") unless input[:user_paused_details].nil?
        S3BucketCriteriaForJob.validate!(input[:bucket_criteria], context: "#{context}[:bucket_criteria]") unless input[:bucket_criteria].nil?
      end
    end

    class KeyValuePair
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KeyValuePair, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class KeyValuePairList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          KeyValuePair.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LastRunErrorStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LastRunErrorStatus, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
      end
    end

    class ListClassificationJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListClassificationJobsInput, context: context)
        ListJobsFilterCriteria.validate!(input[:filter_criteria], context: "#{context}[:filter_criteria]") unless input[:filter_criteria].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        ListJobsSortCriteria.validate!(input[:sort_criteria], context: "#{context}[:sort_criteria]") unless input[:sort_criteria].nil?
      end
    end

    class ListClassificationJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListClassificationJobsOutput, context: context)
        List____listOfJobSummary.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListCustomDataIdentifiersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCustomDataIdentifiersInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListCustomDataIdentifiersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCustomDataIdentifiersOutput, context: context)
        List____listOfCustomDataIdentifierSummary.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListFindingsFiltersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFindingsFiltersInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListFindingsFiltersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFindingsFiltersOutput, context: context)
        List____listOfFindingsFilterListItem.validate!(input[:findings_filter_list_items], context: "#{context}[:findings_filter_list_items]") unless input[:findings_filter_list_items].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListFindingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFindingsInput, context: context)
        FindingCriteria.validate!(input[:finding_criteria], context: "#{context}[:finding_criteria]") unless input[:finding_criteria].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        SortCriteria.validate!(input[:sort_criteria], context: "#{context}[:sort_criteria]") unless input[:sort_criteria].nil?
      end
    end

    class ListFindingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFindingsOutput, context: context)
        List____listOf__string.validate!(input[:finding_ids], context: "#{context}[:finding_ids]") unless input[:finding_ids].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListInvitationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListInvitationsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListInvitationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListInvitationsOutput, context: context)
        List____listOfInvitation.validate!(input[:invitations], context: "#{context}[:invitations]") unless input[:invitations].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListJobsFilterCriteria
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListJobsFilterCriteria, context: context)
        List____listOfListJobsFilterTerm.validate!(input[:excludes], context: "#{context}[:excludes]") unless input[:excludes].nil?
        List____listOfListJobsFilterTerm.validate!(input[:includes], context: "#{context}[:includes]") unless input[:includes].nil?
      end
    end

    class ListJobsFilterTerm
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListJobsFilterTerm, context: context)
        Hearth::Validator.validate!(input[:comparator], ::String, context: "#{context}[:comparator]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        List____listOf__string.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class ListJobsSortCriteria
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListJobsSortCriteria, context: context)
        Hearth::Validator.validate!(input[:attribute_name], ::String, context: "#{context}[:attribute_name]")
        Hearth::Validator.validate!(input[:order_by], ::String, context: "#{context}[:order_by]")
      end
    end

    class ListManagedDataIdentifiersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListManagedDataIdentifiersInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListManagedDataIdentifiersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListManagedDataIdentifiersOutput, context: context)
        List____listOfManagedDataIdentifierSummary.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListMembersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMembersInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:only_associated], ::String, context: "#{context}[:only_associated]")
      end
    end

    class ListMembersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMembersOutput, context: context)
        List____listOfMember.validate!(input[:members], context: "#{context}[:members]") unless input[:members].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListOrganizationAdminAccountsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListOrganizationAdminAccountsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListOrganizationAdminAccountsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListOrganizationAdminAccountsOutput, context: context)
        List____listOfAdminAccount.validate!(input[:admin_accounts], context: "#{context}[:admin_accounts]") unless input[:admin_accounts].nil?
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

    class ManagedDataIdentifierSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ManagedDataIdentifierSummary, context: context)
        Hearth::Validator.validate!(input[:category], ::String, context: "#{context}[:category]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class MatchingBucket
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MatchingBucket, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:bucket_name], ::String, context: "#{context}[:bucket_name]")
        Hearth::Validator.validate!(input[:classifiable_object_count], ::Integer, context: "#{context}[:classifiable_object_count]")
        Hearth::Validator.validate!(input[:classifiable_size_in_bytes], ::Integer, context: "#{context}[:classifiable_size_in_bytes]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
        JobDetails.validate!(input[:job_details], context: "#{context}[:job_details]") unless input[:job_details].nil?
        Hearth::Validator.validate!(input[:object_count], ::Integer, context: "#{context}[:object_count]")
        ObjectCountByEncryptionType.validate!(input[:object_count_by_encryption_type], context: "#{context}[:object_count_by_encryption_type]") unless input[:object_count_by_encryption_type].nil?
        Hearth::Validator.validate!(input[:size_in_bytes], ::Integer, context: "#{context}[:size_in_bytes]")
        Hearth::Validator.validate!(input[:size_in_bytes_compressed], ::Integer, context: "#{context}[:size_in_bytes_compressed]")
        ObjectLevelStatistics.validate!(input[:unclassifiable_object_count], context: "#{context}[:unclassifiable_object_count]") unless input[:unclassifiable_object_count].nil?
        ObjectLevelStatistics.validate!(input[:unclassifiable_object_size_in_bytes], context: "#{context}[:unclassifiable_object_size_in_bytes]") unless input[:unclassifiable_object_size_in_bytes].nil?
      end
    end

    class MatchingResource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MatchingResource, context: context)
        MatchingBucket.validate!(input[:matching_bucket], context: "#{context}[:matching_bucket]") unless input[:matching_bucket].nil?
      end
    end

    class Member
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Member, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:administrator_account_id], ::String, context: "#{context}[:administrator_account_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:email], ::String, context: "#{context}[:email]")
        Hearth::Validator.validate!(input[:invited_at], ::Time, context: "#{context}[:invited_at]")
        Hearth::Validator.validate!(input[:master_account_id], ::String, context: "#{context}[:master_account_id]")
        Hearth::Validator.validate!(input[:relationship_status], ::String, context: "#{context}[:relationship_status]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
      end
    end

    class MonthlySchedule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MonthlySchedule, context: context)
        Hearth::Validator.validate!(input[:day_of_month], ::Integer, context: "#{context}[:day_of_month]")
      end
    end

    class ObjectCountByEncryptionType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ObjectCountByEncryptionType, context: context)
        Hearth::Validator.validate!(input[:customer_managed], ::Integer, context: "#{context}[:customer_managed]")
        Hearth::Validator.validate!(input[:kms_managed], ::Integer, context: "#{context}[:kms_managed]")
        Hearth::Validator.validate!(input[:s3_managed], ::Integer, context: "#{context}[:s3_managed]")
        Hearth::Validator.validate!(input[:unencrypted], ::Integer, context: "#{context}[:unencrypted]")
        Hearth::Validator.validate!(input[:unknown], ::Integer, context: "#{context}[:unknown]")
      end
    end

    class ObjectLevelStatistics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ObjectLevelStatistics, context: context)
        Hearth::Validator.validate!(input[:file_type], ::Integer, context: "#{context}[:file_type]")
        Hearth::Validator.validate!(input[:storage_class], ::Integer, context: "#{context}[:storage_class]")
        Hearth::Validator.validate!(input[:total], ::Integer, context: "#{context}[:total]")
      end
    end

    class Occurrences
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Occurrences, context: context)
        Cells.validate!(input[:cells], context: "#{context}[:cells]") unless input[:cells].nil?
        Ranges.validate!(input[:line_ranges], context: "#{context}[:line_ranges]") unless input[:line_ranges].nil?
        Ranges.validate!(input[:offset_ranges], context: "#{context}[:offset_ranges]") unless input[:offset_ranges].nil?
        Pages.validate!(input[:pages], context: "#{context}[:pages]") unless input[:pages].nil?
        Records.validate!(input[:records], context: "#{context}[:records]") unless input[:records].nil?
      end
    end

    class Page
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Page, context: context)
        Range.validate!(input[:line_range], context: "#{context}[:line_range]") unless input[:line_range].nil?
        Range.validate!(input[:offset_range], context: "#{context}[:offset_range]") unless input[:offset_range].nil?
        Hearth::Validator.validate!(input[:page_number], ::Integer, context: "#{context}[:page_number]")
      end
    end

    class Pages
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Page.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PolicyDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PolicyDetails, context: context)
        FindingAction.validate!(input[:action], context: "#{context}[:action]") unless input[:action].nil?
        FindingActor.validate!(input[:actor], context: "#{context}[:actor]") unless input[:actor].nil?
      end
    end

    class PutClassificationExportConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutClassificationExportConfigurationInput, context: context)
        ClassificationExportConfiguration.validate!(input[:configuration], context: "#{context}[:configuration]") unless input[:configuration].nil?
      end
    end

    class PutClassificationExportConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutClassificationExportConfigurationOutput, context: context)
        ClassificationExportConfiguration.validate!(input[:configuration], context: "#{context}[:configuration]") unless input[:configuration].nil?
      end
    end

    class PutFindingsPublicationConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutFindingsPublicationConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        SecurityHubConfiguration.validate!(input[:security_hub_configuration], context: "#{context}[:security_hub_configuration]") unless input[:security_hub_configuration].nil?
      end
    end

    class PutFindingsPublicationConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutFindingsPublicationConfigurationOutput, context: context)
      end
    end

    class Range
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Range, context: context)
        Hearth::Validator.validate!(input[:end], ::Integer, context: "#{context}[:end]")
        Hearth::Validator.validate!(input[:start], ::Integer, context: "#{context}[:start]")
        Hearth::Validator.validate!(input[:start_column], ::Integer, context: "#{context}[:start_column]")
      end
    end

    class Ranges
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Range.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Record
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Record, context: context)
        Hearth::Validator.validate!(input[:json_path], ::String, context: "#{context}[:json_path]")
        Hearth::Validator.validate!(input[:record_index], ::Integer, context: "#{context}[:record_index]")
      end
    end

    class Records
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Record.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReplicationDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplicationDetails, context: context)
        Hearth::Validator.validate!(input[:replicated], ::TrueClass, ::FalseClass, context: "#{context}[:replicated]")
        Hearth::Validator.validate!(input[:replicated_externally], ::TrueClass, ::FalseClass, context: "#{context}[:replicated_externally]")
        List____listOf__string.validate!(input[:replication_accounts], context: "#{context}[:replication_accounts]") unless input[:replication_accounts].nil?
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourcesAffected
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourcesAffected, context: context)
        S3Bucket.validate!(input[:s3_bucket], context: "#{context}[:s3_bucket]") unless input[:s3_bucket].nil?
        S3Object.validate!(input[:s3_object], context: "#{context}[:s3_object]") unless input[:s3_object].nil?
      end
    end

    class S3Bucket
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3Bucket, context: context)
        Hearth::Validator.validate!(input[:allows_unencrypted_object_uploads], ::String, context: "#{context}[:allows_unencrypted_object_uploads]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        ServerSideEncryption.validate!(input[:default_server_side_encryption], context: "#{context}[:default_server_side_encryption]") unless input[:default_server_side_encryption].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        S3BucketOwner.validate!(input[:owner], context: "#{context}[:owner]") unless input[:owner].nil?
        BucketPublicAccess.validate!(input[:public_access], context: "#{context}[:public_access]") unless input[:public_access].nil?
        KeyValuePairList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class S3BucketCriteriaForJob
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3BucketCriteriaForJob, context: context)
        CriteriaBlockForJob.validate!(input[:excludes], context: "#{context}[:excludes]") unless input[:excludes].nil?
        CriteriaBlockForJob.validate!(input[:includes], context: "#{context}[:includes]") unless input[:includes].nil?
      end
    end

    class S3BucketDefinitionForJob
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3BucketDefinitionForJob, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        List____listOf__string.validate!(input[:buckets], context: "#{context}[:buckets]") unless input[:buckets].nil?
      end
    end

    class S3BucketOwner
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3BucketOwner, context: context)
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class S3Destination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3Destination, context: context)
        Hearth::Validator.validate!(input[:bucket_name], ::String, context: "#{context}[:bucket_name]")
        Hearth::Validator.validate!(input[:key_prefix], ::String, context: "#{context}[:key_prefix]")
        Hearth::Validator.validate!(input[:kms_key_arn], ::String, context: "#{context}[:kms_key_arn]")
      end
    end

    class S3JobDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3JobDefinition, context: context)
        List____listOfS3BucketDefinitionForJob.validate!(input[:bucket_definitions], context: "#{context}[:bucket_definitions]") unless input[:bucket_definitions].nil?
        Scoping.validate!(input[:scoping], context: "#{context}[:scoping]") unless input[:scoping].nil?
        S3BucketCriteriaForJob.validate!(input[:bucket_criteria], context: "#{context}[:bucket_criteria]") unless input[:bucket_criteria].nil?
      end
    end

    class S3Object
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3Object, context: context)
        Hearth::Validator.validate!(input[:bucket_arn], ::String, context: "#{context}[:bucket_arn]")
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
        Hearth::Validator.validate!(input[:extension], ::String, context: "#{context}[:extension]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:last_modified], ::Time, context: "#{context}[:last_modified]")
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        Hearth::Validator.validate!(input[:public_access], ::TrueClass, ::FalseClass, context: "#{context}[:public_access]")
        ServerSideEncryption.validate!(input[:server_side_encryption], context: "#{context}[:server_side_encryption]") unless input[:server_side_encryption].nil?
        Hearth::Validator.validate!(input[:size], ::Integer, context: "#{context}[:size]")
        Hearth::Validator.validate!(input[:storage_class], ::String, context: "#{context}[:storage_class]")
        KeyValuePairList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
      end
    end

    class Scoping
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Scoping, context: context)
        JobScopingBlock.validate!(input[:excludes], context: "#{context}[:excludes]") unless input[:excludes].nil?
        JobScopingBlock.validate!(input[:includes], context: "#{context}[:includes]") unless input[:includes].nil?
      end
    end

    class SearchResourcesBucketCriteria
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchResourcesBucketCriteria, context: context)
        SearchResourcesCriteriaBlock.validate!(input[:excludes], context: "#{context}[:excludes]") unless input[:excludes].nil?
        SearchResourcesCriteriaBlock.validate!(input[:includes], context: "#{context}[:includes]") unless input[:includes].nil?
      end
    end

    class SearchResourcesCriteria
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchResourcesCriteria, context: context)
        SearchResourcesSimpleCriterion.validate!(input[:simple_criterion], context: "#{context}[:simple_criterion]") unless input[:simple_criterion].nil?
        SearchResourcesTagCriterion.validate!(input[:tag_criterion], context: "#{context}[:tag_criterion]") unless input[:tag_criterion].nil?
      end
    end

    class SearchResourcesCriteriaBlock
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchResourcesCriteriaBlock, context: context)
        List____listOfSearchResourcesCriteria.validate!(input[:and], context: "#{context}[:and]") unless input[:and].nil?
      end
    end

    class SearchResourcesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchResourcesInput, context: context)
        SearchResourcesBucketCriteria.validate!(input[:bucket_criteria], context: "#{context}[:bucket_criteria]") unless input[:bucket_criteria].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        SearchResourcesSortCriteria.validate!(input[:sort_criteria], context: "#{context}[:sort_criteria]") unless input[:sort_criteria].nil?
      end
    end

    class SearchResourcesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchResourcesOutput, context: context)
        List____listOfMatchingResource.validate!(input[:matching_resources], context: "#{context}[:matching_resources]") unless input[:matching_resources].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class SearchResourcesSimpleCriterion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchResourcesSimpleCriterion, context: context)
        Hearth::Validator.validate!(input[:comparator], ::String, context: "#{context}[:comparator]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        List____listOf__string.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class SearchResourcesSortCriteria
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchResourcesSortCriteria, context: context)
        Hearth::Validator.validate!(input[:attribute_name], ::String, context: "#{context}[:attribute_name]")
        Hearth::Validator.validate!(input[:order_by], ::String, context: "#{context}[:order_by]")
      end
    end

    class SearchResourcesTagCriterion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchResourcesTagCriterion, context: context)
        Hearth::Validator.validate!(input[:comparator], ::String, context: "#{context}[:comparator]")
        List____listOfSearchResourcesTagCriterionPair.validate!(input[:tag_values], context: "#{context}[:tag_values]") unless input[:tag_values].nil?
      end
    end

    class SearchResourcesTagCriterionPair
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchResourcesTagCriterionPair, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class SecurityHubConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SecurityHubConfiguration, context: context)
        Hearth::Validator.validate!(input[:publish_classification_findings], ::TrueClass, ::FalseClass, context: "#{context}[:publish_classification_findings]")
        Hearth::Validator.validate!(input[:publish_policy_findings], ::TrueClass, ::FalseClass, context: "#{context}[:publish_policy_findings]")
      end
    end

    class SensitiveData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SensitiveDataItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SensitiveDataItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SensitiveDataItem, context: context)
        Hearth::Validator.validate!(input[:category], ::String, context: "#{context}[:category]")
        DefaultDetections.validate!(input[:detections], context: "#{context}[:detections]") unless input[:detections].nil?
        Hearth::Validator.validate!(input[:total_count], ::Integer, context: "#{context}[:total_count]")
      end
    end

    class ServerSideEncryption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServerSideEncryption, context: context)
        Hearth::Validator.validate!(input[:encryption_type], ::String, context: "#{context}[:encryption_type]")
        Hearth::Validator.validate!(input[:kms_master_key_id], ::String, context: "#{context}[:kms_master_key_id]")
      end
    end

    class ServiceLimit
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceLimit, context: context)
        Hearth::Validator.validate!(input[:is_service_limited], ::TrueClass, ::FalseClass, context: "#{context}[:is_service_limited]")
        Hearth::Validator.validate!(input[:unit], ::String, context: "#{context}[:unit]")
        Hearth::Validator.validate!(input[:value], ::Integer, context: "#{context}[:value]")
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SessionContext
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SessionContext, context: context)
        SessionContextAttributes.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        SessionIssuer.validate!(input[:session_issuer], context: "#{context}[:session_issuer]") unless input[:session_issuer].nil?
      end
    end

    class SessionContextAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SessionContextAttributes, context: context)
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:mfa_authenticated], ::TrueClass, ::FalseClass, context: "#{context}[:mfa_authenticated]")
      end
    end

    class SessionIssuer
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SessionIssuer, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:principal_id], ::String, context: "#{context}[:principal_id]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
      end
    end

    class Severity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Severity, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:score], ::Integer, context: "#{context}[:score]")
      end
    end

    class SeverityLevel
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SeverityLevel, context: context)
        Hearth::Validator.validate!(input[:occurrences_threshold], ::Integer, context: "#{context}[:occurrences_threshold]")
        Hearth::Validator.validate!(input[:severity], ::String, context: "#{context}[:severity]")
      end
    end

    class SeverityLevelList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SeverityLevel.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SimpleCriterionForJob
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SimpleCriterionForJob, context: context)
        Hearth::Validator.validate!(input[:comparator], ::String, context: "#{context}[:comparator]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        List____listOf__string.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class SimpleScopeTerm
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SimpleScopeTerm, context: context)
        Hearth::Validator.validate!(input[:comparator], ::String, context: "#{context}[:comparator]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        List____listOf__string.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class SortCriteria
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SortCriteria, context: context)
        Hearth::Validator.validate!(input[:attribute_name], ::String, context: "#{context}[:attribute_name]")
        Hearth::Validator.validate!(input[:order_by], ::String, context: "#{context}[:order_by]")
      end
    end

    class Statistics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Statistics, context: context)
        Hearth::Validator.validate!(input[:approximate_number_of_objects_to_process], ::Float, context: "#{context}[:approximate_number_of_objects_to_process]")
        Hearth::Validator.validate!(input[:number_of_runs], ::Float, context: "#{context}[:number_of_runs]")
      end
    end

    class TagCriterionForJob
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagCriterionForJob, context: context)
        Hearth::Validator.validate!(input[:comparator], ::String, context: "#{context}[:comparator]")
        List____listOfTagCriterionPairForJob.validate!(input[:tag_values], context: "#{context}[:tag_values]") unless input[:tag_values].nil?
      end
    end

    class TagCriterionPairForJob
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagCriterionPairForJob, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
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

    class TagScopeTerm
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagScopeTerm, context: context)
        Hearth::Validator.validate!(input[:comparator], ::String, context: "#{context}[:comparator]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        List____listOfTagValuePair.validate!(input[:tag_values], context: "#{context}[:tag_values]") unless input[:tag_values].nil?
        Hearth::Validator.validate!(input[:target], ::String, context: "#{context}[:target]")
      end
    end

    class TagValuePair
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagValuePair, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TestCustomDataIdentifierInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TestCustomDataIdentifierInput, context: context)
        List____listOf__string.validate!(input[:ignore_words], context: "#{context}[:ignore_words]") unless input[:ignore_words].nil?
        List____listOf__string.validate!(input[:keywords], context: "#{context}[:keywords]") unless input[:keywords].nil?
        Hearth::Validator.validate!(input[:maximum_match_distance], ::Integer, context: "#{context}[:maximum_match_distance]")
        Hearth::Validator.validate!(input[:regex], ::String, context: "#{context}[:regex]")
        Hearth::Validator.validate!(input[:sample_text], ::String, context: "#{context}[:sample_text]")
      end
    end

    class TestCustomDataIdentifierOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TestCustomDataIdentifierOutput, context: context)
        Hearth::Validator.validate!(input[:match_count], ::Integer, context: "#{context}[:match_count]")
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UnprocessedAccount
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnprocessedAccount, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        List____listOf__string.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateClassificationJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateClassificationJobInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
      end
    end

    class UpdateClassificationJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateClassificationJobOutput, context: context)
      end
    end

    class UpdateFindingsFilterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFindingsFilterInput, context: context)
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        FindingCriteria.validate!(input[:finding_criteria], context: "#{context}[:finding_criteria]") unless input[:finding_criteria].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:position], ::Integer, context: "#{context}[:position]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class UpdateFindingsFilterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFindingsFilterOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class UpdateMacieSessionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateMacieSessionInput, context: context)
        Hearth::Validator.validate!(input[:finding_publishing_frequency], ::String, context: "#{context}[:finding_publishing_frequency]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class UpdateMacieSessionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateMacieSessionOutput, context: context)
      end
    end

    class UpdateMemberSessionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateMemberSessionInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class UpdateMemberSessionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateMemberSessionOutput, context: context)
      end
    end

    class UpdateOrganizationConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateOrganizationConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:auto_enable], ::TrueClass, ::FalseClass, context: "#{context}[:auto_enable]")
      end
    end

    class UpdateOrganizationConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateOrganizationConfigurationOutput, context: context)
      end
    end

    class UsageByAccount
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UsageByAccount, context: context)
        Hearth::Validator.validate!(input[:currency], ::String, context: "#{context}[:currency]")
        Hearth::Validator.validate!(input[:estimated_cost], ::String, context: "#{context}[:estimated_cost]")
        ServiceLimit.validate!(input[:service_limit], context: "#{context}[:service_limit]") unless input[:service_limit].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class UsageRecord
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UsageRecord, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:free_trial_start_date], ::Time, context: "#{context}[:free_trial_start_date]")
        List____listOfUsageByAccount.validate!(input[:usage], context: "#{context}[:usage]") unless input[:usage].nil?
      end
    end

    class UsageStatisticsFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UsageStatisticsFilter, context: context)
        Hearth::Validator.validate!(input[:comparator], ::String, context: "#{context}[:comparator]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        List____listOf__string.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class UsageStatisticsSortBy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UsageStatisticsSortBy, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:order_by], ::String, context: "#{context}[:order_by]")
      end
    end

    class UsageTotal
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UsageTotal, context: context)
        Hearth::Validator.validate!(input[:currency], ::String, context: "#{context}[:currency]")
        Hearth::Validator.validate!(input[:estimated_cost], ::String, context: "#{context}[:estimated_cost]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class UserIdentity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserIdentity, context: context)
        AssumedRole.validate!(input[:assumed_role], context: "#{context}[:assumed_role]") unless input[:assumed_role].nil?
        AwsAccount.validate!(input[:aws_account], context: "#{context}[:aws_account]") unless input[:aws_account].nil?
        AwsService.validate!(input[:aws_service], context: "#{context}[:aws_service]") unless input[:aws_service].nil?
        FederatedUser.validate!(input[:federated_user], context: "#{context}[:federated_user]") unless input[:federated_user].nil?
        IamUser.validate!(input[:iam_user], context: "#{context}[:iam_user]") unless input[:iam_user].nil?
        UserIdentityRoot.validate!(input[:root], context: "#{context}[:root]") unless input[:root].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class UserIdentityRoot
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserIdentityRoot, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:principal_id], ::String, context: "#{context}[:principal_id]")
      end
    end

    class UserPausedDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserPausedDetails, context: context)
        Hearth::Validator.validate!(input[:job_expires_at], ::Time, context: "#{context}[:job_expires_at]")
        Hearth::Validator.validate!(input[:job_imminent_expiration_health_event_arn], ::String, context: "#{context}[:job_imminent_expiration_health_event_arn]")
        Hearth::Validator.validate!(input[:job_paused_at], ::Time, context: "#{context}[:job_paused_at]")
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class WeeklySchedule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WeeklySchedule, context: context)
        Hearth::Validator.validate!(input[:day_of_week], ::String, context: "#{context}[:day_of_week]")
      end
    end

    class List____listOfAdminAccount
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AdminAccount.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfBatchGetCustomDataIdentifierSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BatchGetCustomDataIdentifierSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfBucketMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BucketMetadata.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfCriteriaForJob
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CriteriaForJob.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfCustomDataIdentifierSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CustomDataIdentifierSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfFinding
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Finding.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfFindingType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class List____listOfFindingsFilterListItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          FindingsFilterListItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfGroupCount
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          GroupCount.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfInvitation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Invitation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfJobScopeTerm
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          JobScopeTerm.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfJobSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          JobSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfKeyValuePair
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          KeyValuePair.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfListJobsFilterTerm
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ListJobsFilterTerm.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfManagedDataIdentifierSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ManagedDataIdentifierSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfMatchingResource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MatchingResource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfMember
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Member.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfS3BucketDefinitionForJob
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          S3BucketDefinitionForJob.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfSearchResourcesCriteria
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SearchResourcesCriteria.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfSearchResourcesTagCriterionPair
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SearchResourcesTagCriterionPair.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfTagCriterionPairForJob
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TagCriterionPairForJob.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfTagValuePair
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TagValuePair.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfUnprocessedAccount
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          UnprocessedAccount.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfUsageByAccount
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          UsageByAccount.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfUsageRecord
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          UsageRecord.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfUsageStatisticsFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          UsageStatisticsFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfUsageTotal
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          UsageTotal.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOf__string
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

  end
end
