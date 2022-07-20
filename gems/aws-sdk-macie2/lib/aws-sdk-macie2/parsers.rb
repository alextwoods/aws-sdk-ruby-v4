# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Macie2
  module Parsers

    # Operation Parser for AcceptInvitation
    class AcceptInvitation
      def self.parse(http_resp)
        data = Types::AcceptInvitationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ServiceQuotaExceededException
    class ServiceQuotaExceededException
      def self.parse(http_resp)
        data = Types::ServiceQuotaExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for BatchGetCustomDataIdentifiers
    class BatchGetCustomDataIdentifiers
      def self.parse(http_resp)
        data = Types::BatchGetCustomDataIdentifiersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.custom_data_identifiers = (Parsers::List____listOfBatchGetCustomDataIdentifierSummary.parse(map['customDataIdentifiers']) unless map['customDataIdentifiers'].nil?)
        data.not_found_identifier_ids = (Parsers::List____listOf__string.parse(map['notFoundIdentifierIds']) unless map['notFoundIdentifierIds'].nil?)
        data
      end
    end

    class List____listOf__string
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class List____listOfBatchGetCustomDataIdentifierSummary
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::BatchGetCustomDataIdentifierSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class BatchGetCustomDataIdentifierSummary
      def self.parse(map)
        data = Types::BatchGetCustomDataIdentifierSummary.new
        data.arn = map['arn']
        data.created_at = Time.parse(map['createdAt']) if map['createdAt']
        data.deleted = map['deleted']
        data.description = map['description']
        data.id = map['id']
        data.name = map['name']
        return data
      end
    end

    # Operation Parser for CreateClassificationJob
    class CreateClassificationJob
      def self.parse(http_resp)
        data = Types::CreateClassificationJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.job_arn = map['jobArn']
        data.job_id = map['jobId']
        data
      end
    end

    # Operation Parser for CreateCustomDataIdentifier
    class CreateCustomDataIdentifier
      def self.parse(http_resp)
        data = Types::CreateCustomDataIdentifierOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.custom_data_identifier_id = map['customDataIdentifierId']
        data
      end
    end

    # Operation Parser for CreateFindingsFilter
    class CreateFindingsFilter
      def self.parse(http_resp)
        data = Types::CreateFindingsFilterOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.id = map['id']
        data
      end
    end

    # Operation Parser for CreateInvitations
    class CreateInvitations
      def self.parse(http_resp)
        data = Types::CreateInvitationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.unprocessed_accounts = (Parsers::List____listOfUnprocessedAccount.parse(map['unprocessedAccounts']) unless map['unprocessedAccounts'].nil?)
        data
      end
    end

    class List____listOfUnprocessedAccount
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::UnprocessedAccount.parse(value) unless value.nil?
        end
        data
      end
    end

    class UnprocessedAccount
      def self.parse(map)
        data = Types::UnprocessedAccount.new
        data.account_id = map['accountId']
        data.error_code = map['errorCode']
        data.error_message = map['errorMessage']
        return data
      end
    end

    # Operation Parser for CreateMember
    class CreateMember
      def self.parse(http_resp)
        data = Types::CreateMemberOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data
      end
    end

    # Operation Parser for CreateSampleFindings
    class CreateSampleFindings
      def self.parse(http_resp)
        data = Types::CreateSampleFindingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeclineInvitations
    class DeclineInvitations
      def self.parse(http_resp)
        data = Types::DeclineInvitationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.unprocessed_accounts = (Parsers::List____listOfUnprocessedAccount.parse(map['unprocessedAccounts']) unless map['unprocessedAccounts'].nil?)
        data
      end
    end

    # Operation Parser for DeleteCustomDataIdentifier
    class DeleteCustomDataIdentifier
      def self.parse(http_resp)
        data = Types::DeleteCustomDataIdentifierOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteFindingsFilter
    class DeleteFindingsFilter
      def self.parse(http_resp)
        data = Types::DeleteFindingsFilterOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteInvitations
    class DeleteInvitations
      def self.parse(http_resp)
        data = Types::DeleteInvitationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.unprocessed_accounts = (Parsers::List____listOfUnprocessedAccount.parse(map['unprocessedAccounts']) unless map['unprocessedAccounts'].nil?)
        data
      end
    end

    # Operation Parser for DeleteMember
    class DeleteMember
      def self.parse(http_resp)
        data = Types::DeleteMemberOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DescribeBuckets
    class DescribeBuckets
      def self.parse(http_resp)
        data = Types::DescribeBucketsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.buckets = (Parsers::List____listOfBucketMetadata.parse(map['buckets']) unless map['buckets'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class List____listOfBucketMetadata
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::BucketMetadata.parse(value) unless value.nil?
        end
        data
      end
    end

    class BucketMetadata
      def self.parse(map)
        data = Types::BucketMetadata.new
        data.account_id = map['accountId']
        data.allows_unencrypted_object_uploads = map['allowsUnencryptedObjectUploads']
        data.bucket_arn = map['bucketArn']
        data.bucket_created_at = Time.parse(map['bucketCreatedAt']) if map['bucketCreatedAt']
        data.bucket_name = map['bucketName']
        data.classifiable_object_count = map['classifiableObjectCount']
        data.classifiable_size_in_bytes = map['classifiableSizeInBytes']
        data.error_code = map['errorCode']
        data.error_message = map['errorMessage']
        data.job_details = (Parsers::JobDetails.parse(map['jobDetails']) unless map['jobDetails'].nil?)
        data.last_updated = Time.parse(map['lastUpdated']) if map['lastUpdated']
        data.object_count = map['objectCount']
        data.object_count_by_encryption_type = (Parsers::ObjectCountByEncryptionType.parse(map['objectCountByEncryptionType']) unless map['objectCountByEncryptionType'].nil?)
        data.public_access = (Parsers::BucketPublicAccess.parse(map['publicAccess']) unless map['publicAccess'].nil?)
        data.region = map['region']
        data.replication_details = (Parsers::ReplicationDetails.parse(map['replicationDetails']) unless map['replicationDetails'].nil?)
        data.server_side_encryption = (Parsers::BucketServerSideEncryption.parse(map['serverSideEncryption']) unless map['serverSideEncryption'].nil?)
        data.shared_access = map['sharedAccess']
        data.size_in_bytes = map['sizeInBytes']
        data.size_in_bytes_compressed = map['sizeInBytesCompressed']
        data.tags = (Parsers::List____listOfKeyValuePair.parse(map['tags']) unless map['tags'].nil?)
        data.unclassifiable_object_count = (Parsers::ObjectLevelStatistics.parse(map['unclassifiableObjectCount']) unless map['unclassifiableObjectCount'].nil?)
        data.unclassifiable_object_size_in_bytes = (Parsers::ObjectLevelStatistics.parse(map['unclassifiableObjectSizeInBytes']) unless map['unclassifiableObjectSizeInBytes'].nil?)
        data.versioning = map['versioning']
        return data
      end
    end

    class ObjectLevelStatistics
      def self.parse(map)
        data = Types::ObjectLevelStatistics.new
        data.file_type = map['fileType']
        data.storage_class = map['storageClass']
        data.total = map['total']
        return data
      end
    end

    class List____listOfKeyValuePair
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::KeyValuePair.parse(value) unless value.nil?
        end
        data
      end
    end

    class KeyValuePair
      def self.parse(map)
        data = Types::KeyValuePair.new
        data.key = map['key']
        data.value = map['value']
        return data
      end
    end

    class BucketServerSideEncryption
      def self.parse(map)
        data = Types::BucketServerSideEncryption.new
        data.kms_master_key_id = map['kmsMasterKeyId']
        data.type = map['type']
        return data
      end
    end

    class ReplicationDetails
      def self.parse(map)
        data = Types::ReplicationDetails.new
        data.replicated = map['replicated']
        data.replicated_externally = map['replicatedExternally']
        data.replication_accounts = (Parsers::List____listOf__string.parse(map['replicationAccounts']) unless map['replicationAccounts'].nil?)
        return data
      end
    end

    class BucketPublicAccess
      def self.parse(map)
        data = Types::BucketPublicAccess.new
        data.effective_permission = map['effectivePermission']
        data.permission_configuration = (Parsers::BucketPermissionConfiguration.parse(map['permissionConfiguration']) unless map['permissionConfiguration'].nil?)
        return data
      end
    end

    class BucketPermissionConfiguration
      def self.parse(map)
        data = Types::BucketPermissionConfiguration.new
        data.account_level_permissions = (Parsers::AccountLevelPermissions.parse(map['accountLevelPermissions']) unless map['accountLevelPermissions'].nil?)
        data.bucket_level_permissions = (Parsers::BucketLevelPermissions.parse(map['bucketLevelPermissions']) unless map['bucketLevelPermissions'].nil?)
        return data
      end
    end

    class BucketLevelPermissions
      def self.parse(map)
        data = Types::BucketLevelPermissions.new
        data.access_control_list = (Parsers::AccessControlList.parse(map['accessControlList']) unless map['accessControlList'].nil?)
        data.block_public_access = (Parsers::BlockPublicAccess.parse(map['blockPublicAccess']) unless map['blockPublicAccess'].nil?)
        data.bucket_policy = (Parsers::BucketPolicy.parse(map['bucketPolicy']) unless map['bucketPolicy'].nil?)
        return data
      end
    end

    class BucketPolicy
      def self.parse(map)
        data = Types::BucketPolicy.new
        data.allows_public_read_access = map['allowsPublicReadAccess']
        data.allows_public_write_access = map['allowsPublicWriteAccess']
        return data
      end
    end

    class BlockPublicAccess
      def self.parse(map)
        data = Types::BlockPublicAccess.new
        data.block_public_acls = map['blockPublicAcls']
        data.block_public_policy = map['blockPublicPolicy']
        data.ignore_public_acls = map['ignorePublicAcls']
        data.restrict_public_buckets = map['restrictPublicBuckets']
        return data
      end
    end

    class AccessControlList
      def self.parse(map)
        data = Types::AccessControlList.new
        data.allows_public_read_access = map['allowsPublicReadAccess']
        data.allows_public_write_access = map['allowsPublicWriteAccess']
        return data
      end
    end

    class AccountLevelPermissions
      def self.parse(map)
        data = Types::AccountLevelPermissions.new
        data.block_public_access = (Parsers::BlockPublicAccess.parse(map['blockPublicAccess']) unless map['blockPublicAccess'].nil?)
        return data
      end
    end

    class ObjectCountByEncryptionType
      def self.parse(map)
        data = Types::ObjectCountByEncryptionType.new
        data.customer_managed = map['customerManaged']
        data.kms_managed = map['kmsManaged']
        data.s3_managed = map['s3Managed']
        data.unencrypted = map['unencrypted']
        data.unknown = map['unknown']
        return data
      end
    end

    class JobDetails
      def self.parse(map)
        data = Types::JobDetails.new
        data.is_defined_in_job = map['isDefinedInJob']
        data.is_monitored_by_job = map['isMonitoredByJob']
        data.last_job_id = map['lastJobId']
        data.last_job_run_time = Time.parse(map['lastJobRunTime']) if map['lastJobRunTime']
        return data
      end
    end

    # Operation Parser for DescribeClassificationJob
    class DescribeClassificationJob
      def self.parse(http_resp)
        data = Types::DescribeClassificationJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.client_token = map['clientToken']
        data.created_at = Time.parse(map['createdAt']) if map['createdAt']
        data.custom_data_identifier_ids = (Parsers::List____listOf__string.parse(map['customDataIdentifierIds']) unless map['customDataIdentifierIds'].nil?)
        data.description = map['description']
        data.initial_run = map['initialRun']
        data.job_arn = map['jobArn']
        data.job_id = map['jobId']
        data.job_status = map['jobStatus']
        data.job_type = map['jobType']
        data.last_run_error_status = (Parsers::LastRunErrorStatus.parse(map['lastRunErrorStatus']) unless map['lastRunErrorStatus'].nil?)
        data.last_run_time = Time.parse(map['lastRunTime']) if map['lastRunTime']
        data.managed_data_identifier_ids = (Parsers::List____listOf__string.parse(map['managedDataIdentifierIds']) unless map['managedDataIdentifierIds'].nil?)
        data.managed_data_identifier_selector = map['managedDataIdentifierSelector']
        data.name = map['name']
        data.s3_job_definition = (Parsers::S3JobDefinition.parse(map['s3JobDefinition']) unless map['s3JobDefinition'].nil?)
        data.sampling_percentage = map['samplingPercentage']
        data.schedule_frequency = (Parsers::JobScheduleFrequency.parse(map['scheduleFrequency']) unless map['scheduleFrequency'].nil?)
        data.statistics = (Parsers::Statistics.parse(map['statistics']) unless map['statistics'].nil?)
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        data.user_paused_details = (Parsers::UserPausedDetails.parse(map['userPausedDetails']) unless map['userPausedDetails'].nil?)
        data
      end
    end

    class UserPausedDetails
      def self.parse(map)
        data = Types::UserPausedDetails.new
        data.job_expires_at = Time.parse(map['jobExpiresAt']) if map['jobExpiresAt']
        data.job_imminent_expiration_health_event_arn = map['jobImminentExpirationHealthEventArn']
        data.job_paused_at = Time.parse(map['jobPausedAt']) if map['jobPausedAt']
        return data
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

    class Statistics
      def self.parse(map)
        data = Types::Statistics.new
        data.approximate_number_of_objects_to_process = Hearth::NumberHelper.deserialize(map['approximateNumberOfObjectsToProcess'])
        data.number_of_runs = Hearth::NumberHelper.deserialize(map['numberOfRuns'])
        return data
      end
    end

    class JobScheduleFrequency
      def self.parse(map)
        data = Types::JobScheduleFrequency.new
        data.daily_schedule = (Parsers::DailySchedule.parse(map['dailySchedule']) unless map['dailySchedule'].nil?)
        data.monthly_schedule = (Parsers::MonthlySchedule.parse(map['monthlySchedule']) unless map['monthlySchedule'].nil?)
        data.weekly_schedule = (Parsers::WeeklySchedule.parse(map['weeklySchedule']) unless map['weeklySchedule'].nil?)
        return data
      end
    end

    class WeeklySchedule
      def self.parse(map)
        data = Types::WeeklySchedule.new
        data.day_of_week = map['dayOfWeek']
        return data
      end
    end

    class MonthlySchedule
      def self.parse(map)
        data = Types::MonthlySchedule.new
        data.day_of_month = map['dayOfMonth']
        return data
      end
    end

    class DailySchedule
      def self.parse(map)
        data = Types::DailySchedule.new
        return data
      end
    end

    class S3JobDefinition
      def self.parse(map)
        data = Types::S3JobDefinition.new
        data.bucket_definitions = (Parsers::List____listOfS3BucketDefinitionForJob.parse(map['bucketDefinitions']) unless map['bucketDefinitions'].nil?)
        data.scoping = (Parsers::Scoping.parse(map['scoping']) unless map['scoping'].nil?)
        data.bucket_criteria = (Parsers::S3BucketCriteriaForJob.parse(map['bucketCriteria']) unless map['bucketCriteria'].nil?)
        return data
      end
    end

    class S3BucketCriteriaForJob
      def self.parse(map)
        data = Types::S3BucketCriteriaForJob.new
        data.excludes = (Parsers::CriteriaBlockForJob.parse(map['excludes']) unless map['excludes'].nil?)
        data.includes = (Parsers::CriteriaBlockForJob.parse(map['includes']) unless map['includes'].nil?)
        return data
      end
    end

    class CriteriaBlockForJob
      def self.parse(map)
        data = Types::CriteriaBlockForJob.new
        data.and = (Parsers::List____listOfCriteriaForJob.parse(map['and']) unless map['and'].nil?)
        return data
      end
    end

    class List____listOfCriteriaForJob
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::CriteriaForJob.parse(value) unless value.nil?
        end
        data
      end
    end

    class CriteriaForJob
      def self.parse(map)
        data = Types::CriteriaForJob.new
        data.simple_criterion = (Parsers::SimpleCriterionForJob.parse(map['simpleCriterion']) unless map['simpleCriterion'].nil?)
        data.tag_criterion = (Parsers::TagCriterionForJob.parse(map['tagCriterion']) unless map['tagCriterion'].nil?)
        return data
      end
    end

    class TagCriterionForJob
      def self.parse(map)
        data = Types::TagCriterionForJob.new
        data.comparator = map['comparator']
        data.tag_values = (Parsers::List____listOfTagCriterionPairForJob.parse(map['tagValues']) unless map['tagValues'].nil?)
        return data
      end
    end

    class List____listOfTagCriterionPairForJob
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::TagCriterionPairForJob.parse(value) unless value.nil?
        end
        data
      end
    end

    class TagCriterionPairForJob
      def self.parse(map)
        data = Types::TagCriterionPairForJob.new
        data.key = map['key']
        data.value = map['value']
        return data
      end
    end

    class SimpleCriterionForJob
      def self.parse(map)
        data = Types::SimpleCriterionForJob.new
        data.comparator = map['comparator']
        data.key = map['key']
        data.values = (Parsers::List____listOf__string.parse(map['values']) unless map['values'].nil?)
        return data
      end
    end

    class Scoping
      def self.parse(map)
        data = Types::Scoping.new
        data.excludes = (Parsers::JobScopingBlock.parse(map['excludes']) unless map['excludes'].nil?)
        data.includes = (Parsers::JobScopingBlock.parse(map['includes']) unless map['includes'].nil?)
        return data
      end
    end

    class JobScopingBlock
      def self.parse(map)
        data = Types::JobScopingBlock.new
        data.and = (Parsers::List____listOfJobScopeTerm.parse(map['and']) unless map['and'].nil?)
        return data
      end
    end

    class List____listOfJobScopeTerm
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::JobScopeTerm.parse(value) unless value.nil?
        end
        data
      end
    end

    class JobScopeTerm
      def self.parse(map)
        data = Types::JobScopeTerm.new
        data.simple_scope_term = (Parsers::SimpleScopeTerm.parse(map['simpleScopeTerm']) unless map['simpleScopeTerm'].nil?)
        data.tag_scope_term = (Parsers::TagScopeTerm.parse(map['tagScopeTerm']) unless map['tagScopeTerm'].nil?)
        return data
      end
    end

    class TagScopeTerm
      def self.parse(map)
        data = Types::TagScopeTerm.new
        data.comparator = map['comparator']
        data.key = map['key']
        data.tag_values = (Parsers::List____listOfTagValuePair.parse(map['tagValues']) unless map['tagValues'].nil?)
        data.target = map['target']
        return data
      end
    end

    class List____listOfTagValuePair
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::TagValuePair.parse(value) unless value.nil?
        end
        data
      end
    end

    class TagValuePair
      def self.parse(map)
        data = Types::TagValuePair.new
        data.key = map['key']
        data.value = map['value']
        return data
      end
    end

    class SimpleScopeTerm
      def self.parse(map)
        data = Types::SimpleScopeTerm.new
        data.comparator = map['comparator']
        data.key = map['key']
        data.values = (Parsers::List____listOf__string.parse(map['values']) unless map['values'].nil?)
        return data
      end
    end

    class List____listOfS3BucketDefinitionForJob
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::S3BucketDefinitionForJob.parse(value) unless value.nil?
        end
        data
      end
    end

    class S3BucketDefinitionForJob
      def self.parse(map)
        data = Types::S3BucketDefinitionForJob.new
        data.account_id = map['accountId']
        data.buckets = (Parsers::List____listOf__string.parse(map['buckets']) unless map['buckets'].nil?)
        return data
      end
    end

    class LastRunErrorStatus
      def self.parse(map)
        data = Types::LastRunErrorStatus.new
        data.code = map['code']
        return data
      end
    end

    # Operation Parser for DescribeOrganizationConfiguration
    class DescribeOrganizationConfiguration
      def self.parse(http_resp)
        data = Types::DescribeOrganizationConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.auto_enable = map['autoEnable']
        data.max_account_limit_reached = map['maxAccountLimitReached']
        data
      end
    end

    # Operation Parser for DisableMacie
    class DisableMacie
      def self.parse(http_resp)
        data = Types::DisableMacieOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DisableOrganizationAdminAccount
    class DisableOrganizationAdminAccount
      def self.parse(http_resp)
        data = Types::DisableOrganizationAdminAccountOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DisassociateFromAdministratorAccount
    class DisassociateFromAdministratorAccount
      def self.parse(http_resp)
        data = Types::DisassociateFromAdministratorAccountOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DisassociateFromMasterAccount
    class DisassociateFromMasterAccount
      def self.parse(http_resp)
        data = Types::DisassociateFromMasterAccountOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DisassociateMember
    class DisassociateMember
      def self.parse(http_resp)
        data = Types::DisassociateMemberOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for EnableMacie
    class EnableMacie
      def self.parse(http_resp)
        data = Types::EnableMacieOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for EnableOrganizationAdminAccount
    class EnableOrganizationAdminAccount
      def self.parse(http_resp)
        data = Types::EnableOrganizationAdminAccountOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for GetAdministratorAccount
    class GetAdministratorAccount
      def self.parse(http_resp)
        data = Types::GetAdministratorAccountOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.administrator = (Parsers::Invitation.parse(map['administrator']) unless map['administrator'].nil?)
        data
      end
    end

    class Invitation
      def self.parse(map)
        data = Types::Invitation.new
        data.account_id = map['accountId']
        data.invitation_id = map['invitationId']
        data.invited_at = Time.parse(map['invitedAt']) if map['invitedAt']
        data.relationship_status = map['relationshipStatus']
        return data
      end
    end

    # Operation Parser for GetBucketStatistics
    class GetBucketStatistics
      def self.parse(http_resp)
        data = Types::GetBucketStatisticsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.bucket_count = map['bucketCount']
        data.bucket_count_by_effective_permission = (Parsers::BucketCountByEffectivePermission.parse(map['bucketCountByEffectivePermission']) unless map['bucketCountByEffectivePermission'].nil?)
        data.bucket_count_by_encryption_type = (Parsers::BucketCountByEncryptionType.parse(map['bucketCountByEncryptionType']) unless map['bucketCountByEncryptionType'].nil?)
        data.bucket_count_by_object_encryption_requirement = (Parsers::BucketCountPolicyAllowsUnencryptedObjectUploads.parse(map['bucketCountByObjectEncryptionRequirement']) unless map['bucketCountByObjectEncryptionRequirement'].nil?)
        data.bucket_count_by_shared_access_type = (Parsers::BucketCountBySharedAccessType.parse(map['bucketCountBySharedAccessType']) unless map['bucketCountBySharedAccessType'].nil?)
        data.classifiable_object_count = map['classifiableObjectCount']
        data.classifiable_size_in_bytes = map['classifiableSizeInBytes']
        data.last_updated = Time.parse(map['lastUpdated']) if map['lastUpdated']
        data.object_count = map['objectCount']
        data.size_in_bytes = map['sizeInBytes']
        data.size_in_bytes_compressed = map['sizeInBytesCompressed']
        data.unclassifiable_object_count = (Parsers::ObjectLevelStatistics.parse(map['unclassifiableObjectCount']) unless map['unclassifiableObjectCount'].nil?)
        data.unclassifiable_object_size_in_bytes = (Parsers::ObjectLevelStatistics.parse(map['unclassifiableObjectSizeInBytes']) unless map['unclassifiableObjectSizeInBytes'].nil?)
        data
      end
    end

    class BucketCountBySharedAccessType
      def self.parse(map)
        data = Types::BucketCountBySharedAccessType.new
        data.external = map['external']
        data.internal = map['internal']
        data.not_shared = map['notShared']
        data.unknown = map['unknown']
        return data
      end
    end

    class BucketCountPolicyAllowsUnencryptedObjectUploads
      def self.parse(map)
        data = Types::BucketCountPolicyAllowsUnencryptedObjectUploads.new
        data.allows_unencrypted_object_uploads = map['allowsUnencryptedObjectUploads']
        data.denies_unencrypted_object_uploads = map['deniesUnencryptedObjectUploads']
        data.unknown = map['unknown']
        return data
      end
    end

    class BucketCountByEncryptionType
      def self.parse(map)
        data = Types::BucketCountByEncryptionType.new
        data.kms_managed = map['kmsManaged']
        data.s3_managed = map['s3Managed']
        data.unencrypted = map['unencrypted']
        data.unknown = map['unknown']
        return data
      end
    end

    class BucketCountByEffectivePermission
      def self.parse(map)
        data = Types::BucketCountByEffectivePermission.new
        data.publicly_accessible = map['publiclyAccessible']
        data.publicly_readable = map['publiclyReadable']
        data.publicly_writable = map['publiclyWritable']
        data.unknown = map['unknown']
        return data
      end
    end

    # Operation Parser for GetClassificationExportConfiguration
    class GetClassificationExportConfiguration
      def self.parse(http_resp)
        data = Types::GetClassificationExportConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.configuration = (Parsers::ClassificationExportConfiguration.parse(map['configuration']) unless map['configuration'].nil?)
        data
      end
    end

    class ClassificationExportConfiguration
      def self.parse(map)
        data = Types::ClassificationExportConfiguration.new
        data.s3_destination = (Parsers::S3Destination.parse(map['s3Destination']) unless map['s3Destination'].nil?)
        return data
      end
    end

    class S3Destination
      def self.parse(map)
        data = Types::S3Destination.new
        data.bucket_name = map['bucketName']
        data.key_prefix = map['keyPrefix']
        data.kms_key_arn = map['kmsKeyArn']
        return data
      end
    end

    # Operation Parser for GetCustomDataIdentifier
    class GetCustomDataIdentifier
      def self.parse(http_resp)
        data = Types::GetCustomDataIdentifierOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.created_at = Time.parse(map['createdAt']) if map['createdAt']
        data.deleted = map['deleted']
        data.description = map['description']
        data.id = map['id']
        data.ignore_words = (Parsers::List____listOf__string.parse(map['ignoreWords']) unless map['ignoreWords'].nil?)
        data.keywords = (Parsers::List____listOf__string.parse(map['keywords']) unless map['keywords'].nil?)
        data.maximum_match_distance = map['maximumMatchDistance']
        data.name = map['name']
        data.regex = map['regex']
        data.severity_levels = (Parsers::SeverityLevelList.parse(map['severityLevels']) unless map['severityLevels'].nil?)
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    class SeverityLevelList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::SeverityLevel.parse(value) unless value.nil?
        end
        data
      end
    end

    class SeverityLevel
      def self.parse(map)
        data = Types::SeverityLevel.new
        data.occurrences_threshold = map['occurrencesThreshold']
        data.severity = map['severity']
        return data
      end
    end

    # Operation Parser for GetFindingStatistics
    class GetFindingStatistics
      def self.parse(http_resp)
        data = Types::GetFindingStatisticsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.counts_by_group = (Parsers::List____listOfGroupCount.parse(map['countsByGroup']) unless map['countsByGroup'].nil?)
        data
      end
    end

    class List____listOfGroupCount
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::GroupCount.parse(value) unless value.nil?
        end
        data
      end
    end

    class GroupCount
      def self.parse(map)
        data = Types::GroupCount.new
        data.count = map['count']
        data.group_key = map['groupKey']
        return data
      end
    end

    # Operation Parser for GetFindings
    class GetFindings
      def self.parse(http_resp)
        data = Types::GetFindingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.findings = (Parsers::List____listOfFinding.parse(map['findings']) unless map['findings'].nil?)
        data
      end
    end

    class List____listOfFinding
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Finding.parse(value) unless value.nil?
        end
        data
      end
    end

    class Finding
      def self.parse(map)
        data = Types::Finding.new
        data.account_id = map['accountId']
        data.archived = map['archived']
        data.category = map['category']
        data.classification_details = (Parsers::ClassificationDetails.parse(map['classificationDetails']) unless map['classificationDetails'].nil?)
        data.count = map['count']
        data.created_at = Time.parse(map['createdAt']) if map['createdAt']
        data.description = map['description']
        data.id = map['id']
        data.partition = map['partition']
        data.policy_details = (Parsers::PolicyDetails.parse(map['policyDetails']) unless map['policyDetails'].nil?)
        data.region = map['region']
        data.resources_affected = (Parsers::ResourcesAffected.parse(map['resourcesAffected']) unless map['resourcesAffected'].nil?)
        data.sample = map['sample']
        data.schema_version = map['schemaVersion']
        data.severity = (Parsers::Severity.parse(map['severity']) unless map['severity'].nil?)
        data.title = map['title']
        data.type = map['type']
        data.updated_at = Time.parse(map['updatedAt']) if map['updatedAt']
        return data
      end
    end

    class Severity
      def self.parse(map)
        data = Types::Severity.new
        data.description = map['description']
        data.score = map['score']
        return data
      end
    end

    class ResourcesAffected
      def self.parse(map)
        data = Types::ResourcesAffected.new
        data.s3_bucket = (Parsers::S3Bucket.parse(map['s3Bucket']) unless map['s3Bucket'].nil?)
        data.s3_object = (Parsers::S3Object.parse(map['s3Object']) unless map['s3Object'].nil?)
        return data
      end
    end

    class S3Object
      def self.parse(map)
        data = Types::S3Object.new
        data.bucket_arn = map['bucketArn']
        data.e_tag = map['eTag']
        data.extension = map['extension']
        data.key = map['key']
        data.last_modified = Time.parse(map['lastModified']) if map['lastModified']
        data.path = map['path']
        data.public_access = map['publicAccess']
        data.server_side_encryption = (Parsers::ServerSideEncryption.parse(map['serverSideEncryption']) unless map['serverSideEncryption'].nil?)
        data.size = map['size']
        data.storage_class = map['storageClass']
        data.tags = (Parsers::KeyValuePairList.parse(map['tags']) unless map['tags'].nil?)
        data.version_id = map['versionId']
        return data
      end
    end

    class KeyValuePairList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::KeyValuePair.parse(value) unless value.nil?
        end
        data
      end
    end

    class ServerSideEncryption
      def self.parse(map)
        data = Types::ServerSideEncryption.new
        data.encryption_type = map['encryptionType']
        data.kms_master_key_id = map['kmsMasterKeyId']
        return data
      end
    end

    class S3Bucket
      def self.parse(map)
        data = Types::S3Bucket.new
        data.allows_unencrypted_object_uploads = map['allowsUnencryptedObjectUploads']
        data.arn = map['arn']
        data.created_at = Time.parse(map['createdAt']) if map['createdAt']
        data.default_server_side_encryption = (Parsers::ServerSideEncryption.parse(map['defaultServerSideEncryption']) unless map['defaultServerSideEncryption'].nil?)
        data.name = map['name']
        data.owner = (Parsers::S3BucketOwner.parse(map['owner']) unless map['owner'].nil?)
        data.public_access = (Parsers::BucketPublicAccess.parse(map['publicAccess']) unless map['publicAccess'].nil?)
        data.tags = (Parsers::KeyValuePairList.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    class S3BucketOwner
      def self.parse(map)
        data = Types::S3BucketOwner.new
        data.display_name = map['displayName']
        data.id = map['id']
        return data
      end
    end

    class PolicyDetails
      def self.parse(map)
        data = Types::PolicyDetails.new
        data.action = (Parsers::FindingAction.parse(map['action']) unless map['action'].nil?)
        data.actor = (Parsers::FindingActor.parse(map['actor']) unless map['actor'].nil?)
        return data
      end
    end

    class FindingActor
      def self.parse(map)
        data = Types::FindingActor.new
        data.domain_details = (Parsers::DomainDetails.parse(map['domainDetails']) unless map['domainDetails'].nil?)
        data.ip_address_details = (Parsers::IpAddressDetails.parse(map['ipAddressDetails']) unless map['ipAddressDetails'].nil?)
        data.user_identity = (Parsers::UserIdentity.parse(map['userIdentity']) unless map['userIdentity'].nil?)
        return data
      end
    end

    class UserIdentity
      def self.parse(map)
        data = Types::UserIdentity.new
        data.assumed_role = (Parsers::AssumedRole.parse(map['assumedRole']) unless map['assumedRole'].nil?)
        data.aws_account = (Parsers::AwsAccount.parse(map['awsAccount']) unless map['awsAccount'].nil?)
        data.aws_service = (Parsers::AwsService.parse(map['awsService']) unless map['awsService'].nil?)
        data.federated_user = (Parsers::FederatedUser.parse(map['federatedUser']) unless map['federatedUser'].nil?)
        data.iam_user = (Parsers::IamUser.parse(map['iamUser']) unless map['iamUser'].nil?)
        data.root = (Parsers::UserIdentityRoot.parse(map['root']) unless map['root'].nil?)
        data.type = map['type']
        return data
      end
    end

    class UserIdentityRoot
      def self.parse(map)
        data = Types::UserIdentityRoot.new
        data.account_id = map['accountId']
        data.arn = map['arn']
        data.principal_id = map['principalId']
        return data
      end
    end

    class IamUser
      def self.parse(map)
        data = Types::IamUser.new
        data.account_id = map['accountId']
        data.arn = map['arn']
        data.principal_id = map['principalId']
        data.user_name = map['userName']
        return data
      end
    end

    class FederatedUser
      def self.parse(map)
        data = Types::FederatedUser.new
        data.access_key_id = map['accessKeyId']
        data.account_id = map['accountId']
        data.arn = map['arn']
        data.principal_id = map['principalId']
        data.session_context = (Parsers::SessionContext.parse(map['sessionContext']) unless map['sessionContext'].nil?)
        return data
      end
    end

    class SessionContext
      def self.parse(map)
        data = Types::SessionContext.new
        data.attributes = (Parsers::SessionContextAttributes.parse(map['attributes']) unless map['attributes'].nil?)
        data.session_issuer = (Parsers::SessionIssuer.parse(map['sessionIssuer']) unless map['sessionIssuer'].nil?)
        return data
      end
    end

    class SessionIssuer
      def self.parse(map)
        data = Types::SessionIssuer.new
        data.account_id = map['accountId']
        data.arn = map['arn']
        data.principal_id = map['principalId']
        data.type = map['type']
        data.user_name = map['userName']
        return data
      end
    end

    class SessionContextAttributes
      def self.parse(map)
        data = Types::SessionContextAttributes.new
        data.creation_date = Time.parse(map['creationDate']) if map['creationDate']
        data.mfa_authenticated = map['mfaAuthenticated']
        return data
      end
    end

    class AwsService
      def self.parse(map)
        data = Types::AwsService.new
        data.invoked_by = map['invokedBy']
        return data
      end
    end

    class AwsAccount
      def self.parse(map)
        data = Types::AwsAccount.new
        data.account_id = map['accountId']
        data.principal_id = map['principalId']
        return data
      end
    end

    class AssumedRole
      def self.parse(map)
        data = Types::AssumedRole.new
        data.access_key_id = map['accessKeyId']
        data.account_id = map['accountId']
        data.arn = map['arn']
        data.principal_id = map['principalId']
        data.session_context = (Parsers::SessionContext.parse(map['sessionContext']) unless map['sessionContext'].nil?)
        return data
      end
    end

    class IpAddressDetails
      def self.parse(map)
        data = Types::IpAddressDetails.new
        data.ip_address_v4 = map['ipAddressV4']
        data.ip_city = (Parsers::IpCity.parse(map['ipCity']) unless map['ipCity'].nil?)
        data.ip_country = (Parsers::IpCountry.parse(map['ipCountry']) unless map['ipCountry'].nil?)
        data.ip_geo_location = (Parsers::IpGeoLocation.parse(map['ipGeoLocation']) unless map['ipGeoLocation'].nil?)
        data.ip_owner = (Parsers::IpOwner.parse(map['ipOwner']) unless map['ipOwner'].nil?)
        return data
      end
    end

    class IpOwner
      def self.parse(map)
        data = Types::IpOwner.new
        data.asn = map['asn']
        data.asn_org = map['asnOrg']
        data.isp = map['isp']
        data.org = map['org']
        return data
      end
    end

    class IpGeoLocation
      def self.parse(map)
        data = Types::IpGeoLocation.new
        data.lat = Hearth::NumberHelper.deserialize(map['lat'])
        data.lon = Hearth::NumberHelper.deserialize(map['lon'])
        return data
      end
    end

    class IpCountry
      def self.parse(map)
        data = Types::IpCountry.new
        data.code = map['code']
        data.name = map['name']
        return data
      end
    end

    class IpCity
      def self.parse(map)
        data = Types::IpCity.new
        data.name = map['name']
        return data
      end
    end

    class DomainDetails
      def self.parse(map)
        data = Types::DomainDetails.new
        data.domain_name = map['domainName']
        return data
      end
    end

    class FindingAction
      def self.parse(map)
        data = Types::FindingAction.new
        data.action_type = map['actionType']
        data.api_call_details = (Parsers::ApiCallDetails.parse(map['apiCallDetails']) unless map['apiCallDetails'].nil?)
        return data
      end
    end

    class ApiCallDetails
      def self.parse(map)
        data = Types::ApiCallDetails.new
        data.api = map['api']
        data.api_service_name = map['apiServiceName']
        data.first_seen = Time.parse(map['firstSeen']) if map['firstSeen']
        data.last_seen = Time.parse(map['lastSeen']) if map['lastSeen']
        return data
      end
    end

    class ClassificationDetails
      def self.parse(map)
        data = Types::ClassificationDetails.new
        data.detailed_results_location = map['detailedResultsLocation']
        data.job_arn = map['jobArn']
        data.job_id = map['jobId']
        data.origin_type = map['originType']
        data.result = (Parsers::ClassificationResult.parse(map['result']) unless map['result'].nil?)
        return data
      end
    end

    class ClassificationResult
      def self.parse(map)
        data = Types::ClassificationResult.new
        data.additional_occurrences = map['additionalOccurrences']
        data.custom_data_identifiers = (Parsers::CustomDataIdentifiers.parse(map['customDataIdentifiers']) unless map['customDataIdentifiers'].nil?)
        data.mime_type = map['mimeType']
        data.sensitive_data = (Parsers::SensitiveData.parse(map['sensitiveData']) unless map['sensitiveData'].nil?)
        data.size_classified = map['sizeClassified']
        data.status = (Parsers::ClassificationResultStatus.parse(map['status']) unless map['status'].nil?)
        return data
      end
    end

    class ClassificationResultStatus
      def self.parse(map)
        data = Types::ClassificationResultStatus.new
        data.code = map['code']
        data.reason = map['reason']
        return data
      end
    end

    class SensitiveData
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::SensitiveDataItem.parse(value) unless value.nil?
        end
        data
      end
    end

    class SensitiveDataItem
      def self.parse(map)
        data = Types::SensitiveDataItem.new
        data.category = map['category']
        data.detections = (Parsers::DefaultDetections.parse(map['detections']) unless map['detections'].nil?)
        data.total_count = map['totalCount']
        return data
      end
    end

    class DefaultDetections
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::DefaultDetection.parse(value) unless value.nil?
        end
        data
      end
    end

    class DefaultDetection
      def self.parse(map)
        data = Types::DefaultDetection.new
        data.count = map['count']
        data.occurrences = (Parsers::Occurrences.parse(map['occurrences']) unless map['occurrences'].nil?)
        data.type = map['type']
        return data
      end
    end

    class Occurrences
      def self.parse(map)
        data = Types::Occurrences.new
        data.cells = (Parsers::Cells.parse(map['cells']) unless map['cells'].nil?)
        data.line_ranges = (Parsers::Ranges.parse(map['lineRanges']) unless map['lineRanges'].nil?)
        data.offset_ranges = (Parsers::Ranges.parse(map['offsetRanges']) unless map['offsetRanges'].nil?)
        data.pages = (Parsers::Pages.parse(map['pages']) unless map['pages'].nil?)
        data.records = (Parsers::Records.parse(map['records']) unless map['records'].nil?)
        return data
      end
    end

    class Records
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Record.parse(value) unless value.nil?
        end
        data
      end
    end

    class Record
      def self.parse(map)
        data = Types::Record.new
        data.json_path = map['jsonPath']
        data.record_index = map['recordIndex']
        return data
      end
    end

    class Pages
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Page.parse(value) unless value.nil?
        end
        data
      end
    end

    class Page
      def self.parse(map)
        data = Types::Page.new
        data.line_range = (Parsers::Range.parse(map['lineRange']) unless map['lineRange'].nil?)
        data.offset_range = (Parsers::Range.parse(map['offsetRange']) unless map['offsetRange'].nil?)
        data.page_number = map['pageNumber']
        return data
      end
    end

    class Range
      def self.parse(map)
        data = Types::Range.new
        data.end = map['end']
        data.start = map['start']
        data.start_column = map['startColumn']
        return data
      end
    end

    class Ranges
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Range.parse(value) unless value.nil?
        end
        data
      end
    end

    class Cells
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Cell.parse(value) unless value.nil?
        end
        data
      end
    end

    class Cell
      def self.parse(map)
        data = Types::Cell.new
        data.cell_reference = map['cellReference']
        data.column = map['column']
        data.column_name = map['columnName']
        data.row = map['row']
        return data
      end
    end

    class CustomDataIdentifiers
      def self.parse(map)
        data = Types::CustomDataIdentifiers.new
        data.detections = (Parsers::CustomDetections.parse(map['detections']) unless map['detections'].nil?)
        data.total_count = map['totalCount']
        return data
      end
    end

    class CustomDetections
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::CustomDetection.parse(value) unless value.nil?
        end
        data
      end
    end

    class CustomDetection
      def self.parse(map)
        data = Types::CustomDetection.new
        data.arn = map['arn']
        data.count = map['count']
        data.name = map['name']
        data.occurrences = (Parsers::Occurrences.parse(map['occurrences']) unless map['occurrences'].nil?)
        return data
      end
    end

    # Operation Parser for GetFindingsFilter
    class GetFindingsFilter
      def self.parse(http_resp)
        data = Types::GetFindingsFilterOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.action = map['action']
        data.arn = map['arn']
        data.description = map['description']
        data.finding_criteria = (Parsers::FindingCriteria.parse(map['findingCriteria']) unless map['findingCriteria'].nil?)
        data.id = map['id']
        data.name = map['name']
        data.position = map['position']
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    class FindingCriteria
      def self.parse(map)
        data = Types::FindingCriteria.new
        data.criterion = (Parsers::Criterion.parse(map['criterion']) unless map['criterion'].nil?)
        return data
      end
    end

    class Criterion
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::CriterionAdditionalProperties.parse(value) unless value.nil?
        end
        data
      end
    end

    class CriterionAdditionalProperties
      def self.parse(map)
        data = Types::CriterionAdditionalProperties.new
        data.eq = (Parsers::List____listOf__string.parse(map['eq']) unless map['eq'].nil?)
        data.eq_exact_match = (Parsers::List____listOf__string.parse(map['eqExactMatch']) unless map['eqExactMatch'].nil?)
        data.gt = map['gt']
        data.gte = map['gte']
        data.lt = map['lt']
        data.lte = map['lte']
        data.neq = (Parsers::List____listOf__string.parse(map['neq']) unless map['neq'].nil?)
        return data
      end
    end

    # Operation Parser for GetFindingsPublicationConfiguration
    class GetFindingsPublicationConfiguration
      def self.parse(http_resp)
        data = Types::GetFindingsPublicationConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.security_hub_configuration = (Parsers::SecurityHubConfiguration.parse(map['securityHubConfiguration']) unless map['securityHubConfiguration'].nil?)
        data
      end
    end

    class SecurityHubConfiguration
      def self.parse(map)
        data = Types::SecurityHubConfiguration.new
        data.publish_classification_findings = map['publishClassificationFindings']
        data.publish_policy_findings = map['publishPolicyFindings']
        return data
      end
    end

    # Operation Parser for GetInvitationsCount
    class GetInvitationsCount
      def self.parse(http_resp)
        data = Types::GetInvitationsCountOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.invitations_count = map['invitationsCount']
        data
      end
    end

    # Operation Parser for GetMacieSession
    class GetMacieSession
      def self.parse(http_resp)
        data = Types::GetMacieSessionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.created_at = Time.parse(map['createdAt']) if map['createdAt']
        data.finding_publishing_frequency = map['findingPublishingFrequency']
        data.service_role = map['serviceRole']
        data.status = map['status']
        data.updated_at = Time.parse(map['updatedAt']) if map['updatedAt']
        data
      end
    end

    # Operation Parser for GetMasterAccount
    class GetMasterAccount
      def self.parse(http_resp)
        data = Types::GetMasterAccountOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.master = (Parsers::Invitation.parse(map['master']) unless map['master'].nil?)
        data
      end
    end

    # Operation Parser for GetMember
    class GetMember
      def self.parse(http_resp)
        data = Types::GetMemberOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.account_id = map['accountId']
        data.administrator_account_id = map['administratorAccountId']
        data.arn = map['arn']
        data.email = map['email']
        data.invited_at = Time.parse(map['invitedAt']) if map['invitedAt']
        data.master_account_id = map['masterAccountId']
        data.relationship_status = map['relationshipStatus']
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        data.updated_at = Time.parse(map['updatedAt']) if map['updatedAt']
        data
      end
    end

    # Operation Parser for GetUsageStatistics
    class GetUsageStatistics
      def self.parse(http_resp)
        data = Types::GetUsageStatisticsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['nextToken']
        data.records = (Parsers::List____listOfUsageRecord.parse(map['records']) unless map['records'].nil?)
        data.time_range = map['timeRange']
        data
      end
    end

    class List____listOfUsageRecord
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::UsageRecord.parse(value) unless value.nil?
        end
        data
      end
    end

    class UsageRecord
      def self.parse(map)
        data = Types::UsageRecord.new
        data.account_id = map['accountId']
        data.free_trial_start_date = Time.parse(map['freeTrialStartDate']) if map['freeTrialStartDate']
        data.usage = (Parsers::List____listOfUsageByAccount.parse(map['usage']) unless map['usage'].nil?)
        return data
      end
    end

    class List____listOfUsageByAccount
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::UsageByAccount.parse(value) unless value.nil?
        end
        data
      end
    end

    class UsageByAccount
      def self.parse(map)
        data = Types::UsageByAccount.new
        data.currency = map['currency']
        data.estimated_cost = map['estimatedCost']
        data.service_limit = (Parsers::ServiceLimit.parse(map['serviceLimit']) unless map['serviceLimit'].nil?)
        data.type = map['type']
        return data
      end
    end

    class ServiceLimit
      def self.parse(map)
        data = Types::ServiceLimit.new
        data.is_service_limited = map['isServiceLimited']
        data.unit = map['unit']
        data.value = map['value']
        return data
      end
    end

    # Operation Parser for GetUsageTotals
    class GetUsageTotals
      def self.parse(http_resp)
        data = Types::GetUsageTotalsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.time_range = map['timeRange']
        data.usage_totals = (Parsers::List____listOfUsageTotal.parse(map['usageTotals']) unless map['usageTotals'].nil?)
        data
      end
    end

    class List____listOfUsageTotal
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::UsageTotal.parse(value) unless value.nil?
        end
        data
      end
    end

    class UsageTotal
      def self.parse(map)
        data = Types::UsageTotal.new
        data.currency = map['currency']
        data.estimated_cost = map['estimatedCost']
        data.type = map['type']
        return data
      end
    end

    # Operation Parser for ListClassificationJobs
    class ListClassificationJobs
      def self.parse(http_resp)
        data = Types::ListClassificationJobsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.items = (Parsers::List____listOfJobSummary.parse(map['items']) unless map['items'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class List____listOfJobSummary
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::JobSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class JobSummary
      def self.parse(map)
        data = Types::JobSummary.new
        data.bucket_definitions = (Parsers::List____listOfS3BucketDefinitionForJob.parse(map['bucketDefinitions']) unless map['bucketDefinitions'].nil?)
        data.created_at = Time.parse(map['createdAt']) if map['createdAt']
        data.job_id = map['jobId']
        data.job_status = map['jobStatus']
        data.job_type = map['jobType']
        data.last_run_error_status = (Parsers::LastRunErrorStatus.parse(map['lastRunErrorStatus']) unless map['lastRunErrorStatus'].nil?)
        data.name = map['name']
        data.user_paused_details = (Parsers::UserPausedDetails.parse(map['userPausedDetails']) unless map['userPausedDetails'].nil?)
        data.bucket_criteria = (Parsers::S3BucketCriteriaForJob.parse(map['bucketCriteria']) unless map['bucketCriteria'].nil?)
        return data
      end
    end

    # Operation Parser for ListCustomDataIdentifiers
    class ListCustomDataIdentifiers
      def self.parse(http_resp)
        data = Types::ListCustomDataIdentifiersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.items = (Parsers::List____listOfCustomDataIdentifierSummary.parse(map['items']) unless map['items'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class List____listOfCustomDataIdentifierSummary
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::CustomDataIdentifierSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class CustomDataIdentifierSummary
      def self.parse(map)
        data = Types::CustomDataIdentifierSummary.new
        data.arn = map['arn']
        data.created_at = Time.parse(map['createdAt']) if map['createdAt']
        data.description = map['description']
        data.id = map['id']
        data.name = map['name']
        return data
      end
    end

    # Operation Parser for ListFindings
    class ListFindings
      def self.parse(http_resp)
        data = Types::ListFindingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.finding_ids = (Parsers::List____listOf__string.parse(map['findingIds']) unless map['findingIds'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    # Operation Parser for ListFindingsFilters
    class ListFindingsFilters
      def self.parse(http_resp)
        data = Types::ListFindingsFiltersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.findings_filter_list_items = (Parsers::List____listOfFindingsFilterListItem.parse(map['findingsFilterListItems']) unless map['findingsFilterListItems'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class List____listOfFindingsFilterListItem
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::FindingsFilterListItem.parse(value) unless value.nil?
        end
        data
      end
    end

    class FindingsFilterListItem
      def self.parse(map)
        data = Types::FindingsFilterListItem.new
        data.action = map['action']
        data.arn = map['arn']
        data.id = map['id']
        data.name = map['name']
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    # Operation Parser for ListInvitations
    class ListInvitations
      def self.parse(http_resp)
        data = Types::ListInvitationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.invitations = (Parsers::List____listOfInvitation.parse(map['invitations']) unless map['invitations'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class List____listOfInvitation
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Invitation.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListManagedDataIdentifiers
    class ListManagedDataIdentifiers
      def self.parse(http_resp)
        data = Types::ListManagedDataIdentifiersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.items = (Parsers::List____listOfManagedDataIdentifierSummary.parse(map['items']) unless map['items'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class List____listOfManagedDataIdentifierSummary
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ManagedDataIdentifierSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ManagedDataIdentifierSummary
      def self.parse(map)
        data = Types::ManagedDataIdentifierSummary.new
        data.category = map['category']
        data.id = map['id']
        return data
      end
    end

    # Operation Parser for ListMembers
    class ListMembers
      def self.parse(http_resp)
        data = Types::ListMembersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.members = (Parsers::List____listOfMember.parse(map['members']) unless map['members'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class List____listOfMember
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Member.parse(value) unless value.nil?
        end
        data
      end
    end

    class Member
      def self.parse(map)
        data = Types::Member.new
        data.account_id = map['accountId']
        data.administrator_account_id = map['administratorAccountId']
        data.arn = map['arn']
        data.email = map['email']
        data.invited_at = Time.parse(map['invitedAt']) if map['invitedAt']
        data.master_account_id = map['masterAccountId']
        data.relationship_status = map['relationshipStatus']
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        data.updated_at = Time.parse(map['updatedAt']) if map['updatedAt']
        return data
      end
    end

    # Operation Parser for ListOrganizationAdminAccounts
    class ListOrganizationAdminAccounts
      def self.parse(http_resp)
        data = Types::ListOrganizationAdminAccountsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.admin_accounts = (Parsers::List____listOfAdminAccount.parse(map['adminAccounts']) unless map['adminAccounts'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class List____listOfAdminAccount
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AdminAccount.parse(value) unless value.nil?
        end
        data
      end
    end

    class AdminAccount
      def self.parse(map)
        data = Types::AdminAccount.new
        data.account_id = map['accountId']
        data.status = map['status']
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

    # Operation Parser for PutClassificationExportConfiguration
    class PutClassificationExportConfiguration
      def self.parse(http_resp)
        data = Types::PutClassificationExportConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.configuration = (Parsers::ClassificationExportConfiguration.parse(map['configuration']) unless map['configuration'].nil?)
        data
      end
    end

    # Operation Parser for PutFindingsPublicationConfiguration
    class PutFindingsPublicationConfiguration
      def self.parse(http_resp)
        data = Types::PutFindingsPublicationConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for SearchResources
    class SearchResources
      def self.parse(http_resp)
        data = Types::SearchResourcesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.matching_resources = (Parsers::List____listOfMatchingResource.parse(map['matchingResources']) unless map['matchingResources'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class List____listOfMatchingResource
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::MatchingResource.parse(value) unless value.nil?
        end
        data
      end
    end

    class MatchingResource
      def self.parse(map)
        data = Types::MatchingResource.new
        data.matching_bucket = (Parsers::MatchingBucket.parse(map['matchingBucket']) unless map['matchingBucket'].nil?)
        return data
      end
    end

    class MatchingBucket
      def self.parse(map)
        data = Types::MatchingBucket.new
        data.account_id = map['accountId']
        data.bucket_name = map['bucketName']
        data.classifiable_object_count = map['classifiableObjectCount']
        data.classifiable_size_in_bytes = map['classifiableSizeInBytes']
        data.error_code = map['errorCode']
        data.error_message = map['errorMessage']
        data.job_details = (Parsers::JobDetails.parse(map['jobDetails']) unless map['jobDetails'].nil?)
        data.object_count = map['objectCount']
        data.object_count_by_encryption_type = (Parsers::ObjectCountByEncryptionType.parse(map['objectCountByEncryptionType']) unless map['objectCountByEncryptionType'].nil?)
        data.size_in_bytes = map['sizeInBytes']
        data.size_in_bytes_compressed = map['sizeInBytesCompressed']
        data.unclassifiable_object_count = (Parsers::ObjectLevelStatistics.parse(map['unclassifiableObjectCount']) unless map['unclassifiableObjectCount'].nil?)
        data.unclassifiable_object_size_in_bytes = (Parsers::ObjectLevelStatistics.parse(map['unclassifiableObjectSizeInBytes']) unless map['unclassifiableObjectSizeInBytes'].nil?)
        return data
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

    # Operation Parser for TestCustomDataIdentifier
    class TestCustomDataIdentifier
      def self.parse(http_resp)
        data = Types::TestCustomDataIdentifierOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.match_count = map['matchCount']
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

    # Operation Parser for UpdateClassificationJob
    class UpdateClassificationJob
      def self.parse(http_resp)
        data = Types::UpdateClassificationJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateFindingsFilter
    class UpdateFindingsFilter
      def self.parse(http_resp)
        data = Types::UpdateFindingsFilterOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.id = map['id']
        data
      end
    end

    # Operation Parser for UpdateMacieSession
    class UpdateMacieSession
      def self.parse(http_resp)
        data = Types::UpdateMacieSessionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateMemberSession
    class UpdateMemberSession
      def self.parse(http_resp)
        data = Types::UpdateMemberSessionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateOrganizationConfiguration
    class UpdateOrganizationConfiguration
      def self.parse(http_resp)
        data = Types::UpdateOrganizationConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end
  end
end
