# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::S3Control
  module Parsers

    # Operation Parser for CreateAccessPoint
    class CreateAccessPoint
      def self.parse(http_resp)
        data = Types::CreateAccessPointOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('AccessPointArn') do |node|
          data.access_point_arn = (node.text || '')
        end
        xml.at('Alias') do |node|
          data.alias = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateAccessPointForObjectLambda
    class CreateAccessPointForObjectLambda
      def self.parse(http_resp)
        data = Types::CreateAccessPointForObjectLambdaOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('ObjectLambdaAccessPointArn') do |node|
          data.object_lambda_access_point_arn = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateBucket
    class CreateBucket
      def self.parse(http_resp)
        data = Types::CreateBucketOutput.new
        data.location = http_resp.headers['Location']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('BucketArn') do |node|
          data.bucket_arn = (node.text || '')
        end
        data
      end
    end

    # Error Parser for BucketAlreadyExists
    class BucketAlreadyExists
      def self.parse(http_resp)
        data = Types::BucketAlreadyExists.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        data
      end
    end

    # Error Parser for BucketAlreadyOwnedByYou
    class BucketAlreadyOwnedByYou
      def self.parse(http_resp)
        data = Types::BucketAlreadyOwnedByYou.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        data
      end
    end

    # Operation Parser for CreateJob
    class CreateJob
      def self.parse(http_resp)
        data = Types::CreateJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('JobId') do |node|
          data.job_id = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InternalServiceException
    class InternalServiceException
      def self.parse(http_resp)
        data = Types::InternalServiceException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TooManyRequestsException
    class TooManyRequestsException
      def self.parse(http_resp)
        data = Types::TooManyRequestsException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for IdempotencyException
    class IdempotencyException
      def self.parse(http_resp)
        data = Types::IdempotencyException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for BadRequestException
    class BadRequestException
      def self.parse(http_resp)
        data = Types::BadRequestException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateMultiRegionAccessPoint
    class CreateMultiRegionAccessPoint
      def self.parse(http_resp)
        data = Types::CreateMultiRegionAccessPointOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('RequestTokenARN') do |node|
          data.request_token_arn = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteAccessPoint
    class DeleteAccessPoint
      def self.parse(http_resp)
        data = Types::DeleteAccessPointOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for DeleteAccessPointForObjectLambda
    class DeleteAccessPointForObjectLambda
      def self.parse(http_resp)
        data = Types::DeleteAccessPointForObjectLambdaOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for DeleteAccessPointPolicy
    class DeleteAccessPointPolicy
      def self.parse(http_resp)
        data = Types::DeleteAccessPointPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for DeleteAccessPointPolicyForObjectLambda
    class DeleteAccessPointPolicyForObjectLambda
      def self.parse(http_resp)
        data = Types::DeleteAccessPointPolicyForObjectLambdaOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for DeleteBucket
    class DeleteBucket
      def self.parse(http_resp)
        data = Types::DeleteBucketOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for DeleteBucketLifecycleConfiguration
    class DeleteBucketLifecycleConfiguration
      def self.parse(http_resp)
        data = Types::DeleteBucketLifecycleConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for DeleteBucketPolicy
    class DeleteBucketPolicy
      def self.parse(http_resp)
        data = Types::DeleteBucketPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for DeleteBucketTagging
    class DeleteBucketTagging
      def self.parse(http_resp)
        data = Types::DeleteBucketTaggingOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for DeleteJobTagging
    class DeleteJobTagging
      def self.parse(http_resp)
        data = Types::DeleteJobTaggingOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Error Parser for NotFoundException
    class NotFoundException
      def self.parse(http_resp)
        data = Types::NotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteMultiRegionAccessPoint
    class DeleteMultiRegionAccessPoint
      def self.parse(http_resp)
        data = Types::DeleteMultiRegionAccessPointOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('RequestTokenARN') do |node|
          data.request_token_arn = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeletePublicAccessBlock
    class DeletePublicAccessBlock
      def self.parse(http_resp)
        data = Types::DeletePublicAccessBlockOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for DeleteStorageLensConfiguration
    class DeleteStorageLensConfiguration
      def self.parse(http_resp)
        data = Types::DeleteStorageLensConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for DeleteStorageLensConfigurationTagging
    class DeleteStorageLensConfigurationTagging
      def self.parse(http_resp)
        data = Types::DeleteStorageLensConfigurationTaggingOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for DescribeJob
    class DescribeJob
      def self.parse(http_resp)
        data = Types::DescribeJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('Job') do |node|
          data.job = Parsers::JobDescriptor.parse(node)
        end
        data
      end
    end

    class JobDescriptor
      def self.parse(xml)
        data = Types::JobDescriptor.new
        xml.at('JobId') do |node|
          data.job_id = (node.text || '')
        end
        xml.at('ConfirmationRequired') do |node|
          data.confirmation_required = (node.text == 'true')
        end
        xml.at('Description') do |node|
          data.description = (node.text || '')
        end
        xml.at('JobArn') do |node|
          data.job_arn = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('Manifest') do |node|
          data.manifest = Parsers::JobManifest.parse(node)
        end
        xml.at('Operation') do |node|
          data.operation = Parsers::JobOperation.parse(node)
        end
        xml.at('Priority') do |node|
          data.priority = node.text&.to_i
        end
        xml.at('ProgressSummary') do |node|
          data.progress_summary = Parsers::JobProgressSummary.parse(node)
        end
        xml.at('StatusUpdateReason') do |node|
          data.status_update_reason = (node.text || '')
        end
        xml.at('FailureReasons') do |node|
          children = node.children('member')
          data.failure_reasons = Parsers::JobFailureList.parse(children)
        end
        xml.at('Report') do |node|
          data.report = Parsers::JobReport.parse(node)
        end
        xml.at('CreationTime') do |node|
          data.creation_time = Time.parse(node.text) if node.text
        end
        xml.at('TerminationDate') do |node|
          data.termination_date = Time.parse(node.text) if node.text
        end
        xml.at('RoleArn') do |node|
          data.role_arn = (node.text || '')
        end
        xml.at('SuspendedDate') do |node|
          data.suspended_date = Time.parse(node.text) if node.text
        end
        xml.at('SuspendedCause') do |node|
          data.suspended_cause = (node.text || '')
        end
        xml.at('ManifestGenerator') do |node|
          data.manifest_generator = Parsers::JobManifestGenerator.parse(node)
        end
        xml.at('GeneratedManifestDescriptor') do |node|
          data.generated_manifest_descriptor = Parsers::S3GeneratedManifestDescriptor.parse(node)
        end
        return data
      end
    end

    class S3GeneratedManifestDescriptor
      def self.parse(xml)
        data = Types::S3GeneratedManifestDescriptor.new
        xml.at('Format') do |node|
          data.format = (node.text || '')
        end
        xml.at('Location') do |node|
          data.location = Parsers::JobManifestLocation.parse(node)
        end
        return data
      end
    end

    class JobManifestLocation
      def self.parse(xml)
        data = Types::JobManifestLocation.new
        xml.at('ObjectArn') do |node|
          data.object_arn = (node.text || '')
        end
        xml.at('ObjectVersionId') do |node|
          data.object_version_id = (node.text || '')
        end
        xml.at('ETag') do |node|
          data.e_tag = (node.text || '')
        end
        return data
      end
    end

    class JobManifestGenerator
      def self.parse(xml)
        value = xml.children.first
        key = value.name
        case key
        when 'S3JobManifestGenerator'
          node = value
          value = Parsers::S3JobManifestGenerator.parse(node)
          Types::JobManifestGenerator::S3JobManifestGenerator.new(value) if value
        else
          Types::JobManifestGenerator::Unknown.new({name: key, value: value})
        end
      end
    end

    class S3JobManifestGenerator
      def self.parse(xml)
        data = Types::S3JobManifestGenerator.new
        xml.at('ExpectedBucketOwner') do |node|
          data.expected_bucket_owner = (node.text || '')
        end
        xml.at('SourceBucket') do |node|
          data.source_bucket = (node.text || '')
        end
        xml.at('ManifestOutputLocation') do |node|
          data.manifest_output_location = Parsers::S3ManifestOutputLocation.parse(node)
        end
        xml.at('Filter') do |node|
          data.filter = Parsers::JobManifestGeneratorFilter.parse(node)
        end
        xml.at('EnableManifestOutput') do |node|
          data.enable_manifest_output = (node.text == 'true')
        end
        return data
      end
    end

    class JobManifestGeneratorFilter
      def self.parse(xml)
        data = Types::JobManifestGeneratorFilter.new
        xml.at('EligibleForReplication') do |node|
          data.eligible_for_replication = (node.text == 'true')
        end
        xml.at('CreatedAfter') do |node|
          data.created_after = Time.parse(node.text) if node.text
        end
        xml.at('CreatedBefore') do |node|
          data.created_before = Time.parse(node.text) if node.text
        end
        xml.at('ObjectReplicationStatuses') do |node|
          children = node.children('member')
          data.object_replication_statuses = Parsers::ReplicationStatusFilterList.parse(children)
        end
        return data
      end
    end

    class ReplicationStatusFilterList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class S3ManifestOutputLocation
      def self.parse(xml)
        data = Types::S3ManifestOutputLocation.new
        xml.at('ExpectedManifestBucketOwner') do |node|
          data.expected_manifest_bucket_owner = (node.text || '')
        end
        xml.at('Bucket') do |node|
          data.bucket = (node.text || '')
        end
        xml.at('ManifestPrefix') do |node|
          data.manifest_prefix = (node.text || '')
        end
        xml.at('ManifestEncryption') do |node|
          data.manifest_encryption = Parsers::GeneratedManifestEncryption.parse(node)
        end
        xml.at('ManifestFormat') do |node|
          data.manifest_format = (node.text || '')
        end
        return data
      end
    end

    class GeneratedManifestEncryption
      def self.parse(xml)
        data = Types::GeneratedManifestEncryption.new
        xml.at('SSE-S3') do |node|
          data.sses3 = Parsers::SSES3Encryption.parse(node)
        end
        xml.at('SSE-KMS') do |node|
          data.ssekms = Parsers::SSEKMSEncryption.parse(node)
        end
        return data
      end
    end

    class SSEKMSEncryption
      def self.parse(xml)
        data = Types::SSEKMSEncryption.new
        xml.at('KeyId') do |node|
          data.key_id = (node.text || '')
        end
        return data
      end
    end

    class SSES3Encryption
      def self.parse(xml)
        data = Types::SSES3Encryption.new
        return data
      end
    end

    class JobReport
      def self.parse(xml)
        data = Types::JobReport.new
        xml.at('Bucket') do |node|
          data.bucket = (node.text || '')
        end
        xml.at('Format') do |node|
          data.format = (node.text || '')
        end
        xml.at('Enabled') do |node|
          data.enabled = (node.text == 'true')
        end
        xml.at('Prefix') do |node|
          data.prefix = (node.text || '')
        end
        xml.at('ReportScope') do |node|
          data.report_scope = (node.text || '')
        end
        return data
      end
    end

    class JobFailureList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::JobFailure.parse(node)
        end
        data
      end
    end

    class JobFailure
      def self.parse(xml)
        data = Types::JobFailure.new
        xml.at('FailureCode') do |node|
          data.failure_code = (node.text || '')
        end
        xml.at('FailureReason') do |node|
          data.failure_reason = (node.text || '')
        end
        return data
      end
    end

    class JobProgressSummary
      def self.parse(xml)
        data = Types::JobProgressSummary.new
        xml.at('TotalNumberOfTasks') do |node|
          data.total_number_of_tasks = node.text&.to_i
        end
        xml.at('NumberOfTasksSucceeded') do |node|
          data.number_of_tasks_succeeded = node.text&.to_i
        end
        xml.at('NumberOfTasksFailed') do |node|
          data.number_of_tasks_failed = node.text&.to_i
        end
        xml.at('Timers') do |node|
          data.timers = Parsers::JobTimers.parse(node)
        end
        return data
      end
    end

    class JobTimers
      def self.parse(xml)
        data = Types::JobTimers.new
        xml.at('ElapsedTimeInActiveSeconds') do |node|
          data.elapsed_time_in_active_seconds = node.text&.to_i
        end
        return data
      end
    end

    class JobOperation
      def self.parse(xml)
        data = Types::JobOperation.new
        xml.at('LambdaInvoke') do |node|
          data.lambda_invoke = Parsers::LambdaInvokeOperation.parse(node)
        end
        xml.at('S3PutObjectCopy') do |node|
          data.s3_put_object_copy = Parsers::S3CopyObjectOperation.parse(node)
        end
        xml.at('S3PutObjectAcl') do |node|
          data.s3_put_object_acl = Parsers::S3SetObjectAclOperation.parse(node)
        end
        xml.at('S3PutObjectTagging') do |node|
          data.s3_put_object_tagging = Parsers::S3SetObjectTaggingOperation.parse(node)
        end
        xml.at('S3DeleteObjectTagging') do |node|
          data.s3_delete_object_tagging = Parsers::S3DeleteObjectTaggingOperation.parse(node)
        end
        xml.at('S3InitiateRestoreObject') do |node|
          data.s3_initiate_restore_object = Parsers::S3InitiateRestoreObjectOperation.parse(node)
        end
        xml.at('S3PutObjectLegalHold') do |node|
          data.s3_put_object_legal_hold = Parsers::S3SetObjectLegalHoldOperation.parse(node)
        end
        xml.at('S3PutObjectRetention') do |node|
          data.s3_put_object_retention = Parsers::S3SetObjectRetentionOperation.parse(node)
        end
        xml.at('S3ReplicateObject') do |node|
          data.s3_replicate_object = Parsers::S3ReplicateObjectOperation.parse(node)
        end
        return data
      end
    end

    class S3ReplicateObjectOperation
      def self.parse(xml)
        data = Types::S3ReplicateObjectOperation.new
        return data
      end
    end

    class S3SetObjectRetentionOperation
      def self.parse(xml)
        data = Types::S3SetObjectRetentionOperation.new
        xml.at('BypassGovernanceRetention') do |node|
          data.bypass_governance_retention = (node.text == 'true')
        end
        xml.at('Retention') do |node|
          data.retention = Parsers::S3Retention.parse(node)
        end
        return data
      end
    end

    class S3Retention
      def self.parse(xml)
        data = Types::S3Retention.new
        xml.at('RetainUntilDate') do |node|
          data.retain_until_date = Time.parse(node.text) if node.text
        end
        xml.at('Mode') do |node|
          data.mode = (node.text || '')
        end
        return data
      end
    end

    class S3SetObjectLegalHoldOperation
      def self.parse(xml)
        data = Types::S3SetObjectLegalHoldOperation.new
        xml.at('LegalHold') do |node|
          data.legal_hold = Parsers::S3ObjectLockLegalHold.parse(node)
        end
        return data
      end
    end

    class S3ObjectLockLegalHold
      def self.parse(xml)
        data = Types::S3ObjectLockLegalHold.new
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        return data
      end
    end

    class S3InitiateRestoreObjectOperation
      def self.parse(xml)
        data = Types::S3InitiateRestoreObjectOperation.new
        xml.at('ExpirationInDays') do |node|
          data.expiration_in_days = node.text&.to_i
        end
        xml.at('GlacierJobTier') do |node|
          data.glacier_job_tier = (node.text || '')
        end
        return data
      end
    end

    class S3DeleteObjectTaggingOperation
      def self.parse(xml)
        data = Types::S3DeleteObjectTaggingOperation.new
        return data
      end
    end

    class S3SetObjectTaggingOperation
      def self.parse(xml)
        data = Types::S3SetObjectTaggingOperation.new
        xml.at('TagSet') do |node|
          children = node.children('member')
          data.tag_set = Parsers::S3TagSet.parse(children)
        end
        return data
      end
    end

    class S3TagSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::S3Tag.parse(node)
        end
        data
      end
    end

    class S3Tag
      def self.parse(xml)
        data = Types::S3Tag.new
        xml.at('Key') do |node|
          data.key = (node.text || '')
        end
        xml.at('Value') do |node|
          data.value = (node.text || '')
        end
        return data
      end
    end

    class S3SetObjectAclOperation
      def self.parse(xml)
        data = Types::S3SetObjectAclOperation.new
        xml.at('AccessControlPolicy') do |node|
          data.access_control_policy = Parsers::S3AccessControlPolicy.parse(node)
        end
        return data
      end
    end

    class S3AccessControlPolicy
      def self.parse(xml)
        data = Types::S3AccessControlPolicy.new
        xml.at('AccessControlList') do |node|
          data.access_control_list = Parsers::S3AccessControlList.parse(node)
        end
        xml.at('CannedAccessControlList') do |node|
          data.canned_access_control_list = (node.text || '')
        end
        return data
      end
    end

    class S3AccessControlList
      def self.parse(xml)
        data = Types::S3AccessControlList.new
        xml.at('Owner') do |node|
          data.owner = Parsers::S3ObjectOwner.parse(node)
        end
        xml.at('Grants') do |node|
          children = node.children('member')
          data.grants = Parsers::S3GrantList.parse(children)
        end
        return data
      end
    end

    class S3GrantList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::S3Grant.parse(node)
        end
        data
      end
    end

    class S3Grant
      def self.parse(xml)
        data = Types::S3Grant.new
        xml.at('Grantee') do |node|
          data.grantee = Parsers::S3Grantee.parse(node)
        end
        xml.at('Permission') do |node|
          data.permission = (node.text || '')
        end
        return data
      end
    end

    class S3Grantee
      def self.parse(xml)
        data = Types::S3Grantee.new
        xml.at('TypeIdentifier') do |node|
          data.type_identifier = (node.text || '')
        end
        xml.at('Identifier') do |node|
          data.identifier = (node.text || '')
        end
        xml.at('DisplayName') do |node|
          data.display_name = (node.text || '')
        end
        return data
      end
    end

    class S3ObjectOwner
      def self.parse(xml)
        data = Types::S3ObjectOwner.new
        xml.at('ID') do |node|
          data.id = (node.text || '')
        end
        xml.at('DisplayName') do |node|
          data.display_name = (node.text || '')
        end
        return data
      end
    end

    class S3CopyObjectOperation
      def self.parse(xml)
        data = Types::S3CopyObjectOperation.new
        xml.at('TargetResource') do |node|
          data.target_resource = (node.text || '')
        end
        xml.at('CannedAccessControlList') do |node|
          data.canned_access_control_list = (node.text || '')
        end
        xml.at('AccessControlGrants') do |node|
          children = node.children('member')
          data.access_control_grants = Parsers::S3GrantList.parse(children)
        end
        xml.at('MetadataDirective') do |node|
          data.metadata_directive = (node.text || '')
        end
        xml.at('ModifiedSinceConstraint') do |node|
          data.modified_since_constraint = Time.parse(node.text) if node.text
        end
        xml.at('NewObjectMetadata') do |node|
          data.new_object_metadata = Parsers::S3ObjectMetadata.parse(node)
        end
        xml.at('NewObjectTagging') do |node|
          children = node.children('member')
          data.new_object_tagging = Parsers::S3TagSet.parse(children)
        end
        xml.at('RedirectLocation') do |node|
          data.redirect_location = (node.text || '')
        end
        xml.at('RequesterPays') do |node|
          data.requester_pays = (node.text == 'true')
        end
        xml.at('StorageClass') do |node|
          data.storage_class = (node.text || '')
        end
        xml.at('UnModifiedSinceConstraint') do |node|
          data.un_modified_since_constraint = Time.parse(node.text) if node.text
        end
        xml.at('SSEAwsKmsKeyId') do |node|
          data.sse_aws_kms_key_id = (node.text || '')
        end
        xml.at('TargetKeyPrefix') do |node|
          data.target_key_prefix = (node.text || '')
        end
        xml.at('ObjectLockLegalHoldStatus') do |node|
          data.object_lock_legal_hold_status = (node.text || '')
        end
        xml.at('ObjectLockMode') do |node|
          data.object_lock_mode = (node.text || '')
        end
        xml.at('ObjectLockRetainUntilDate') do |node|
          data.object_lock_retain_until_date = Time.parse(node.text) if node.text
        end
        xml.at('BucketKeyEnabled') do |node|
          data.bucket_key_enabled = (node.text == 'true')
        end
        xml.at('ChecksumAlgorithm') do |node|
          data.checksum_algorithm = (node.text || '')
        end
        return data
      end
    end

    class S3ObjectMetadata
      def self.parse(xml)
        data = Types::S3ObjectMetadata.new
        xml.at('CacheControl') do |node|
          data.cache_control = (node.text || '')
        end
        xml.at('ContentDisposition') do |node|
          data.content_disposition = (node.text || '')
        end
        xml.at('ContentEncoding') do |node|
          data.content_encoding = (node.text || '')
        end
        xml.at('ContentLanguage') do |node|
          data.content_language = (node.text || '')
        end
        xml.at('UserMetadata') do |node|
          children = node.children('entry')
          data.user_metadata = Parsers::S3UserMetadata.parse(children)
        end
        xml.at('ContentLength') do |node|
          data.content_length = node.text&.to_i
        end
        xml.at('ContentMD5') do |node|
          data.content_md5 = (node.text || '')
        end
        xml.at('ContentType') do |node|
          data.content_type = (node.text || '')
        end
        xml.at('HttpExpiresDate') do |node|
          data.http_expires_date = Time.parse(node.text) if node.text
        end
        xml.at('RequesterCharged') do |node|
          data.requester_charged = (node.text == 'true')
        end
        xml.at('SSEAlgorithm') do |node|
          data.sse_algorithm = (node.text || '')
        end
        return data
      end
    end

    class S3UserMetadata
      def self.parse(xml)
        data = {}
        xml.each do |entry_node|
          key = entry_node.at('key').text
          node = entry_node.at('value')
          data[key] = (node.text || '')
        end
        data
      end
    end

    class LambdaInvokeOperation
      def self.parse(xml)
        data = Types::LambdaInvokeOperation.new
        xml.at('FunctionArn') do |node|
          data.function_arn = (node.text || '')
        end
        return data
      end
    end

    class JobManifest
      def self.parse(xml)
        data = Types::JobManifest.new
        xml.at('Spec') do |node|
          data.spec = Parsers::JobManifestSpec.parse(node)
        end
        xml.at('Location') do |node|
          data.location = Parsers::JobManifestLocation.parse(node)
        end
        return data
      end
    end

    class JobManifestSpec
      def self.parse(xml)
        data = Types::JobManifestSpec.new
        xml.at('Format') do |node|
          data.format = (node.text || '')
        end
        xml.at('Fields') do |node|
          children = node.children('member')
          data.fields = Parsers::JobManifestFieldList.parse(children)
        end
        return data
      end
    end

    class JobManifestFieldList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DescribeMultiRegionAccessPointOperation
    class DescribeMultiRegionAccessPointOperation
      def self.parse(http_resp)
        data = Types::DescribeMultiRegionAccessPointOperationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('AsyncOperation') do |node|
          data.async_operation = Parsers::AsyncOperation.parse(node)
        end
        data
      end
    end

    class AsyncOperation
      def self.parse(xml)
        data = Types::AsyncOperation.new
        xml.at('CreationTime') do |node|
          data.creation_time = Time.parse(node.text) if node.text
        end
        xml.at('Operation') do |node|
          data.operation = (node.text || '')
        end
        xml.at('RequestTokenARN') do |node|
          data.request_token_arn = (node.text || '')
        end
        xml.at('RequestParameters') do |node|
          data.request_parameters = Parsers::AsyncRequestParameters.parse(node)
        end
        xml.at('RequestStatus') do |node|
          data.request_status = (node.text || '')
        end
        xml.at('ResponseDetails') do |node|
          data.response_details = Parsers::AsyncResponseDetails.parse(node)
        end
        return data
      end
    end

    class AsyncResponseDetails
      def self.parse(xml)
        data = Types::AsyncResponseDetails.new
        xml.at('MultiRegionAccessPointDetails') do |node|
          data.multi_region_access_point_details = Parsers::MultiRegionAccessPointsAsyncResponse.parse(node)
        end
        xml.at('ErrorDetails') do |node|
          data.error_details = Parsers::AsyncErrorDetails.parse(node)
        end
        return data
      end
    end

    class AsyncErrorDetails
      def self.parse(xml)
        data = Types::AsyncErrorDetails.new
        xml.at('Code') do |node|
          data.code = (node.text || '')
        end
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        xml.at('Resource') do |node|
          data.resource = (node.text || '')
        end
        xml.at('RequestId') do |node|
          data.request_id = (node.text || '')
        end
        return data
      end
    end

    class MultiRegionAccessPointsAsyncResponse
      def self.parse(xml)
        data = Types::MultiRegionAccessPointsAsyncResponse.new
        xml.at('Regions') do |node|
          children = node.children('Region')
          data.regions = Parsers::MultiRegionAccessPointRegionalResponseList.parse(children)
        end
        return data
      end
    end

    class MultiRegionAccessPointRegionalResponseList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::MultiRegionAccessPointRegionalResponse.parse(node)
        end
        data
      end
    end

    class MultiRegionAccessPointRegionalResponse
      def self.parse(xml)
        data = Types::MultiRegionAccessPointRegionalResponse.new
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        xml.at('RequestStatus') do |node|
          data.request_status = (node.text || '')
        end
        return data
      end
    end

    class AsyncRequestParameters
      def self.parse(xml)
        data = Types::AsyncRequestParameters.new
        xml.at('CreateMultiRegionAccessPointRequest') do |node|
          data.create_multi_region_access_point_request = Parsers::CreateMultiRegionAccessPointInput.parse(node)
        end
        xml.at('DeleteMultiRegionAccessPointRequest') do |node|
          data.delete_multi_region_access_point_request = Parsers::DeleteMultiRegionAccessPointInput.parse(node)
        end
        xml.at('PutMultiRegionAccessPointPolicyRequest') do |node|
          data.put_multi_region_access_point_policy_request = Parsers::PutMultiRegionAccessPointPolicyInput.parse(node)
        end
        return data
      end
    end

    class PutMultiRegionAccessPointPolicyInput
      def self.parse(xml)
        data = Types::PutMultiRegionAccessPointPolicyInput.new
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        xml.at('Policy') do |node|
          data.policy = (node.text || '')
        end
        return data
      end
    end

    class DeleteMultiRegionAccessPointInput
      def self.parse(xml)
        data = Types::DeleteMultiRegionAccessPointInput.new
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        return data
      end
    end

    class CreateMultiRegionAccessPointInput
      def self.parse(xml)
        data = Types::CreateMultiRegionAccessPointInput.new
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        xml.at('PublicAccessBlock') do |node|
          data.public_access_block = Parsers::PublicAccessBlockConfiguration.parse(node)
        end
        xml.at('Regions') do |node|
          children = node.children('Region')
          data.regions = Parsers::RegionCreationList.parse(children)
        end
        return data
      end
    end

    class RegionCreationList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Region.parse(node)
        end
        data
      end
    end

    class Region
      def self.parse(xml)
        data = Types::Region.new
        xml.at('Bucket') do |node|
          data.bucket = (node.text || '')
        end
        return data
      end
    end

    class PublicAccessBlockConfiguration
      def self.parse(xml)
        data = Types::PublicAccessBlockConfiguration.new
        xml.at('BlockPublicAcls') do |node|
          data.block_public_acls = (node.text == 'true')
        end
        xml.at('IgnorePublicAcls') do |node|
          data.ignore_public_acls = (node.text == 'true')
        end
        xml.at('BlockPublicPolicy') do |node|
          data.block_public_policy = (node.text == 'true')
        end
        xml.at('RestrictPublicBuckets') do |node|
          data.restrict_public_buckets = (node.text == 'true')
        end
        return data
      end
    end

    # Operation Parser for GetAccessPoint
    class GetAccessPoint
      def self.parse(http_resp)
        data = Types::GetAccessPointOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        xml.at('Bucket') do |node|
          data.bucket = (node.text || '')
        end
        xml.at('NetworkOrigin') do |node|
          data.network_origin = (node.text || '')
        end
        xml.at('VpcConfiguration') do |node|
          data.vpc_configuration = Parsers::VpcConfiguration.parse(node)
        end
        xml.at('PublicAccessBlockConfiguration') do |node|
          data.public_access_block_configuration = Parsers::PublicAccessBlockConfiguration.parse(node)
        end
        xml.at('CreationDate') do |node|
          data.creation_date = Time.parse(node.text) if node.text
        end
        xml.at('Alias') do |node|
          data.alias = (node.text || '')
        end
        xml.at('AccessPointArn') do |node|
          data.access_point_arn = (node.text || '')
        end
        xml.at('Endpoints') do |node|
          children = node.children('entry')
          data.endpoints = Parsers::Endpoints.parse(children)
        end
        data
      end
    end

    class Endpoints
      def self.parse(xml)
        data = {}
        xml.each do |entry_node|
          key = entry_node.at('key').text
          node = entry_node.at('value')
          data[key] = (node.text || '')
        end
        data
      end
    end

    class VpcConfiguration
      def self.parse(xml)
        data = Types::VpcConfiguration.new
        xml.at('VpcId') do |node|
          data.vpc_id = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for GetAccessPointConfigurationForObjectLambda
    class GetAccessPointConfigurationForObjectLambda
      def self.parse(http_resp)
        data = Types::GetAccessPointConfigurationForObjectLambdaOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('Configuration') do |node|
          data.configuration = Parsers::ObjectLambdaConfiguration.parse(node)
        end
        data
      end
    end

    class ObjectLambdaConfiguration
      def self.parse(xml)
        data = Types::ObjectLambdaConfiguration.new
        xml.at('SupportingAccessPoint') do |node|
          data.supporting_access_point = (node.text || '')
        end
        xml.at('CloudWatchMetricsEnabled') do |node|
          data.cloud_watch_metrics_enabled = (node.text == 'true')
        end
        xml.at('AllowedFeatures') do |node|
          children = node.children('AllowedFeature')
          data.allowed_features = Parsers::ObjectLambdaAllowedFeaturesList.parse(children)
        end
        xml.at('TransformationConfigurations') do |node|
          children = node.children('TransformationConfiguration')
          data.transformation_configurations = Parsers::ObjectLambdaTransformationConfigurationsList.parse(children)
        end
        return data
      end
    end

    class ObjectLambdaTransformationConfigurationsList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ObjectLambdaTransformationConfiguration.parse(node)
        end
        data
      end
    end

    class ObjectLambdaTransformationConfiguration
      def self.parse(xml)
        data = Types::ObjectLambdaTransformationConfiguration.new
        xml.at('Actions') do |node|
          children = node.children('Action')
          data.actions = Parsers::ObjectLambdaTransformationConfigurationActionsList.parse(children)
        end
        xml.at('ContentTransformation') do |node|
          data.content_transformation = Parsers::ObjectLambdaContentTransformation.parse(node)
        end
        return data
      end
    end

    class ObjectLambdaContentTransformation
      def self.parse(xml)
        value = xml.children.first
        key = value.name
        case key
        when 'AwsLambda'
          node = value
          value = Parsers::AwsLambdaTransformation.parse(node)
          Types::ObjectLambdaContentTransformation::AwsLambda.new(value) if value
        else
          Types::ObjectLambdaContentTransformation::Unknown.new({name: key, value: value})
        end
      end
    end

    class AwsLambdaTransformation
      def self.parse(xml)
        data = Types::AwsLambdaTransformation.new
        xml.at('FunctionArn') do |node|
          data.function_arn = (node.text || '')
        end
        xml.at('FunctionPayload') do |node|
          data.function_payload = (node.text || '')
        end
        return data
      end
    end

    class ObjectLambdaTransformationConfigurationActionsList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class ObjectLambdaAllowedFeaturesList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Operation Parser for GetAccessPointForObjectLambda
    class GetAccessPointForObjectLambda
      def self.parse(http_resp)
        data = Types::GetAccessPointForObjectLambdaOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        xml.at('PublicAccessBlockConfiguration') do |node|
          data.public_access_block_configuration = Parsers::PublicAccessBlockConfiguration.parse(node)
        end
        xml.at('CreationDate') do |node|
          data.creation_date = Time.parse(node.text) if node.text
        end
        data
      end
    end

    # Operation Parser for GetAccessPointPolicy
    class GetAccessPointPolicy
      def self.parse(http_resp)
        data = Types::GetAccessPointPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('Policy') do |node|
          data.policy = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for GetAccessPointPolicyForObjectLambda
    class GetAccessPointPolicyForObjectLambda
      def self.parse(http_resp)
        data = Types::GetAccessPointPolicyForObjectLambdaOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('Policy') do |node|
          data.policy = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for GetAccessPointPolicyStatus
    class GetAccessPointPolicyStatus
      def self.parse(http_resp)
        data = Types::GetAccessPointPolicyStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('PolicyStatus') do |node|
          data.policy_status = Parsers::PolicyStatus.parse(node)
        end
        data
      end
    end

    class PolicyStatus
      def self.parse(xml)
        data = Types::PolicyStatus.new
        xml.at('IsPublic') do |node|
          data.is_public = (node.text == 'true')
        end
        return data
      end
    end

    # Operation Parser for GetAccessPointPolicyStatusForObjectLambda
    class GetAccessPointPolicyStatusForObjectLambda
      def self.parse(http_resp)
        data = Types::GetAccessPointPolicyStatusForObjectLambdaOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('PolicyStatus') do |node|
          data.policy_status = Parsers::PolicyStatus.parse(node)
        end
        data
      end
    end

    # Operation Parser for GetBucket
    class GetBucket
      def self.parse(http_resp)
        data = Types::GetBucketOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('Bucket') do |node|
          data.bucket = (node.text || '')
        end
        xml.at('PublicAccessBlockEnabled') do |node|
          data.public_access_block_enabled = (node.text == 'true')
        end
        xml.at('CreationDate') do |node|
          data.creation_date = Time.parse(node.text) if node.text
        end
        data
      end
    end

    # Operation Parser for GetBucketLifecycleConfiguration
    class GetBucketLifecycleConfiguration
      def self.parse(http_resp)
        data = Types::GetBucketLifecycleConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('Rules') do |node|
          children = node.children('Rule')
          data.rules = Parsers::LifecycleRules.parse(children)
        end
        data
      end
    end

    class LifecycleRules
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::LifecycleRule.parse(node)
        end
        data
      end
    end

    class LifecycleRule
      def self.parse(xml)
        data = Types::LifecycleRule.new
        xml.at('Expiration') do |node|
          data.expiration = Parsers::LifecycleExpiration.parse(node)
        end
        xml.at('ID') do |node|
          data.id = (node.text || '')
        end
        xml.at('Filter') do |node|
          data.filter = Parsers::LifecycleRuleFilter.parse(node)
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('Transitions') do |node|
          children = node.children('Transition')
          data.transitions = Parsers::TransitionList.parse(children)
        end
        xml.at('NoncurrentVersionTransitions') do |node|
          children = node.children('NoncurrentVersionTransition')
          data.noncurrent_version_transitions = Parsers::NoncurrentVersionTransitionList.parse(children)
        end
        xml.at('NoncurrentVersionExpiration') do |node|
          data.noncurrent_version_expiration = Parsers::NoncurrentVersionExpiration.parse(node)
        end
        xml.at('AbortIncompleteMultipartUpload') do |node|
          data.abort_incomplete_multipart_upload = Parsers::AbortIncompleteMultipartUpload.parse(node)
        end
        return data
      end
    end

    class AbortIncompleteMultipartUpload
      def self.parse(xml)
        data = Types::AbortIncompleteMultipartUpload.new
        xml.at('DaysAfterInitiation') do |node|
          data.days_after_initiation = node.text&.to_i
        end
        return data
      end
    end

    class NoncurrentVersionExpiration
      def self.parse(xml)
        data = Types::NoncurrentVersionExpiration.new
        xml.at('NoncurrentDays') do |node|
          data.noncurrent_days = node.text&.to_i
        end
        return data
      end
    end

    class NoncurrentVersionTransitionList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::NoncurrentVersionTransition.parse(node)
        end
        data
      end
    end

    class NoncurrentVersionTransition
      def self.parse(xml)
        data = Types::NoncurrentVersionTransition.new
        xml.at('NoncurrentDays') do |node|
          data.noncurrent_days = node.text&.to_i
        end
        xml.at('StorageClass') do |node|
          data.storage_class = (node.text || '')
        end
        return data
      end
    end

    class TransitionList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Transition.parse(node)
        end
        data
      end
    end

    class Transition
      def self.parse(xml)
        data = Types::Transition.new
        xml.at('Date') do |node|
          data.date = Time.parse(node.text) if node.text
        end
        xml.at('Days') do |node|
          data.days = node.text&.to_i
        end
        xml.at('StorageClass') do |node|
          data.storage_class = (node.text || '')
        end
        return data
      end
    end

    class LifecycleRuleFilter
      def self.parse(xml)
        data = Types::LifecycleRuleFilter.new
        xml.at('Prefix') do |node|
          data.prefix = (node.text || '')
        end
        xml.at('Tag') do |node|
          data.tag = Parsers::S3Tag.parse(node)
        end
        xml.at('And') do |node|
          data.and = Parsers::LifecycleRuleAndOperator.parse(node)
        end
        return data
      end
    end

    class LifecycleRuleAndOperator
      def self.parse(xml)
        data = Types::LifecycleRuleAndOperator.new
        xml.at('Prefix') do |node|
          data.prefix = (node.text || '')
        end
        xml.at('Tags') do |node|
          children = node.children('member')
          data.tags = Parsers::S3TagSet.parse(children)
        end
        return data
      end
    end

    class LifecycleExpiration
      def self.parse(xml)
        data = Types::LifecycleExpiration.new
        xml.at('Date') do |node|
          data.date = Time.parse(node.text) if node.text
        end
        xml.at('Days') do |node|
          data.days = node.text&.to_i
        end
        xml.at('ExpiredObjectDeleteMarker') do |node|
          data.expired_object_delete_marker = (node.text == 'true')
        end
        return data
      end
    end

    # Operation Parser for GetBucketPolicy
    class GetBucketPolicy
      def self.parse(http_resp)
        data = Types::GetBucketPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('Policy') do |node|
          data.policy = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for GetBucketTagging
    class GetBucketTagging
      def self.parse(http_resp)
        data = Types::GetBucketTaggingOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('TagSet') do |node|
          children = node.children('member')
          data.tag_set = Parsers::S3TagSet.parse(children)
        end
        data
      end
    end

    # Operation Parser for GetJobTagging
    class GetJobTagging
      def self.parse(http_resp)
        data = Types::GetJobTaggingOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('Tags') do |node|
          children = node.children('member')
          data.tags = Parsers::S3TagSet.parse(children)
        end
        data
      end
    end

    # Operation Parser for GetMultiRegionAccessPoint
    class GetMultiRegionAccessPoint
      def self.parse(http_resp)
        data = Types::GetMultiRegionAccessPointOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('AccessPoint') do |node|
          data.access_point = Parsers::MultiRegionAccessPointReport.parse(node)
        end
        data
      end
    end

    class MultiRegionAccessPointReport
      def self.parse(xml)
        data = Types::MultiRegionAccessPointReport.new
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        xml.at('Alias') do |node|
          data.alias = (node.text || '')
        end
        xml.at('CreatedAt') do |node|
          data.created_at = Time.parse(node.text) if node.text
        end
        xml.at('PublicAccessBlock') do |node|
          data.public_access_block = Parsers::PublicAccessBlockConfiguration.parse(node)
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('Regions') do |node|
          children = node.children('Region')
          data.regions = Parsers::RegionReportList.parse(children)
        end
        return data
      end
    end

    class RegionReportList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::RegionReport.parse(node)
        end
        data
      end
    end

    class RegionReport
      def self.parse(xml)
        data = Types::RegionReport.new
        xml.at('Bucket') do |node|
          data.bucket = (node.text || '')
        end
        xml.at('Region') do |node|
          data.region = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for GetMultiRegionAccessPointPolicy
    class GetMultiRegionAccessPointPolicy
      def self.parse(http_resp)
        data = Types::GetMultiRegionAccessPointPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('Policy') do |node|
          data.policy = Parsers::MultiRegionAccessPointPolicyDocument.parse(node)
        end
        data
      end
    end

    class MultiRegionAccessPointPolicyDocument
      def self.parse(xml)
        data = Types::MultiRegionAccessPointPolicyDocument.new
        xml.at('Established') do |node|
          data.established = Parsers::EstablishedMultiRegionAccessPointPolicy.parse(node)
        end
        xml.at('Proposed') do |node|
          data.proposed = Parsers::ProposedMultiRegionAccessPointPolicy.parse(node)
        end
        return data
      end
    end

    class ProposedMultiRegionAccessPointPolicy
      def self.parse(xml)
        data = Types::ProposedMultiRegionAccessPointPolicy.new
        xml.at('Policy') do |node|
          data.policy = (node.text || '')
        end
        return data
      end
    end

    class EstablishedMultiRegionAccessPointPolicy
      def self.parse(xml)
        data = Types::EstablishedMultiRegionAccessPointPolicy.new
        xml.at('Policy') do |node|
          data.policy = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for GetMultiRegionAccessPointPolicyStatus
    class GetMultiRegionAccessPointPolicyStatus
      def self.parse(http_resp)
        data = Types::GetMultiRegionAccessPointPolicyStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('Established') do |node|
          data.established = Parsers::PolicyStatus.parse(node)
        end
        data
      end
    end

    # Operation Parser for GetPublicAccessBlock
    class GetPublicAccessBlock
      def self.parse(http_resp)
        data = Types::GetPublicAccessBlockOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.public_access_block_configuration = Parsers::PublicAccessBlockConfiguration.parse(xml)
        data
      end
    end

    # Error Parser for NoSuchPublicAccessBlockConfiguration
    class NoSuchPublicAccessBlockConfiguration
      def self.parse(http_resp)
        data = Types::NoSuchPublicAccessBlockConfiguration.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for GetStorageLensConfiguration
    class GetStorageLensConfiguration
      def self.parse(http_resp)
        data = Types::GetStorageLensConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.storage_lens_configuration = Parsers::StorageLensConfiguration.parse(xml)
        data
      end
    end

    class StorageLensConfiguration
      def self.parse(xml)
        data = Types::StorageLensConfiguration.new
        xml.at('Id') do |node|
          data.id = (node.text || '')
        end
        xml.at('AccountLevel') do |node|
          data.account_level = Parsers::AccountLevel.parse(node)
        end
        xml.at('Include') do |node|
          data.include = Parsers::Include.parse(node)
        end
        xml.at('Exclude') do |node|
          data.exclude = Parsers::Exclude.parse(node)
        end
        xml.at('DataExport') do |node|
          data.data_export = Parsers::StorageLensDataExport.parse(node)
        end
        xml.at('IsEnabled') do |node|
          data.is_enabled = (node.text == 'true')
        end
        xml.at('AwsOrg') do |node|
          data.aws_org = Parsers::StorageLensAwsOrg.parse(node)
        end
        xml.at('StorageLensArn') do |node|
          data.storage_lens_arn = (node.text || '')
        end
        return data
      end
    end

    class StorageLensAwsOrg
      def self.parse(xml)
        data = Types::StorageLensAwsOrg.new
        xml.at('Arn') do |node|
          data.arn = (node.text || '')
        end
        return data
      end
    end

    class StorageLensDataExport
      def self.parse(xml)
        data = Types::StorageLensDataExport.new
        xml.at('S3BucketDestination') do |node|
          data.s3_bucket_destination = Parsers::S3BucketDestination.parse(node)
        end
        xml.at('CloudWatchMetrics') do |node|
          data.cloud_watch_metrics = Parsers::CloudWatchMetrics.parse(node)
        end
        return data
      end
    end

    class CloudWatchMetrics
      def self.parse(xml)
        data = Types::CloudWatchMetrics.new
        xml.at('IsEnabled') do |node|
          data.is_enabled = (node.text == 'true')
        end
        return data
      end
    end

    class S3BucketDestination
      def self.parse(xml)
        data = Types::S3BucketDestination.new
        xml.at('Format') do |node|
          data.format = (node.text || '')
        end
        xml.at('OutputSchemaVersion') do |node|
          data.output_schema_version = (node.text || '')
        end
        xml.at('AccountId') do |node|
          data.account_id = (node.text || '')
        end
        xml.at('Arn') do |node|
          data.arn = (node.text || '')
        end
        xml.at('Prefix') do |node|
          data.prefix = (node.text || '')
        end
        xml.at('Encryption') do |node|
          data.encryption = Parsers::StorageLensDataExportEncryption.parse(node)
        end
        return data
      end
    end

    class StorageLensDataExportEncryption
      def self.parse(xml)
        data = Types::StorageLensDataExportEncryption.new
        xml.at('SSE-S3') do |node|
          data.sses3 = Parsers::SSES3.parse(node)
        end
        xml.at('SSE-KMS') do |node|
          data.ssekms = Parsers::SSEKMS.parse(node)
        end
        return data
      end
    end

    class SSEKMS
      def self.parse(xml)
        data = Types::SSEKMS.new
        xml.at('KeyId') do |node|
          data.key_id = (node.text || '')
        end
        return data
      end
    end

    class SSES3
      def self.parse(xml)
        data = Types::SSES3.new
        return data
      end
    end

    class Exclude
      def self.parse(xml)
        data = Types::Exclude.new
        xml.at('Buckets') do |node|
          children = node.children('Arn')
          data.buckets = Parsers::Buckets.parse(children)
        end
        xml.at('Regions') do |node|
          children = node.children('Region')
          data.regions = Parsers::Regions.parse(children)
        end
        return data
      end
    end

    class Regions
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class Buckets
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class Include
      def self.parse(xml)
        data = Types::Include.new
        xml.at('Buckets') do |node|
          children = node.children('Arn')
          data.buckets = Parsers::Buckets.parse(children)
        end
        xml.at('Regions') do |node|
          children = node.children('Region')
          data.regions = Parsers::Regions.parse(children)
        end
        return data
      end
    end

    class AccountLevel
      def self.parse(xml)
        data = Types::AccountLevel.new
        xml.at('ActivityMetrics') do |node|
          data.activity_metrics = Parsers::ActivityMetrics.parse(node)
        end
        xml.at('BucketLevel') do |node|
          data.bucket_level = Parsers::BucketLevel.parse(node)
        end
        return data
      end
    end

    class BucketLevel
      def self.parse(xml)
        data = Types::BucketLevel.new
        xml.at('ActivityMetrics') do |node|
          data.activity_metrics = Parsers::ActivityMetrics.parse(node)
        end
        xml.at('PrefixLevel') do |node|
          data.prefix_level = Parsers::PrefixLevel.parse(node)
        end
        return data
      end
    end

    class PrefixLevel
      def self.parse(xml)
        data = Types::PrefixLevel.new
        xml.at('StorageMetrics') do |node|
          data.storage_metrics = Parsers::PrefixLevelStorageMetrics.parse(node)
        end
        return data
      end
    end

    class PrefixLevelStorageMetrics
      def self.parse(xml)
        data = Types::PrefixLevelStorageMetrics.new
        xml.at('IsEnabled') do |node|
          data.is_enabled = (node.text == 'true')
        end
        xml.at('SelectionCriteria') do |node|
          data.selection_criteria = Parsers::SelectionCriteria.parse(node)
        end
        return data
      end
    end

    class SelectionCriteria
      def self.parse(xml)
        data = Types::SelectionCriteria.new
        xml.at('Delimiter') do |node|
          data.delimiter = (node.text || '')
        end
        xml.at('MaxDepth') do |node|
          data.max_depth = node.text&.to_i
        end
        xml.at('MinStorageBytesPercentage') do |node|
          data.min_storage_bytes_percentage = Hearth::NumberHelper.deserialize(node.text)
        end
        return data
      end
    end

    class ActivityMetrics
      def self.parse(xml)
        data = Types::ActivityMetrics.new
        xml.at('IsEnabled') do |node|
          data.is_enabled = (node.text == 'true')
        end
        return data
      end
    end

    # Operation Parser for GetStorageLensConfigurationTagging
    class GetStorageLensConfigurationTagging
      def self.parse(http_resp)
        data = Types::GetStorageLensConfigurationTaggingOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('Tags') do |node|
          children = node.children('Tag')
          data.tags = Parsers::StorageLensTags.parse(children)
        end
        data
      end
    end

    class StorageLensTags
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::StorageLensTag.parse(node)
        end
        data
      end
    end

    class StorageLensTag
      def self.parse(xml)
        data = Types::StorageLensTag.new
        xml.at('Key') do |node|
          data.key = (node.text || '')
        end
        xml.at('Value') do |node|
          data.value = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for ListAccessPoints
    class ListAccessPoints
      def self.parse(http_resp)
        data = Types::ListAccessPointsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('AccessPointList') do |node|
          children = node.children('AccessPoint')
          data.access_point_list = Parsers::AccessPointList.parse(children)
        end
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class AccessPointList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::AccessPoint.parse(node)
        end
        data
      end
    end

    class AccessPoint
      def self.parse(xml)
        data = Types::AccessPoint.new
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        xml.at('NetworkOrigin') do |node|
          data.network_origin = (node.text || '')
        end
        xml.at('VpcConfiguration') do |node|
          data.vpc_configuration = Parsers::VpcConfiguration.parse(node)
        end
        xml.at('Bucket') do |node|
          data.bucket = (node.text || '')
        end
        xml.at('AccessPointArn') do |node|
          data.access_point_arn = (node.text || '')
        end
        xml.at('Alias') do |node|
          data.alias = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for ListAccessPointsForObjectLambda
    class ListAccessPointsForObjectLambda
      def self.parse(http_resp)
        data = Types::ListAccessPointsForObjectLambdaOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('ObjectLambdaAccessPointList') do |node|
          children = node.children('ObjectLambdaAccessPoint')
          data.object_lambda_access_point_list = Parsers::ObjectLambdaAccessPointList.parse(children)
        end
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class ObjectLambdaAccessPointList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ObjectLambdaAccessPoint.parse(node)
        end
        data
      end
    end

    class ObjectLambdaAccessPoint
      def self.parse(xml)
        data = Types::ObjectLambdaAccessPoint.new
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        xml.at('ObjectLambdaAccessPointArn') do |node|
          data.object_lambda_access_point_arn = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for ListJobs
    class ListJobs
      def self.parse(http_resp)
        data = Types::ListJobsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        xml.at('Jobs') do |node|
          children = node.children('member')
          data.jobs = Parsers::JobListDescriptorList.parse(children)
        end
        data
      end
    end

    class JobListDescriptorList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::JobListDescriptor.parse(node)
        end
        data
      end
    end

    class JobListDescriptor
      def self.parse(xml)
        data = Types::JobListDescriptor.new
        xml.at('JobId') do |node|
          data.job_id = (node.text || '')
        end
        xml.at('Description') do |node|
          data.description = (node.text || '')
        end
        xml.at('Operation') do |node|
          data.operation = (node.text || '')
        end
        xml.at('Priority') do |node|
          data.priority = node.text&.to_i
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('CreationTime') do |node|
          data.creation_time = Time.parse(node.text) if node.text
        end
        xml.at('TerminationDate') do |node|
          data.termination_date = Time.parse(node.text) if node.text
        end
        xml.at('ProgressSummary') do |node|
          data.progress_summary = Parsers::JobProgressSummary.parse(node)
        end
        return data
      end
    end

    # Error Parser for InvalidRequestException
    class InvalidRequestException
      def self.parse(http_resp)
        data = Types::InvalidRequestException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidNextTokenException
    class InvalidNextTokenException
      def self.parse(http_resp)
        data = Types::InvalidNextTokenException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ListMultiRegionAccessPoints
    class ListMultiRegionAccessPoints
      def self.parse(http_resp)
        data = Types::ListMultiRegionAccessPointsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('AccessPoints') do |node|
          children = node.children('AccessPoint')
          data.access_points = Parsers::MultiRegionAccessPointReportList.parse(children)
        end
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class MultiRegionAccessPointReportList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::MultiRegionAccessPointReport.parse(node)
        end
        data
      end
    end

    # Operation Parser for ListRegionalBuckets
    class ListRegionalBuckets
      def self.parse(http_resp)
        data = Types::ListRegionalBucketsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('RegionalBucketList') do |node|
          children = node.children('RegionalBucket')
          data.regional_bucket_list = Parsers::RegionalBucketList.parse(children)
        end
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class RegionalBucketList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::RegionalBucket.parse(node)
        end
        data
      end
    end

    class RegionalBucket
      def self.parse(xml)
        data = Types::RegionalBucket.new
        xml.at('Bucket') do |node|
          data.bucket = (node.text || '')
        end
        xml.at('BucketArn') do |node|
          data.bucket_arn = (node.text || '')
        end
        xml.at('PublicAccessBlockEnabled') do |node|
          data.public_access_block_enabled = (node.text == 'true')
        end
        xml.at('CreationDate') do |node|
          data.creation_date = Time.parse(node.text) if node.text
        end
        xml.at('OutpostId') do |node|
          data.outpost_id = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for ListStorageLensConfigurations
    class ListStorageLensConfigurations
      def self.parse(http_resp)
        data = Types::ListStorageLensConfigurationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        xml.children('StorageLensConfigurationList') do |children|
          data.storage_lens_configuration_list = Parsers::StorageLensConfigurationList.parse(children)
        end
        data
      end
    end

    class StorageLensConfigurationList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ListStorageLensConfigurationEntry.parse(node)
        end
        data
      end
    end

    class ListStorageLensConfigurationEntry
      def self.parse(xml)
        data = Types::ListStorageLensConfigurationEntry.new
        xml.at('Id') do |node|
          data.id = (node.text || '')
        end
        xml.at('StorageLensArn') do |node|
          data.storage_lens_arn = (node.text || '')
        end
        xml.at('HomeRegion') do |node|
          data.home_region = (node.text || '')
        end
        xml.at('IsEnabled') do |node|
          data.is_enabled = (node.text == 'true')
        end
        return data
      end
    end

    # Operation Parser for PutAccessPointConfigurationForObjectLambda
    class PutAccessPointConfigurationForObjectLambda
      def self.parse(http_resp)
        data = Types::PutAccessPointConfigurationForObjectLambdaOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for PutAccessPointPolicy
    class PutAccessPointPolicy
      def self.parse(http_resp)
        data = Types::PutAccessPointPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for PutAccessPointPolicyForObjectLambda
    class PutAccessPointPolicyForObjectLambda
      def self.parse(http_resp)
        data = Types::PutAccessPointPolicyForObjectLambdaOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for PutBucketLifecycleConfiguration
    class PutBucketLifecycleConfiguration
      def self.parse(http_resp)
        data = Types::PutBucketLifecycleConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for PutBucketPolicy
    class PutBucketPolicy
      def self.parse(http_resp)
        data = Types::PutBucketPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for PutBucketTagging
    class PutBucketTagging
      def self.parse(http_resp)
        data = Types::PutBucketTaggingOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for PutJobTagging
    class PutJobTagging
      def self.parse(http_resp)
        data = Types::PutJobTaggingOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Error Parser for TooManyTagsException
    class TooManyTagsException
      def self.parse(http_resp)
        data = Types::TooManyTagsException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for PutMultiRegionAccessPointPolicy
    class PutMultiRegionAccessPointPolicy
      def self.parse(http_resp)
        data = Types::PutMultiRegionAccessPointPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('RequestTokenARN') do |node|
          data.request_token_arn = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for PutPublicAccessBlock
    class PutPublicAccessBlock
      def self.parse(http_resp)
        data = Types::PutPublicAccessBlockOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for PutStorageLensConfiguration
    class PutStorageLensConfiguration
      def self.parse(http_resp)
        data = Types::PutStorageLensConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for PutStorageLensConfigurationTagging
    class PutStorageLensConfigurationTagging
      def self.parse(http_resp)
        data = Types::PutStorageLensConfigurationTaggingOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for UpdateJobPriority
    class UpdateJobPriority
      def self.parse(http_resp)
        data = Types::UpdateJobPriorityOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('JobId') do |node|
          data.job_id = (node.text || '')
        end
        xml.at('Priority') do |node|
          data.priority = node.text&.to_i
        end
        data
      end
    end

    # Operation Parser for UpdateJobStatus
    class UpdateJobStatus
      def self.parse(http_resp)
        data = Types::UpdateJobStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('JobId') do |node|
          data.job_id = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('StatusUpdateReason') do |node|
          data.status_update_reason = (node.text || '')
        end
        data
      end
    end

    # Error Parser for JobStatusException
    class JobStatusException
      def self.parse(http_resp)
        data = Types::JobStatusException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml = xml.at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end
  end
end
