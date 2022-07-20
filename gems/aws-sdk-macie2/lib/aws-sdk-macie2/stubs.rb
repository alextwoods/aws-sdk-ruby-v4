# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::Macie2
  module Stubs

    # Operation Stubber for AcceptInvitation
    class AcceptInvitation
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for BatchGetCustomDataIdentifiers
    class BatchGetCustomDataIdentifiers
      def self.default(visited=[])
        {
          custom_data_identifiers: List____listOfBatchGetCustomDataIdentifierSummary.default(visited),
          not_found_identifier_ids: List____listOf__string.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['customDataIdentifiers'] = List____listOfBatchGetCustomDataIdentifierSummary.stub(stub[:custom_data_identifiers]) unless stub[:custom_data_identifiers].nil?
        data['notFoundIdentifierIds'] = List____listOf__string.stub(stub[:not_found_identifier_ids]) unless stub[:not_found_identifier_ids].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOf__string
    class List____listOf__string
      def self.default(visited=[])
        return nil if visited.include?('List____listOf__string')
        visited = visited + ['List____listOf__string']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for __listOfBatchGetCustomDataIdentifierSummary
    class List____listOfBatchGetCustomDataIdentifierSummary
      def self.default(visited=[])
        return nil if visited.include?('List____listOfBatchGetCustomDataIdentifierSummary')
        visited = visited + ['List____listOfBatchGetCustomDataIdentifierSummary']
        [
          BatchGetCustomDataIdentifierSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BatchGetCustomDataIdentifierSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchGetCustomDataIdentifierSummary
    class BatchGetCustomDataIdentifierSummary
      def self.default(visited=[])
        return nil if visited.include?('BatchGetCustomDataIdentifierSummary')
        visited = visited + ['BatchGetCustomDataIdentifierSummary']
        {
          arn: 'arn',
          created_at: Time.now,
          deleted: false,
          description: 'description',
          id: 'id',
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchGetCustomDataIdentifierSummary.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['createdAt'] = Hearth::TimeHelper.to_date_time(stub[:created_at]) unless stub[:created_at].nil?
        data['deleted'] = stub[:deleted] unless stub[:deleted].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Operation Stubber for CreateClassificationJob
    class CreateClassificationJob
      def self.default(visited=[])
        {
          job_arn: 'job_arn',
          job_id: 'job_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['jobArn'] = stub[:job_arn] unless stub[:job_arn].nil?
        data['jobId'] = stub[:job_id] unless stub[:job_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateCustomDataIdentifier
    class CreateCustomDataIdentifier
      def self.default(visited=[])
        {
          custom_data_identifier_id: 'custom_data_identifier_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['customDataIdentifierId'] = stub[:custom_data_identifier_id] unless stub[:custom_data_identifier_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateFindingsFilter
    class CreateFindingsFilter
      def self.default(visited=[])
        {
          arn: 'arn',
          id: 'id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateInvitations
    class CreateInvitations
      def self.default(visited=[])
        {
          unprocessed_accounts: List____listOfUnprocessedAccount.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['unprocessedAccounts'] = List____listOfUnprocessedAccount.stub(stub[:unprocessed_accounts]) unless stub[:unprocessed_accounts].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfUnprocessedAccount
    class List____listOfUnprocessedAccount
      def self.default(visited=[])
        return nil if visited.include?('List____listOfUnprocessedAccount')
        visited = visited + ['List____listOfUnprocessedAccount']
        [
          UnprocessedAccount.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << UnprocessedAccount.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for UnprocessedAccount
    class UnprocessedAccount
      def self.default(visited=[])
        return nil if visited.include?('UnprocessedAccount')
        visited = visited + ['UnprocessedAccount']
        {
          account_id: 'account_id',
          error_code: 'error_code',
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::UnprocessedAccount.new
        data = {}
        data['accountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['errorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['errorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # Operation Stubber for CreateMember
    class CreateMember
      def self.default(visited=[])
        {
          arn: 'arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateSampleFindings
    class CreateSampleFindings
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeclineInvitations
    class DeclineInvitations
      def self.default(visited=[])
        {
          unprocessed_accounts: List____listOfUnprocessedAccount.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['unprocessedAccounts'] = List____listOfUnprocessedAccount.stub(stub[:unprocessed_accounts]) unless stub[:unprocessed_accounts].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteCustomDataIdentifier
    class DeleteCustomDataIdentifier
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteFindingsFilter
    class DeleteFindingsFilter
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteInvitations
    class DeleteInvitations
      def self.default(visited=[])
        {
          unprocessed_accounts: List____listOfUnprocessedAccount.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['unprocessedAccounts'] = List____listOfUnprocessedAccount.stub(stub[:unprocessed_accounts]) unless stub[:unprocessed_accounts].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteMember
    class DeleteMember
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeBuckets
    class DescribeBuckets
      def self.default(visited=[])
        {
          buckets: List____listOfBucketMetadata.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['buckets'] = List____listOfBucketMetadata.stub(stub[:buckets]) unless stub[:buckets].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfBucketMetadata
    class List____listOfBucketMetadata
      def self.default(visited=[])
        return nil if visited.include?('List____listOfBucketMetadata')
        visited = visited + ['List____listOfBucketMetadata']
        [
          BucketMetadata.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BucketMetadata.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BucketMetadata
    class BucketMetadata
      def self.default(visited=[])
        return nil if visited.include?('BucketMetadata')
        visited = visited + ['BucketMetadata']
        {
          account_id: 'account_id',
          allows_unencrypted_object_uploads: 'allows_unencrypted_object_uploads',
          bucket_arn: 'bucket_arn',
          bucket_created_at: Time.now,
          bucket_name: 'bucket_name',
          classifiable_object_count: 1,
          classifiable_size_in_bytes: 1,
          error_code: 'error_code',
          error_message: 'error_message',
          job_details: JobDetails.default(visited),
          last_updated: Time.now,
          object_count: 1,
          object_count_by_encryption_type: ObjectCountByEncryptionType.default(visited),
          public_access: BucketPublicAccess.default(visited),
          region: 'region',
          replication_details: ReplicationDetails.default(visited),
          server_side_encryption: BucketServerSideEncryption.default(visited),
          shared_access: 'shared_access',
          size_in_bytes: 1,
          size_in_bytes_compressed: 1,
          tags: List____listOfKeyValuePair.default(visited),
          unclassifiable_object_count: ObjectLevelStatistics.default(visited),
          unclassifiable_object_size_in_bytes: ObjectLevelStatistics.default(visited),
          versioning: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::BucketMetadata.new
        data = {}
        data['accountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['allowsUnencryptedObjectUploads'] = stub[:allows_unencrypted_object_uploads] unless stub[:allows_unencrypted_object_uploads].nil?
        data['bucketArn'] = stub[:bucket_arn] unless stub[:bucket_arn].nil?
        data['bucketCreatedAt'] = Hearth::TimeHelper.to_date_time(stub[:bucket_created_at]) unless stub[:bucket_created_at].nil?
        data['bucketName'] = stub[:bucket_name] unless stub[:bucket_name].nil?
        data['classifiableObjectCount'] = stub[:classifiable_object_count] unless stub[:classifiable_object_count].nil?
        data['classifiableSizeInBytes'] = stub[:classifiable_size_in_bytes] unless stub[:classifiable_size_in_bytes].nil?
        data['errorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['errorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data['jobDetails'] = JobDetails.stub(stub[:job_details]) unless stub[:job_details].nil?
        data['lastUpdated'] = Hearth::TimeHelper.to_date_time(stub[:last_updated]) unless stub[:last_updated].nil?
        data['objectCount'] = stub[:object_count] unless stub[:object_count].nil?
        data['objectCountByEncryptionType'] = ObjectCountByEncryptionType.stub(stub[:object_count_by_encryption_type]) unless stub[:object_count_by_encryption_type].nil?
        data['publicAccess'] = BucketPublicAccess.stub(stub[:public_access]) unless stub[:public_access].nil?
        data['region'] = stub[:region] unless stub[:region].nil?
        data['replicationDetails'] = ReplicationDetails.stub(stub[:replication_details]) unless stub[:replication_details].nil?
        data['serverSideEncryption'] = BucketServerSideEncryption.stub(stub[:server_side_encryption]) unless stub[:server_side_encryption].nil?
        data['sharedAccess'] = stub[:shared_access] unless stub[:shared_access].nil?
        data['sizeInBytes'] = stub[:size_in_bytes] unless stub[:size_in_bytes].nil?
        data['sizeInBytesCompressed'] = stub[:size_in_bytes_compressed] unless stub[:size_in_bytes_compressed].nil?
        data['tags'] = List____listOfKeyValuePair.stub(stub[:tags]) unless stub[:tags].nil?
        data['unclassifiableObjectCount'] = ObjectLevelStatistics.stub(stub[:unclassifiable_object_count]) unless stub[:unclassifiable_object_count].nil?
        data['unclassifiableObjectSizeInBytes'] = ObjectLevelStatistics.stub(stub[:unclassifiable_object_size_in_bytes]) unless stub[:unclassifiable_object_size_in_bytes].nil?
        data['versioning'] = stub[:versioning] unless stub[:versioning].nil?
        data
      end
    end

    # Structure Stubber for ObjectLevelStatistics
    class ObjectLevelStatistics
      def self.default(visited=[])
        return nil if visited.include?('ObjectLevelStatistics')
        visited = visited + ['ObjectLevelStatistics']
        {
          file_type: 1,
          storage_class: 1,
          total: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ObjectLevelStatistics.new
        data = {}
        data['fileType'] = stub[:file_type] unless stub[:file_type].nil?
        data['storageClass'] = stub[:storage_class] unless stub[:storage_class].nil?
        data['total'] = stub[:total] unless stub[:total].nil?
        data
      end
    end

    # List Stubber for __listOfKeyValuePair
    class List____listOfKeyValuePair
      def self.default(visited=[])
        return nil if visited.include?('List____listOfKeyValuePair')
        visited = visited + ['List____listOfKeyValuePair']
        [
          KeyValuePair.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << KeyValuePair.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for KeyValuePair
    class KeyValuePair
      def self.default(visited=[])
        return nil if visited.include?('KeyValuePair')
        visited = visited + ['KeyValuePair']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::KeyValuePair.new
        data = {}
        data['key'] = stub[:key] unless stub[:key].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Structure Stubber for BucketServerSideEncryption
    class BucketServerSideEncryption
      def self.default(visited=[])
        return nil if visited.include?('BucketServerSideEncryption')
        visited = visited + ['BucketServerSideEncryption']
        {
          kms_master_key_id: 'kms_master_key_id',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::BucketServerSideEncryption.new
        data = {}
        data['kmsMasterKeyId'] = stub[:kms_master_key_id] unless stub[:kms_master_key_id].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Structure Stubber for ReplicationDetails
    class ReplicationDetails
      def self.default(visited=[])
        return nil if visited.include?('ReplicationDetails')
        visited = visited + ['ReplicationDetails']
        {
          replicated: false,
          replicated_externally: false,
          replication_accounts: List____listOf__string.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ReplicationDetails.new
        data = {}
        data['replicated'] = stub[:replicated] unless stub[:replicated].nil?
        data['replicatedExternally'] = stub[:replicated_externally] unless stub[:replicated_externally].nil?
        data['replicationAccounts'] = List____listOf__string.stub(stub[:replication_accounts]) unless stub[:replication_accounts].nil?
        data
      end
    end

    # Structure Stubber for BucketPublicAccess
    class BucketPublicAccess
      def self.default(visited=[])
        return nil if visited.include?('BucketPublicAccess')
        visited = visited + ['BucketPublicAccess']
        {
          effective_permission: 'effective_permission',
          permission_configuration: BucketPermissionConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BucketPublicAccess.new
        data = {}
        data['effectivePermission'] = stub[:effective_permission] unless stub[:effective_permission].nil?
        data['permissionConfiguration'] = BucketPermissionConfiguration.stub(stub[:permission_configuration]) unless stub[:permission_configuration].nil?
        data
      end
    end

    # Structure Stubber for BucketPermissionConfiguration
    class BucketPermissionConfiguration
      def self.default(visited=[])
        return nil if visited.include?('BucketPermissionConfiguration')
        visited = visited + ['BucketPermissionConfiguration']
        {
          account_level_permissions: AccountLevelPermissions.default(visited),
          bucket_level_permissions: BucketLevelPermissions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BucketPermissionConfiguration.new
        data = {}
        data['accountLevelPermissions'] = AccountLevelPermissions.stub(stub[:account_level_permissions]) unless stub[:account_level_permissions].nil?
        data['bucketLevelPermissions'] = BucketLevelPermissions.stub(stub[:bucket_level_permissions]) unless stub[:bucket_level_permissions].nil?
        data
      end
    end

    # Structure Stubber for BucketLevelPermissions
    class BucketLevelPermissions
      def self.default(visited=[])
        return nil if visited.include?('BucketLevelPermissions')
        visited = visited + ['BucketLevelPermissions']
        {
          access_control_list: AccessControlList.default(visited),
          block_public_access: BlockPublicAccess.default(visited),
          bucket_policy: BucketPolicy.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BucketLevelPermissions.new
        data = {}
        data['accessControlList'] = AccessControlList.stub(stub[:access_control_list]) unless stub[:access_control_list].nil?
        data['blockPublicAccess'] = BlockPublicAccess.stub(stub[:block_public_access]) unless stub[:block_public_access].nil?
        data['bucketPolicy'] = BucketPolicy.stub(stub[:bucket_policy]) unless stub[:bucket_policy].nil?
        data
      end
    end

    # Structure Stubber for BucketPolicy
    class BucketPolicy
      def self.default(visited=[])
        return nil if visited.include?('BucketPolicy')
        visited = visited + ['BucketPolicy']
        {
          allows_public_read_access: false,
          allows_public_write_access: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::BucketPolicy.new
        data = {}
        data['allowsPublicReadAccess'] = stub[:allows_public_read_access] unless stub[:allows_public_read_access].nil?
        data['allowsPublicWriteAccess'] = stub[:allows_public_write_access] unless stub[:allows_public_write_access].nil?
        data
      end
    end

    # Structure Stubber for BlockPublicAccess
    class BlockPublicAccess
      def self.default(visited=[])
        return nil if visited.include?('BlockPublicAccess')
        visited = visited + ['BlockPublicAccess']
        {
          block_public_acls: false,
          block_public_policy: false,
          ignore_public_acls: false,
          restrict_public_buckets: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::BlockPublicAccess.new
        data = {}
        data['blockPublicAcls'] = stub[:block_public_acls] unless stub[:block_public_acls].nil?
        data['blockPublicPolicy'] = stub[:block_public_policy] unless stub[:block_public_policy].nil?
        data['ignorePublicAcls'] = stub[:ignore_public_acls] unless stub[:ignore_public_acls].nil?
        data['restrictPublicBuckets'] = stub[:restrict_public_buckets] unless stub[:restrict_public_buckets].nil?
        data
      end
    end

    # Structure Stubber for AccessControlList
    class AccessControlList
      def self.default(visited=[])
        return nil if visited.include?('AccessControlList')
        visited = visited + ['AccessControlList']
        {
          allows_public_read_access: false,
          allows_public_write_access: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::AccessControlList.new
        data = {}
        data['allowsPublicReadAccess'] = stub[:allows_public_read_access] unless stub[:allows_public_read_access].nil?
        data['allowsPublicWriteAccess'] = stub[:allows_public_write_access] unless stub[:allows_public_write_access].nil?
        data
      end
    end

    # Structure Stubber for AccountLevelPermissions
    class AccountLevelPermissions
      def self.default(visited=[])
        return nil if visited.include?('AccountLevelPermissions')
        visited = visited + ['AccountLevelPermissions']
        {
          block_public_access: BlockPublicAccess.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AccountLevelPermissions.new
        data = {}
        data['blockPublicAccess'] = BlockPublicAccess.stub(stub[:block_public_access]) unless stub[:block_public_access].nil?
        data
      end
    end

    # Structure Stubber for ObjectCountByEncryptionType
    class ObjectCountByEncryptionType
      def self.default(visited=[])
        return nil if visited.include?('ObjectCountByEncryptionType')
        visited = visited + ['ObjectCountByEncryptionType']
        {
          customer_managed: 1,
          kms_managed: 1,
          s3_managed: 1,
          unencrypted: 1,
          unknown: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ObjectCountByEncryptionType.new
        data = {}
        data['customerManaged'] = stub[:customer_managed] unless stub[:customer_managed].nil?
        data['kmsManaged'] = stub[:kms_managed] unless stub[:kms_managed].nil?
        data['s3Managed'] = stub[:s3_managed] unless stub[:s3_managed].nil?
        data['unencrypted'] = stub[:unencrypted] unless stub[:unencrypted].nil?
        data['unknown'] = stub[:unknown] unless stub[:unknown].nil?
        data
      end
    end

    # Structure Stubber for JobDetails
    class JobDetails
      def self.default(visited=[])
        return nil if visited.include?('JobDetails')
        visited = visited + ['JobDetails']
        {
          is_defined_in_job: 'is_defined_in_job',
          is_monitored_by_job: 'is_monitored_by_job',
          last_job_id: 'last_job_id',
          last_job_run_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::JobDetails.new
        data = {}
        data['isDefinedInJob'] = stub[:is_defined_in_job] unless stub[:is_defined_in_job].nil?
        data['isMonitoredByJob'] = stub[:is_monitored_by_job] unless stub[:is_monitored_by_job].nil?
        data['lastJobId'] = stub[:last_job_id] unless stub[:last_job_id].nil?
        data['lastJobRunTime'] = Hearth::TimeHelper.to_date_time(stub[:last_job_run_time]) unless stub[:last_job_run_time].nil?
        data
      end
    end

    # Operation Stubber for DescribeClassificationJob
    class DescribeClassificationJob
      def self.default(visited=[])
        {
          client_token: 'client_token',
          created_at: Time.now,
          custom_data_identifier_ids: List____listOf__string.default(visited),
          description: 'description',
          initial_run: false,
          job_arn: 'job_arn',
          job_id: 'job_id',
          job_status: 'job_status',
          job_type: 'job_type',
          last_run_error_status: LastRunErrorStatus.default(visited),
          last_run_time: Time.now,
          managed_data_identifier_ids: List____listOf__string.default(visited),
          managed_data_identifier_selector: 'managed_data_identifier_selector',
          name: 'name',
          s3_job_definition: S3JobDefinition.default(visited),
          sampling_percentage: 1,
          schedule_frequency: JobScheduleFrequency.default(visited),
          statistics: Statistics.default(visited),
          tags: TagMap.default(visited),
          user_paused_details: UserPausedDetails.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['clientToken'] = stub[:client_token] unless stub[:client_token].nil?
        data['createdAt'] = Hearth::TimeHelper.to_date_time(stub[:created_at]) unless stub[:created_at].nil?
        data['customDataIdentifierIds'] = List____listOf__string.stub(stub[:custom_data_identifier_ids]) unless stub[:custom_data_identifier_ids].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['initialRun'] = stub[:initial_run] unless stub[:initial_run].nil?
        data['jobArn'] = stub[:job_arn] unless stub[:job_arn].nil?
        data['jobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['jobStatus'] = stub[:job_status] unless stub[:job_status].nil?
        data['jobType'] = stub[:job_type] unless stub[:job_type].nil?
        data['lastRunErrorStatus'] = LastRunErrorStatus.stub(stub[:last_run_error_status]) unless stub[:last_run_error_status].nil?
        data['lastRunTime'] = Hearth::TimeHelper.to_date_time(stub[:last_run_time]) unless stub[:last_run_time].nil?
        data['managedDataIdentifierIds'] = List____listOf__string.stub(stub[:managed_data_identifier_ids]) unless stub[:managed_data_identifier_ids].nil?
        data['managedDataIdentifierSelector'] = stub[:managed_data_identifier_selector] unless stub[:managed_data_identifier_selector].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['s3JobDefinition'] = S3JobDefinition.stub(stub[:s3_job_definition]) unless stub[:s3_job_definition].nil?
        data['samplingPercentage'] = stub[:sampling_percentage] unless stub[:sampling_percentage].nil?
        data['scheduleFrequency'] = JobScheduleFrequency.stub(stub[:schedule_frequency]) unless stub[:schedule_frequency].nil?
        data['statistics'] = Statistics.stub(stub[:statistics]) unless stub[:statistics].nil?
        data['tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['userPausedDetails'] = UserPausedDetails.stub(stub[:user_paused_details]) unless stub[:user_paused_details].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for UserPausedDetails
    class UserPausedDetails
      def self.default(visited=[])
        return nil if visited.include?('UserPausedDetails')
        visited = visited + ['UserPausedDetails']
        {
          job_expires_at: Time.now,
          job_imminent_expiration_health_event_arn: 'job_imminent_expiration_health_event_arn',
          job_paused_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::UserPausedDetails.new
        data = {}
        data['jobExpiresAt'] = Hearth::TimeHelper.to_date_time(stub[:job_expires_at]) unless stub[:job_expires_at].nil?
        data['jobImminentExpirationHealthEventArn'] = stub[:job_imminent_expiration_health_event_arn] unless stub[:job_imminent_expiration_health_event_arn].nil?
        data['jobPausedAt'] = Hearth::TimeHelper.to_date_time(stub[:job_paused_at]) unless stub[:job_paused_at].nil?
        data
      end
    end

    # Map Stubber for TagMap
    class TagMap
      def self.default(visited=[])
        return nil if visited.include?('TagMap')
        visited = visited + ['TagMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for Statistics
    class Statistics
      def self.default(visited=[])
        return nil if visited.include?('Statistics')
        visited = visited + ['Statistics']
        {
          approximate_number_of_objects_to_process: 1.0,
          number_of_runs: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::Statistics.new
        data = {}
        data['approximateNumberOfObjectsToProcess'] = Hearth::NumberHelper.serialize(stub[:approximate_number_of_objects_to_process])
        data['numberOfRuns'] = Hearth::NumberHelper.serialize(stub[:number_of_runs])
        data
      end
    end

    # Structure Stubber for JobScheduleFrequency
    class JobScheduleFrequency
      def self.default(visited=[])
        return nil if visited.include?('JobScheduleFrequency')
        visited = visited + ['JobScheduleFrequency']
        {
          daily_schedule: DailySchedule.default(visited),
          monthly_schedule: MonthlySchedule.default(visited),
          weekly_schedule: WeeklySchedule.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::JobScheduleFrequency.new
        data = {}
        data['dailySchedule'] = DailySchedule.stub(stub[:daily_schedule]) unless stub[:daily_schedule].nil?
        data['monthlySchedule'] = MonthlySchedule.stub(stub[:monthly_schedule]) unless stub[:monthly_schedule].nil?
        data['weeklySchedule'] = WeeklySchedule.stub(stub[:weekly_schedule]) unless stub[:weekly_schedule].nil?
        data
      end
    end

    # Structure Stubber for WeeklySchedule
    class WeeklySchedule
      def self.default(visited=[])
        return nil if visited.include?('WeeklySchedule')
        visited = visited + ['WeeklySchedule']
        {
          day_of_week: 'day_of_week',
        }
      end

      def self.stub(stub)
        stub ||= Types::WeeklySchedule.new
        data = {}
        data['dayOfWeek'] = stub[:day_of_week] unless stub[:day_of_week].nil?
        data
      end
    end

    # Structure Stubber for MonthlySchedule
    class MonthlySchedule
      def self.default(visited=[])
        return nil if visited.include?('MonthlySchedule')
        visited = visited + ['MonthlySchedule']
        {
          day_of_month: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::MonthlySchedule.new
        data = {}
        data['dayOfMonth'] = stub[:day_of_month] unless stub[:day_of_month].nil?
        data
      end
    end

    # Structure Stubber for DailySchedule
    class DailySchedule
      def self.default(visited=[])
        return nil if visited.include?('DailySchedule')
        visited = visited + ['DailySchedule']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::DailySchedule.new
        data = {}
        data
      end
    end

    # Structure Stubber for S3JobDefinition
    class S3JobDefinition
      def self.default(visited=[])
        return nil if visited.include?('S3JobDefinition')
        visited = visited + ['S3JobDefinition']
        {
          bucket_definitions: List____listOfS3BucketDefinitionForJob.default(visited),
          scoping: Scoping.default(visited),
          bucket_criteria: S3BucketCriteriaForJob.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::S3JobDefinition.new
        data = {}
        data['bucketDefinitions'] = List____listOfS3BucketDefinitionForJob.stub(stub[:bucket_definitions]) unless stub[:bucket_definitions].nil?
        data['scoping'] = Scoping.stub(stub[:scoping]) unless stub[:scoping].nil?
        data['bucketCriteria'] = S3BucketCriteriaForJob.stub(stub[:bucket_criteria]) unless stub[:bucket_criteria].nil?
        data
      end
    end

    # Structure Stubber for S3BucketCriteriaForJob
    class S3BucketCriteriaForJob
      def self.default(visited=[])
        return nil if visited.include?('S3BucketCriteriaForJob')
        visited = visited + ['S3BucketCriteriaForJob']
        {
          excludes: CriteriaBlockForJob.default(visited),
          includes: CriteriaBlockForJob.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::S3BucketCriteriaForJob.new
        data = {}
        data['excludes'] = CriteriaBlockForJob.stub(stub[:excludes]) unless stub[:excludes].nil?
        data['includes'] = CriteriaBlockForJob.stub(stub[:includes]) unless stub[:includes].nil?
        data
      end
    end

    # Structure Stubber for CriteriaBlockForJob
    class CriteriaBlockForJob
      def self.default(visited=[])
        return nil if visited.include?('CriteriaBlockForJob')
        visited = visited + ['CriteriaBlockForJob']
        {
          and: List____listOfCriteriaForJob.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CriteriaBlockForJob.new
        data = {}
        data['and'] = List____listOfCriteriaForJob.stub(stub[:and]) unless stub[:and].nil?
        data
      end
    end

    # List Stubber for __listOfCriteriaForJob
    class List____listOfCriteriaForJob
      def self.default(visited=[])
        return nil if visited.include?('List____listOfCriteriaForJob')
        visited = visited + ['List____listOfCriteriaForJob']
        [
          CriteriaForJob.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CriteriaForJob.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CriteriaForJob
    class CriteriaForJob
      def self.default(visited=[])
        return nil if visited.include?('CriteriaForJob')
        visited = visited + ['CriteriaForJob']
        {
          simple_criterion: SimpleCriterionForJob.default(visited),
          tag_criterion: TagCriterionForJob.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CriteriaForJob.new
        data = {}
        data['simpleCriterion'] = SimpleCriterionForJob.stub(stub[:simple_criterion]) unless stub[:simple_criterion].nil?
        data['tagCriterion'] = TagCriterionForJob.stub(stub[:tag_criterion]) unless stub[:tag_criterion].nil?
        data
      end
    end

    # Structure Stubber for TagCriterionForJob
    class TagCriterionForJob
      def self.default(visited=[])
        return nil if visited.include?('TagCriterionForJob')
        visited = visited + ['TagCriterionForJob']
        {
          comparator: 'comparator',
          tag_values: List____listOfTagCriterionPairForJob.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TagCriterionForJob.new
        data = {}
        data['comparator'] = stub[:comparator] unless stub[:comparator].nil?
        data['tagValues'] = List____listOfTagCriterionPairForJob.stub(stub[:tag_values]) unless stub[:tag_values].nil?
        data
      end
    end

    # List Stubber for __listOfTagCriterionPairForJob
    class List____listOfTagCriterionPairForJob
      def self.default(visited=[])
        return nil if visited.include?('List____listOfTagCriterionPairForJob')
        visited = visited + ['List____listOfTagCriterionPairForJob']
        [
          TagCriterionPairForJob.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << TagCriterionPairForJob.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TagCriterionPairForJob
    class TagCriterionPairForJob
      def self.default(visited=[])
        return nil if visited.include?('TagCriterionPairForJob')
        visited = visited + ['TagCriterionPairForJob']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::TagCriterionPairForJob.new
        data = {}
        data['key'] = stub[:key] unless stub[:key].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Structure Stubber for SimpleCriterionForJob
    class SimpleCriterionForJob
      def self.default(visited=[])
        return nil if visited.include?('SimpleCriterionForJob')
        visited = visited + ['SimpleCriterionForJob']
        {
          comparator: 'comparator',
          key: 'key',
          values: List____listOf__string.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SimpleCriterionForJob.new
        data = {}
        data['comparator'] = stub[:comparator] unless stub[:comparator].nil?
        data['key'] = stub[:key] unless stub[:key].nil?
        data['values'] = List____listOf__string.stub(stub[:values]) unless stub[:values].nil?
        data
      end
    end

    # Structure Stubber for Scoping
    class Scoping
      def self.default(visited=[])
        return nil if visited.include?('Scoping')
        visited = visited + ['Scoping']
        {
          excludes: JobScopingBlock.default(visited),
          includes: JobScopingBlock.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Scoping.new
        data = {}
        data['excludes'] = JobScopingBlock.stub(stub[:excludes]) unless stub[:excludes].nil?
        data['includes'] = JobScopingBlock.stub(stub[:includes]) unless stub[:includes].nil?
        data
      end
    end

    # Structure Stubber for JobScopingBlock
    class JobScopingBlock
      def self.default(visited=[])
        return nil if visited.include?('JobScopingBlock')
        visited = visited + ['JobScopingBlock']
        {
          and: List____listOfJobScopeTerm.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::JobScopingBlock.new
        data = {}
        data['and'] = List____listOfJobScopeTerm.stub(stub[:and]) unless stub[:and].nil?
        data
      end
    end

    # List Stubber for __listOfJobScopeTerm
    class List____listOfJobScopeTerm
      def self.default(visited=[])
        return nil if visited.include?('List____listOfJobScopeTerm')
        visited = visited + ['List____listOfJobScopeTerm']
        [
          JobScopeTerm.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << JobScopeTerm.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for JobScopeTerm
    class JobScopeTerm
      def self.default(visited=[])
        return nil if visited.include?('JobScopeTerm')
        visited = visited + ['JobScopeTerm']
        {
          simple_scope_term: SimpleScopeTerm.default(visited),
          tag_scope_term: TagScopeTerm.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::JobScopeTerm.new
        data = {}
        data['simpleScopeTerm'] = SimpleScopeTerm.stub(stub[:simple_scope_term]) unless stub[:simple_scope_term].nil?
        data['tagScopeTerm'] = TagScopeTerm.stub(stub[:tag_scope_term]) unless stub[:tag_scope_term].nil?
        data
      end
    end

    # Structure Stubber for TagScopeTerm
    class TagScopeTerm
      def self.default(visited=[])
        return nil if visited.include?('TagScopeTerm')
        visited = visited + ['TagScopeTerm']
        {
          comparator: 'comparator',
          key: 'key',
          tag_values: List____listOfTagValuePair.default(visited),
          target: 'target',
        }
      end

      def self.stub(stub)
        stub ||= Types::TagScopeTerm.new
        data = {}
        data['comparator'] = stub[:comparator] unless stub[:comparator].nil?
        data['key'] = stub[:key] unless stub[:key].nil?
        data['tagValues'] = List____listOfTagValuePair.stub(stub[:tag_values]) unless stub[:tag_values].nil?
        data['target'] = stub[:target] unless stub[:target].nil?
        data
      end
    end

    # List Stubber for __listOfTagValuePair
    class List____listOfTagValuePair
      def self.default(visited=[])
        return nil if visited.include?('List____listOfTagValuePair')
        visited = visited + ['List____listOfTagValuePair']
        [
          TagValuePair.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << TagValuePair.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TagValuePair
    class TagValuePair
      def self.default(visited=[])
        return nil if visited.include?('TagValuePair')
        visited = visited + ['TagValuePair']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::TagValuePair.new
        data = {}
        data['key'] = stub[:key] unless stub[:key].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Structure Stubber for SimpleScopeTerm
    class SimpleScopeTerm
      def self.default(visited=[])
        return nil if visited.include?('SimpleScopeTerm')
        visited = visited + ['SimpleScopeTerm']
        {
          comparator: 'comparator',
          key: 'key',
          values: List____listOf__string.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SimpleScopeTerm.new
        data = {}
        data['comparator'] = stub[:comparator] unless stub[:comparator].nil?
        data['key'] = stub[:key] unless stub[:key].nil?
        data['values'] = List____listOf__string.stub(stub[:values]) unless stub[:values].nil?
        data
      end
    end

    # List Stubber for __listOfS3BucketDefinitionForJob
    class List____listOfS3BucketDefinitionForJob
      def self.default(visited=[])
        return nil if visited.include?('List____listOfS3BucketDefinitionForJob')
        visited = visited + ['List____listOfS3BucketDefinitionForJob']
        [
          S3BucketDefinitionForJob.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << S3BucketDefinitionForJob.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for S3BucketDefinitionForJob
    class S3BucketDefinitionForJob
      def self.default(visited=[])
        return nil if visited.include?('S3BucketDefinitionForJob')
        visited = visited + ['S3BucketDefinitionForJob']
        {
          account_id: 'account_id',
          buckets: List____listOf__string.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::S3BucketDefinitionForJob.new
        data = {}
        data['accountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['buckets'] = List____listOf__string.stub(stub[:buckets]) unless stub[:buckets].nil?
        data
      end
    end

    # Structure Stubber for LastRunErrorStatus
    class LastRunErrorStatus
      def self.default(visited=[])
        return nil if visited.include?('LastRunErrorStatus')
        visited = visited + ['LastRunErrorStatus']
        {
          code: 'code',
        }
      end

      def self.stub(stub)
        stub ||= Types::LastRunErrorStatus.new
        data = {}
        data['code'] = stub[:code] unless stub[:code].nil?
        data
      end
    end

    # Operation Stubber for DescribeOrganizationConfiguration
    class DescribeOrganizationConfiguration
      def self.default(visited=[])
        {
          auto_enable: false,
          max_account_limit_reached: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['autoEnable'] = stub[:auto_enable] unless stub[:auto_enable].nil?
        data['maxAccountLimitReached'] = stub[:max_account_limit_reached] unless stub[:max_account_limit_reached].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DisableMacie
    class DisableMacie
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisableOrganizationAdminAccount
    class DisableOrganizationAdminAccount
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisassociateFromAdministratorAccount
    class DisassociateFromAdministratorAccount
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisassociateFromMasterAccount
    class DisassociateFromMasterAccount
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisassociateMember
    class DisassociateMember
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for EnableMacie
    class EnableMacie
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for EnableOrganizationAdminAccount
    class EnableOrganizationAdminAccount
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetAdministratorAccount
    class GetAdministratorAccount
      def self.default(visited=[])
        {
          administrator: Invitation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['administrator'] = Invitation.stub(stub[:administrator]) unless stub[:administrator].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Invitation
    class Invitation
      def self.default(visited=[])
        return nil if visited.include?('Invitation')
        visited = visited + ['Invitation']
        {
          account_id: 'account_id',
          invitation_id: 'invitation_id',
          invited_at: Time.now,
          relationship_status: 'relationship_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::Invitation.new
        data = {}
        data['accountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['invitationId'] = stub[:invitation_id] unless stub[:invitation_id].nil?
        data['invitedAt'] = Hearth::TimeHelper.to_date_time(stub[:invited_at]) unless stub[:invited_at].nil?
        data['relationshipStatus'] = stub[:relationship_status] unless stub[:relationship_status].nil?
        data
      end
    end

    # Operation Stubber for GetBucketStatistics
    class GetBucketStatistics
      def self.default(visited=[])
        {
          bucket_count: 1,
          bucket_count_by_effective_permission: BucketCountByEffectivePermission.default(visited),
          bucket_count_by_encryption_type: BucketCountByEncryptionType.default(visited),
          bucket_count_by_object_encryption_requirement: BucketCountPolicyAllowsUnencryptedObjectUploads.default(visited),
          bucket_count_by_shared_access_type: BucketCountBySharedAccessType.default(visited),
          classifiable_object_count: 1,
          classifiable_size_in_bytes: 1,
          last_updated: Time.now,
          object_count: 1,
          size_in_bytes: 1,
          size_in_bytes_compressed: 1,
          unclassifiable_object_count: ObjectLevelStatistics.default(visited),
          unclassifiable_object_size_in_bytes: ObjectLevelStatistics.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['bucketCount'] = stub[:bucket_count] unless stub[:bucket_count].nil?
        data['bucketCountByEffectivePermission'] = BucketCountByEffectivePermission.stub(stub[:bucket_count_by_effective_permission]) unless stub[:bucket_count_by_effective_permission].nil?
        data['bucketCountByEncryptionType'] = BucketCountByEncryptionType.stub(stub[:bucket_count_by_encryption_type]) unless stub[:bucket_count_by_encryption_type].nil?
        data['bucketCountByObjectEncryptionRequirement'] = BucketCountPolicyAllowsUnencryptedObjectUploads.stub(stub[:bucket_count_by_object_encryption_requirement]) unless stub[:bucket_count_by_object_encryption_requirement].nil?
        data['bucketCountBySharedAccessType'] = BucketCountBySharedAccessType.stub(stub[:bucket_count_by_shared_access_type]) unless stub[:bucket_count_by_shared_access_type].nil?
        data['classifiableObjectCount'] = stub[:classifiable_object_count] unless stub[:classifiable_object_count].nil?
        data['classifiableSizeInBytes'] = stub[:classifiable_size_in_bytes] unless stub[:classifiable_size_in_bytes].nil?
        data['lastUpdated'] = Hearth::TimeHelper.to_date_time(stub[:last_updated]) unless stub[:last_updated].nil?
        data['objectCount'] = stub[:object_count] unless stub[:object_count].nil?
        data['sizeInBytes'] = stub[:size_in_bytes] unless stub[:size_in_bytes].nil?
        data['sizeInBytesCompressed'] = stub[:size_in_bytes_compressed] unless stub[:size_in_bytes_compressed].nil?
        data['unclassifiableObjectCount'] = ObjectLevelStatistics.stub(stub[:unclassifiable_object_count]) unless stub[:unclassifiable_object_count].nil?
        data['unclassifiableObjectSizeInBytes'] = ObjectLevelStatistics.stub(stub[:unclassifiable_object_size_in_bytes]) unless stub[:unclassifiable_object_size_in_bytes].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for BucketCountBySharedAccessType
    class BucketCountBySharedAccessType
      def self.default(visited=[])
        return nil if visited.include?('BucketCountBySharedAccessType')
        visited = visited + ['BucketCountBySharedAccessType']
        {
          external: 1,
          internal: 1,
          not_shared: 1,
          unknown: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::BucketCountBySharedAccessType.new
        data = {}
        data['external'] = stub[:external] unless stub[:external].nil?
        data['internal'] = stub[:internal] unless stub[:internal].nil?
        data['notShared'] = stub[:not_shared] unless stub[:not_shared].nil?
        data['unknown'] = stub[:unknown] unless stub[:unknown].nil?
        data
      end
    end

    # Structure Stubber for BucketCountPolicyAllowsUnencryptedObjectUploads
    class BucketCountPolicyAllowsUnencryptedObjectUploads
      def self.default(visited=[])
        return nil if visited.include?('BucketCountPolicyAllowsUnencryptedObjectUploads')
        visited = visited + ['BucketCountPolicyAllowsUnencryptedObjectUploads']
        {
          allows_unencrypted_object_uploads: 1,
          denies_unencrypted_object_uploads: 1,
          unknown: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::BucketCountPolicyAllowsUnencryptedObjectUploads.new
        data = {}
        data['allowsUnencryptedObjectUploads'] = stub[:allows_unencrypted_object_uploads] unless stub[:allows_unencrypted_object_uploads].nil?
        data['deniesUnencryptedObjectUploads'] = stub[:denies_unencrypted_object_uploads] unless stub[:denies_unencrypted_object_uploads].nil?
        data['unknown'] = stub[:unknown] unless stub[:unknown].nil?
        data
      end
    end

    # Structure Stubber for BucketCountByEncryptionType
    class BucketCountByEncryptionType
      def self.default(visited=[])
        return nil if visited.include?('BucketCountByEncryptionType')
        visited = visited + ['BucketCountByEncryptionType']
        {
          kms_managed: 1,
          s3_managed: 1,
          unencrypted: 1,
          unknown: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::BucketCountByEncryptionType.new
        data = {}
        data['kmsManaged'] = stub[:kms_managed] unless stub[:kms_managed].nil?
        data['s3Managed'] = stub[:s3_managed] unless stub[:s3_managed].nil?
        data['unencrypted'] = stub[:unencrypted] unless stub[:unencrypted].nil?
        data['unknown'] = stub[:unknown] unless stub[:unknown].nil?
        data
      end
    end

    # Structure Stubber for BucketCountByEffectivePermission
    class BucketCountByEffectivePermission
      def self.default(visited=[])
        return nil if visited.include?('BucketCountByEffectivePermission')
        visited = visited + ['BucketCountByEffectivePermission']
        {
          publicly_accessible: 1,
          publicly_readable: 1,
          publicly_writable: 1,
          unknown: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::BucketCountByEffectivePermission.new
        data = {}
        data['publiclyAccessible'] = stub[:publicly_accessible] unless stub[:publicly_accessible].nil?
        data['publiclyReadable'] = stub[:publicly_readable] unless stub[:publicly_readable].nil?
        data['publiclyWritable'] = stub[:publicly_writable] unless stub[:publicly_writable].nil?
        data['unknown'] = stub[:unknown] unless stub[:unknown].nil?
        data
      end
    end

    # Operation Stubber for GetClassificationExportConfiguration
    class GetClassificationExportConfiguration
      def self.default(visited=[])
        {
          configuration: ClassificationExportConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['configuration'] = ClassificationExportConfiguration.stub(stub[:configuration]) unless stub[:configuration].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ClassificationExportConfiguration
    class ClassificationExportConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ClassificationExportConfiguration')
        visited = visited + ['ClassificationExportConfiguration']
        {
          s3_destination: S3Destination.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ClassificationExportConfiguration.new
        data = {}
        data['s3Destination'] = S3Destination.stub(stub[:s3_destination]) unless stub[:s3_destination].nil?
        data
      end
    end

    # Structure Stubber for S3Destination
    class S3Destination
      def self.default(visited=[])
        return nil if visited.include?('S3Destination')
        visited = visited + ['S3Destination']
        {
          bucket_name: 'bucket_name',
          key_prefix: 'key_prefix',
          kms_key_arn: 'kms_key_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3Destination.new
        data = {}
        data['bucketName'] = stub[:bucket_name] unless stub[:bucket_name].nil?
        data['keyPrefix'] = stub[:key_prefix] unless stub[:key_prefix].nil?
        data['kmsKeyArn'] = stub[:kms_key_arn] unless stub[:kms_key_arn].nil?
        data
      end
    end

    # Operation Stubber for GetCustomDataIdentifier
    class GetCustomDataIdentifier
      def self.default(visited=[])
        {
          arn: 'arn',
          created_at: Time.now,
          deleted: false,
          description: 'description',
          id: 'id',
          ignore_words: List____listOf__string.default(visited),
          keywords: List____listOf__string.default(visited),
          maximum_match_distance: 1,
          name: 'name',
          regex: 'regex',
          severity_levels: SeverityLevelList.default(visited),
          tags: TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['createdAt'] = Hearth::TimeHelper.to_date_time(stub[:created_at]) unless stub[:created_at].nil?
        data['deleted'] = stub[:deleted] unless stub[:deleted].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['ignoreWords'] = List____listOf__string.stub(stub[:ignore_words]) unless stub[:ignore_words].nil?
        data['keywords'] = List____listOf__string.stub(stub[:keywords]) unless stub[:keywords].nil?
        data['maximumMatchDistance'] = stub[:maximum_match_distance] unless stub[:maximum_match_distance].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['regex'] = stub[:regex] unless stub[:regex].nil?
        data['severityLevels'] = SeverityLevelList.stub(stub[:severity_levels]) unless stub[:severity_levels].nil?
        data['tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for SeverityLevelList
    class SeverityLevelList
      def self.default(visited=[])
        return nil if visited.include?('SeverityLevelList')
        visited = visited + ['SeverityLevelList']
        [
          SeverityLevel.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SeverityLevel.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SeverityLevel
    class SeverityLevel
      def self.default(visited=[])
        return nil if visited.include?('SeverityLevel')
        visited = visited + ['SeverityLevel']
        {
          occurrences_threshold: 1,
          severity: 'severity',
        }
      end

      def self.stub(stub)
        stub ||= Types::SeverityLevel.new
        data = {}
        data['occurrencesThreshold'] = stub[:occurrences_threshold] unless stub[:occurrences_threshold].nil?
        data['severity'] = stub[:severity] unless stub[:severity].nil?
        data
      end
    end

    # Operation Stubber for GetFindingStatistics
    class GetFindingStatistics
      def self.default(visited=[])
        {
          counts_by_group: List____listOfGroupCount.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['countsByGroup'] = List____listOfGroupCount.stub(stub[:counts_by_group]) unless stub[:counts_by_group].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfGroupCount
    class List____listOfGroupCount
      def self.default(visited=[])
        return nil if visited.include?('List____listOfGroupCount')
        visited = visited + ['List____listOfGroupCount']
        [
          GroupCount.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << GroupCount.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for GroupCount
    class GroupCount
      def self.default(visited=[])
        return nil if visited.include?('GroupCount')
        visited = visited + ['GroupCount']
        {
          count: 1,
          group_key: 'group_key',
        }
      end

      def self.stub(stub)
        stub ||= Types::GroupCount.new
        data = {}
        data['count'] = stub[:count] unless stub[:count].nil?
        data['groupKey'] = stub[:group_key] unless stub[:group_key].nil?
        data
      end
    end

    # Operation Stubber for GetFindings
    class GetFindings
      def self.default(visited=[])
        {
          findings: List____listOfFinding.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['findings'] = List____listOfFinding.stub(stub[:findings]) unless stub[:findings].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfFinding
    class List____listOfFinding
      def self.default(visited=[])
        return nil if visited.include?('List____listOfFinding')
        visited = visited + ['List____listOfFinding']
        [
          Finding.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Finding.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Finding
    class Finding
      def self.default(visited=[])
        return nil if visited.include?('Finding')
        visited = visited + ['Finding']
        {
          account_id: 'account_id',
          archived: false,
          category: 'category',
          classification_details: ClassificationDetails.default(visited),
          count: 1,
          created_at: Time.now,
          description: 'description',
          id: 'id',
          partition: 'partition',
          policy_details: PolicyDetails.default(visited),
          region: 'region',
          resources_affected: ResourcesAffected.default(visited),
          sample: false,
          schema_version: 'schema_version',
          severity: Severity.default(visited),
          title: 'title',
          type: 'type',
          updated_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Finding.new
        data = {}
        data['accountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['archived'] = stub[:archived] unless stub[:archived].nil?
        data['category'] = stub[:category] unless stub[:category].nil?
        data['classificationDetails'] = ClassificationDetails.stub(stub[:classification_details]) unless stub[:classification_details].nil?
        data['count'] = stub[:count] unless stub[:count].nil?
        data['createdAt'] = Hearth::TimeHelper.to_date_time(stub[:created_at]) unless stub[:created_at].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['partition'] = stub[:partition] unless stub[:partition].nil?
        data['policyDetails'] = PolicyDetails.stub(stub[:policy_details]) unless stub[:policy_details].nil?
        data['region'] = stub[:region] unless stub[:region].nil?
        data['resourcesAffected'] = ResourcesAffected.stub(stub[:resources_affected]) unless stub[:resources_affected].nil?
        data['sample'] = stub[:sample] unless stub[:sample].nil?
        data['schemaVersion'] = stub[:schema_version] unless stub[:schema_version].nil?
        data['severity'] = Severity.stub(stub[:severity]) unless stub[:severity].nil?
        data['title'] = stub[:title] unless stub[:title].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['updatedAt'] = Hearth::TimeHelper.to_date_time(stub[:updated_at]) unless stub[:updated_at].nil?
        data
      end
    end

    # Structure Stubber for Severity
    class Severity
      def self.default(visited=[])
        return nil if visited.include?('Severity')
        visited = visited + ['Severity']
        {
          description: 'description',
          score: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Severity.new
        data = {}
        data['description'] = stub[:description] unless stub[:description].nil?
        data['score'] = stub[:score] unless stub[:score].nil?
        data
      end
    end

    # Structure Stubber for ResourcesAffected
    class ResourcesAffected
      def self.default(visited=[])
        return nil if visited.include?('ResourcesAffected')
        visited = visited + ['ResourcesAffected']
        {
          s3_bucket: S3Bucket.default(visited),
          s3_object: S3Object.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourcesAffected.new
        data = {}
        data['s3Bucket'] = S3Bucket.stub(stub[:s3_bucket]) unless stub[:s3_bucket].nil?
        data['s3Object'] = S3Object.stub(stub[:s3_object]) unless stub[:s3_object].nil?
        data
      end
    end

    # Structure Stubber for S3Object
    class S3Object
      def self.default(visited=[])
        return nil if visited.include?('S3Object')
        visited = visited + ['S3Object']
        {
          bucket_arn: 'bucket_arn',
          e_tag: 'e_tag',
          extension: 'extension',
          key: 'key',
          last_modified: Time.now,
          path: 'path',
          public_access: false,
          server_side_encryption: ServerSideEncryption.default(visited),
          size: 1,
          storage_class: 'storage_class',
          tags: KeyValuePairList.default(visited),
          version_id: 'version_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3Object.new
        data = {}
        data['bucketArn'] = stub[:bucket_arn] unless stub[:bucket_arn].nil?
        data['eTag'] = stub[:e_tag] unless stub[:e_tag].nil?
        data['extension'] = stub[:extension] unless stub[:extension].nil?
        data['key'] = stub[:key] unless stub[:key].nil?
        data['lastModified'] = Hearth::TimeHelper.to_date_time(stub[:last_modified]) unless stub[:last_modified].nil?
        data['path'] = stub[:path] unless stub[:path].nil?
        data['publicAccess'] = stub[:public_access] unless stub[:public_access].nil?
        data['serverSideEncryption'] = ServerSideEncryption.stub(stub[:server_side_encryption]) unless stub[:server_side_encryption].nil?
        data['size'] = stub[:size] unless stub[:size].nil?
        data['storageClass'] = stub[:storage_class] unless stub[:storage_class].nil?
        data['tags'] = KeyValuePairList.stub(stub[:tags]) unless stub[:tags].nil?
        data['versionId'] = stub[:version_id] unless stub[:version_id].nil?
        data
      end
    end

    # List Stubber for KeyValuePairList
    class KeyValuePairList
      def self.default(visited=[])
        return nil if visited.include?('KeyValuePairList')
        visited = visited + ['KeyValuePairList']
        [
          KeyValuePair.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << KeyValuePair.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ServerSideEncryption
    class ServerSideEncryption
      def self.default(visited=[])
        return nil if visited.include?('ServerSideEncryption')
        visited = visited + ['ServerSideEncryption']
        {
          encryption_type: 'encryption_type',
          kms_master_key_id: 'kms_master_key_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::ServerSideEncryption.new
        data = {}
        data['encryptionType'] = stub[:encryption_type] unless stub[:encryption_type].nil?
        data['kmsMasterKeyId'] = stub[:kms_master_key_id] unless stub[:kms_master_key_id].nil?
        data
      end
    end

    # Structure Stubber for S3Bucket
    class S3Bucket
      def self.default(visited=[])
        return nil if visited.include?('S3Bucket')
        visited = visited + ['S3Bucket']
        {
          allows_unencrypted_object_uploads: 'allows_unencrypted_object_uploads',
          arn: 'arn',
          created_at: Time.now,
          default_server_side_encryption: ServerSideEncryption.default(visited),
          name: 'name',
          owner: S3BucketOwner.default(visited),
          public_access: BucketPublicAccess.default(visited),
          tags: KeyValuePairList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::S3Bucket.new
        data = {}
        data['allowsUnencryptedObjectUploads'] = stub[:allows_unencrypted_object_uploads] unless stub[:allows_unencrypted_object_uploads].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['createdAt'] = Hearth::TimeHelper.to_date_time(stub[:created_at]) unless stub[:created_at].nil?
        data['defaultServerSideEncryption'] = ServerSideEncryption.stub(stub[:default_server_side_encryption]) unless stub[:default_server_side_encryption].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['owner'] = S3BucketOwner.stub(stub[:owner]) unless stub[:owner].nil?
        data['publicAccess'] = BucketPublicAccess.stub(stub[:public_access]) unless stub[:public_access].nil?
        data['tags'] = KeyValuePairList.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Structure Stubber for S3BucketOwner
    class S3BucketOwner
      def self.default(visited=[])
        return nil if visited.include?('S3BucketOwner')
        visited = visited + ['S3BucketOwner']
        {
          display_name: 'display_name',
          id: 'id',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3BucketOwner.new
        data = {}
        data['displayName'] = stub[:display_name] unless stub[:display_name].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data
      end
    end

    # Structure Stubber for PolicyDetails
    class PolicyDetails
      def self.default(visited=[])
        return nil if visited.include?('PolicyDetails')
        visited = visited + ['PolicyDetails']
        {
          action: FindingAction.default(visited),
          actor: FindingActor.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PolicyDetails.new
        data = {}
        data['action'] = FindingAction.stub(stub[:action]) unless stub[:action].nil?
        data['actor'] = FindingActor.stub(stub[:actor]) unless stub[:actor].nil?
        data
      end
    end

    # Structure Stubber for FindingActor
    class FindingActor
      def self.default(visited=[])
        return nil if visited.include?('FindingActor')
        visited = visited + ['FindingActor']
        {
          domain_details: DomainDetails.default(visited),
          ip_address_details: IpAddressDetails.default(visited),
          user_identity: UserIdentity.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FindingActor.new
        data = {}
        data['domainDetails'] = DomainDetails.stub(stub[:domain_details]) unless stub[:domain_details].nil?
        data['ipAddressDetails'] = IpAddressDetails.stub(stub[:ip_address_details]) unless stub[:ip_address_details].nil?
        data['userIdentity'] = UserIdentity.stub(stub[:user_identity]) unless stub[:user_identity].nil?
        data
      end
    end

    # Structure Stubber for UserIdentity
    class UserIdentity
      def self.default(visited=[])
        return nil if visited.include?('UserIdentity')
        visited = visited + ['UserIdentity']
        {
          assumed_role: AssumedRole.default(visited),
          aws_account: AwsAccount.default(visited),
          aws_service: AwsService.default(visited),
          federated_user: FederatedUser.default(visited),
          iam_user: IamUser.default(visited),
          root: UserIdentityRoot.default(visited),
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::UserIdentity.new
        data = {}
        data['assumedRole'] = AssumedRole.stub(stub[:assumed_role]) unless stub[:assumed_role].nil?
        data['awsAccount'] = AwsAccount.stub(stub[:aws_account]) unless stub[:aws_account].nil?
        data['awsService'] = AwsService.stub(stub[:aws_service]) unless stub[:aws_service].nil?
        data['federatedUser'] = FederatedUser.stub(stub[:federated_user]) unless stub[:federated_user].nil?
        data['iamUser'] = IamUser.stub(stub[:iam_user]) unless stub[:iam_user].nil?
        data['root'] = UserIdentityRoot.stub(stub[:root]) unless stub[:root].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Structure Stubber for UserIdentityRoot
    class UserIdentityRoot
      def self.default(visited=[])
        return nil if visited.include?('UserIdentityRoot')
        visited = visited + ['UserIdentityRoot']
        {
          account_id: 'account_id',
          arn: 'arn',
          principal_id: 'principal_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::UserIdentityRoot.new
        data = {}
        data['accountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['principalId'] = stub[:principal_id] unless stub[:principal_id].nil?
        data
      end
    end

    # Structure Stubber for IamUser
    class IamUser
      def self.default(visited=[])
        return nil if visited.include?('IamUser')
        visited = visited + ['IamUser']
        {
          account_id: 'account_id',
          arn: 'arn',
          principal_id: 'principal_id',
          user_name: 'user_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::IamUser.new
        data = {}
        data['accountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['principalId'] = stub[:principal_id] unless stub[:principal_id].nil?
        data['userName'] = stub[:user_name] unless stub[:user_name].nil?
        data
      end
    end

    # Structure Stubber for FederatedUser
    class FederatedUser
      def self.default(visited=[])
        return nil if visited.include?('FederatedUser')
        visited = visited + ['FederatedUser']
        {
          access_key_id: 'access_key_id',
          account_id: 'account_id',
          arn: 'arn',
          principal_id: 'principal_id',
          session_context: SessionContext.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FederatedUser.new
        data = {}
        data['accessKeyId'] = stub[:access_key_id] unless stub[:access_key_id].nil?
        data['accountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['principalId'] = stub[:principal_id] unless stub[:principal_id].nil?
        data['sessionContext'] = SessionContext.stub(stub[:session_context]) unless stub[:session_context].nil?
        data
      end
    end

    # Structure Stubber for SessionContext
    class SessionContext
      def self.default(visited=[])
        return nil if visited.include?('SessionContext')
        visited = visited + ['SessionContext']
        {
          attributes: SessionContextAttributes.default(visited),
          session_issuer: SessionIssuer.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SessionContext.new
        data = {}
        data['attributes'] = SessionContextAttributes.stub(stub[:attributes]) unless stub[:attributes].nil?
        data['sessionIssuer'] = SessionIssuer.stub(stub[:session_issuer]) unless stub[:session_issuer].nil?
        data
      end
    end

    # Structure Stubber for SessionIssuer
    class SessionIssuer
      def self.default(visited=[])
        return nil if visited.include?('SessionIssuer')
        visited = visited + ['SessionIssuer']
        {
          account_id: 'account_id',
          arn: 'arn',
          principal_id: 'principal_id',
          type: 'type',
          user_name: 'user_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::SessionIssuer.new
        data = {}
        data['accountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['principalId'] = stub[:principal_id] unless stub[:principal_id].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['userName'] = stub[:user_name] unless stub[:user_name].nil?
        data
      end
    end

    # Structure Stubber for SessionContextAttributes
    class SessionContextAttributes
      def self.default(visited=[])
        return nil if visited.include?('SessionContextAttributes')
        visited = visited + ['SessionContextAttributes']
        {
          creation_date: Time.now,
          mfa_authenticated: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::SessionContextAttributes.new
        data = {}
        data['creationDate'] = Hearth::TimeHelper.to_date_time(stub[:creation_date]) unless stub[:creation_date].nil?
        data['mfaAuthenticated'] = stub[:mfa_authenticated] unless stub[:mfa_authenticated].nil?
        data
      end
    end

    # Structure Stubber for AwsService
    class AwsService
      def self.default(visited=[])
        return nil if visited.include?('AwsService')
        visited = visited + ['AwsService']
        {
          invoked_by: 'invoked_by',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsService.new
        data = {}
        data['invokedBy'] = stub[:invoked_by] unless stub[:invoked_by].nil?
        data
      end
    end

    # Structure Stubber for AwsAccount
    class AwsAccount
      def self.default(visited=[])
        return nil if visited.include?('AwsAccount')
        visited = visited + ['AwsAccount']
        {
          account_id: 'account_id',
          principal_id: 'principal_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsAccount.new
        data = {}
        data['accountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['principalId'] = stub[:principal_id] unless stub[:principal_id].nil?
        data
      end
    end

    # Structure Stubber for AssumedRole
    class AssumedRole
      def self.default(visited=[])
        return nil if visited.include?('AssumedRole')
        visited = visited + ['AssumedRole']
        {
          access_key_id: 'access_key_id',
          account_id: 'account_id',
          arn: 'arn',
          principal_id: 'principal_id',
          session_context: SessionContext.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AssumedRole.new
        data = {}
        data['accessKeyId'] = stub[:access_key_id] unless stub[:access_key_id].nil?
        data['accountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['principalId'] = stub[:principal_id] unless stub[:principal_id].nil?
        data['sessionContext'] = SessionContext.stub(stub[:session_context]) unless stub[:session_context].nil?
        data
      end
    end

    # Structure Stubber for IpAddressDetails
    class IpAddressDetails
      def self.default(visited=[])
        return nil if visited.include?('IpAddressDetails')
        visited = visited + ['IpAddressDetails']
        {
          ip_address_v4: 'ip_address_v4',
          ip_city: IpCity.default(visited),
          ip_country: IpCountry.default(visited),
          ip_geo_location: IpGeoLocation.default(visited),
          ip_owner: IpOwner.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::IpAddressDetails.new
        data = {}
        data['ipAddressV4'] = stub[:ip_address_v4] unless stub[:ip_address_v4].nil?
        data['ipCity'] = IpCity.stub(stub[:ip_city]) unless stub[:ip_city].nil?
        data['ipCountry'] = IpCountry.stub(stub[:ip_country]) unless stub[:ip_country].nil?
        data['ipGeoLocation'] = IpGeoLocation.stub(stub[:ip_geo_location]) unless stub[:ip_geo_location].nil?
        data['ipOwner'] = IpOwner.stub(stub[:ip_owner]) unless stub[:ip_owner].nil?
        data
      end
    end

    # Structure Stubber for IpOwner
    class IpOwner
      def self.default(visited=[])
        return nil if visited.include?('IpOwner')
        visited = visited + ['IpOwner']
        {
          asn: 'asn',
          asn_org: 'asn_org',
          isp: 'isp',
          org: 'org',
        }
      end

      def self.stub(stub)
        stub ||= Types::IpOwner.new
        data = {}
        data['asn'] = stub[:asn] unless stub[:asn].nil?
        data['asnOrg'] = stub[:asn_org] unless stub[:asn_org].nil?
        data['isp'] = stub[:isp] unless stub[:isp].nil?
        data['org'] = stub[:org] unless stub[:org].nil?
        data
      end
    end

    # Structure Stubber for IpGeoLocation
    class IpGeoLocation
      def self.default(visited=[])
        return nil if visited.include?('IpGeoLocation')
        visited = visited + ['IpGeoLocation']
        {
          lat: 1.0,
          lon: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::IpGeoLocation.new
        data = {}
        data['lat'] = Hearth::NumberHelper.serialize(stub[:lat])
        data['lon'] = Hearth::NumberHelper.serialize(stub[:lon])
        data
      end
    end

    # Structure Stubber for IpCountry
    class IpCountry
      def self.default(visited=[])
        return nil if visited.include?('IpCountry')
        visited = visited + ['IpCountry']
        {
          code: 'code',
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::IpCountry.new
        data = {}
        data['code'] = stub[:code] unless stub[:code].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Structure Stubber for IpCity
    class IpCity
      def self.default(visited=[])
        return nil if visited.include?('IpCity')
        visited = visited + ['IpCity']
        {
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::IpCity.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Structure Stubber for DomainDetails
    class DomainDetails
      def self.default(visited=[])
        return nil if visited.include?('DomainDetails')
        visited = visited + ['DomainDetails']
        {
          domain_name: 'domain_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::DomainDetails.new
        data = {}
        data['domainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data
      end
    end

    # Structure Stubber for FindingAction
    class FindingAction
      def self.default(visited=[])
        return nil if visited.include?('FindingAction')
        visited = visited + ['FindingAction']
        {
          action_type: 'action_type',
          api_call_details: ApiCallDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FindingAction.new
        data = {}
        data['actionType'] = stub[:action_type] unless stub[:action_type].nil?
        data['apiCallDetails'] = ApiCallDetails.stub(stub[:api_call_details]) unless stub[:api_call_details].nil?
        data
      end
    end

    # Structure Stubber for ApiCallDetails
    class ApiCallDetails
      def self.default(visited=[])
        return nil if visited.include?('ApiCallDetails')
        visited = visited + ['ApiCallDetails']
        {
          api: 'api',
          api_service_name: 'api_service_name',
          first_seen: Time.now,
          last_seen: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ApiCallDetails.new
        data = {}
        data['api'] = stub[:api] unless stub[:api].nil?
        data['apiServiceName'] = stub[:api_service_name] unless stub[:api_service_name].nil?
        data['firstSeen'] = Hearth::TimeHelper.to_date_time(stub[:first_seen]) unless stub[:first_seen].nil?
        data['lastSeen'] = Hearth::TimeHelper.to_date_time(stub[:last_seen]) unless stub[:last_seen].nil?
        data
      end
    end

    # Structure Stubber for ClassificationDetails
    class ClassificationDetails
      def self.default(visited=[])
        return nil if visited.include?('ClassificationDetails')
        visited = visited + ['ClassificationDetails']
        {
          detailed_results_location: 'detailed_results_location',
          job_arn: 'job_arn',
          job_id: 'job_id',
          origin_type: 'origin_type',
          result: ClassificationResult.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ClassificationDetails.new
        data = {}
        data['detailedResultsLocation'] = stub[:detailed_results_location] unless stub[:detailed_results_location].nil?
        data['jobArn'] = stub[:job_arn] unless stub[:job_arn].nil?
        data['jobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['originType'] = stub[:origin_type] unless stub[:origin_type].nil?
        data['result'] = ClassificationResult.stub(stub[:result]) unless stub[:result].nil?
        data
      end
    end

    # Structure Stubber for ClassificationResult
    class ClassificationResult
      def self.default(visited=[])
        return nil if visited.include?('ClassificationResult')
        visited = visited + ['ClassificationResult']
        {
          additional_occurrences: false,
          custom_data_identifiers: CustomDataIdentifiers.default(visited),
          mime_type: 'mime_type',
          sensitive_data: SensitiveData.default(visited),
          size_classified: 1,
          status: ClassificationResultStatus.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ClassificationResult.new
        data = {}
        data['additionalOccurrences'] = stub[:additional_occurrences] unless stub[:additional_occurrences].nil?
        data['customDataIdentifiers'] = CustomDataIdentifiers.stub(stub[:custom_data_identifiers]) unless stub[:custom_data_identifiers].nil?
        data['mimeType'] = stub[:mime_type] unless stub[:mime_type].nil?
        data['sensitiveData'] = SensitiveData.stub(stub[:sensitive_data]) unless stub[:sensitive_data].nil?
        data['sizeClassified'] = stub[:size_classified] unless stub[:size_classified].nil?
        data['status'] = ClassificationResultStatus.stub(stub[:status]) unless stub[:status].nil?
        data
      end
    end

    # Structure Stubber for ClassificationResultStatus
    class ClassificationResultStatus
      def self.default(visited=[])
        return nil if visited.include?('ClassificationResultStatus')
        visited = visited + ['ClassificationResultStatus']
        {
          code: 'code',
          reason: 'reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::ClassificationResultStatus.new
        data = {}
        data['code'] = stub[:code] unless stub[:code].nil?
        data['reason'] = stub[:reason] unless stub[:reason].nil?
        data
      end
    end

    # List Stubber for SensitiveData
    class SensitiveData
      def self.default(visited=[])
        return nil if visited.include?('SensitiveData')
        visited = visited + ['SensitiveData']
        [
          SensitiveDataItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SensitiveDataItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SensitiveDataItem
    class SensitiveDataItem
      def self.default(visited=[])
        return nil if visited.include?('SensitiveDataItem')
        visited = visited + ['SensitiveDataItem']
        {
          category: 'category',
          detections: DefaultDetections.default(visited),
          total_count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::SensitiveDataItem.new
        data = {}
        data['category'] = stub[:category] unless stub[:category].nil?
        data['detections'] = DefaultDetections.stub(stub[:detections]) unless stub[:detections].nil?
        data['totalCount'] = stub[:total_count] unless stub[:total_count].nil?
        data
      end
    end

    # List Stubber for DefaultDetections
    class DefaultDetections
      def self.default(visited=[])
        return nil if visited.include?('DefaultDetections')
        visited = visited + ['DefaultDetections']
        [
          DefaultDetection.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DefaultDetection.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DefaultDetection
    class DefaultDetection
      def self.default(visited=[])
        return nil if visited.include?('DefaultDetection')
        visited = visited + ['DefaultDetection']
        {
          count: 1,
          occurrences: Occurrences.default(visited),
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::DefaultDetection.new
        data = {}
        data['count'] = stub[:count] unless stub[:count].nil?
        data['occurrences'] = Occurrences.stub(stub[:occurrences]) unless stub[:occurrences].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Structure Stubber for Occurrences
    class Occurrences
      def self.default(visited=[])
        return nil if visited.include?('Occurrences')
        visited = visited + ['Occurrences']
        {
          cells: Cells.default(visited),
          line_ranges: Ranges.default(visited),
          offset_ranges: Ranges.default(visited),
          pages: Pages.default(visited),
          records: Records.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Occurrences.new
        data = {}
        data['cells'] = Cells.stub(stub[:cells]) unless stub[:cells].nil?
        data['lineRanges'] = Ranges.stub(stub[:line_ranges]) unless stub[:line_ranges].nil?
        data['offsetRanges'] = Ranges.stub(stub[:offset_ranges]) unless stub[:offset_ranges].nil?
        data['pages'] = Pages.stub(stub[:pages]) unless stub[:pages].nil?
        data['records'] = Records.stub(stub[:records]) unless stub[:records].nil?
        data
      end
    end

    # List Stubber for Records
    class Records
      def self.default(visited=[])
        return nil if visited.include?('Records')
        visited = visited + ['Records']
        [
          Record.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Record.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Record
    class Record
      def self.default(visited=[])
        return nil if visited.include?('Record')
        visited = visited + ['Record']
        {
          json_path: 'json_path',
          record_index: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Record.new
        data = {}
        data['jsonPath'] = stub[:json_path] unless stub[:json_path].nil?
        data['recordIndex'] = stub[:record_index] unless stub[:record_index].nil?
        data
      end
    end

    # List Stubber for Pages
    class Pages
      def self.default(visited=[])
        return nil if visited.include?('Pages')
        visited = visited + ['Pages']
        [
          Page.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Page.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Page
    class Page
      def self.default(visited=[])
        return nil if visited.include?('Page')
        visited = visited + ['Page']
        {
          line_range: Range.default(visited),
          offset_range: Range.default(visited),
          page_number: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Page.new
        data = {}
        data['lineRange'] = Range.stub(stub[:line_range]) unless stub[:line_range].nil?
        data['offsetRange'] = Range.stub(stub[:offset_range]) unless stub[:offset_range].nil?
        data['pageNumber'] = stub[:page_number] unless stub[:page_number].nil?
        data
      end
    end

    # Structure Stubber for Range
    class Range
      def self.default(visited=[])
        return nil if visited.include?('Range')
        visited = visited + ['Range']
        {
          end: 1,
          start: 1,
          start_column: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Range.new
        data = {}
        data['end'] = stub[:end] unless stub[:end].nil?
        data['start'] = stub[:start] unless stub[:start].nil?
        data['startColumn'] = stub[:start_column] unless stub[:start_column].nil?
        data
      end
    end

    # List Stubber for Ranges
    class Ranges
      def self.default(visited=[])
        return nil if visited.include?('Ranges')
        visited = visited + ['Ranges']
        [
          Range.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Range.stub(element) unless element.nil?
        end
        data
      end
    end

    # List Stubber for Cells
    class Cells
      def self.default(visited=[])
        return nil if visited.include?('Cells')
        visited = visited + ['Cells']
        [
          Cell.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Cell.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Cell
    class Cell
      def self.default(visited=[])
        return nil if visited.include?('Cell')
        visited = visited + ['Cell']
        {
          cell_reference: 'cell_reference',
          column: 1,
          column_name: 'column_name',
          row: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Cell.new
        data = {}
        data['cellReference'] = stub[:cell_reference] unless stub[:cell_reference].nil?
        data['column'] = stub[:column] unless stub[:column].nil?
        data['columnName'] = stub[:column_name] unless stub[:column_name].nil?
        data['row'] = stub[:row] unless stub[:row].nil?
        data
      end
    end

    # Structure Stubber for CustomDataIdentifiers
    class CustomDataIdentifiers
      def self.default(visited=[])
        return nil if visited.include?('CustomDataIdentifiers')
        visited = visited + ['CustomDataIdentifiers']
        {
          detections: CustomDetections.default(visited),
          total_count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::CustomDataIdentifiers.new
        data = {}
        data['detections'] = CustomDetections.stub(stub[:detections]) unless stub[:detections].nil?
        data['totalCount'] = stub[:total_count] unless stub[:total_count].nil?
        data
      end
    end

    # List Stubber for CustomDetections
    class CustomDetections
      def self.default(visited=[])
        return nil if visited.include?('CustomDetections')
        visited = visited + ['CustomDetections']
        [
          CustomDetection.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CustomDetection.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CustomDetection
    class CustomDetection
      def self.default(visited=[])
        return nil if visited.include?('CustomDetection')
        visited = visited + ['CustomDetection']
        {
          arn: 'arn',
          count: 1,
          name: 'name',
          occurrences: Occurrences.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CustomDetection.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['count'] = stub[:count] unless stub[:count].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['occurrences'] = Occurrences.stub(stub[:occurrences]) unless stub[:occurrences].nil?
        data
      end
    end

    # Operation Stubber for GetFindingsFilter
    class GetFindingsFilter
      def self.default(visited=[])
        {
          action: 'action',
          arn: 'arn',
          description: 'description',
          finding_criteria: FindingCriteria.default(visited),
          id: 'id',
          name: 'name',
          position: 1,
          tags: TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['action'] = stub[:action] unless stub[:action].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['findingCriteria'] = FindingCriteria.stub(stub[:finding_criteria]) unless stub[:finding_criteria].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['position'] = stub[:position] unless stub[:position].nil?
        data['tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for FindingCriteria
    class FindingCriteria
      def self.default(visited=[])
        return nil if visited.include?('FindingCriteria')
        visited = visited + ['FindingCriteria']
        {
          criterion: Criterion.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FindingCriteria.new
        data = {}
        data['criterion'] = Criterion.stub(stub[:criterion]) unless stub[:criterion].nil?
        data
      end
    end

    # Map Stubber for Criterion
    class Criterion
      def self.default(visited=[])
        return nil if visited.include?('Criterion')
        visited = visited + ['Criterion']
        {
          test_key: CriterionAdditionalProperties.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = CriterionAdditionalProperties.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for CriterionAdditionalProperties
    class CriterionAdditionalProperties
      def self.default(visited=[])
        return nil if visited.include?('CriterionAdditionalProperties')
        visited = visited + ['CriterionAdditionalProperties']
        {
          eq: List____listOf__string.default(visited),
          eq_exact_match: List____listOf__string.default(visited),
          gt: 1,
          gte: 1,
          lt: 1,
          lte: 1,
          neq: List____listOf__string.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CriterionAdditionalProperties.new
        data = {}
        data['eq'] = List____listOf__string.stub(stub[:eq]) unless stub[:eq].nil?
        data['eqExactMatch'] = List____listOf__string.stub(stub[:eq_exact_match]) unless stub[:eq_exact_match].nil?
        data['gt'] = stub[:gt] unless stub[:gt].nil?
        data['gte'] = stub[:gte] unless stub[:gte].nil?
        data['lt'] = stub[:lt] unless stub[:lt].nil?
        data['lte'] = stub[:lte] unless stub[:lte].nil?
        data['neq'] = List____listOf__string.stub(stub[:neq]) unless stub[:neq].nil?
        data
      end
    end

    # Operation Stubber for GetFindingsPublicationConfiguration
    class GetFindingsPublicationConfiguration
      def self.default(visited=[])
        {
          security_hub_configuration: SecurityHubConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['securityHubConfiguration'] = SecurityHubConfiguration.stub(stub[:security_hub_configuration]) unless stub[:security_hub_configuration].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for SecurityHubConfiguration
    class SecurityHubConfiguration
      def self.default(visited=[])
        return nil if visited.include?('SecurityHubConfiguration')
        visited = visited + ['SecurityHubConfiguration']
        {
          publish_classification_findings: false,
          publish_policy_findings: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::SecurityHubConfiguration.new
        data = {}
        data['publishClassificationFindings'] = stub[:publish_classification_findings] unless stub[:publish_classification_findings].nil?
        data['publishPolicyFindings'] = stub[:publish_policy_findings] unless stub[:publish_policy_findings].nil?
        data
      end
    end

    # Operation Stubber for GetInvitationsCount
    class GetInvitationsCount
      def self.default(visited=[])
        {
          invitations_count: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['invitationsCount'] = stub[:invitations_count] unless stub[:invitations_count].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetMacieSession
    class GetMacieSession
      def self.default(visited=[])
        {
          created_at: Time.now,
          finding_publishing_frequency: 'finding_publishing_frequency',
          service_role: 'service_role',
          status: 'status',
          updated_at: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['createdAt'] = Hearth::TimeHelper.to_date_time(stub[:created_at]) unless stub[:created_at].nil?
        data['findingPublishingFrequency'] = stub[:finding_publishing_frequency] unless stub[:finding_publishing_frequency].nil?
        data['serviceRole'] = stub[:service_role] unless stub[:service_role].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['updatedAt'] = Hearth::TimeHelper.to_date_time(stub[:updated_at]) unless stub[:updated_at].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetMasterAccount
    class GetMasterAccount
      def self.default(visited=[])
        {
          master: Invitation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['master'] = Invitation.stub(stub[:master]) unless stub[:master].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetMember
    class GetMember
      def self.default(visited=[])
        {
          account_id: 'account_id',
          administrator_account_id: 'administrator_account_id',
          arn: 'arn',
          email: 'email',
          invited_at: Time.now,
          master_account_id: 'master_account_id',
          relationship_status: 'relationship_status',
          tags: TagMap.default(visited),
          updated_at: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['accountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['administratorAccountId'] = stub[:administrator_account_id] unless stub[:administrator_account_id].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['email'] = stub[:email] unless stub[:email].nil?
        data['invitedAt'] = Hearth::TimeHelper.to_date_time(stub[:invited_at]) unless stub[:invited_at].nil?
        data['masterAccountId'] = stub[:master_account_id] unless stub[:master_account_id].nil?
        data['relationshipStatus'] = stub[:relationship_status] unless stub[:relationship_status].nil?
        data['tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['updatedAt'] = Hearth::TimeHelper.to_date_time(stub[:updated_at]) unless stub[:updated_at].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetUsageStatistics
    class GetUsageStatistics
      def self.default(visited=[])
        {
          next_token: 'next_token',
          records: List____listOfUsageRecord.default(visited),
          time_range: 'time_range',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['records'] = List____listOfUsageRecord.stub(stub[:records]) unless stub[:records].nil?
        data['timeRange'] = stub[:time_range] unless stub[:time_range].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfUsageRecord
    class List____listOfUsageRecord
      def self.default(visited=[])
        return nil if visited.include?('List____listOfUsageRecord')
        visited = visited + ['List____listOfUsageRecord']
        [
          UsageRecord.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << UsageRecord.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for UsageRecord
    class UsageRecord
      def self.default(visited=[])
        return nil if visited.include?('UsageRecord')
        visited = visited + ['UsageRecord']
        {
          account_id: 'account_id',
          free_trial_start_date: Time.now,
          usage: List____listOfUsageByAccount.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::UsageRecord.new
        data = {}
        data['accountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['freeTrialStartDate'] = Hearth::TimeHelper.to_date_time(stub[:free_trial_start_date]) unless stub[:free_trial_start_date].nil?
        data['usage'] = List____listOfUsageByAccount.stub(stub[:usage]) unless stub[:usage].nil?
        data
      end
    end

    # List Stubber for __listOfUsageByAccount
    class List____listOfUsageByAccount
      def self.default(visited=[])
        return nil if visited.include?('List____listOfUsageByAccount')
        visited = visited + ['List____listOfUsageByAccount']
        [
          UsageByAccount.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << UsageByAccount.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for UsageByAccount
    class UsageByAccount
      def self.default(visited=[])
        return nil if visited.include?('UsageByAccount')
        visited = visited + ['UsageByAccount']
        {
          currency: 'currency',
          estimated_cost: 'estimated_cost',
          service_limit: ServiceLimit.default(visited),
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::UsageByAccount.new
        data = {}
        data['currency'] = stub[:currency] unless stub[:currency].nil?
        data['estimatedCost'] = stub[:estimated_cost] unless stub[:estimated_cost].nil?
        data['serviceLimit'] = ServiceLimit.stub(stub[:service_limit]) unless stub[:service_limit].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Structure Stubber for ServiceLimit
    class ServiceLimit
      def self.default(visited=[])
        return nil if visited.include?('ServiceLimit')
        visited = visited + ['ServiceLimit']
        {
          is_service_limited: false,
          unit: 'unit',
          value: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ServiceLimit.new
        data = {}
        data['isServiceLimited'] = stub[:is_service_limited] unless stub[:is_service_limited].nil?
        data['unit'] = stub[:unit] unless stub[:unit].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for GetUsageTotals
    class GetUsageTotals
      def self.default(visited=[])
        {
          time_range: 'time_range',
          usage_totals: List____listOfUsageTotal.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['timeRange'] = stub[:time_range] unless stub[:time_range].nil?
        data['usageTotals'] = List____listOfUsageTotal.stub(stub[:usage_totals]) unless stub[:usage_totals].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfUsageTotal
    class List____listOfUsageTotal
      def self.default(visited=[])
        return nil if visited.include?('List____listOfUsageTotal')
        visited = visited + ['List____listOfUsageTotal']
        [
          UsageTotal.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << UsageTotal.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for UsageTotal
    class UsageTotal
      def self.default(visited=[])
        return nil if visited.include?('UsageTotal')
        visited = visited + ['UsageTotal']
        {
          currency: 'currency',
          estimated_cost: 'estimated_cost',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::UsageTotal.new
        data = {}
        data['currency'] = stub[:currency] unless stub[:currency].nil?
        data['estimatedCost'] = stub[:estimated_cost] unless stub[:estimated_cost].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Operation Stubber for ListClassificationJobs
    class ListClassificationJobs
      def self.default(visited=[])
        {
          items: List____listOfJobSummary.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['items'] = List____listOfJobSummary.stub(stub[:items]) unless stub[:items].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfJobSummary
    class List____listOfJobSummary
      def self.default(visited=[])
        return nil if visited.include?('List____listOfJobSummary')
        visited = visited + ['List____listOfJobSummary']
        [
          JobSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << JobSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for JobSummary
    class JobSummary
      def self.default(visited=[])
        return nil if visited.include?('JobSummary')
        visited = visited + ['JobSummary']
        {
          bucket_definitions: List____listOfS3BucketDefinitionForJob.default(visited),
          created_at: Time.now,
          job_id: 'job_id',
          job_status: 'job_status',
          job_type: 'job_type',
          last_run_error_status: LastRunErrorStatus.default(visited),
          name: 'name',
          user_paused_details: UserPausedDetails.default(visited),
          bucket_criteria: S3BucketCriteriaForJob.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::JobSummary.new
        data = {}
        data['bucketDefinitions'] = List____listOfS3BucketDefinitionForJob.stub(stub[:bucket_definitions]) unless stub[:bucket_definitions].nil?
        data['createdAt'] = Hearth::TimeHelper.to_date_time(stub[:created_at]) unless stub[:created_at].nil?
        data['jobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['jobStatus'] = stub[:job_status] unless stub[:job_status].nil?
        data['jobType'] = stub[:job_type] unless stub[:job_type].nil?
        data['lastRunErrorStatus'] = LastRunErrorStatus.stub(stub[:last_run_error_status]) unless stub[:last_run_error_status].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['userPausedDetails'] = UserPausedDetails.stub(stub[:user_paused_details]) unless stub[:user_paused_details].nil?
        data['bucketCriteria'] = S3BucketCriteriaForJob.stub(stub[:bucket_criteria]) unless stub[:bucket_criteria].nil?
        data
      end
    end

    # Operation Stubber for ListCustomDataIdentifiers
    class ListCustomDataIdentifiers
      def self.default(visited=[])
        {
          items: List____listOfCustomDataIdentifierSummary.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['items'] = List____listOfCustomDataIdentifierSummary.stub(stub[:items]) unless stub[:items].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfCustomDataIdentifierSummary
    class List____listOfCustomDataIdentifierSummary
      def self.default(visited=[])
        return nil if visited.include?('List____listOfCustomDataIdentifierSummary')
        visited = visited + ['List____listOfCustomDataIdentifierSummary']
        [
          CustomDataIdentifierSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CustomDataIdentifierSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CustomDataIdentifierSummary
    class CustomDataIdentifierSummary
      def self.default(visited=[])
        return nil if visited.include?('CustomDataIdentifierSummary')
        visited = visited + ['CustomDataIdentifierSummary']
        {
          arn: 'arn',
          created_at: Time.now,
          description: 'description',
          id: 'id',
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::CustomDataIdentifierSummary.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['createdAt'] = Hearth::TimeHelper.to_date_time(stub[:created_at]) unless stub[:created_at].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Operation Stubber for ListFindings
    class ListFindings
      def self.default(visited=[])
        {
          finding_ids: List____listOf__string.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['findingIds'] = List____listOf__string.stub(stub[:finding_ids]) unless stub[:finding_ids].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListFindingsFilters
    class ListFindingsFilters
      def self.default(visited=[])
        {
          findings_filter_list_items: List____listOfFindingsFilterListItem.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['findingsFilterListItems'] = List____listOfFindingsFilterListItem.stub(stub[:findings_filter_list_items]) unless stub[:findings_filter_list_items].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfFindingsFilterListItem
    class List____listOfFindingsFilterListItem
      def self.default(visited=[])
        return nil if visited.include?('List____listOfFindingsFilterListItem')
        visited = visited + ['List____listOfFindingsFilterListItem']
        [
          FindingsFilterListItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << FindingsFilterListItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FindingsFilterListItem
    class FindingsFilterListItem
      def self.default(visited=[])
        return nil if visited.include?('FindingsFilterListItem')
        visited = visited + ['FindingsFilterListItem']
        {
          action: 'action',
          arn: 'arn',
          id: 'id',
          name: 'name',
          tags: TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FindingsFilterListItem.new
        data = {}
        data['action'] = stub[:action] unless stub[:action].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for ListInvitations
    class ListInvitations
      def self.default(visited=[])
        {
          invitations: List____listOfInvitation.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['invitations'] = List____listOfInvitation.stub(stub[:invitations]) unless stub[:invitations].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfInvitation
    class List____listOfInvitation
      def self.default(visited=[])
        return nil if visited.include?('List____listOfInvitation')
        visited = visited + ['List____listOfInvitation']
        [
          Invitation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Invitation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListManagedDataIdentifiers
    class ListManagedDataIdentifiers
      def self.default(visited=[])
        {
          items: List____listOfManagedDataIdentifierSummary.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['items'] = List____listOfManagedDataIdentifierSummary.stub(stub[:items]) unless stub[:items].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfManagedDataIdentifierSummary
    class List____listOfManagedDataIdentifierSummary
      def self.default(visited=[])
        return nil if visited.include?('List____listOfManagedDataIdentifierSummary')
        visited = visited + ['List____listOfManagedDataIdentifierSummary']
        [
          ManagedDataIdentifierSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ManagedDataIdentifierSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ManagedDataIdentifierSummary
    class ManagedDataIdentifierSummary
      def self.default(visited=[])
        return nil if visited.include?('ManagedDataIdentifierSummary')
        visited = visited + ['ManagedDataIdentifierSummary']
        {
          category: 'category',
          id: 'id',
        }
      end

      def self.stub(stub)
        stub ||= Types::ManagedDataIdentifierSummary.new
        data = {}
        data['category'] = stub[:category] unless stub[:category].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data
      end
    end

    # Operation Stubber for ListMembers
    class ListMembers
      def self.default(visited=[])
        {
          members: List____listOfMember.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['members'] = List____listOfMember.stub(stub[:members]) unless stub[:members].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfMember
    class List____listOfMember
      def self.default(visited=[])
        return nil if visited.include?('List____listOfMember')
        visited = visited + ['List____listOfMember']
        [
          Member.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Member.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Member
    class Member
      def self.default(visited=[])
        return nil if visited.include?('Member')
        visited = visited + ['Member']
        {
          account_id: 'account_id',
          administrator_account_id: 'administrator_account_id',
          arn: 'arn',
          email: 'email',
          invited_at: Time.now,
          master_account_id: 'master_account_id',
          relationship_status: 'relationship_status',
          tags: TagMap.default(visited),
          updated_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Member.new
        data = {}
        data['accountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['administratorAccountId'] = stub[:administrator_account_id] unless stub[:administrator_account_id].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['email'] = stub[:email] unless stub[:email].nil?
        data['invitedAt'] = Hearth::TimeHelper.to_date_time(stub[:invited_at]) unless stub[:invited_at].nil?
        data['masterAccountId'] = stub[:master_account_id] unless stub[:master_account_id].nil?
        data['relationshipStatus'] = stub[:relationship_status] unless stub[:relationship_status].nil?
        data['tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['updatedAt'] = Hearth::TimeHelper.to_date_time(stub[:updated_at]) unless stub[:updated_at].nil?
        data
      end
    end

    # Operation Stubber for ListOrganizationAdminAccounts
    class ListOrganizationAdminAccounts
      def self.default(visited=[])
        {
          admin_accounts: List____listOfAdminAccount.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['adminAccounts'] = List____listOfAdminAccount.stub(stub[:admin_accounts]) unless stub[:admin_accounts].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfAdminAccount
    class List____listOfAdminAccount
      def self.default(visited=[])
        return nil if visited.include?('List____listOfAdminAccount')
        visited = visited + ['List____listOfAdminAccount']
        [
          AdminAccount.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AdminAccount.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AdminAccount
    class AdminAccount
      def self.default(visited=[])
        return nil if visited.include?('AdminAccount')
        visited = visited + ['AdminAccount']
        {
          account_id: 'account_id',
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::AdminAccount.new
        data = {}
        data['accountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for PutClassificationExportConfiguration
    class PutClassificationExportConfiguration
      def self.default(visited=[])
        {
          configuration: ClassificationExportConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['configuration'] = ClassificationExportConfiguration.stub(stub[:configuration]) unless stub[:configuration].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for PutFindingsPublicationConfiguration
    class PutFindingsPublicationConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for SearchResources
    class SearchResources
      def self.default(visited=[])
        {
          matching_resources: List____listOfMatchingResource.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['matchingResources'] = List____listOfMatchingResource.stub(stub[:matching_resources]) unless stub[:matching_resources].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfMatchingResource
    class List____listOfMatchingResource
      def self.default(visited=[])
        return nil if visited.include?('List____listOfMatchingResource')
        visited = visited + ['List____listOfMatchingResource']
        [
          MatchingResource.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << MatchingResource.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MatchingResource
    class MatchingResource
      def self.default(visited=[])
        return nil if visited.include?('MatchingResource')
        visited = visited + ['MatchingResource']
        {
          matching_bucket: MatchingBucket.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MatchingResource.new
        data = {}
        data['matchingBucket'] = MatchingBucket.stub(stub[:matching_bucket]) unless stub[:matching_bucket].nil?
        data
      end
    end

    # Structure Stubber for MatchingBucket
    class MatchingBucket
      def self.default(visited=[])
        return nil if visited.include?('MatchingBucket')
        visited = visited + ['MatchingBucket']
        {
          account_id: 'account_id',
          bucket_name: 'bucket_name',
          classifiable_object_count: 1,
          classifiable_size_in_bytes: 1,
          error_code: 'error_code',
          error_message: 'error_message',
          job_details: JobDetails.default(visited),
          object_count: 1,
          object_count_by_encryption_type: ObjectCountByEncryptionType.default(visited),
          size_in_bytes: 1,
          size_in_bytes_compressed: 1,
          unclassifiable_object_count: ObjectLevelStatistics.default(visited),
          unclassifiable_object_size_in_bytes: ObjectLevelStatistics.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MatchingBucket.new
        data = {}
        data['accountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['bucketName'] = stub[:bucket_name] unless stub[:bucket_name].nil?
        data['classifiableObjectCount'] = stub[:classifiable_object_count] unless stub[:classifiable_object_count].nil?
        data['classifiableSizeInBytes'] = stub[:classifiable_size_in_bytes] unless stub[:classifiable_size_in_bytes].nil?
        data['errorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['errorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data['jobDetails'] = JobDetails.stub(stub[:job_details]) unless stub[:job_details].nil?
        data['objectCount'] = stub[:object_count] unless stub[:object_count].nil?
        data['objectCountByEncryptionType'] = ObjectCountByEncryptionType.stub(stub[:object_count_by_encryption_type]) unless stub[:object_count_by_encryption_type].nil?
        data['sizeInBytes'] = stub[:size_in_bytes] unless stub[:size_in_bytes].nil?
        data['sizeInBytesCompressed'] = stub[:size_in_bytes_compressed] unless stub[:size_in_bytes_compressed].nil?
        data['unclassifiableObjectCount'] = ObjectLevelStatistics.stub(stub[:unclassifiable_object_count]) unless stub[:unclassifiable_object_count].nil?
        data['unclassifiableObjectSizeInBytes'] = ObjectLevelStatistics.stub(stub[:unclassifiable_object_size_in_bytes]) unless stub[:unclassifiable_object_size_in_bytes].nil?
        data
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for TestCustomDataIdentifier
    class TestCustomDataIdentifier
      def self.default(visited=[])
        {
          match_count: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['matchCount'] = stub[:match_count] unless stub[:match_count].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for UpdateClassificationJob
    class UpdateClassificationJob
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateFindingsFilter
    class UpdateFindingsFilter
      def self.default(visited=[])
        {
          arn: 'arn',
          id: 'id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateMacieSession
    class UpdateMacieSession
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateMemberSession
    class UpdateMemberSession
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateOrganizationConfiguration
    class UpdateOrganizationConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end
  end
end
