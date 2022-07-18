# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::S3Control
  module Stubs

    # Operation Stubber for CreateAccessPoint
    class CreateAccessPoint
      def self.default(visited=[])
        {
          access_point_arn: 'access_point_arn',
          alias: 'alias',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('CreateAccessPointResult')
        xml.attributes['xmlns'] = 'http://awss3control.amazonaws.com/doc/2018-08-20/'
        xml << Hearth::XML::Node.new('AccessPointArn', stub[:access_point_arn].to_s) unless stub[:access_point_arn].nil?
        xml << Hearth::XML::Node.new('Alias', stub[:alias].to_s) unless stub[:alias].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for CreateAccessPointForObjectLambda
    class CreateAccessPointForObjectLambda
      def self.default(visited=[])
        {
          object_lambda_access_point_arn: 'object_lambda_access_point_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('CreateAccessPointForObjectLambdaResult')
        xml.attributes['xmlns'] = 'http://awss3control.amazonaws.com/doc/2018-08-20/'
        xml << Hearth::XML::Node.new('ObjectLambdaAccessPointArn', stub[:object_lambda_access_point_arn].to_s) unless stub[:object_lambda_access_point_arn].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for CreateBucket
    class CreateBucket
      def self.default(visited=[])
        {
          location: 'location',
          bucket_arn: 'bucket_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Location'] = stub[:location] unless stub[:location].nil? || stub[:location].empty?

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('CreateBucketResult')
        xml.attributes['xmlns'] = 'http://awss3control.amazonaws.com/doc/2018-08-20/'
        xml << Hearth::XML::Node.new('BucketArn', stub[:bucket_arn].to_s) unless stub[:bucket_arn].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for CreateJob
    class CreateJob
      def self.default(visited=[])
        {
          job_id: 'job_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('CreateJobResult')
        xml.attributes['xmlns'] = 'http://awss3control.amazonaws.com/doc/2018-08-20/'
        xml << Hearth::XML::Node.new('JobId', stub[:job_id].to_s) unless stub[:job_id].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for CreateMultiRegionAccessPoint
    class CreateMultiRegionAccessPoint
      def self.default(visited=[])
        {
          request_token_arn: 'request_token_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('CreateMultiRegionAccessPointResult')
        xml.attributes['xmlns'] = 'http://awss3control.amazonaws.com/doc/2018-08-20/'
        xml << Hearth::XML::Node.new('RequestTokenARN', stub[:request_token_arn].to_s) unless stub[:request_token_arn].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for DeleteAccessPoint
    class DeleteAccessPoint
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteAccessPointForObjectLambda
    class DeleteAccessPointForObjectLambda
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteAccessPointPolicy
    class DeleteAccessPointPolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteAccessPointPolicyForObjectLambda
    class DeleteAccessPointPolicyForObjectLambda
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteBucket
    class DeleteBucket
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteBucketLifecycleConfiguration
    class DeleteBucketLifecycleConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteBucketPolicy
    class DeleteBucketPolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteBucketTagging
    class DeleteBucketTagging
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteJobTagging
    class DeleteJobTagging
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteMultiRegionAccessPoint
    class DeleteMultiRegionAccessPoint
      def self.default(visited=[])
        {
          request_token_arn: 'request_token_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('DeleteMultiRegionAccessPointResult')
        xml.attributes['xmlns'] = 'http://awss3control.amazonaws.com/doc/2018-08-20/'
        xml << Hearth::XML::Node.new('RequestTokenARN', stub[:request_token_arn].to_s) unless stub[:request_token_arn].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for DeletePublicAccessBlock
    class DeletePublicAccessBlock
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteStorageLensConfiguration
    class DeleteStorageLensConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteStorageLensConfigurationTagging
    class DeleteStorageLensConfigurationTagging
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeJob
    class DescribeJob
      def self.default(visited=[])
        {
          job: JobDescriptor.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('DescribeJobResult')
        xml.attributes['xmlns'] = 'http://awss3control.amazonaws.com/doc/2018-08-20/'
        xml << Stubs::JobDescriptor.stub('Job', stub[:job]) unless stub[:job].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Structure Stubber for JobDescriptor
    class JobDescriptor
      def self.default(visited=[])
        return nil if visited.include?('JobDescriptor')
        visited = visited + ['JobDescriptor']
        {
          job_id: 'job_id',
          confirmation_required: false,
          description: 'description',
          job_arn: 'job_arn',
          status: 'status',
          manifest: JobManifest.default(visited),
          operation: JobOperation.default(visited),
          priority: 1,
          progress_summary: JobProgressSummary.default(visited),
          status_update_reason: 'status_update_reason',
          failure_reasons: JobFailureList.default(visited),
          report: JobReport.default(visited),
          creation_time: Time.now,
          termination_date: Time.now,
          role_arn: 'role_arn',
          suspended_date: Time.now,
          suspended_cause: 'suspended_cause',
          manifest_generator: JobManifestGenerator.default(visited),
          generated_manifest_descriptor: S3GeneratedManifestDescriptor.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::JobDescriptor.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('JobId', stub[:job_id].to_s) unless stub[:job_id].nil?
        xml << Hearth::XML::Node.new('ConfirmationRequired', stub[:confirmation_required].to_s) unless stub[:confirmation_required].nil?
        xml << Hearth::XML::Node.new('Description', stub[:description].to_s) unless stub[:description].nil?
        xml << Hearth::XML::Node.new('JobArn', stub[:job_arn].to_s) unless stub[:job_arn].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Stubs::JobManifest.stub('Manifest', stub[:manifest]) unless stub[:manifest].nil?
        xml << Stubs::JobOperation.stub('Operation', stub[:operation]) unless stub[:operation].nil?
        xml << Hearth::XML::Node.new('Priority', stub[:priority].to_s) unless stub[:priority].nil?
        xml << Stubs::JobProgressSummary.stub('ProgressSummary', stub[:progress_summary]) unless stub[:progress_summary].nil?
        xml << Hearth::XML::Node.new('StatusUpdateReason', stub[:status_update_reason].to_s) unless stub[:status_update_reason].nil?
        xml << Hearth::XML::Node.new('FailureReasons', Stubs::JobFailureList.stub('member', stub[:failure_reasons])) unless stub[:failure_reasons].nil?
        xml << Stubs::JobReport.stub('Report', stub[:report]) unless stub[:report].nil?
        xml << Hearth::XML::Node.new('CreationTime', Hearth::TimeHelper.to_date_time(stub[:creation_time])) unless stub[:creation_time].nil?
        xml << Hearth::XML::Node.new('TerminationDate', Hearth::TimeHelper.to_date_time(stub[:termination_date])) unless stub[:termination_date].nil?
        xml << Hearth::XML::Node.new('RoleArn', stub[:role_arn].to_s) unless stub[:role_arn].nil?
        xml << Hearth::XML::Node.new('SuspendedDate', Hearth::TimeHelper.to_date_time(stub[:suspended_date])) unless stub[:suspended_date].nil?
        xml << Hearth::XML::Node.new('SuspendedCause', stub[:suspended_cause].to_s) unless stub[:suspended_cause].nil?
        xml << Stubs::JobManifestGenerator.stub('ManifestGenerator', stub[:manifest_generator]) unless stub[:manifest_generator].nil?
        xml << Stubs::S3GeneratedManifestDescriptor.stub('GeneratedManifestDescriptor', stub[:generated_manifest_descriptor]) unless stub[:generated_manifest_descriptor].nil?
        xml
      end
    end

    # Structure Stubber for S3GeneratedManifestDescriptor
    class S3GeneratedManifestDescriptor
      def self.default(visited=[])
        return nil if visited.include?('S3GeneratedManifestDescriptor')
        visited = visited + ['S3GeneratedManifestDescriptor']
        {
          format: 'format',
          location: JobManifestLocation.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::S3GeneratedManifestDescriptor.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Format', stub[:format].to_s) unless stub[:format].nil?
        xml << Stubs::JobManifestLocation.stub('Location', stub[:location]) unless stub[:location].nil?
        xml
      end
    end

    # Structure Stubber for JobManifestLocation
    class JobManifestLocation
      def self.default(visited=[])
        return nil if visited.include?('JobManifestLocation')
        visited = visited + ['JobManifestLocation']
        {
          object_arn: 'object_arn',
          object_version_id: 'object_version_id',
          e_tag: 'e_tag',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::JobManifestLocation.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ObjectArn', stub[:object_arn].to_s) unless stub[:object_arn].nil?
        xml << Hearth::XML::Node.new('ObjectVersionId', stub[:object_version_id].to_s) unless stub[:object_version_id].nil?
        xml << Hearth::XML::Node.new('ETag', stub[:e_tag].to_s) unless stub[:e_tag].nil?
        xml
      end
    end

    # Union Stubber for JobManifestGenerator
    class JobManifestGenerator
      def self.default(visited=[])
        return nil if visited.include?('JobManifestGenerator')
        visited = visited + ['JobManifestGenerator']
        {
          s3_job_manifest_generator: S3JobManifestGenerator.default(visited),
        }
      end

      def self.stub(node_name, stub)
        xml = Hearth::XML::Node.new(node_name)
        case stub
        when Types::JobManifestGenerator::S3JobManifestGenerator
          xml << Stubs::S3JobManifestGenerator.stub('S3JobManifestGenerator', stub.__getobj__) unless stub.__getobj__.nil?
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::JobManifestGenerator"
        end

        xml
      end
    end

    # Structure Stubber for S3JobManifestGenerator
    class S3JobManifestGenerator
      def self.default(visited=[])
        return nil if visited.include?('S3JobManifestGenerator')
        visited = visited + ['S3JobManifestGenerator']
        {
          expected_bucket_owner: 'expected_bucket_owner',
          source_bucket: 'source_bucket',
          manifest_output_location: S3ManifestOutputLocation.default(visited),
          filter: JobManifestGeneratorFilter.default(visited),
          enable_manifest_output: false,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::S3JobManifestGenerator.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ExpectedBucketOwner', stub[:expected_bucket_owner].to_s) unless stub[:expected_bucket_owner].nil?
        xml << Hearth::XML::Node.new('SourceBucket', stub[:source_bucket].to_s) unless stub[:source_bucket].nil?
        xml << Stubs::S3ManifestOutputLocation.stub('ManifestOutputLocation', stub[:manifest_output_location]) unless stub[:manifest_output_location].nil?
        xml << Stubs::JobManifestGeneratorFilter.stub('Filter', stub[:filter]) unless stub[:filter].nil?
        xml << Hearth::XML::Node.new('EnableManifestOutput', stub[:enable_manifest_output].to_s) unless stub[:enable_manifest_output].nil?
        xml
      end
    end

    # Structure Stubber for JobManifestGeneratorFilter
    class JobManifestGeneratorFilter
      def self.default(visited=[])
        return nil if visited.include?('JobManifestGeneratorFilter')
        visited = visited + ['JobManifestGeneratorFilter']
        {
          eligible_for_replication: false,
          created_after: Time.now,
          created_before: Time.now,
          object_replication_statuses: ReplicationStatusFilterList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::JobManifestGeneratorFilter.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('EligibleForReplication', stub[:eligible_for_replication].to_s) unless stub[:eligible_for_replication].nil?
        xml << Hearth::XML::Node.new('CreatedAfter', Hearth::TimeHelper.to_date_time(stub[:created_after])) unless stub[:created_after].nil?
        xml << Hearth::XML::Node.new('CreatedBefore', Hearth::TimeHelper.to_date_time(stub[:created_before])) unless stub[:created_before].nil?
        xml << Hearth::XML::Node.new('ObjectReplicationStatuses', Stubs::ReplicationStatusFilterList.stub('member', stub[:object_replication_statuses])) unless stub[:object_replication_statuses].nil?
        xml
      end
    end

    # List Stubber for ReplicationStatusFilterList
    class ReplicationStatusFilterList
      def self.default(visited=[])
        return nil if visited.include?('ReplicationStatusFilterList')
        visited = visited + ['ReplicationStatusFilterList']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for S3ManifestOutputLocation
    class S3ManifestOutputLocation
      def self.default(visited=[])
        return nil if visited.include?('S3ManifestOutputLocation')
        visited = visited + ['S3ManifestOutputLocation']
        {
          expected_manifest_bucket_owner: 'expected_manifest_bucket_owner',
          bucket: 'bucket',
          manifest_prefix: 'manifest_prefix',
          manifest_encryption: GeneratedManifestEncryption.default(visited),
          manifest_format: 'manifest_format',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::S3ManifestOutputLocation.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ExpectedManifestBucketOwner', stub[:expected_manifest_bucket_owner].to_s) unless stub[:expected_manifest_bucket_owner].nil?
        xml << Hearth::XML::Node.new('Bucket', stub[:bucket].to_s) unless stub[:bucket].nil?
        xml << Hearth::XML::Node.new('ManifestPrefix', stub[:manifest_prefix].to_s) unless stub[:manifest_prefix].nil?
        xml << Stubs::GeneratedManifestEncryption.stub('ManifestEncryption', stub[:manifest_encryption]) unless stub[:manifest_encryption].nil?
        xml << Hearth::XML::Node.new('ManifestFormat', stub[:manifest_format].to_s) unless stub[:manifest_format].nil?
        xml
      end
    end

    # Structure Stubber for GeneratedManifestEncryption
    class GeneratedManifestEncryption
      def self.default(visited=[])
        return nil if visited.include?('GeneratedManifestEncryption')
        visited = visited + ['GeneratedManifestEncryption']
        {
          sses3: SSES3Encryption.default(visited),
          ssekms: SSEKMSEncryption.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::GeneratedManifestEncryption.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Stubs::SSES3Encryption.stub('SSE-S3', stub[:sses3]) unless stub[:sses3].nil?
        xml << Stubs::SSEKMSEncryption.stub('SSE-KMS', stub[:ssekms]) unless stub[:ssekms].nil?
        xml
      end
    end

    # Structure Stubber for SSEKMSEncryption
    class SSEKMSEncryption
      def self.default(visited=[])
        return nil if visited.include?('SSEKMSEncryption')
        visited = visited + ['SSEKMSEncryption']
        {
          key_id: 'key_id',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::SSEKMSEncryption.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('KeyId', stub[:key_id].to_s) unless stub[:key_id].nil?
        xml
      end
    end

    # Structure Stubber for SSES3Encryption
    class SSES3Encryption
      def self.default(visited=[])
        return nil if visited.include?('SSES3Encryption')
        visited = visited + ['SSES3Encryption']
        {
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::SSES3Encryption.new
        xml = Hearth::XML::Node.new(node_name)
        xml
      end
    end

    # Structure Stubber for JobReport
    class JobReport
      def self.default(visited=[])
        return nil if visited.include?('JobReport')
        visited = visited + ['JobReport']
        {
          bucket: 'bucket',
          format: 'format',
          enabled: false,
          prefix: 'prefix',
          report_scope: 'report_scope',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::JobReport.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Bucket', stub[:bucket].to_s) unless stub[:bucket].nil?
        xml << Hearth::XML::Node.new('Format', stub[:format].to_s) unless stub[:format].nil?
        xml << Hearth::XML::Node.new('Enabled', stub[:enabled].to_s) unless stub[:enabled].nil?
        xml << Hearth::XML::Node.new('Prefix', stub[:prefix].to_s) unless stub[:prefix].nil?
        xml << Hearth::XML::Node.new('ReportScope', stub[:report_scope].to_s) unless stub[:report_scope].nil?
        xml
      end
    end

    # List Stubber for JobFailureList
    class JobFailureList
      def self.default(visited=[])
        return nil if visited.include?('JobFailureList')
        visited = visited + ['JobFailureList']
        [
          JobFailure.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::JobFailure.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for JobFailure
    class JobFailure
      def self.default(visited=[])
        return nil if visited.include?('JobFailure')
        visited = visited + ['JobFailure']
        {
          failure_code: 'failure_code',
          failure_reason: 'failure_reason',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::JobFailure.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('FailureCode', stub[:failure_code].to_s) unless stub[:failure_code].nil?
        xml << Hearth::XML::Node.new('FailureReason', stub[:failure_reason].to_s) unless stub[:failure_reason].nil?
        xml
      end
    end

    # Structure Stubber for JobProgressSummary
    class JobProgressSummary
      def self.default(visited=[])
        return nil if visited.include?('JobProgressSummary')
        visited = visited + ['JobProgressSummary']
        {
          total_number_of_tasks: 1,
          number_of_tasks_succeeded: 1,
          number_of_tasks_failed: 1,
          timers: JobTimers.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::JobProgressSummary.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('TotalNumberOfTasks', stub[:total_number_of_tasks].to_s) unless stub[:total_number_of_tasks].nil?
        xml << Hearth::XML::Node.new('NumberOfTasksSucceeded', stub[:number_of_tasks_succeeded].to_s) unless stub[:number_of_tasks_succeeded].nil?
        xml << Hearth::XML::Node.new('NumberOfTasksFailed', stub[:number_of_tasks_failed].to_s) unless stub[:number_of_tasks_failed].nil?
        xml << Stubs::JobTimers.stub('Timers', stub[:timers]) unless stub[:timers].nil?
        xml
      end
    end

    # Structure Stubber for JobTimers
    class JobTimers
      def self.default(visited=[])
        return nil if visited.include?('JobTimers')
        visited = visited + ['JobTimers']
        {
          elapsed_time_in_active_seconds: 1,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::JobTimers.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ElapsedTimeInActiveSeconds', stub[:elapsed_time_in_active_seconds].to_s) unless stub[:elapsed_time_in_active_seconds].nil?
        xml
      end
    end

    # Structure Stubber for JobOperation
    class JobOperation
      def self.default(visited=[])
        return nil if visited.include?('JobOperation')
        visited = visited + ['JobOperation']
        {
          lambda_invoke: LambdaInvokeOperation.default(visited),
          s3_put_object_copy: S3CopyObjectOperation.default(visited),
          s3_put_object_acl: S3SetObjectAclOperation.default(visited),
          s3_put_object_tagging: S3SetObjectTaggingOperation.default(visited),
          s3_delete_object_tagging: S3DeleteObjectTaggingOperation.default(visited),
          s3_initiate_restore_object: S3InitiateRestoreObjectOperation.default(visited),
          s3_put_object_legal_hold: S3SetObjectLegalHoldOperation.default(visited),
          s3_put_object_retention: S3SetObjectRetentionOperation.default(visited),
          s3_replicate_object: S3ReplicateObjectOperation.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::JobOperation.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Stubs::LambdaInvokeOperation.stub('LambdaInvoke', stub[:lambda_invoke]) unless stub[:lambda_invoke].nil?
        xml << Stubs::S3CopyObjectOperation.stub('S3PutObjectCopy', stub[:s3_put_object_copy]) unless stub[:s3_put_object_copy].nil?
        xml << Stubs::S3SetObjectAclOperation.stub('S3PutObjectAcl', stub[:s3_put_object_acl]) unless stub[:s3_put_object_acl].nil?
        xml << Stubs::S3SetObjectTaggingOperation.stub('S3PutObjectTagging', stub[:s3_put_object_tagging]) unless stub[:s3_put_object_tagging].nil?
        xml << Stubs::S3DeleteObjectTaggingOperation.stub('S3DeleteObjectTagging', stub[:s3_delete_object_tagging]) unless stub[:s3_delete_object_tagging].nil?
        xml << Stubs::S3InitiateRestoreObjectOperation.stub('S3InitiateRestoreObject', stub[:s3_initiate_restore_object]) unless stub[:s3_initiate_restore_object].nil?
        xml << Stubs::S3SetObjectLegalHoldOperation.stub('S3PutObjectLegalHold', stub[:s3_put_object_legal_hold]) unless stub[:s3_put_object_legal_hold].nil?
        xml << Stubs::S3SetObjectRetentionOperation.stub('S3PutObjectRetention', stub[:s3_put_object_retention]) unless stub[:s3_put_object_retention].nil?
        xml << Stubs::S3ReplicateObjectOperation.stub('S3ReplicateObject', stub[:s3_replicate_object]) unless stub[:s3_replicate_object].nil?
        xml
      end
    end

    # Structure Stubber for S3ReplicateObjectOperation
    class S3ReplicateObjectOperation
      def self.default(visited=[])
        return nil if visited.include?('S3ReplicateObjectOperation')
        visited = visited + ['S3ReplicateObjectOperation']
        {
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::S3ReplicateObjectOperation.new
        xml = Hearth::XML::Node.new(node_name)
        xml
      end
    end

    # Structure Stubber for S3SetObjectRetentionOperation
    class S3SetObjectRetentionOperation
      def self.default(visited=[])
        return nil if visited.include?('S3SetObjectRetentionOperation')
        visited = visited + ['S3SetObjectRetentionOperation']
        {
          bypass_governance_retention: false,
          retention: S3Retention.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::S3SetObjectRetentionOperation.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('BypassGovernanceRetention', stub[:bypass_governance_retention].to_s) unless stub[:bypass_governance_retention].nil?
        xml << Stubs::S3Retention.stub('Retention', stub[:retention]) unless stub[:retention].nil?
        xml
      end
    end

    # Structure Stubber for S3Retention
    class S3Retention
      def self.default(visited=[])
        return nil if visited.include?('S3Retention')
        visited = visited + ['S3Retention']
        {
          retain_until_date: Time.now,
          mode: 'mode',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::S3Retention.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('RetainUntilDate', Hearth::TimeHelper.to_date_time(stub[:retain_until_date])) unless stub[:retain_until_date].nil?
        xml << Hearth::XML::Node.new('Mode', stub[:mode].to_s) unless stub[:mode].nil?
        xml
      end
    end

    # Structure Stubber for S3SetObjectLegalHoldOperation
    class S3SetObjectLegalHoldOperation
      def self.default(visited=[])
        return nil if visited.include?('S3SetObjectLegalHoldOperation')
        visited = visited + ['S3SetObjectLegalHoldOperation']
        {
          legal_hold: S3ObjectLockLegalHold.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::S3SetObjectLegalHoldOperation.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Stubs::S3ObjectLockLegalHold.stub('LegalHold', stub[:legal_hold]) unless stub[:legal_hold].nil?
        xml
      end
    end

    # Structure Stubber for S3ObjectLockLegalHold
    class S3ObjectLockLegalHold
      def self.default(visited=[])
        return nil if visited.include?('S3ObjectLockLegalHold')
        visited = visited + ['S3ObjectLockLegalHold']
        {
          status: 'status',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::S3ObjectLockLegalHold.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml
      end
    end

    # Structure Stubber for S3InitiateRestoreObjectOperation
    class S3InitiateRestoreObjectOperation
      def self.default(visited=[])
        return nil if visited.include?('S3InitiateRestoreObjectOperation')
        visited = visited + ['S3InitiateRestoreObjectOperation']
        {
          expiration_in_days: 1,
          glacier_job_tier: 'glacier_job_tier',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::S3InitiateRestoreObjectOperation.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ExpirationInDays', stub[:expiration_in_days].to_s) unless stub[:expiration_in_days].nil?
        xml << Hearth::XML::Node.new('GlacierJobTier', stub[:glacier_job_tier].to_s) unless stub[:glacier_job_tier].nil?
        xml
      end
    end

    # Structure Stubber for S3DeleteObjectTaggingOperation
    class S3DeleteObjectTaggingOperation
      def self.default(visited=[])
        return nil if visited.include?('S3DeleteObjectTaggingOperation')
        visited = visited + ['S3DeleteObjectTaggingOperation']
        {
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::S3DeleteObjectTaggingOperation.new
        xml = Hearth::XML::Node.new(node_name)
        xml
      end
    end

    # Structure Stubber for S3SetObjectTaggingOperation
    class S3SetObjectTaggingOperation
      def self.default(visited=[])
        return nil if visited.include?('S3SetObjectTaggingOperation')
        visited = visited + ['S3SetObjectTaggingOperation']
        {
          tag_set: S3TagSet.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::S3SetObjectTaggingOperation.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('TagSet', Stubs::S3TagSet.stub('member', stub[:tag_set])) unless stub[:tag_set].nil?
        xml
      end
    end

    # List Stubber for S3TagSet
    class S3TagSet
      def self.default(visited=[])
        return nil if visited.include?('S3TagSet')
        visited = visited + ['S3TagSet']
        [
          S3Tag.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::S3Tag.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for S3Tag
    class S3Tag
      def self.default(visited=[])
        return nil if visited.include?('S3Tag')
        visited = visited + ['S3Tag']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::S3Tag.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Key', stub[:key].to_s) unless stub[:key].nil?
        xml << Hearth::XML::Node.new('Value', stub[:value].to_s) unless stub[:value].nil?
        xml
      end
    end

    # Structure Stubber for S3SetObjectAclOperation
    class S3SetObjectAclOperation
      def self.default(visited=[])
        return nil if visited.include?('S3SetObjectAclOperation')
        visited = visited + ['S3SetObjectAclOperation']
        {
          access_control_policy: S3AccessControlPolicy.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::S3SetObjectAclOperation.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Stubs::S3AccessControlPolicy.stub('AccessControlPolicy', stub[:access_control_policy]) unless stub[:access_control_policy].nil?
        xml
      end
    end

    # Structure Stubber for S3AccessControlPolicy
    class S3AccessControlPolicy
      def self.default(visited=[])
        return nil if visited.include?('S3AccessControlPolicy')
        visited = visited + ['S3AccessControlPolicy']
        {
          access_control_list: S3AccessControlList.default(visited),
          canned_access_control_list: 'canned_access_control_list',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::S3AccessControlPolicy.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Stubs::S3AccessControlList.stub('AccessControlList', stub[:access_control_list]) unless stub[:access_control_list].nil?
        xml << Hearth::XML::Node.new('CannedAccessControlList', stub[:canned_access_control_list].to_s) unless stub[:canned_access_control_list].nil?
        xml
      end
    end

    # Structure Stubber for S3AccessControlList
    class S3AccessControlList
      def self.default(visited=[])
        return nil if visited.include?('S3AccessControlList')
        visited = visited + ['S3AccessControlList']
        {
          owner: S3ObjectOwner.default(visited),
          grants: S3GrantList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::S3AccessControlList.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Stubs::S3ObjectOwner.stub('Owner', stub[:owner]) unless stub[:owner].nil?
        xml << Hearth::XML::Node.new('Grants', Stubs::S3GrantList.stub('member', stub[:grants])) unless stub[:grants].nil?
        xml
      end
    end

    # List Stubber for S3GrantList
    class S3GrantList
      def self.default(visited=[])
        return nil if visited.include?('S3GrantList')
        visited = visited + ['S3GrantList']
        [
          S3Grant.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::S3Grant.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for S3Grant
    class S3Grant
      def self.default(visited=[])
        return nil if visited.include?('S3Grant')
        visited = visited + ['S3Grant']
        {
          grantee: S3Grantee.default(visited),
          permission: 'permission',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::S3Grant.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Stubs::S3Grantee.stub('Grantee', stub[:grantee]) unless stub[:grantee].nil?
        xml << Hearth::XML::Node.new('Permission', stub[:permission].to_s) unless stub[:permission].nil?
        xml
      end
    end

    # Structure Stubber for S3Grantee
    class S3Grantee
      def self.default(visited=[])
        return nil if visited.include?('S3Grantee')
        visited = visited + ['S3Grantee']
        {
          type_identifier: 'type_identifier',
          identifier: 'identifier',
          display_name: 'display_name',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::S3Grantee.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('TypeIdentifier', stub[:type_identifier].to_s) unless stub[:type_identifier].nil?
        xml << Hearth::XML::Node.new('Identifier', stub[:identifier].to_s) unless stub[:identifier].nil?
        xml << Hearth::XML::Node.new('DisplayName', stub[:display_name].to_s) unless stub[:display_name].nil?
        xml
      end
    end

    # Structure Stubber for S3ObjectOwner
    class S3ObjectOwner
      def self.default(visited=[])
        return nil if visited.include?('S3ObjectOwner')
        visited = visited + ['S3ObjectOwner']
        {
          id: 'id',
          display_name: 'display_name',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::S3ObjectOwner.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ID', stub[:id].to_s) unless stub[:id].nil?
        xml << Hearth::XML::Node.new('DisplayName', stub[:display_name].to_s) unless stub[:display_name].nil?
        xml
      end
    end

    # Structure Stubber for S3CopyObjectOperation
    class S3CopyObjectOperation
      def self.default(visited=[])
        return nil if visited.include?('S3CopyObjectOperation')
        visited = visited + ['S3CopyObjectOperation']
        {
          target_resource: 'target_resource',
          canned_access_control_list: 'canned_access_control_list',
          access_control_grants: S3GrantList.default(visited),
          metadata_directive: 'metadata_directive',
          modified_since_constraint: Time.now,
          new_object_metadata: S3ObjectMetadata.default(visited),
          new_object_tagging: S3TagSet.default(visited),
          redirect_location: 'redirect_location',
          requester_pays: false,
          storage_class: 'storage_class',
          un_modified_since_constraint: Time.now,
          sse_aws_kms_key_id: 'sse_aws_kms_key_id',
          target_key_prefix: 'target_key_prefix',
          object_lock_legal_hold_status: 'object_lock_legal_hold_status',
          object_lock_mode: 'object_lock_mode',
          object_lock_retain_until_date: Time.now,
          bucket_key_enabled: false,
          checksum_algorithm: 'checksum_algorithm',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::S3CopyObjectOperation.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('TargetResource', stub[:target_resource].to_s) unless stub[:target_resource].nil?
        xml << Hearth::XML::Node.new('CannedAccessControlList', stub[:canned_access_control_list].to_s) unless stub[:canned_access_control_list].nil?
        xml << Hearth::XML::Node.new('AccessControlGrants', Stubs::S3GrantList.stub('member', stub[:access_control_grants])) unless stub[:access_control_grants].nil?
        xml << Hearth::XML::Node.new('MetadataDirective', stub[:metadata_directive].to_s) unless stub[:metadata_directive].nil?
        xml << Hearth::XML::Node.new('ModifiedSinceConstraint', Hearth::TimeHelper.to_date_time(stub[:modified_since_constraint])) unless stub[:modified_since_constraint].nil?
        xml << Stubs::S3ObjectMetadata.stub('NewObjectMetadata', stub[:new_object_metadata]) unless stub[:new_object_metadata].nil?
        xml << Hearth::XML::Node.new('NewObjectTagging', Stubs::S3TagSet.stub('member', stub[:new_object_tagging])) unless stub[:new_object_tagging].nil?
        xml << Hearth::XML::Node.new('RedirectLocation', stub[:redirect_location].to_s) unless stub[:redirect_location].nil?
        xml << Hearth::XML::Node.new('RequesterPays', stub[:requester_pays].to_s) unless stub[:requester_pays].nil?
        xml << Hearth::XML::Node.new('StorageClass', stub[:storage_class].to_s) unless stub[:storage_class].nil?
        xml << Hearth::XML::Node.new('UnModifiedSinceConstraint', Hearth::TimeHelper.to_date_time(stub[:un_modified_since_constraint])) unless stub[:un_modified_since_constraint].nil?
        xml << Hearth::XML::Node.new('SSEAwsKmsKeyId', stub[:sse_aws_kms_key_id].to_s) unless stub[:sse_aws_kms_key_id].nil?
        xml << Hearth::XML::Node.new('TargetKeyPrefix', stub[:target_key_prefix].to_s) unless stub[:target_key_prefix].nil?
        xml << Hearth::XML::Node.new('ObjectLockLegalHoldStatus', stub[:object_lock_legal_hold_status].to_s) unless stub[:object_lock_legal_hold_status].nil?
        xml << Hearth::XML::Node.new('ObjectLockMode', stub[:object_lock_mode].to_s) unless stub[:object_lock_mode].nil?
        xml << Hearth::XML::Node.new('ObjectLockRetainUntilDate', Hearth::TimeHelper.to_date_time(stub[:object_lock_retain_until_date])) unless stub[:object_lock_retain_until_date].nil?
        xml << Hearth::XML::Node.new('BucketKeyEnabled', stub[:bucket_key_enabled].to_s) unless stub[:bucket_key_enabled].nil?
        xml << Hearth::XML::Node.new('ChecksumAlgorithm', stub[:checksum_algorithm].to_s) unless stub[:checksum_algorithm].nil?
        xml
      end
    end

    # Structure Stubber for S3ObjectMetadata
    class S3ObjectMetadata
      def self.default(visited=[])
        return nil if visited.include?('S3ObjectMetadata')
        visited = visited + ['S3ObjectMetadata']
        {
          cache_control: 'cache_control',
          content_disposition: 'content_disposition',
          content_encoding: 'content_encoding',
          content_language: 'content_language',
          user_metadata: S3UserMetadata.default(visited),
          content_length: 1,
          content_md5: 'content_md5',
          content_type: 'content_type',
          http_expires_date: Time.now,
          requester_charged: false,
          sse_algorithm: 'sse_algorithm',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::S3ObjectMetadata.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('CacheControl', stub[:cache_control].to_s) unless stub[:cache_control].nil?
        xml << Hearth::XML::Node.new('ContentDisposition', stub[:content_disposition].to_s) unless stub[:content_disposition].nil?
        xml << Hearth::XML::Node.new('ContentEncoding', stub[:content_encoding].to_s) unless stub[:content_encoding].nil?
        xml << Hearth::XML::Node.new('ContentLanguage', stub[:content_language].to_s) unless stub[:content_language].nil?
        xml << Hearth::XML::Node.new('UserMetadata', Stubs::S3UserMetadata.stub('entry', stub[:user_metadata])) unless stub[:user_metadata].nil?
        xml << Hearth::XML::Node.new('ContentLength', stub[:content_length].to_s) unless stub[:content_length].nil?
        xml << Hearth::XML::Node.new('ContentMD5', stub[:content_md5].to_s) unless stub[:content_md5].nil?
        xml << Hearth::XML::Node.new('ContentType', stub[:content_type].to_s) unless stub[:content_type].nil?
        xml << Hearth::XML::Node.new('HttpExpiresDate', Hearth::TimeHelper.to_date_time(stub[:http_expires_date])) unless stub[:http_expires_date].nil?
        xml << Hearth::XML::Node.new('RequesterCharged', stub[:requester_charged].to_s) unless stub[:requester_charged].nil?
        xml << Hearth::XML::Node.new('SSEAlgorithm', stub[:sse_algorithm].to_s) unless stub[:sse_algorithm].nil?
        xml
      end
    end

    # Map Stubber for S3UserMetadata
    class S3UserMetadata
      def self.default(visited=[])
        return nil if visited.include?('S3UserMetadata')
        visited = visited + ['S3UserMetadata']
        {
          test_key: 'value'
        }
      end

      def self.stub(node_name, stub)
        stub ||= {}
        nodes = []
        stub.each do |key, value|
          xml = Hearth::XML::Node.new(node_name)
          xml << Hearth::XML::Node.new('key', key.to_s) unless key.nil?
          xml << Hearth::XML::Node.new('value', value.to_s) unless value.nil?
          nodes << xml
        end
        nodes
      end
    end

    # Structure Stubber for LambdaInvokeOperation
    class LambdaInvokeOperation
      def self.default(visited=[])
        return nil if visited.include?('LambdaInvokeOperation')
        visited = visited + ['LambdaInvokeOperation']
        {
          function_arn: 'function_arn',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::LambdaInvokeOperation.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('FunctionArn', stub[:function_arn].to_s) unless stub[:function_arn].nil?
        xml
      end
    end

    # Structure Stubber for JobManifest
    class JobManifest
      def self.default(visited=[])
        return nil if visited.include?('JobManifest')
        visited = visited + ['JobManifest']
        {
          spec: JobManifestSpec.default(visited),
          location: JobManifestLocation.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::JobManifest.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Stubs::JobManifestSpec.stub('Spec', stub[:spec]) unless stub[:spec].nil?
        xml << Stubs::JobManifestLocation.stub('Location', stub[:location]) unless stub[:location].nil?
        xml
      end
    end

    # Structure Stubber for JobManifestSpec
    class JobManifestSpec
      def self.default(visited=[])
        return nil if visited.include?('JobManifestSpec')
        visited = visited + ['JobManifestSpec']
        {
          format: 'format',
          fields: JobManifestFieldList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::JobManifestSpec.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Format', stub[:format].to_s) unless stub[:format].nil?
        xml << Hearth::XML::Node.new('Fields', Stubs::JobManifestFieldList.stub('member', stub[:fields])) unless stub[:fields].nil?
        xml
      end
    end

    # List Stubber for JobManifestFieldList
    class JobManifestFieldList
      def self.default(visited=[])
        return nil if visited.include?('JobManifestFieldList')
        visited = visited + ['JobManifestFieldList']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for DescribeMultiRegionAccessPointOperation
    class DescribeMultiRegionAccessPointOperation
      def self.default(visited=[])
        {
          async_operation: AsyncOperation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('DescribeMultiRegionAccessPointOperationResult')
        xml.attributes['xmlns'] = 'http://awss3control.amazonaws.com/doc/2018-08-20/'
        xml << Stubs::AsyncOperation.stub('AsyncOperation', stub[:async_operation]) unless stub[:async_operation].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Structure Stubber for AsyncOperation
    class AsyncOperation
      def self.default(visited=[])
        return nil if visited.include?('AsyncOperation')
        visited = visited + ['AsyncOperation']
        {
          creation_time: Time.now,
          operation: 'operation',
          request_token_arn: 'request_token_arn',
          request_parameters: AsyncRequestParameters.default(visited),
          request_status: 'request_status',
          response_details: AsyncResponseDetails.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::AsyncOperation.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('CreationTime', Hearth::TimeHelper.to_date_time(stub[:creation_time])) unless stub[:creation_time].nil?
        xml << Hearth::XML::Node.new('Operation', stub[:operation].to_s) unless stub[:operation].nil?
        xml << Hearth::XML::Node.new('RequestTokenARN', stub[:request_token_arn].to_s) unless stub[:request_token_arn].nil?
        xml << Stubs::AsyncRequestParameters.stub('RequestParameters', stub[:request_parameters]) unless stub[:request_parameters].nil?
        xml << Hearth::XML::Node.new('RequestStatus', stub[:request_status].to_s) unless stub[:request_status].nil?
        xml << Stubs::AsyncResponseDetails.stub('ResponseDetails', stub[:response_details]) unless stub[:response_details].nil?
        xml
      end
    end

    # Structure Stubber for AsyncResponseDetails
    class AsyncResponseDetails
      def self.default(visited=[])
        return nil if visited.include?('AsyncResponseDetails')
        visited = visited + ['AsyncResponseDetails']
        {
          multi_region_access_point_details: MultiRegionAccessPointsAsyncResponse.default(visited),
          error_details: AsyncErrorDetails.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::AsyncResponseDetails.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Stubs::MultiRegionAccessPointsAsyncResponse.stub('MultiRegionAccessPointDetails', stub[:multi_region_access_point_details]) unless stub[:multi_region_access_point_details].nil?
        xml << Stubs::AsyncErrorDetails.stub('ErrorDetails', stub[:error_details]) unless stub[:error_details].nil?
        xml
      end
    end

    # Structure Stubber for AsyncErrorDetails
    class AsyncErrorDetails
      def self.default(visited=[])
        return nil if visited.include?('AsyncErrorDetails')
        visited = visited + ['AsyncErrorDetails']
        {
          code: 'code',
          message: 'message',
          resource: 'resource',
          request_id: 'request_id',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::AsyncErrorDetails.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Code', stub[:code].to_s) unless stub[:code].nil?
        xml << Hearth::XML::Node.new('Message', stub[:message].to_s) unless stub[:message].nil?
        xml << Hearth::XML::Node.new('Resource', stub[:resource].to_s) unless stub[:resource].nil?
        xml << Hearth::XML::Node.new('RequestId', stub[:request_id].to_s) unless stub[:request_id].nil?
        xml
      end
    end

    # Structure Stubber for MultiRegionAccessPointsAsyncResponse
    class MultiRegionAccessPointsAsyncResponse
      def self.default(visited=[])
        return nil if visited.include?('MultiRegionAccessPointsAsyncResponse')
        visited = visited + ['MultiRegionAccessPointsAsyncResponse']
        {
          regions: MultiRegionAccessPointRegionalResponseList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::MultiRegionAccessPointsAsyncResponse.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Regions', Stubs::MultiRegionAccessPointRegionalResponseList.stub('Region', stub[:regions])) unless stub[:regions].nil?
        xml
      end
    end

    # List Stubber for MultiRegionAccessPointRegionalResponseList
    class MultiRegionAccessPointRegionalResponseList
      def self.default(visited=[])
        return nil if visited.include?('MultiRegionAccessPointRegionalResponseList')
        visited = visited + ['MultiRegionAccessPointRegionalResponseList']
        [
          MultiRegionAccessPointRegionalResponse.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::MultiRegionAccessPointRegionalResponse.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for MultiRegionAccessPointRegionalResponse
    class MultiRegionAccessPointRegionalResponse
      def self.default(visited=[])
        return nil if visited.include?('MultiRegionAccessPointRegionalResponse')
        visited = visited + ['MultiRegionAccessPointRegionalResponse']
        {
          name: 'name',
          request_status: 'request_status',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::MultiRegionAccessPointRegionalResponse.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml << Hearth::XML::Node.new('RequestStatus', stub[:request_status].to_s) unless stub[:request_status].nil?
        xml
      end
    end

    # Structure Stubber for AsyncRequestParameters
    class AsyncRequestParameters
      def self.default(visited=[])
        return nil if visited.include?('AsyncRequestParameters')
        visited = visited + ['AsyncRequestParameters']
        {
          create_multi_region_access_point_request: CreateMultiRegionAccessPointInput.default(visited),
          delete_multi_region_access_point_request: DeleteMultiRegionAccessPointInput.default(visited),
          put_multi_region_access_point_policy_request: PutMultiRegionAccessPointPolicyInput.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::AsyncRequestParameters.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Stubs::CreateMultiRegionAccessPointInput.stub('CreateMultiRegionAccessPointRequest', stub[:create_multi_region_access_point_request]) unless stub[:create_multi_region_access_point_request].nil?
        xml << Stubs::DeleteMultiRegionAccessPointInput.stub('DeleteMultiRegionAccessPointRequest', stub[:delete_multi_region_access_point_request]) unless stub[:delete_multi_region_access_point_request].nil?
        xml << Stubs::PutMultiRegionAccessPointPolicyInput.stub('PutMultiRegionAccessPointPolicyRequest', stub[:put_multi_region_access_point_policy_request]) unless stub[:put_multi_region_access_point_policy_request].nil?
        xml
      end
    end

    # Structure Stubber for PutMultiRegionAccessPointPolicyInput
    class PutMultiRegionAccessPointPolicyInput
      def self.default(visited=[])
        return nil if visited.include?('PutMultiRegionAccessPointPolicyInput')
        visited = visited + ['PutMultiRegionAccessPointPolicyInput']
        {
          name: 'name',
          policy: 'policy',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::PutMultiRegionAccessPointPolicyInput.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml << Hearth::XML::Node.new('Policy', stub[:policy].to_s) unless stub[:policy].nil?
        xml
      end
    end

    # Structure Stubber for DeleteMultiRegionAccessPointInput
    class DeleteMultiRegionAccessPointInput
      def self.default(visited=[])
        return nil if visited.include?('DeleteMultiRegionAccessPointInput')
        visited = visited + ['DeleteMultiRegionAccessPointInput']
        {
          name: 'name',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DeleteMultiRegionAccessPointInput.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml
      end
    end

    # Structure Stubber for CreateMultiRegionAccessPointInput
    class CreateMultiRegionAccessPointInput
      def self.default(visited=[])
        return nil if visited.include?('CreateMultiRegionAccessPointInput')
        visited = visited + ['CreateMultiRegionAccessPointInput']
        {
          name: 'name',
          public_access_block: PublicAccessBlockConfiguration.default(visited),
          regions: RegionCreationList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::CreateMultiRegionAccessPointInput.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml << Stubs::PublicAccessBlockConfiguration.stub('PublicAccessBlock', stub[:public_access_block]) unless stub[:public_access_block].nil?
        xml << Hearth::XML::Node.new('Regions', Stubs::RegionCreationList.stub('Region', stub[:regions])) unless stub[:regions].nil?
        xml
      end
    end

    # List Stubber for RegionCreationList
    class RegionCreationList
      def self.default(visited=[])
        return nil if visited.include?('RegionCreationList')
        visited = visited + ['RegionCreationList']
        [
          Region.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::Region.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for Region
    class Region
      def self.default(visited=[])
        return nil if visited.include?('Region')
        visited = visited + ['Region']
        {
          bucket: 'bucket',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Region.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Bucket', stub[:bucket].to_s) unless stub[:bucket].nil?
        xml
      end
    end

    # Structure Stubber for PublicAccessBlockConfiguration
    class PublicAccessBlockConfiguration
      def self.default(visited=[])
        return nil if visited.include?('PublicAccessBlockConfiguration')
        visited = visited + ['PublicAccessBlockConfiguration']
        {
          block_public_acls: false,
          ignore_public_acls: false,
          block_public_policy: false,
          restrict_public_buckets: false,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::PublicAccessBlockConfiguration.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('BlockPublicAcls', stub[:block_public_acls].to_s) unless stub[:block_public_acls].nil?
        xml << Hearth::XML::Node.new('IgnorePublicAcls', stub[:ignore_public_acls].to_s) unless stub[:ignore_public_acls].nil?
        xml << Hearth::XML::Node.new('BlockPublicPolicy', stub[:block_public_policy].to_s) unless stub[:block_public_policy].nil?
        xml << Hearth::XML::Node.new('RestrictPublicBuckets', stub[:restrict_public_buckets].to_s) unless stub[:restrict_public_buckets].nil?
        xml
      end
    end

    # Operation Stubber for GetAccessPoint
    class GetAccessPoint
      def self.default(visited=[])
        {
          name: 'name',
          bucket: 'bucket',
          network_origin: 'network_origin',
          vpc_configuration: VpcConfiguration.default(visited),
          public_access_block_configuration: PublicAccessBlockConfiguration.default(visited),
          creation_date: Time.now,
          alias: 'alias',
          access_point_arn: 'access_point_arn',
          endpoints: Endpoints.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('GetAccessPointResult')
        xml.attributes['xmlns'] = 'http://awss3control.amazonaws.com/doc/2018-08-20/'
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml << Hearth::XML::Node.new('Bucket', stub[:bucket].to_s) unless stub[:bucket].nil?
        xml << Hearth::XML::Node.new('NetworkOrigin', stub[:network_origin].to_s) unless stub[:network_origin].nil?
        xml << Stubs::VpcConfiguration.stub('VpcConfiguration', stub[:vpc_configuration]) unless stub[:vpc_configuration].nil?
        xml << Stubs::PublicAccessBlockConfiguration.stub('PublicAccessBlockConfiguration', stub[:public_access_block_configuration]) unless stub[:public_access_block_configuration].nil?
        xml << Hearth::XML::Node.new('CreationDate', Hearth::TimeHelper.to_date_time(stub[:creation_date])) unless stub[:creation_date].nil?
        xml << Hearth::XML::Node.new('Alias', stub[:alias].to_s) unless stub[:alias].nil?
        xml << Hearth::XML::Node.new('AccessPointArn', stub[:access_point_arn].to_s) unless stub[:access_point_arn].nil?
        xml << Hearth::XML::Node.new('Endpoints', Stubs::Endpoints.stub('entry', stub[:endpoints])) unless stub[:endpoints].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Map Stubber for Endpoints
    class Endpoints
      def self.default(visited=[])
        return nil if visited.include?('Endpoints')
        visited = visited + ['Endpoints']
        {
          test_key: 'value'
        }
      end

      def self.stub(node_name, stub)
        stub ||= {}
        nodes = []
        stub.each do |key, value|
          xml = Hearth::XML::Node.new(node_name)
          xml << Hearth::XML::Node.new('key', key.to_s) unless key.nil?
          xml << Hearth::XML::Node.new('value', value.to_s) unless value.nil?
          nodes << xml
        end
        nodes
      end
    end

    # Structure Stubber for VpcConfiguration
    class VpcConfiguration
      def self.default(visited=[])
        return nil if visited.include?('VpcConfiguration')
        visited = visited + ['VpcConfiguration']
        {
          vpc_id: 'vpc_id',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::VpcConfiguration.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('VpcId', stub[:vpc_id].to_s) unless stub[:vpc_id].nil?
        xml
      end
    end

    # Operation Stubber for GetAccessPointConfigurationForObjectLambda
    class GetAccessPointConfigurationForObjectLambda
      def self.default(visited=[])
        {
          configuration: ObjectLambdaConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('GetAccessPointConfigurationForObjectLambdaResult')
        xml.attributes['xmlns'] = 'http://awss3control.amazonaws.com/doc/2018-08-20/'
        xml << Stubs::ObjectLambdaConfiguration.stub('Configuration', stub[:configuration]) unless stub[:configuration].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Structure Stubber for ObjectLambdaConfiguration
    class ObjectLambdaConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ObjectLambdaConfiguration')
        visited = visited + ['ObjectLambdaConfiguration']
        {
          supporting_access_point: 'supporting_access_point',
          cloud_watch_metrics_enabled: false,
          allowed_features: ObjectLambdaAllowedFeaturesList.default(visited),
          transformation_configurations: ObjectLambdaTransformationConfigurationsList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ObjectLambdaConfiguration.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('SupportingAccessPoint', stub[:supporting_access_point].to_s) unless stub[:supporting_access_point].nil?
        xml << Hearth::XML::Node.new('CloudWatchMetricsEnabled', stub[:cloud_watch_metrics_enabled].to_s) unless stub[:cloud_watch_metrics_enabled].nil?
        xml << Hearth::XML::Node.new('AllowedFeatures', Stubs::ObjectLambdaAllowedFeaturesList.stub('AllowedFeature', stub[:allowed_features])) unless stub[:allowed_features].nil?
        xml << Hearth::XML::Node.new('TransformationConfigurations', Stubs::ObjectLambdaTransformationConfigurationsList.stub('TransformationConfiguration', stub[:transformation_configurations])) unless stub[:transformation_configurations].nil?
        xml
      end
    end

    # List Stubber for ObjectLambdaTransformationConfigurationsList
    class ObjectLambdaTransformationConfigurationsList
      def self.default(visited=[])
        return nil if visited.include?('ObjectLambdaTransformationConfigurationsList')
        visited = visited + ['ObjectLambdaTransformationConfigurationsList']
        [
          ObjectLambdaTransformationConfiguration.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::ObjectLambdaTransformationConfiguration.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for ObjectLambdaTransformationConfiguration
    class ObjectLambdaTransformationConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ObjectLambdaTransformationConfiguration')
        visited = visited + ['ObjectLambdaTransformationConfiguration']
        {
          actions: ObjectLambdaTransformationConfigurationActionsList.default(visited),
          content_transformation: ObjectLambdaContentTransformation.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ObjectLambdaTransformationConfiguration.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Actions', Stubs::ObjectLambdaTransformationConfigurationActionsList.stub('Action', stub[:actions])) unless stub[:actions].nil?
        xml << Stubs::ObjectLambdaContentTransformation.stub('ContentTransformation', stub[:content_transformation]) unless stub[:content_transformation].nil?
        xml
      end
    end

    # Union Stubber for ObjectLambdaContentTransformation
    class ObjectLambdaContentTransformation
      def self.default(visited=[])
        return nil if visited.include?('ObjectLambdaContentTransformation')
        visited = visited + ['ObjectLambdaContentTransformation']
        {
          aws_lambda: AwsLambdaTransformation.default(visited),
        }
      end

      def self.stub(node_name, stub)
        xml = Hearth::XML::Node.new(node_name)
        case stub
        when Types::ObjectLambdaContentTransformation::AwsLambda
          xml << Stubs::AwsLambdaTransformation.stub('AwsLambda', stub.__getobj__) unless stub.__getobj__.nil?
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::ObjectLambdaContentTransformation"
        end

        xml
      end
    end

    # Structure Stubber for AwsLambdaTransformation
    class AwsLambdaTransformation
      def self.default(visited=[])
        return nil if visited.include?('AwsLambdaTransformation')
        visited = visited + ['AwsLambdaTransformation']
        {
          function_arn: 'function_arn',
          function_payload: 'function_payload',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::AwsLambdaTransformation.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('FunctionArn', stub[:function_arn].to_s) unless stub[:function_arn].nil?
        xml << Hearth::XML::Node.new('FunctionPayload', stub[:function_payload].to_s) unless stub[:function_payload].nil?
        xml
      end
    end

    # List Stubber for ObjectLambdaTransformationConfigurationActionsList
    class ObjectLambdaTransformationConfigurationActionsList
      def self.default(visited=[])
        return nil if visited.include?('ObjectLambdaTransformationConfigurationActionsList')
        visited = visited + ['ObjectLambdaTransformationConfigurationActionsList']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # List Stubber for ObjectLambdaAllowedFeaturesList
    class ObjectLambdaAllowedFeaturesList
      def self.default(visited=[])
        return nil if visited.include?('ObjectLambdaAllowedFeaturesList')
        visited = visited + ['ObjectLambdaAllowedFeaturesList']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for GetAccessPointForObjectLambda
    class GetAccessPointForObjectLambda
      def self.default(visited=[])
        {
          name: 'name',
          public_access_block_configuration: PublicAccessBlockConfiguration.default(visited),
          creation_date: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('GetAccessPointForObjectLambdaResult')
        xml.attributes['xmlns'] = 'http://awss3control.amazonaws.com/doc/2018-08-20/'
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml << Stubs::PublicAccessBlockConfiguration.stub('PublicAccessBlockConfiguration', stub[:public_access_block_configuration]) unless stub[:public_access_block_configuration].nil?
        xml << Hearth::XML::Node.new('CreationDate', Hearth::TimeHelper.to_date_time(stub[:creation_date])) unless stub[:creation_date].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for GetAccessPointPolicy
    class GetAccessPointPolicy
      def self.default(visited=[])
        {
          policy: 'policy',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('GetAccessPointPolicyResult')
        xml.attributes['xmlns'] = 'http://awss3control.amazonaws.com/doc/2018-08-20/'
        xml << Hearth::XML::Node.new('Policy', stub[:policy].to_s) unless stub[:policy].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for GetAccessPointPolicyForObjectLambda
    class GetAccessPointPolicyForObjectLambda
      def self.default(visited=[])
        {
          policy: 'policy',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('GetAccessPointPolicyForObjectLambdaResult')
        xml.attributes['xmlns'] = 'http://awss3control.amazonaws.com/doc/2018-08-20/'
        xml << Hearth::XML::Node.new('Policy', stub[:policy].to_s) unless stub[:policy].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for GetAccessPointPolicyStatus
    class GetAccessPointPolicyStatus
      def self.default(visited=[])
        {
          policy_status: PolicyStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('GetAccessPointPolicyStatusResult')
        xml.attributes['xmlns'] = 'http://awss3control.amazonaws.com/doc/2018-08-20/'
        xml << Stubs::PolicyStatus.stub('PolicyStatus', stub[:policy_status]) unless stub[:policy_status].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Structure Stubber for PolicyStatus
    class PolicyStatus
      def self.default(visited=[])
        return nil if visited.include?('PolicyStatus')
        visited = visited + ['PolicyStatus']
        {
          is_public: false,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::PolicyStatus.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('IsPublic', stub[:is_public].to_s) unless stub[:is_public].nil?
        xml
      end
    end

    # Operation Stubber for GetAccessPointPolicyStatusForObjectLambda
    class GetAccessPointPolicyStatusForObjectLambda
      def self.default(visited=[])
        {
          policy_status: PolicyStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('GetAccessPointPolicyStatusForObjectLambdaResult')
        xml.attributes['xmlns'] = 'http://awss3control.amazonaws.com/doc/2018-08-20/'
        xml << Stubs::PolicyStatus.stub('PolicyStatus', stub[:policy_status]) unless stub[:policy_status].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for GetBucket
    class GetBucket
      def self.default(visited=[])
        {
          bucket: 'bucket',
          public_access_block_enabled: false,
          creation_date: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('GetBucketResult')
        xml.attributes['xmlns'] = 'http://awss3control.amazonaws.com/doc/2018-08-20/'
        xml << Hearth::XML::Node.new('Bucket', stub[:bucket].to_s) unless stub[:bucket].nil?
        xml << Hearth::XML::Node.new('PublicAccessBlockEnabled', stub[:public_access_block_enabled].to_s) unless stub[:public_access_block_enabled].nil?
        xml << Hearth::XML::Node.new('CreationDate', Hearth::TimeHelper.to_date_time(stub[:creation_date])) unless stub[:creation_date].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for GetBucketLifecycleConfiguration
    class GetBucketLifecycleConfiguration
      def self.default(visited=[])
        {
          rules: LifecycleRules.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('GetBucketLifecycleConfigurationResult')
        xml.attributes['xmlns'] = 'http://awss3control.amazonaws.com/doc/2018-08-20/'
        xml << Hearth::XML::Node.new('Rules', Stubs::LifecycleRules.stub('Rule', stub[:rules])) unless stub[:rules].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # List Stubber for LifecycleRules
    class LifecycleRules
      def self.default(visited=[])
        return nil if visited.include?('LifecycleRules')
        visited = visited + ['LifecycleRules']
        [
          LifecycleRule.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::LifecycleRule.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for LifecycleRule
    class LifecycleRule
      def self.default(visited=[])
        return nil if visited.include?('LifecycleRule')
        visited = visited + ['LifecycleRule']
        {
          expiration: LifecycleExpiration.default(visited),
          id: 'id',
          filter: LifecycleRuleFilter.default(visited),
          status: 'status',
          transitions: TransitionList.default(visited),
          noncurrent_version_transitions: NoncurrentVersionTransitionList.default(visited),
          noncurrent_version_expiration: NoncurrentVersionExpiration.default(visited),
          abort_incomplete_multipart_upload: AbortIncompleteMultipartUpload.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::LifecycleRule.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Stubs::LifecycleExpiration.stub('Expiration', stub[:expiration]) unless stub[:expiration].nil?
        xml << Hearth::XML::Node.new('ID', stub[:id].to_s) unless stub[:id].nil?
        xml << Stubs::LifecycleRuleFilter.stub('Filter', stub[:filter]) unless stub[:filter].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('Transitions', Stubs::TransitionList.stub('Transition', stub[:transitions])) unless stub[:transitions].nil?
        xml << Hearth::XML::Node.new('NoncurrentVersionTransitions', Stubs::NoncurrentVersionTransitionList.stub('NoncurrentVersionTransition', stub[:noncurrent_version_transitions])) unless stub[:noncurrent_version_transitions].nil?
        xml << Stubs::NoncurrentVersionExpiration.stub('NoncurrentVersionExpiration', stub[:noncurrent_version_expiration]) unless stub[:noncurrent_version_expiration].nil?
        xml << Stubs::AbortIncompleteMultipartUpload.stub('AbortIncompleteMultipartUpload', stub[:abort_incomplete_multipart_upload]) unless stub[:abort_incomplete_multipart_upload].nil?
        xml
      end
    end

    # Structure Stubber for AbortIncompleteMultipartUpload
    class AbortIncompleteMultipartUpload
      def self.default(visited=[])
        return nil if visited.include?('AbortIncompleteMultipartUpload')
        visited = visited + ['AbortIncompleteMultipartUpload']
        {
          days_after_initiation: 1,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::AbortIncompleteMultipartUpload.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('DaysAfterInitiation', stub[:days_after_initiation].to_s) unless stub[:days_after_initiation].nil?
        xml
      end
    end

    # Structure Stubber for NoncurrentVersionExpiration
    class NoncurrentVersionExpiration
      def self.default(visited=[])
        return nil if visited.include?('NoncurrentVersionExpiration')
        visited = visited + ['NoncurrentVersionExpiration']
        {
          noncurrent_days: 1,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::NoncurrentVersionExpiration.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('NoncurrentDays', stub[:noncurrent_days].to_s) unless stub[:noncurrent_days].nil?
        xml
      end
    end

    # List Stubber for NoncurrentVersionTransitionList
    class NoncurrentVersionTransitionList
      def self.default(visited=[])
        return nil if visited.include?('NoncurrentVersionTransitionList')
        visited = visited + ['NoncurrentVersionTransitionList']
        [
          NoncurrentVersionTransition.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::NoncurrentVersionTransition.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for NoncurrentVersionTransition
    class NoncurrentVersionTransition
      def self.default(visited=[])
        return nil if visited.include?('NoncurrentVersionTransition')
        visited = visited + ['NoncurrentVersionTransition']
        {
          noncurrent_days: 1,
          storage_class: 'storage_class',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::NoncurrentVersionTransition.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('NoncurrentDays', stub[:noncurrent_days].to_s) unless stub[:noncurrent_days].nil?
        xml << Hearth::XML::Node.new('StorageClass', stub[:storage_class].to_s) unless stub[:storage_class].nil?
        xml
      end
    end

    # List Stubber for TransitionList
    class TransitionList
      def self.default(visited=[])
        return nil if visited.include?('TransitionList')
        visited = visited + ['TransitionList']
        [
          Transition.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::Transition.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for Transition
    class Transition
      def self.default(visited=[])
        return nil if visited.include?('Transition')
        visited = visited + ['Transition']
        {
          date: Time.now,
          days: 1,
          storage_class: 'storage_class',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Transition.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Date', Hearth::TimeHelper.to_date_time(stub[:date])) unless stub[:date].nil?
        xml << Hearth::XML::Node.new('Days', stub[:days].to_s) unless stub[:days].nil?
        xml << Hearth::XML::Node.new('StorageClass', stub[:storage_class].to_s) unless stub[:storage_class].nil?
        xml
      end
    end

    # Structure Stubber for LifecycleRuleFilter
    class LifecycleRuleFilter
      def self.default(visited=[])
        return nil if visited.include?('LifecycleRuleFilter')
        visited = visited + ['LifecycleRuleFilter']
        {
          prefix: 'prefix',
          tag: S3Tag.default(visited),
          and: LifecycleRuleAndOperator.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::LifecycleRuleFilter.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Prefix', stub[:prefix].to_s) unless stub[:prefix].nil?
        xml << Stubs::S3Tag.stub('Tag', stub[:tag]) unless stub[:tag].nil?
        xml << Stubs::LifecycleRuleAndOperator.stub('And', stub[:and]) unless stub[:and].nil?
        xml
      end
    end

    # Structure Stubber for LifecycleRuleAndOperator
    class LifecycleRuleAndOperator
      def self.default(visited=[])
        return nil if visited.include?('LifecycleRuleAndOperator')
        visited = visited + ['LifecycleRuleAndOperator']
        {
          prefix: 'prefix',
          tags: S3TagSet.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::LifecycleRuleAndOperator.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Prefix', stub[:prefix].to_s) unless stub[:prefix].nil?
        xml << Hearth::XML::Node.new('Tags', Stubs::S3TagSet.stub('member', stub[:tags])) unless stub[:tags].nil?
        xml
      end
    end

    # Structure Stubber for LifecycleExpiration
    class LifecycleExpiration
      def self.default(visited=[])
        return nil if visited.include?('LifecycleExpiration')
        visited = visited + ['LifecycleExpiration']
        {
          date: Time.now,
          days: 1,
          expired_object_delete_marker: false,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::LifecycleExpiration.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Date', Hearth::TimeHelper.to_date_time(stub[:date])) unless stub[:date].nil?
        xml << Hearth::XML::Node.new('Days', stub[:days].to_s) unless stub[:days].nil?
        xml << Hearth::XML::Node.new('ExpiredObjectDeleteMarker', stub[:expired_object_delete_marker].to_s) unless stub[:expired_object_delete_marker].nil?
        xml
      end
    end

    # Operation Stubber for GetBucketPolicy
    class GetBucketPolicy
      def self.default(visited=[])
        {
          policy: 'policy',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('GetBucketPolicyResult')
        xml.attributes['xmlns'] = 'http://awss3control.amazonaws.com/doc/2018-08-20/'
        xml << Hearth::XML::Node.new('Policy', stub[:policy].to_s) unless stub[:policy].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for GetBucketTagging
    class GetBucketTagging
      def self.default(visited=[])
        {
          tag_set: S3TagSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('GetBucketTaggingResult')
        xml.attributes['xmlns'] = 'http://awss3control.amazonaws.com/doc/2018-08-20/'
        xml << Hearth::XML::Node.new('TagSet', Stubs::S3TagSet.stub('member', stub[:tag_set])) unless stub[:tag_set].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for GetJobTagging
    class GetJobTagging
      def self.default(visited=[])
        {
          tags: S3TagSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('GetJobTaggingResult')
        xml.attributes['xmlns'] = 'http://awss3control.amazonaws.com/doc/2018-08-20/'
        xml << Hearth::XML::Node.new('Tags', Stubs::S3TagSet.stub('member', stub[:tags])) unless stub[:tags].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for GetMultiRegionAccessPoint
    class GetMultiRegionAccessPoint
      def self.default(visited=[])
        {
          access_point: MultiRegionAccessPointReport.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('GetMultiRegionAccessPointResult')
        xml.attributes['xmlns'] = 'http://awss3control.amazonaws.com/doc/2018-08-20/'
        xml << Stubs::MultiRegionAccessPointReport.stub('AccessPoint', stub[:access_point]) unless stub[:access_point].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Structure Stubber for MultiRegionAccessPointReport
    class MultiRegionAccessPointReport
      def self.default(visited=[])
        return nil if visited.include?('MultiRegionAccessPointReport')
        visited = visited + ['MultiRegionAccessPointReport']
        {
          name: 'name',
          alias: 'alias',
          created_at: Time.now,
          public_access_block: PublicAccessBlockConfiguration.default(visited),
          status: 'status',
          regions: RegionReportList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::MultiRegionAccessPointReport.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml << Hearth::XML::Node.new('Alias', stub[:alias].to_s) unless stub[:alias].nil?
        xml << Hearth::XML::Node.new('CreatedAt', Hearth::TimeHelper.to_date_time(stub[:created_at])) unless stub[:created_at].nil?
        xml << Stubs::PublicAccessBlockConfiguration.stub('PublicAccessBlock', stub[:public_access_block]) unless stub[:public_access_block].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('Regions', Stubs::RegionReportList.stub('Region', stub[:regions])) unless stub[:regions].nil?
        xml
      end
    end

    # List Stubber for RegionReportList
    class RegionReportList
      def self.default(visited=[])
        return nil if visited.include?('RegionReportList')
        visited = visited + ['RegionReportList']
        [
          RegionReport.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::RegionReport.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for RegionReport
    class RegionReport
      def self.default(visited=[])
        return nil if visited.include?('RegionReport')
        visited = visited + ['RegionReport']
        {
          bucket: 'bucket',
          region: 'region',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::RegionReport.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Bucket', stub[:bucket].to_s) unless stub[:bucket].nil?
        xml << Hearth::XML::Node.new('Region', stub[:region].to_s) unless stub[:region].nil?
        xml
      end
    end

    # Operation Stubber for GetMultiRegionAccessPointPolicy
    class GetMultiRegionAccessPointPolicy
      def self.default(visited=[])
        {
          policy: MultiRegionAccessPointPolicyDocument.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('GetMultiRegionAccessPointPolicyResult')
        xml.attributes['xmlns'] = 'http://awss3control.amazonaws.com/doc/2018-08-20/'
        xml << Stubs::MultiRegionAccessPointPolicyDocument.stub('Policy', stub[:policy]) unless stub[:policy].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Structure Stubber for MultiRegionAccessPointPolicyDocument
    class MultiRegionAccessPointPolicyDocument
      def self.default(visited=[])
        return nil if visited.include?('MultiRegionAccessPointPolicyDocument')
        visited = visited + ['MultiRegionAccessPointPolicyDocument']
        {
          established: EstablishedMultiRegionAccessPointPolicy.default(visited),
          proposed: ProposedMultiRegionAccessPointPolicy.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::MultiRegionAccessPointPolicyDocument.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Stubs::EstablishedMultiRegionAccessPointPolicy.stub('Established', stub[:established]) unless stub[:established].nil?
        xml << Stubs::ProposedMultiRegionAccessPointPolicy.stub('Proposed', stub[:proposed]) unless stub[:proposed].nil?
        xml
      end
    end

    # Structure Stubber for ProposedMultiRegionAccessPointPolicy
    class ProposedMultiRegionAccessPointPolicy
      def self.default(visited=[])
        return nil if visited.include?('ProposedMultiRegionAccessPointPolicy')
        visited = visited + ['ProposedMultiRegionAccessPointPolicy']
        {
          policy: 'policy',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ProposedMultiRegionAccessPointPolicy.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Policy', stub[:policy].to_s) unless stub[:policy].nil?
        xml
      end
    end

    # Structure Stubber for EstablishedMultiRegionAccessPointPolicy
    class EstablishedMultiRegionAccessPointPolicy
      def self.default(visited=[])
        return nil if visited.include?('EstablishedMultiRegionAccessPointPolicy')
        visited = visited + ['EstablishedMultiRegionAccessPointPolicy']
        {
          policy: 'policy',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::EstablishedMultiRegionAccessPointPolicy.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Policy', stub[:policy].to_s) unless stub[:policy].nil?
        xml
      end
    end

    # Operation Stubber for GetMultiRegionAccessPointPolicyStatus
    class GetMultiRegionAccessPointPolicyStatus
      def self.default(visited=[])
        {
          established: PolicyStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('GetMultiRegionAccessPointPolicyStatusResult')
        xml.attributes['xmlns'] = 'http://awss3control.amazonaws.com/doc/2018-08-20/'
        xml << Stubs::PolicyStatus.stub('Established', stub[:established]) unless stub[:established].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for GetPublicAccessBlock
    class GetPublicAccessBlock
      def self.default(visited=[])
        {
          public_access_block_configuration: PublicAccessBlockConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::PublicAccessBlockConfiguration.build('PublicAccessBlockConfiguration', stub[:public_access_block_configuration]) unless stub[:public_access_block_configuration].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for GetStorageLensConfiguration
    class GetStorageLensConfiguration
      def self.default(visited=[])
        {
          storage_lens_configuration: StorageLensConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::StorageLensConfiguration.build('StorageLensConfiguration', stub[:storage_lens_configuration]) unless stub[:storage_lens_configuration].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Structure Stubber for StorageLensConfiguration
    class StorageLensConfiguration
      def self.default(visited=[])
        return nil if visited.include?('StorageLensConfiguration')
        visited = visited + ['StorageLensConfiguration']
        {
          id: 'id',
          account_level: AccountLevel.default(visited),
          include: Include.default(visited),
          exclude: Exclude.default(visited),
          data_export: StorageLensDataExport.default(visited),
          is_enabled: false,
          aws_org: StorageLensAwsOrg.default(visited),
          storage_lens_arn: 'storage_lens_arn',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::StorageLensConfiguration.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Id', stub[:id].to_s) unless stub[:id].nil?
        xml << Stubs::AccountLevel.stub('AccountLevel', stub[:account_level]) unless stub[:account_level].nil?
        xml << Stubs::Include.stub('Include', stub[:include]) unless stub[:include].nil?
        xml << Stubs::Exclude.stub('Exclude', stub[:exclude]) unless stub[:exclude].nil?
        xml << Stubs::StorageLensDataExport.stub('DataExport', stub[:data_export]) unless stub[:data_export].nil?
        xml << Hearth::XML::Node.new('IsEnabled', stub[:is_enabled].to_s) unless stub[:is_enabled].nil?
        xml << Stubs::StorageLensAwsOrg.stub('AwsOrg', stub[:aws_org]) unless stub[:aws_org].nil?
        xml << Hearth::XML::Node.new('StorageLensArn', stub[:storage_lens_arn].to_s) unless stub[:storage_lens_arn].nil?
        xml
      end
    end

    # Structure Stubber for StorageLensAwsOrg
    class StorageLensAwsOrg
      def self.default(visited=[])
        return nil if visited.include?('StorageLensAwsOrg')
        visited = visited + ['StorageLensAwsOrg']
        {
          arn: 'arn',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::StorageLensAwsOrg.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Arn', stub[:arn].to_s) unless stub[:arn].nil?
        xml
      end
    end

    # Structure Stubber for StorageLensDataExport
    class StorageLensDataExport
      def self.default(visited=[])
        return nil if visited.include?('StorageLensDataExport')
        visited = visited + ['StorageLensDataExport']
        {
          s3_bucket_destination: S3BucketDestination.default(visited),
          cloud_watch_metrics: CloudWatchMetrics.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::StorageLensDataExport.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Stubs::S3BucketDestination.stub('S3BucketDestination', stub[:s3_bucket_destination]) unless stub[:s3_bucket_destination].nil?
        xml << Stubs::CloudWatchMetrics.stub('CloudWatchMetrics', stub[:cloud_watch_metrics]) unless stub[:cloud_watch_metrics].nil?
        xml
      end
    end

    # Structure Stubber for CloudWatchMetrics
    class CloudWatchMetrics
      def self.default(visited=[])
        return nil if visited.include?('CloudWatchMetrics')
        visited = visited + ['CloudWatchMetrics']
        {
          is_enabled: false,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::CloudWatchMetrics.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('IsEnabled', stub[:is_enabled].to_s) unless stub[:is_enabled].nil?
        xml
      end
    end

    # Structure Stubber for S3BucketDestination
    class S3BucketDestination
      def self.default(visited=[])
        return nil if visited.include?('S3BucketDestination')
        visited = visited + ['S3BucketDestination']
        {
          format: 'format',
          output_schema_version: 'output_schema_version',
          account_id: 'account_id',
          arn: 'arn',
          prefix: 'prefix',
          encryption: StorageLensDataExportEncryption.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::S3BucketDestination.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Format', stub[:format].to_s) unless stub[:format].nil?
        xml << Hearth::XML::Node.new('OutputSchemaVersion', stub[:output_schema_version].to_s) unless stub[:output_schema_version].nil?
        xml << Hearth::XML::Node.new('AccountId', stub[:account_id].to_s) unless stub[:account_id].nil?
        xml << Hearth::XML::Node.new('Arn', stub[:arn].to_s) unless stub[:arn].nil?
        xml << Hearth::XML::Node.new('Prefix', stub[:prefix].to_s) unless stub[:prefix].nil?
        xml << Stubs::StorageLensDataExportEncryption.stub('Encryption', stub[:encryption]) unless stub[:encryption].nil?
        xml
      end
    end

    # Structure Stubber for StorageLensDataExportEncryption
    class StorageLensDataExportEncryption
      def self.default(visited=[])
        return nil if visited.include?('StorageLensDataExportEncryption')
        visited = visited + ['StorageLensDataExportEncryption']
        {
          sses3: SSES3.default(visited),
          ssekms: SSEKMS.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::StorageLensDataExportEncryption.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Stubs::SSES3.stub('SSE-S3', stub[:sses3]) unless stub[:sses3].nil?
        xml << Stubs::SSEKMS.stub('SSE-KMS', stub[:ssekms]) unless stub[:ssekms].nil?
        xml
      end
    end

    # Structure Stubber for SSEKMS
    class SSEKMS
      def self.default(visited=[])
        return nil if visited.include?('SSEKMS')
        visited = visited + ['SSEKMS']
        {
          key_id: 'key_id',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::SSEKMS.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('KeyId', stub[:key_id].to_s) unless stub[:key_id].nil?
        xml
      end
    end

    # Structure Stubber for SSES3
    class SSES3
      def self.default(visited=[])
        return nil if visited.include?('SSES3')
        visited = visited + ['SSES3']
        {
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::SSES3.new
        xml = Hearth::XML::Node.new(node_name)
        xml
      end
    end

    # Structure Stubber for Exclude
    class Exclude
      def self.default(visited=[])
        return nil if visited.include?('Exclude')
        visited = visited + ['Exclude']
        {
          buckets: Buckets.default(visited),
          regions: Regions.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Exclude.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Buckets', Stubs::Buckets.stub('Arn', stub[:buckets])) unless stub[:buckets].nil?
        xml << Hearth::XML::Node.new('Regions', Stubs::Regions.stub('Region', stub[:regions])) unless stub[:regions].nil?
        xml
      end
    end

    # List Stubber for Regions
    class Regions
      def self.default(visited=[])
        return nil if visited.include?('Regions')
        visited = visited + ['Regions']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # List Stubber for Buckets
    class Buckets
      def self.default(visited=[])
        return nil if visited.include?('Buckets')
        visited = visited + ['Buckets']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for Include
    class Include
      def self.default(visited=[])
        return nil if visited.include?('Include')
        visited = visited + ['Include']
        {
          buckets: Buckets.default(visited),
          regions: Regions.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Include.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Buckets', Stubs::Buckets.stub('Arn', stub[:buckets])) unless stub[:buckets].nil?
        xml << Hearth::XML::Node.new('Regions', Stubs::Regions.stub('Region', stub[:regions])) unless stub[:regions].nil?
        xml
      end
    end

    # Structure Stubber for AccountLevel
    class AccountLevel
      def self.default(visited=[])
        return nil if visited.include?('AccountLevel')
        visited = visited + ['AccountLevel']
        {
          activity_metrics: ActivityMetrics.default(visited),
          bucket_level: BucketLevel.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::AccountLevel.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Stubs::ActivityMetrics.stub('ActivityMetrics', stub[:activity_metrics]) unless stub[:activity_metrics].nil?
        xml << Stubs::BucketLevel.stub('BucketLevel', stub[:bucket_level]) unless stub[:bucket_level].nil?
        xml
      end
    end

    # Structure Stubber for BucketLevel
    class BucketLevel
      def self.default(visited=[])
        return nil if visited.include?('BucketLevel')
        visited = visited + ['BucketLevel']
        {
          activity_metrics: ActivityMetrics.default(visited),
          prefix_level: PrefixLevel.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::BucketLevel.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Stubs::ActivityMetrics.stub('ActivityMetrics', stub[:activity_metrics]) unless stub[:activity_metrics].nil?
        xml << Stubs::PrefixLevel.stub('PrefixLevel', stub[:prefix_level]) unless stub[:prefix_level].nil?
        xml
      end
    end

    # Structure Stubber for PrefixLevel
    class PrefixLevel
      def self.default(visited=[])
        return nil if visited.include?('PrefixLevel')
        visited = visited + ['PrefixLevel']
        {
          storage_metrics: PrefixLevelStorageMetrics.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::PrefixLevel.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Stubs::PrefixLevelStorageMetrics.stub('StorageMetrics', stub[:storage_metrics]) unless stub[:storage_metrics].nil?
        xml
      end
    end

    # Structure Stubber for PrefixLevelStorageMetrics
    class PrefixLevelStorageMetrics
      def self.default(visited=[])
        return nil if visited.include?('PrefixLevelStorageMetrics')
        visited = visited + ['PrefixLevelStorageMetrics']
        {
          is_enabled: false,
          selection_criteria: SelectionCriteria.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::PrefixLevelStorageMetrics.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('IsEnabled', stub[:is_enabled].to_s) unless stub[:is_enabled].nil?
        xml << Stubs::SelectionCriteria.stub('SelectionCriteria', stub[:selection_criteria]) unless stub[:selection_criteria].nil?
        xml
      end
    end

    # Structure Stubber for SelectionCriteria
    class SelectionCriteria
      def self.default(visited=[])
        return nil if visited.include?('SelectionCriteria')
        visited = visited + ['SelectionCriteria']
        {
          delimiter: 'delimiter',
          max_depth: 1,
          min_storage_bytes_percentage: 1.0,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::SelectionCriteria.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Delimiter', stub[:delimiter].to_s) unless stub[:delimiter].nil?
        xml << Hearth::XML::Node.new('MaxDepth', stub[:max_depth].to_s) unless stub[:max_depth].nil?
        xml << Hearth::XML::Node.new('MinStorageBytesPercentage', Hearth::NumberHelper.serialize(stub[:min_storage_bytes_percentage]).to_s) unless stub[:min_storage_bytes_percentage].nil?
        xml
      end
    end

    # Structure Stubber for ActivityMetrics
    class ActivityMetrics
      def self.default(visited=[])
        return nil if visited.include?('ActivityMetrics')
        visited = visited + ['ActivityMetrics']
        {
          is_enabled: false,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ActivityMetrics.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('IsEnabled', stub[:is_enabled].to_s) unless stub[:is_enabled].nil?
        xml
      end
    end

    # Operation Stubber for GetStorageLensConfigurationTagging
    class GetStorageLensConfigurationTagging
      def self.default(visited=[])
        {
          tags: StorageLensTags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('GetStorageLensConfigurationTaggingResult')
        xml.attributes['xmlns'] = 'http://awss3control.amazonaws.com/doc/2018-08-20/'
        xml << Hearth::XML::Node.new('Tags', Stubs::StorageLensTags.stub('Tag', stub[:tags])) unless stub[:tags].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # List Stubber for StorageLensTags
    class StorageLensTags
      def self.default(visited=[])
        return nil if visited.include?('StorageLensTags')
        visited = visited + ['StorageLensTags']
        [
          StorageLensTag.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::StorageLensTag.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for StorageLensTag
    class StorageLensTag
      def self.default(visited=[])
        return nil if visited.include?('StorageLensTag')
        visited = visited + ['StorageLensTag']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::StorageLensTag.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Key', stub[:key].to_s) unless stub[:key].nil?
        xml << Hearth::XML::Node.new('Value', stub[:value].to_s) unless stub[:value].nil?
        xml
      end
    end

    # Operation Stubber for ListAccessPoints
    class ListAccessPoints
      def self.default(visited=[])
        {
          access_point_list: AccessPointList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('ListAccessPointsResult')
        xml.attributes['xmlns'] = 'http://awss3control.amazonaws.com/doc/2018-08-20/'
        xml << Hearth::XML::Node.new('AccessPointList', Stubs::AccessPointList.stub('AccessPoint', stub[:access_point_list])) unless stub[:access_point_list].nil?
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # List Stubber for AccessPointList
    class AccessPointList
      def self.default(visited=[])
        return nil if visited.include?('AccessPointList')
        visited = visited + ['AccessPointList']
        [
          AccessPoint.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::AccessPoint.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for AccessPoint
    class AccessPoint
      def self.default(visited=[])
        return nil if visited.include?('AccessPoint')
        visited = visited + ['AccessPoint']
        {
          name: 'name',
          network_origin: 'network_origin',
          vpc_configuration: VpcConfiguration.default(visited),
          bucket: 'bucket',
          access_point_arn: 'access_point_arn',
          alias: 'alias',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::AccessPoint.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml << Hearth::XML::Node.new('NetworkOrigin', stub[:network_origin].to_s) unless stub[:network_origin].nil?
        xml << Stubs::VpcConfiguration.stub('VpcConfiguration', stub[:vpc_configuration]) unless stub[:vpc_configuration].nil?
        xml << Hearth::XML::Node.new('Bucket', stub[:bucket].to_s) unless stub[:bucket].nil?
        xml << Hearth::XML::Node.new('AccessPointArn', stub[:access_point_arn].to_s) unless stub[:access_point_arn].nil?
        xml << Hearth::XML::Node.new('Alias', stub[:alias].to_s) unless stub[:alias].nil?
        xml
      end
    end

    # Operation Stubber for ListAccessPointsForObjectLambda
    class ListAccessPointsForObjectLambda
      def self.default(visited=[])
        {
          object_lambda_access_point_list: ObjectLambdaAccessPointList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('ListAccessPointsForObjectLambdaResult')
        xml.attributes['xmlns'] = 'http://awss3control.amazonaws.com/doc/2018-08-20/'
        xml << Hearth::XML::Node.new('ObjectLambdaAccessPointList', Stubs::ObjectLambdaAccessPointList.stub('ObjectLambdaAccessPoint', stub[:object_lambda_access_point_list])) unless stub[:object_lambda_access_point_list].nil?
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # List Stubber for ObjectLambdaAccessPointList
    class ObjectLambdaAccessPointList
      def self.default(visited=[])
        return nil if visited.include?('ObjectLambdaAccessPointList')
        visited = visited + ['ObjectLambdaAccessPointList']
        [
          ObjectLambdaAccessPoint.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::ObjectLambdaAccessPoint.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for ObjectLambdaAccessPoint
    class ObjectLambdaAccessPoint
      def self.default(visited=[])
        return nil if visited.include?('ObjectLambdaAccessPoint')
        visited = visited + ['ObjectLambdaAccessPoint']
        {
          name: 'name',
          object_lambda_access_point_arn: 'object_lambda_access_point_arn',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ObjectLambdaAccessPoint.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml << Hearth::XML::Node.new('ObjectLambdaAccessPointArn', stub[:object_lambda_access_point_arn].to_s) unless stub[:object_lambda_access_point_arn].nil?
        xml
      end
    end

    # Operation Stubber for ListJobs
    class ListJobs
      def self.default(visited=[])
        {
          next_token: 'next_token',
          jobs: JobListDescriptorList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('ListJobsResult')
        xml.attributes['xmlns'] = 'http://awss3control.amazonaws.com/doc/2018-08-20/'
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        xml << Hearth::XML::Node.new('Jobs', Stubs::JobListDescriptorList.stub('member', stub[:jobs])) unless stub[:jobs].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # List Stubber for JobListDescriptorList
    class JobListDescriptorList
      def self.default(visited=[])
        return nil if visited.include?('JobListDescriptorList')
        visited = visited + ['JobListDescriptorList']
        [
          JobListDescriptor.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::JobListDescriptor.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for JobListDescriptor
    class JobListDescriptor
      def self.default(visited=[])
        return nil if visited.include?('JobListDescriptor')
        visited = visited + ['JobListDescriptor']
        {
          job_id: 'job_id',
          description: 'description',
          operation: 'operation',
          priority: 1,
          status: 'status',
          creation_time: Time.now,
          termination_date: Time.now,
          progress_summary: JobProgressSummary.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::JobListDescriptor.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('JobId', stub[:job_id].to_s) unless stub[:job_id].nil?
        xml << Hearth::XML::Node.new('Description', stub[:description].to_s) unless stub[:description].nil?
        xml << Hearth::XML::Node.new('Operation', stub[:operation].to_s) unless stub[:operation].nil?
        xml << Hearth::XML::Node.new('Priority', stub[:priority].to_s) unless stub[:priority].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('CreationTime', Hearth::TimeHelper.to_date_time(stub[:creation_time])) unless stub[:creation_time].nil?
        xml << Hearth::XML::Node.new('TerminationDate', Hearth::TimeHelper.to_date_time(stub[:termination_date])) unless stub[:termination_date].nil?
        xml << Stubs::JobProgressSummary.stub('ProgressSummary', stub[:progress_summary]) unless stub[:progress_summary].nil?
        xml
      end
    end

    # Operation Stubber for ListMultiRegionAccessPoints
    class ListMultiRegionAccessPoints
      def self.default(visited=[])
        {
          access_points: MultiRegionAccessPointReportList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('ListMultiRegionAccessPointsResult')
        xml.attributes['xmlns'] = 'http://awss3control.amazonaws.com/doc/2018-08-20/'
        xml << Hearth::XML::Node.new('AccessPoints', Stubs::MultiRegionAccessPointReportList.stub('AccessPoint', stub[:access_points])) unless stub[:access_points].nil?
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # List Stubber for MultiRegionAccessPointReportList
    class MultiRegionAccessPointReportList
      def self.default(visited=[])
        return nil if visited.include?('MultiRegionAccessPointReportList')
        visited = visited + ['MultiRegionAccessPointReportList']
        [
          MultiRegionAccessPointReport.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::MultiRegionAccessPointReport.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for ListRegionalBuckets
    class ListRegionalBuckets
      def self.default(visited=[])
        {
          regional_bucket_list: RegionalBucketList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('ListRegionalBucketsResult')
        xml.attributes['xmlns'] = 'http://awss3control.amazonaws.com/doc/2018-08-20/'
        xml << Hearth::XML::Node.new('RegionalBucketList', Stubs::RegionalBucketList.stub('RegionalBucket', stub[:regional_bucket_list])) unless stub[:regional_bucket_list].nil?
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # List Stubber for RegionalBucketList
    class RegionalBucketList
      def self.default(visited=[])
        return nil if visited.include?('RegionalBucketList')
        visited = visited + ['RegionalBucketList']
        [
          RegionalBucket.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::RegionalBucket.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for RegionalBucket
    class RegionalBucket
      def self.default(visited=[])
        return nil if visited.include?('RegionalBucket')
        visited = visited + ['RegionalBucket']
        {
          bucket: 'bucket',
          bucket_arn: 'bucket_arn',
          public_access_block_enabled: false,
          creation_date: Time.now,
          outpost_id: 'outpost_id',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::RegionalBucket.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Bucket', stub[:bucket].to_s) unless stub[:bucket].nil?
        xml << Hearth::XML::Node.new('BucketArn', stub[:bucket_arn].to_s) unless stub[:bucket_arn].nil?
        xml << Hearth::XML::Node.new('PublicAccessBlockEnabled', stub[:public_access_block_enabled].to_s) unless stub[:public_access_block_enabled].nil?
        xml << Hearth::XML::Node.new('CreationDate', Hearth::TimeHelper.to_date_time(stub[:creation_date])) unless stub[:creation_date].nil?
        xml << Hearth::XML::Node.new('OutpostId', stub[:outpost_id].to_s) unless stub[:outpost_id].nil?
        xml
      end
    end

    # Operation Stubber for ListStorageLensConfigurations
    class ListStorageLensConfigurations
      def self.default(visited=[])
        {
          next_token: 'next_token',
          storage_lens_configuration_list: StorageLensConfigurationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('ListStorageLensConfigurationsResult')
        xml.attributes['xmlns'] = 'http://awss3control.amazonaws.com/doc/2018-08-20/'
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        xml << Stubs::StorageLensConfigurationList.stub('StorageLensConfigurationList', stub[:storage_lens_configuration_list]) unless stub[:storage_lens_configuration_list].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # List Stubber for StorageLensConfigurationList
    class StorageLensConfigurationList
      def self.default(visited=[])
        return nil if visited.include?('StorageLensConfigurationList')
        visited = visited + ['StorageLensConfigurationList']
        [
          ListStorageLensConfigurationEntry.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::ListStorageLensConfigurationEntry.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for ListStorageLensConfigurationEntry
    class ListStorageLensConfigurationEntry
      def self.default(visited=[])
        return nil if visited.include?('ListStorageLensConfigurationEntry')
        visited = visited + ['ListStorageLensConfigurationEntry']
        {
          id: 'id',
          storage_lens_arn: 'storage_lens_arn',
          home_region: 'home_region',
          is_enabled: false,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ListStorageLensConfigurationEntry.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Id', stub[:id].to_s) unless stub[:id].nil?
        xml << Hearth::XML::Node.new('StorageLensArn', stub[:storage_lens_arn].to_s) unless stub[:storage_lens_arn].nil?
        xml << Hearth::XML::Node.new('HomeRegion', stub[:home_region].to_s) unless stub[:home_region].nil?
        xml << Hearth::XML::Node.new('IsEnabled', stub[:is_enabled].to_s) unless stub[:is_enabled].nil?
        xml
      end
    end

    # Operation Stubber for PutAccessPointConfigurationForObjectLambda
    class PutAccessPointConfigurationForObjectLambda
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutAccessPointPolicy
    class PutAccessPointPolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutAccessPointPolicyForObjectLambda
    class PutAccessPointPolicyForObjectLambda
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutBucketLifecycleConfiguration
    class PutBucketLifecycleConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutBucketPolicy
    class PutBucketPolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutBucketTagging
    class PutBucketTagging
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutJobTagging
    class PutJobTagging
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutMultiRegionAccessPointPolicy
    class PutMultiRegionAccessPointPolicy
      def self.default(visited=[])
        {
          request_token_arn: 'request_token_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('PutMultiRegionAccessPointPolicyResult')
        xml.attributes['xmlns'] = 'http://awss3control.amazonaws.com/doc/2018-08-20/'
        xml << Hearth::XML::Node.new('RequestTokenARN', stub[:request_token_arn].to_s) unless stub[:request_token_arn].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for PutPublicAccessBlock
    class PutPublicAccessBlock
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutStorageLensConfiguration
    class PutStorageLensConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutStorageLensConfigurationTagging
    class PutStorageLensConfigurationTagging
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateJobPriority
    class UpdateJobPriority
      def self.default(visited=[])
        {
          job_id: 'job_id',
          priority: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('UpdateJobPriorityResult')
        xml.attributes['xmlns'] = 'http://awss3control.amazonaws.com/doc/2018-08-20/'
        xml << Hearth::XML::Node.new('JobId', stub[:job_id].to_s) unless stub[:job_id].nil?
        xml << Hearth::XML::Node.new('Priority', stub[:priority].to_s) unless stub[:priority].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for UpdateJobStatus
    class UpdateJobStatus
      def self.default(visited=[])
        {
          job_id: 'job_id',
          status: 'status',
          status_update_reason: 'status_update_reason',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('UpdateJobStatusResult')
        xml.attributes['xmlns'] = 'http://awss3control.amazonaws.com/doc/2018-08-20/'
        xml << Hearth::XML::Node.new('JobId', stub[:job_id].to_s) unless stub[:job_id].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('StatusUpdateReason', stub[:status_update_reason].to_s) unless stub[:status_update_reason].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end
  end
end
