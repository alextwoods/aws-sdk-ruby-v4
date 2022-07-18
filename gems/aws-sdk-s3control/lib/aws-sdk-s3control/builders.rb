# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::S3Control
  module Builders

    # Operation Builder for CreateAccessPoint
    class CreateAccessPoint
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20180820/accesspoint/%<Name>s',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('CreateAccessPointRequest')
        xml.attributes['xmlns'] = 'http://awss3control.amazonaws.com/doc/2018-08-20/'
        xml << Hearth::XML::Node.new('Bucket', input[:bucket].to_s) unless input[:bucket].nil?
        xml << Builders::VpcConfiguration.build('VpcConfiguration', input[:vpc_configuration]) unless input[:vpc_configuration].nil?
        xml << Builders::PublicAccessBlockConfiguration.build('PublicAccessBlockConfiguration', input[:public_access_block_configuration]) unless input[:public_access_block_configuration].nil?
        http_req.body = StringIO.new(xml.to_str)
        http_req.headers['x-amz-account-id'] = input[:account_id] unless input[:account_id].nil? || input[:account_id].empty?
      end
    end

    # Structure Builder for PublicAccessBlockConfiguration
    class PublicAccessBlockConfiguration
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('BlockPublicAcls', input[:block_public_acls].to_s) unless input[:block_public_acls].nil?
        xml << Hearth::XML::Node.new('IgnorePublicAcls', input[:ignore_public_acls].to_s) unless input[:ignore_public_acls].nil?
        xml << Hearth::XML::Node.new('BlockPublicPolicy', input[:block_public_policy].to_s) unless input[:block_public_policy].nil?
        xml << Hearth::XML::Node.new('RestrictPublicBuckets', input[:restrict_public_buckets].to_s) unless input[:restrict_public_buckets].nil?
        xml
      end
    end

    # Structure Builder for VpcConfiguration
    class VpcConfiguration
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('VpcId', input[:vpc_id].to_s) unless input[:vpc_id].nil?
        xml
      end
    end

    # Operation Builder for CreateAccessPointForObjectLambda
    class CreateAccessPointForObjectLambda
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20180820/accesspointforobjectlambda/%<Name>s',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('CreateAccessPointForObjectLambdaRequest')
        xml.attributes['xmlns'] = 'http://awss3control.amazonaws.com/doc/2018-08-20/'
        xml << Builders::ObjectLambdaConfiguration.build('Configuration', input[:configuration]) unless input[:configuration].nil?
        http_req.body = StringIO.new(xml.to_str)
        http_req.headers['x-amz-account-id'] = input[:account_id] unless input[:account_id].nil? || input[:account_id].empty?
      end
    end

    # Structure Builder for ObjectLambdaConfiguration
    class ObjectLambdaConfiguration
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('SupportingAccessPoint', input[:supporting_access_point].to_s) unless input[:supporting_access_point].nil?
        xml << Hearth::XML::Node.new('CloudWatchMetricsEnabled', input[:cloud_watch_metrics_enabled].to_s) unless input[:cloud_watch_metrics_enabled].nil?
        xml << Hearth::XML::Node.new('AllowedFeatures', Builders::ObjectLambdaAllowedFeaturesList.build('AllowedFeature', input[:allowed_features])) unless input[:allowed_features].nil?
        xml << Hearth::XML::Node.new('TransformationConfigurations', Builders::ObjectLambdaTransformationConfigurationsList.build('TransformationConfiguration', input[:transformation_configurations])) unless input[:transformation_configurations].nil?
        xml
      end
    end

    # List Builder for ObjectLambdaTransformationConfigurationsList
    class ObjectLambdaTransformationConfigurationsList
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Builders::ObjectLambdaTransformationConfiguration.build(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Builder for ObjectLambdaTransformationConfiguration
    class ObjectLambdaTransformationConfiguration
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Actions', Builders::ObjectLambdaTransformationConfigurationActionsList.build('Action', input[:actions])) unless input[:actions].nil?
        xml << Builders::ObjectLambdaContentTransformation.build('ContentTransformation', input[:content_transformation]) unless input[:content_transformation].nil?
        xml
      end
    end

    # Structure Builder for ObjectLambdaContentTransformation
    class ObjectLambdaContentTransformation
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        case input
        when Types::ObjectLambdaContentTransformation::AwsLambda
          xml << Builders::AwsLambdaTransformation.build('AwsLambda', input.__getobj__) unless input.__getobj__.nil?
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::ObjectLambdaContentTransformation"
        end

        xml
      end
    end

    # Structure Builder for AwsLambdaTransformation
    class AwsLambdaTransformation
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('FunctionArn', input[:function_arn].to_s) unless input[:function_arn].nil?
        xml << Hearth::XML::Node.new('FunctionPayload', input[:function_payload].to_s) unless input[:function_payload].nil?
        xml
      end
    end

    # List Builder for ObjectLambdaTransformationConfigurationActionsList
    class ObjectLambdaTransformationConfigurationActionsList
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # List Builder for ObjectLambdaAllowedFeaturesList
    class ObjectLambdaAllowedFeaturesList
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Operation Builder for CreateBucket
    class CreateBucket
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20180820/bucket/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/xml'
        xml = Builders::CreateBucketConfiguration.build('CreateBucketConfiguration', input[:create_bucket_configuration]) unless input[:create_bucket_configuration].nil?
        http_req.body = StringIO.new(xml.to_str)
        http_req.headers['x-amz-acl'] = input[:acl] unless input[:acl].nil? || input[:acl].empty?
        http_req.headers['x-amz-grant-full-control'] = input[:grant_full_control] unless input[:grant_full_control].nil? || input[:grant_full_control].empty?
        http_req.headers['x-amz-grant-read'] = input[:grant_read] unless input[:grant_read].nil? || input[:grant_read].empty?
        http_req.headers['x-amz-grant-read-acp'] = input[:grant_read_acp] unless input[:grant_read_acp].nil? || input[:grant_read_acp].empty?
        http_req.headers['x-amz-grant-write'] = input[:grant_write] unless input[:grant_write].nil? || input[:grant_write].empty?
        http_req.headers['x-amz-grant-write-acp'] = input[:grant_write_acp] unless input[:grant_write_acp].nil? || input[:grant_write_acp].empty?
        http_req.headers['x-amz-bucket-object-lock-enabled'] = input[:object_lock_enabled_for_bucket].to_s unless input[:object_lock_enabled_for_bucket].nil?
        http_req.headers['x-amz-outpost-id'] = input[:outpost_id] unless input[:outpost_id].nil? || input[:outpost_id].empty?
      end
    end

    # Structure Builder for CreateBucketConfiguration
    class CreateBucketConfiguration
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('LocationConstraint', input[:location_constraint].to_s) unless input[:location_constraint].nil?
        xml
      end
    end

    # Operation Builder for CreateJob
    class CreateJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v20180820/jobs')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('CreateJobRequest')
        xml.attributes['xmlns'] = 'http://awss3control.amazonaws.com/doc/2018-08-20/'
        xml << Hearth::XML::Node.new('ConfirmationRequired', input[:confirmation_required].to_s) unless input[:confirmation_required].nil?
        xml << Builders::JobOperation.build('Operation', input[:operation]) unless input[:operation].nil?
        xml << Builders::JobReport.build('Report', input[:report]) unless input[:report].nil?
        xml << Hearth::XML::Node.new('ClientRequestToken', input[:client_request_token].to_s) unless input[:client_request_token].nil?
        xml << Builders::JobManifest.build('Manifest', input[:manifest]) unless input[:manifest].nil?
        xml << Hearth::XML::Node.new('Description', input[:description].to_s) unless input[:description].nil?
        xml << Hearth::XML::Node.new('Priority', input[:priority].to_s) unless input[:priority].nil?
        xml << Hearth::XML::Node.new('RoleArn', input[:role_arn].to_s) unless input[:role_arn].nil?
        xml << Hearth::XML::Node.new('Tags', Builders::S3TagSet.build('member', input[:tags])) unless input[:tags].nil?
        xml << Builders::JobManifestGenerator.build('ManifestGenerator', input[:manifest_generator]) unless input[:manifest_generator].nil?
        http_req.body = StringIO.new(xml.to_str)
        http_req.headers['x-amz-account-id'] = input[:account_id] unless input[:account_id].nil? || input[:account_id].empty?
      end
    end

    # Structure Builder for JobManifestGenerator
    class JobManifestGenerator
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        case input
        when Types::JobManifestGenerator::S3JobManifestGenerator
          xml << Builders::S3JobManifestGenerator.build('S3JobManifestGenerator', input.__getobj__) unless input.__getobj__.nil?
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::JobManifestGenerator"
        end

        xml
      end
    end

    # Structure Builder for S3JobManifestGenerator
    class S3JobManifestGenerator
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ExpectedBucketOwner', input[:expected_bucket_owner].to_s) unless input[:expected_bucket_owner].nil?
        xml << Hearth::XML::Node.new('SourceBucket', input[:source_bucket].to_s) unless input[:source_bucket].nil?
        xml << Builders::S3ManifestOutputLocation.build('ManifestOutputLocation', input[:manifest_output_location]) unless input[:manifest_output_location].nil?
        xml << Builders::JobManifestGeneratorFilter.build('Filter', input[:filter]) unless input[:filter].nil?
        xml << Hearth::XML::Node.new('EnableManifestOutput', input[:enable_manifest_output].to_s) unless input[:enable_manifest_output].nil?
        xml
      end
    end

    # Structure Builder for JobManifestGeneratorFilter
    class JobManifestGeneratorFilter
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('EligibleForReplication', input[:eligible_for_replication].to_s) unless input[:eligible_for_replication].nil?
        xml << Hearth::XML::Node.new('CreatedAfter', Hearth::TimeHelper.to_date_time(input[:created_after])) unless input[:created_after].nil?
        xml << Hearth::XML::Node.new('CreatedBefore', Hearth::TimeHelper.to_date_time(input[:created_before])) unless input[:created_before].nil?
        xml << Hearth::XML::Node.new('ObjectReplicationStatuses', Builders::ReplicationStatusFilterList.build('member', input[:object_replication_statuses])) unless input[:object_replication_statuses].nil?
        xml
      end
    end

    # List Builder for ReplicationStatusFilterList
    class ReplicationStatusFilterList
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Structure Builder for S3ManifestOutputLocation
    class S3ManifestOutputLocation
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ExpectedManifestBucketOwner', input[:expected_manifest_bucket_owner].to_s) unless input[:expected_manifest_bucket_owner].nil?
        xml << Hearth::XML::Node.new('Bucket', input[:bucket].to_s) unless input[:bucket].nil?
        xml << Hearth::XML::Node.new('ManifestPrefix', input[:manifest_prefix].to_s) unless input[:manifest_prefix].nil?
        xml << Builders::GeneratedManifestEncryption.build('ManifestEncryption', input[:manifest_encryption]) unless input[:manifest_encryption].nil?
        xml << Hearth::XML::Node.new('ManifestFormat', input[:manifest_format].to_s) unless input[:manifest_format].nil?
        xml
      end
    end

    # Structure Builder for GeneratedManifestEncryption
    class GeneratedManifestEncryption
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Builders::SSES3Encryption.build('SSE-S3', input[:sses3]) unless input[:sses3].nil?
        xml << Builders::SSEKMSEncryption.build('SSE-KMS', input[:ssekms]) unless input[:ssekms].nil?
        xml
      end
    end

    # Structure Builder for SSEKMSEncryption
    class SSEKMSEncryption
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('KeyId', input[:key_id].to_s) unless input[:key_id].nil?
        xml
      end
    end

    # Structure Builder for SSES3Encryption
    class SSES3Encryption
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml
      end
    end

    # List Builder for S3TagSet
    class S3TagSet
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Builders::S3Tag.build(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Builder for S3Tag
    class S3Tag
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Key', input[:key].to_s) unless input[:key].nil?
        xml << Hearth::XML::Node.new('Value', input[:value].to_s) unless input[:value].nil?
        xml
      end
    end

    # Structure Builder for JobManifest
    class JobManifest
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Builders::JobManifestSpec.build('Spec', input[:spec]) unless input[:spec].nil?
        xml << Builders::JobManifestLocation.build('Location', input[:location]) unless input[:location].nil?
        xml
      end
    end

    # Structure Builder for JobManifestLocation
    class JobManifestLocation
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ObjectArn', input[:object_arn].to_s) unless input[:object_arn].nil?
        xml << Hearth::XML::Node.new('ObjectVersionId', input[:object_version_id].to_s) unless input[:object_version_id].nil?
        xml << Hearth::XML::Node.new('ETag', input[:e_tag].to_s) unless input[:e_tag].nil?
        xml
      end
    end

    # Structure Builder for JobManifestSpec
    class JobManifestSpec
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Format', input[:format].to_s) unless input[:format].nil?
        xml << Hearth::XML::Node.new('Fields', Builders::JobManifestFieldList.build('member', input[:fields])) unless input[:fields].nil?
        xml
      end
    end

    # List Builder for JobManifestFieldList
    class JobManifestFieldList
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Structure Builder for JobReport
    class JobReport
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Bucket', input[:bucket].to_s) unless input[:bucket].nil?
        xml << Hearth::XML::Node.new('Format', input[:format].to_s) unless input[:format].nil?
        xml << Hearth::XML::Node.new('Enabled', input[:enabled].to_s) unless input[:enabled].nil?
        xml << Hearth::XML::Node.new('Prefix', input[:prefix].to_s) unless input[:prefix].nil?
        xml << Hearth::XML::Node.new('ReportScope', input[:report_scope].to_s) unless input[:report_scope].nil?
        xml
      end
    end

    # Structure Builder for JobOperation
    class JobOperation
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Builders::LambdaInvokeOperation.build('LambdaInvoke', input[:lambda_invoke]) unless input[:lambda_invoke].nil?
        xml << Builders::S3CopyObjectOperation.build('S3PutObjectCopy', input[:s3_put_object_copy]) unless input[:s3_put_object_copy].nil?
        xml << Builders::S3SetObjectAclOperation.build('S3PutObjectAcl', input[:s3_put_object_acl]) unless input[:s3_put_object_acl].nil?
        xml << Builders::S3SetObjectTaggingOperation.build('S3PutObjectTagging', input[:s3_put_object_tagging]) unless input[:s3_put_object_tagging].nil?
        xml << Builders::S3DeleteObjectTaggingOperation.build('S3DeleteObjectTagging', input[:s3_delete_object_tagging]) unless input[:s3_delete_object_tagging].nil?
        xml << Builders::S3InitiateRestoreObjectOperation.build('S3InitiateRestoreObject', input[:s3_initiate_restore_object]) unless input[:s3_initiate_restore_object].nil?
        xml << Builders::S3SetObjectLegalHoldOperation.build('S3PutObjectLegalHold', input[:s3_put_object_legal_hold]) unless input[:s3_put_object_legal_hold].nil?
        xml << Builders::S3SetObjectRetentionOperation.build('S3PutObjectRetention', input[:s3_put_object_retention]) unless input[:s3_put_object_retention].nil?
        xml << Builders::S3ReplicateObjectOperation.build('S3ReplicateObject', input[:s3_replicate_object]) unless input[:s3_replicate_object].nil?
        xml
      end
    end

    # Structure Builder for S3ReplicateObjectOperation
    class S3ReplicateObjectOperation
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml
      end
    end

    # Structure Builder for S3SetObjectRetentionOperation
    class S3SetObjectRetentionOperation
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('BypassGovernanceRetention', input[:bypass_governance_retention].to_s) unless input[:bypass_governance_retention].nil?
        xml << Builders::S3Retention.build('Retention', input[:retention]) unless input[:retention].nil?
        xml
      end
    end

    # Structure Builder for S3Retention
    class S3Retention
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('RetainUntilDate', Hearth::TimeHelper.to_date_time(input[:retain_until_date])) unless input[:retain_until_date].nil?
        xml << Hearth::XML::Node.new('Mode', input[:mode].to_s) unless input[:mode].nil?
        xml
      end
    end

    # Structure Builder for S3SetObjectLegalHoldOperation
    class S3SetObjectLegalHoldOperation
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Builders::S3ObjectLockLegalHold.build('LegalHold', input[:legal_hold]) unless input[:legal_hold].nil?
        xml
      end
    end

    # Structure Builder for S3ObjectLockLegalHold
    class S3ObjectLockLegalHold
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Status', input[:status].to_s) unless input[:status].nil?
        xml
      end
    end

    # Structure Builder for S3InitiateRestoreObjectOperation
    class S3InitiateRestoreObjectOperation
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ExpirationInDays', input[:expiration_in_days].to_s) unless input[:expiration_in_days].nil?
        xml << Hearth::XML::Node.new('GlacierJobTier', input[:glacier_job_tier].to_s) unless input[:glacier_job_tier].nil?
        xml
      end
    end

    # Structure Builder for S3DeleteObjectTaggingOperation
    class S3DeleteObjectTaggingOperation
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml
      end
    end

    # Structure Builder for S3SetObjectTaggingOperation
    class S3SetObjectTaggingOperation
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('TagSet', Builders::S3TagSet.build('member', input[:tag_set])) unless input[:tag_set].nil?
        xml
      end
    end

    # Structure Builder for S3SetObjectAclOperation
    class S3SetObjectAclOperation
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Builders::S3AccessControlPolicy.build('AccessControlPolicy', input[:access_control_policy]) unless input[:access_control_policy].nil?
        xml
      end
    end

    # Structure Builder for S3AccessControlPolicy
    class S3AccessControlPolicy
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Builders::S3AccessControlList.build('AccessControlList', input[:access_control_list]) unless input[:access_control_list].nil?
        xml << Hearth::XML::Node.new('CannedAccessControlList', input[:canned_access_control_list].to_s) unless input[:canned_access_control_list].nil?
        xml
      end
    end

    # Structure Builder for S3AccessControlList
    class S3AccessControlList
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Builders::S3ObjectOwner.build('Owner', input[:owner]) unless input[:owner].nil?
        xml << Hearth::XML::Node.new('Grants', Builders::S3GrantList.build('member', input[:grants])) unless input[:grants].nil?
        xml
      end
    end

    # List Builder for S3GrantList
    class S3GrantList
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Builders::S3Grant.build(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Builder for S3Grant
    class S3Grant
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Builders::S3Grantee.build('Grantee', input[:grantee]) unless input[:grantee].nil?
        xml << Hearth::XML::Node.new('Permission', input[:permission].to_s) unless input[:permission].nil?
        xml
      end
    end

    # Structure Builder for S3Grantee
    class S3Grantee
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('TypeIdentifier', input[:type_identifier].to_s) unless input[:type_identifier].nil?
        xml << Hearth::XML::Node.new('Identifier', input[:identifier].to_s) unless input[:identifier].nil?
        xml << Hearth::XML::Node.new('DisplayName', input[:display_name].to_s) unless input[:display_name].nil?
        xml
      end
    end

    # Structure Builder for S3ObjectOwner
    class S3ObjectOwner
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ID', input[:id].to_s) unless input[:id].nil?
        xml << Hearth::XML::Node.new('DisplayName', input[:display_name].to_s) unless input[:display_name].nil?
        xml
      end
    end

    # Structure Builder for S3CopyObjectOperation
    class S3CopyObjectOperation
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('TargetResource', input[:target_resource].to_s) unless input[:target_resource].nil?
        xml << Hearth::XML::Node.new('CannedAccessControlList', input[:canned_access_control_list].to_s) unless input[:canned_access_control_list].nil?
        xml << Hearth::XML::Node.new('AccessControlGrants', Builders::S3GrantList.build('member', input[:access_control_grants])) unless input[:access_control_grants].nil?
        xml << Hearth::XML::Node.new('MetadataDirective', input[:metadata_directive].to_s) unless input[:metadata_directive].nil?
        xml << Hearth::XML::Node.new('ModifiedSinceConstraint', Hearth::TimeHelper.to_date_time(input[:modified_since_constraint])) unless input[:modified_since_constraint].nil?
        xml << Builders::S3ObjectMetadata.build('NewObjectMetadata', input[:new_object_metadata]) unless input[:new_object_metadata].nil?
        xml << Hearth::XML::Node.new('NewObjectTagging', Builders::S3TagSet.build('member', input[:new_object_tagging])) unless input[:new_object_tagging].nil?
        xml << Hearth::XML::Node.new('RedirectLocation', input[:redirect_location].to_s) unless input[:redirect_location].nil?
        xml << Hearth::XML::Node.new('RequesterPays', input[:requester_pays].to_s) unless input[:requester_pays].nil?
        xml << Hearth::XML::Node.new('StorageClass', input[:storage_class].to_s) unless input[:storage_class].nil?
        xml << Hearth::XML::Node.new('UnModifiedSinceConstraint', Hearth::TimeHelper.to_date_time(input[:un_modified_since_constraint])) unless input[:un_modified_since_constraint].nil?
        xml << Hearth::XML::Node.new('SSEAwsKmsKeyId', input[:sse_aws_kms_key_id].to_s) unless input[:sse_aws_kms_key_id].nil?
        xml << Hearth::XML::Node.new('TargetKeyPrefix', input[:target_key_prefix].to_s) unless input[:target_key_prefix].nil?
        xml << Hearth::XML::Node.new('ObjectLockLegalHoldStatus', input[:object_lock_legal_hold_status].to_s) unless input[:object_lock_legal_hold_status].nil?
        xml << Hearth::XML::Node.new('ObjectLockMode', input[:object_lock_mode].to_s) unless input[:object_lock_mode].nil?
        xml << Hearth::XML::Node.new('ObjectLockRetainUntilDate', Hearth::TimeHelper.to_date_time(input[:object_lock_retain_until_date])) unless input[:object_lock_retain_until_date].nil?
        xml << Hearth::XML::Node.new('BucketKeyEnabled', input[:bucket_key_enabled].to_s) unless input[:bucket_key_enabled].nil?
        xml << Hearth::XML::Node.new('ChecksumAlgorithm', input[:checksum_algorithm].to_s) unless input[:checksum_algorithm].nil?
        xml
      end
    end

    # Structure Builder for S3ObjectMetadata
    class S3ObjectMetadata
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('CacheControl', input[:cache_control].to_s) unless input[:cache_control].nil?
        xml << Hearth::XML::Node.new('ContentDisposition', input[:content_disposition].to_s) unless input[:content_disposition].nil?
        xml << Hearth::XML::Node.new('ContentEncoding', input[:content_encoding].to_s) unless input[:content_encoding].nil?
        xml << Hearth::XML::Node.new('ContentLanguage', input[:content_language].to_s) unless input[:content_language].nil?
        xml << Hearth::XML::Node.new('UserMetadata', Builders::S3UserMetadata.build('entry', input[:user_metadata])) unless input[:user_metadata].nil?
        xml << Hearth::XML::Node.new('ContentLength', input[:content_length].to_s) unless input[:content_length].nil?
        xml << Hearth::XML::Node.new('ContentMD5', input[:content_md5].to_s) unless input[:content_md5].nil?
        xml << Hearth::XML::Node.new('ContentType', input[:content_type].to_s) unless input[:content_type].nil?
        xml << Hearth::XML::Node.new('HttpExpiresDate', Hearth::TimeHelper.to_date_time(input[:http_expires_date])) unless input[:http_expires_date].nil?
        xml << Hearth::XML::Node.new('RequesterCharged', input[:requester_charged].to_s) unless input[:requester_charged].nil?
        xml << Hearth::XML::Node.new('SSEAlgorithm', input[:sse_algorithm].to_s) unless input[:sse_algorithm].nil?
        xml
      end
    end

    # Map Builder for S3UserMetadata
    class S3UserMetadata
      def self.build(node_name, input)
        nodes = []
        input.each do |key, value|
          xml = Hearth::XML::Node.new(node_name)
          xml << Hearth::XML::Node.new('key', key.to_s) unless key.nil?
          xml << Hearth::XML::Node.new('value', value.to_s) unless value.nil?
          nodes << xml
        end
        nodes
      end
    end

    # Structure Builder for LambdaInvokeOperation
    class LambdaInvokeOperation
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('FunctionArn', input[:function_arn].to_s) unless input[:function_arn].nil?
        xml
      end
    end

    # Operation Builder for CreateMultiRegionAccessPoint
    class CreateMultiRegionAccessPoint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v20180820/async-requests/mrap/create')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('CreateMultiRegionAccessPointRequest')
        xml.attributes['xmlns'] = 'http://awss3control.amazonaws.com/doc/2018-08-20/'
        xml << Hearth::XML::Node.new('ClientToken', input[:client_token].to_s) unless input[:client_token].nil?
        xml << Builders::CreateMultiRegionAccessPointInput.build('Details', input[:details]) unless input[:details].nil?
        http_req.body = StringIO.new(xml.to_str)
        http_req.headers['x-amz-account-id'] = input[:account_id] unless input[:account_id].nil? || input[:account_id].empty?
      end
    end

    # Structure Builder for CreateMultiRegionAccessPointInput
    class CreateMultiRegionAccessPointInput
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Name', input[:name].to_s) unless input[:name].nil?
        xml << Builders::PublicAccessBlockConfiguration.build('PublicAccessBlock', input[:public_access_block]) unless input[:public_access_block].nil?
        xml << Hearth::XML::Node.new('Regions', Builders::RegionCreationList.build('Region', input[:regions])) unless input[:regions].nil?
        xml
      end
    end

    # List Builder for RegionCreationList
    class RegionCreationList
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Builders::Region.build(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Builder for Region
    class Region
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Bucket', input[:bucket].to_s) unless input[:bucket].nil?
        xml
      end
    end

    # Operation Builder for DeleteAccessPoint
    class DeleteAccessPoint
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20180820/accesspoint/%<Name>s',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-account-id'] = input[:account_id] unless input[:account_id].nil? || input[:account_id].empty?
      end
    end

    # Operation Builder for DeleteAccessPointForObjectLambda
    class DeleteAccessPointForObjectLambda
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20180820/accesspointforobjectlambda/%<Name>s',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-account-id'] = input[:account_id] unless input[:account_id].nil? || input[:account_id].empty?
      end
    end

    # Operation Builder for DeleteAccessPointPolicy
    class DeleteAccessPointPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20180820/accesspoint/%<Name>s/policy',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-account-id'] = input[:account_id] unless input[:account_id].nil? || input[:account_id].empty?
      end
    end

    # Operation Builder for DeleteAccessPointPolicyForObjectLambda
    class DeleteAccessPointPolicyForObjectLambda
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20180820/accesspointforobjectlambda/%<Name>s/policy',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-account-id'] = input[:account_id] unless input[:account_id].nil? || input[:account_id].empty?
      end
    end

    # Operation Builder for DeleteBucket
    class DeleteBucket
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20180820/bucket/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-account-id'] = input[:account_id] unless input[:account_id].nil? || input[:account_id].empty?
      end
    end

    # Operation Builder for DeleteBucketLifecycleConfiguration
    class DeleteBucketLifecycleConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20180820/bucket/%<Bucket>s/lifecycleconfiguration',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-account-id'] = input[:account_id] unless input[:account_id].nil? || input[:account_id].empty?
      end
    end

    # Operation Builder for DeleteBucketPolicy
    class DeleteBucketPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20180820/bucket/%<Bucket>s/policy',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-account-id'] = input[:account_id] unless input[:account_id].nil? || input[:account_id].empty?
      end
    end

    # Operation Builder for DeleteBucketTagging
    class DeleteBucketTagging
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20180820/bucket/%<Bucket>s/tagging',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-account-id'] = input[:account_id] unless input[:account_id].nil? || input[:account_id].empty?
      end
    end

    # Operation Builder for DeleteJobTagging
    class DeleteJobTagging
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:job_id].to_s.empty?
          raise ArgumentError, "HTTP label :job_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20180820/jobs/%<JobId>s/tagging',
            JobId: Hearth::HTTP.uri_escape(input[:job_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-account-id'] = input[:account_id] unless input[:account_id].nil? || input[:account_id].empty?
      end
    end

    # Operation Builder for DeleteMultiRegionAccessPoint
    class DeleteMultiRegionAccessPoint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v20180820/async-requests/mrap/delete')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('DeleteMultiRegionAccessPointRequest')
        xml.attributes['xmlns'] = 'http://awss3control.amazonaws.com/doc/2018-08-20/'
        xml << Hearth::XML::Node.new('ClientToken', input[:client_token].to_s) unless input[:client_token].nil?
        xml << Builders::DeleteMultiRegionAccessPointInput.build('Details', input[:details]) unless input[:details].nil?
        http_req.body = StringIO.new(xml.to_str)
        http_req.headers['x-amz-account-id'] = input[:account_id] unless input[:account_id].nil? || input[:account_id].empty?
      end
    end

    # Structure Builder for DeleteMultiRegionAccessPointInput
    class DeleteMultiRegionAccessPointInput
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Name', input[:name].to_s) unless input[:name].nil?
        xml
      end
    end

    # Operation Builder for DeletePublicAccessBlock
    class DeletePublicAccessBlock
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        http_req.append_path('/v20180820/configuration/publicAccessBlock')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-account-id'] = input[:account_id] unless input[:account_id].nil? || input[:account_id].empty?
      end
    end

    # Operation Builder for DeleteStorageLensConfiguration
    class DeleteStorageLensConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:config_id].to_s.empty?
          raise ArgumentError, "HTTP label :config_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20180820/storagelens/%<ConfigId>s',
            ConfigId: Hearth::HTTP.uri_escape(input[:config_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-account-id'] = input[:account_id] unless input[:account_id].nil? || input[:account_id].empty?
      end
    end

    # Operation Builder for DeleteStorageLensConfigurationTagging
    class DeleteStorageLensConfigurationTagging
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:config_id].to_s.empty?
          raise ArgumentError, "HTTP label :config_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20180820/storagelens/%<ConfigId>s/tagging',
            ConfigId: Hearth::HTTP.uri_escape(input[:config_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-account-id'] = input[:account_id] unless input[:account_id].nil? || input[:account_id].empty?
      end
    end

    # Operation Builder for DescribeJob
    class DescribeJob
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:job_id].to_s.empty?
          raise ArgumentError, "HTTP label :job_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20180820/jobs/%<JobId>s',
            JobId: Hearth::HTTP.uri_escape(input[:job_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-account-id'] = input[:account_id] unless input[:account_id].nil? || input[:account_id].empty?
      end
    end

    # Operation Builder for DescribeMultiRegionAccessPointOperation
    class DescribeMultiRegionAccessPointOperation
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:request_token_arn].to_s.empty?
          raise ArgumentError, "HTTP label :request_token_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20180820/async-requests/mrap/%<RequestTokenARN>s',
            RequestTokenARN: (input[:request_token_arn].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-account-id'] = input[:account_id] unless input[:account_id].nil? || input[:account_id].empty?
      end
    end

    # Operation Builder for GetAccessPoint
    class GetAccessPoint
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20180820/accesspoint/%<Name>s',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-account-id'] = input[:account_id] unless input[:account_id].nil? || input[:account_id].empty?
      end
    end

    # Operation Builder for GetAccessPointConfigurationForObjectLambda
    class GetAccessPointConfigurationForObjectLambda
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20180820/accesspointforobjectlambda/%<Name>s/configuration',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-account-id'] = input[:account_id] unless input[:account_id].nil? || input[:account_id].empty?
      end
    end

    # Operation Builder for GetAccessPointForObjectLambda
    class GetAccessPointForObjectLambda
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20180820/accesspointforobjectlambda/%<Name>s',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-account-id'] = input[:account_id] unless input[:account_id].nil? || input[:account_id].empty?
      end
    end

    # Operation Builder for GetAccessPointPolicy
    class GetAccessPointPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20180820/accesspoint/%<Name>s/policy',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-account-id'] = input[:account_id] unless input[:account_id].nil? || input[:account_id].empty?
      end
    end

    # Operation Builder for GetAccessPointPolicyForObjectLambda
    class GetAccessPointPolicyForObjectLambda
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20180820/accesspointforobjectlambda/%<Name>s/policy',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-account-id'] = input[:account_id] unless input[:account_id].nil? || input[:account_id].empty?
      end
    end

    # Operation Builder for GetAccessPointPolicyStatus
    class GetAccessPointPolicyStatus
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20180820/accesspoint/%<Name>s/policyStatus',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-account-id'] = input[:account_id] unless input[:account_id].nil? || input[:account_id].empty?
      end
    end

    # Operation Builder for GetAccessPointPolicyStatusForObjectLambda
    class GetAccessPointPolicyStatusForObjectLambda
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20180820/accesspointforobjectlambda/%<Name>s/policyStatus',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-account-id'] = input[:account_id] unless input[:account_id].nil? || input[:account_id].empty?
      end
    end

    # Operation Builder for GetBucket
    class GetBucket
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20180820/bucket/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-account-id'] = input[:account_id] unless input[:account_id].nil? || input[:account_id].empty?
      end
    end

    # Operation Builder for GetBucketLifecycleConfiguration
    class GetBucketLifecycleConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20180820/bucket/%<Bucket>s/lifecycleconfiguration',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-account-id'] = input[:account_id] unless input[:account_id].nil? || input[:account_id].empty?
      end
    end

    # Operation Builder for GetBucketPolicy
    class GetBucketPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20180820/bucket/%<Bucket>s/policy',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-account-id'] = input[:account_id] unless input[:account_id].nil? || input[:account_id].empty?
      end
    end

    # Operation Builder for GetBucketTagging
    class GetBucketTagging
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20180820/bucket/%<Bucket>s/tagging',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-account-id'] = input[:account_id] unless input[:account_id].nil? || input[:account_id].empty?
      end
    end

    # Operation Builder for GetJobTagging
    class GetJobTagging
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:job_id].to_s.empty?
          raise ArgumentError, "HTTP label :job_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20180820/jobs/%<JobId>s/tagging',
            JobId: Hearth::HTTP.uri_escape(input[:job_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-account-id'] = input[:account_id] unless input[:account_id].nil? || input[:account_id].empty?
      end
    end

    # Operation Builder for GetMultiRegionAccessPoint
    class GetMultiRegionAccessPoint
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20180820/mrap/instances/%<Name>s',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-account-id'] = input[:account_id] unless input[:account_id].nil? || input[:account_id].empty?
      end
    end

    # Operation Builder for GetMultiRegionAccessPointPolicy
    class GetMultiRegionAccessPointPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20180820/mrap/instances/%<Name>s/policy',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-account-id'] = input[:account_id] unless input[:account_id].nil? || input[:account_id].empty?
      end
    end

    # Operation Builder for GetMultiRegionAccessPointPolicyStatus
    class GetMultiRegionAccessPointPolicyStatus
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20180820/mrap/instances/%<Name>s/policystatus',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-account-id'] = input[:account_id] unless input[:account_id].nil? || input[:account_id].empty?
      end
    end

    # Operation Builder for GetPublicAccessBlock
    class GetPublicAccessBlock
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/v20180820/configuration/publicAccessBlock')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-account-id'] = input[:account_id] unless input[:account_id].nil? || input[:account_id].empty?
      end
    end

    # Operation Builder for GetStorageLensConfiguration
    class GetStorageLensConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:config_id].to_s.empty?
          raise ArgumentError, "HTTP label :config_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20180820/storagelens/%<ConfigId>s',
            ConfigId: Hearth::HTTP.uri_escape(input[:config_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-account-id'] = input[:account_id] unless input[:account_id].nil? || input[:account_id].empty?
      end
    end

    # Operation Builder for GetStorageLensConfigurationTagging
    class GetStorageLensConfigurationTagging
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:config_id].to_s.empty?
          raise ArgumentError, "HTTP label :config_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20180820/storagelens/%<ConfigId>s/tagging',
            ConfigId: Hearth::HTTP.uri_escape(input[:config_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-account-id'] = input[:account_id] unless input[:account_id].nil? || input[:account_id].empty?
      end
    end

    # Operation Builder for ListAccessPoints
    class ListAccessPoints
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/v20180820/accesspoint')
        params = Hearth::Query::ParamList.new
        params['bucket'] = input[:bucket].to_s unless input[:bucket].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
        http_req.headers['x-amz-account-id'] = input[:account_id] unless input[:account_id].nil? || input[:account_id].empty?
      end
    end

    # Operation Builder for ListAccessPointsForObjectLambda
    class ListAccessPointsForObjectLambda
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/v20180820/accesspointforobjectlambda')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
        http_req.headers['x-amz-account-id'] = input[:account_id] unless input[:account_id].nil? || input[:account_id].empty?
      end
    end

    # Operation Builder for ListJobs
    class ListJobs
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/v20180820/jobs')
        params = Hearth::Query::ParamList.new
        unless input[:job_statuses].nil? || input[:job_statuses].empty?
          params['jobStatuses'] = input[:job_statuses].map do |value|
            value.to_s unless value.nil?
          end
        end
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
        http_req.headers['x-amz-account-id'] = input[:account_id] unless input[:account_id].nil? || input[:account_id].empty?
      end
    end

    # List Builder for JobStatusList
    class JobStatusList
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Operation Builder for ListMultiRegionAccessPoints
    class ListMultiRegionAccessPoints
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/v20180820/mrap/instances')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
        http_req.headers['x-amz-account-id'] = input[:account_id] unless input[:account_id].nil? || input[:account_id].empty?
      end
    end

    # Operation Builder for ListRegionalBuckets
    class ListRegionalBuckets
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/v20180820/bucket')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
        http_req.headers['x-amz-account-id'] = input[:account_id] unless input[:account_id].nil? || input[:account_id].empty?
        http_req.headers['x-amz-outpost-id'] = input[:outpost_id] unless input[:outpost_id].nil? || input[:outpost_id].empty?
      end
    end

    # Operation Builder for ListStorageLensConfigurations
    class ListStorageLensConfigurations
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/v20180820/storagelens')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
        http_req.headers['x-amz-account-id'] = input[:account_id] unless input[:account_id].nil? || input[:account_id].empty?
      end
    end

    # Operation Builder for PutAccessPointConfigurationForObjectLambda
    class PutAccessPointConfigurationForObjectLambda
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20180820/accesspointforobjectlambda/%<Name>s/configuration',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('PutAccessPointConfigurationForObjectLambdaRequest')
        xml.attributes['xmlns'] = 'http://awss3control.amazonaws.com/doc/2018-08-20/'
        xml << Builders::ObjectLambdaConfiguration.build('Configuration', input[:configuration]) unless input[:configuration].nil?
        http_req.body = StringIO.new(xml.to_str)
        http_req.headers['x-amz-account-id'] = input[:account_id] unless input[:account_id].nil? || input[:account_id].empty?
      end
    end

    # Operation Builder for PutAccessPointPolicy
    class PutAccessPointPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20180820/accesspoint/%<Name>s/policy',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('PutAccessPointPolicyRequest')
        xml.attributes['xmlns'] = 'http://awss3control.amazonaws.com/doc/2018-08-20/'
        xml << Hearth::XML::Node.new('Policy', input[:policy].to_s) unless input[:policy].nil?
        http_req.body = StringIO.new(xml.to_str)
        http_req.headers['x-amz-account-id'] = input[:account_id] unless input[:account_id].nil? || input[:account_id].empty?
      end
    end

    # Operation Builder for PutAccessPointPolicyForObjectLambda
    class PutAccessPointPolicyForObjectLambda
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20180820/accesspointforobjectlambda/%<Name>s/policy',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('PutAccessPointPolicyForObjectLambdaRequest')
        xml.attributes['xmlns'] = 'http://awss3control.amazonaws.com/doc/2018-08-20/'
        xml << Hearth::XML::Node.new('Policy', input[:policy].to_s) unless input[:policy].nil?
        http_req.body = StringIO.new(xml.to_str)
        http_req.headers['x-amz-account-id'] = input[:account_id] unless input[:account_id].nil? || input[:account_id].empty?
      end
    end

    # Operation Builder for PutBucketLifecycleConfiguration
    class PutBucketLifecycleConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20180820/bucket/%<Bucket>s/lifecycleconfiguration',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/xml'
        xml = Builders::LifecycleConfiguration.build('LifecycleConfiguration', input[:lifecycle_configuration]) unless input[:lifecycle_configuration].nil?
        http_req.body = StringIO.new(xml.to_str)
        http_req.headers['x-amz-account-id'] = input[:account_id] unless input[:account_id].nil? || input[:account_id].empty?
      end
    end

    # Structure Builder for LifecycleConfiguration
    class LifecycleConfiguration
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Rules', Builders::LifecycleRules.build('Rule', input[:rules])) unless input[:rules].nil?
        xml
      end
    end

    # List Builder for LifecycleRules
    class LifecycleRules
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Builders::LifecycleRule.build(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Builder for LifecycleRule
    class LifecycleRule
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Builders::LifecycleExpiration.build('Expiration', input[:expiration]) unless input[:expiration].nil?
        xml << Hearth::XML::Node.new('ID', input[:id].to_s) unless input[:id].nil?
        xml << Builders::LifecycleRuleFilter.build('Filter', input[:filter]) unless input[:filter].nil?
        xml << Hearth::XML::Node.new('Status', input[:status].to_s) unless input[:status].nil?
        xml << Hearth::XML::Node.new('Transitions', Builders::TransitionList.build('Transition', input[:transitions])) unless input[:transitions].nil?
        xml << Hearth::XML::Node.new('NoncurrentVersionTransitions', Builders::NoncurrentVersionTransitionList.build('NoncurrentVersionTransition', input[:noncurrent_version_transitions])) unless input[:noncurrent_version_transitions].nil?
        xml << Builders::NoncurrentVersionExpiration.build('NoncurrentVersionExpiration', input[:noncurrent_version_expiration]) unless input[:noncurrent_version_expiration].nil?
        xml << Builders::AbortIncompleteMultipartUpload.build('AbortIncompleteMultipartUpload', input[:abort_incomplete_multipart_upload]) unless input[:abort_incomplete_multipart_upload].nil?
        xml
      end
    end

    # Structure Builder for AbortIncompleteMultipartUpload
    class AbortIncompleteMultipartUpload
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('DaysAfterInitiation', input[:days_after_initiation].to_s) unless input[:days_after_initiation].nil?
        xml
      end
    end

    # Structure Builder for NoncurrentVersionExpiration
    class NoncurrentVersionExpiration
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('NoncurrentDays', input[:noncurrent_days].to_s) unless input[:noncurrent_days].nil?
        xml
      end
    end

    # List Builder for NoncurrentVersionTransitionList
    class NoncurrentVersionTransitionList
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Builders::NoncurrentVersionTransition.build(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Builder for NoncurrentVersionTransition
    class NoncurrentVersionTransition
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('NoncurrentDays', input[:noncurrent_days].to_s) unless input[:noncurrent_days].nil?
        xml << Hearth::XML::Node.new('StorageClass', input[:storage_class].to_s) unless input[:storage_class].nil?
        xml
      end
    end

    # List Builder for TransitionList
    class TransitionList
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Builders::Transition.build(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Builder for Transition
    class Transition
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Date', Hearth::TimeHelper.to_date_time(input[:date])) unless input[:date].nil?
        xml << Hearth::XML::Node.new('Days', input[:days].to_s) unless input[:days].nil?
        xml << Hearth::XML::Node.new('StorageClass', input[:storage_class].to_s) unless input[:storage_class].nil?
        xml
      end
    end

    # Structure Builder for LifecycleRuleFilter
    class LifecycleRuleFilter
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Prefix', input[:prefix].to_s) unless input[:prefix].nil?
        xml << Builders::S3Tag.build('Tag', input[:tag]) unless input[:tag].nil?
        xml << Builders::LifecycleRuleAndOperator.build('And', input[:and]) unless input[:and].nil?
        xml
      end
    end

    # Structure Builder for LifecycleRuleAndOperator
    class LifecycleRuleAndOperator
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Prefix', input[:prefix].to_s) unless input[:prefix].nil?
        xml << Hearth::XML::Node.new('Tags', Builders::S3TagSet.build('member', input[:tags])) unless input[:tags].nil?
        xml
      end
    end

    # Structure Builder for LifecycleExpiration
    class LifecycleExpiration
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Date', Hearth::TimeHelper.to_date_time(input[:date])) unless input[:date].nil?
        xml << Hearth::XML::Node.new('Days', input[:days].to_s) unless input[:days].nil?
        xml << Hearth::XML::Node.new('ExpiredObjectDeleteMarker', input[:expired_object_delete_marker].to_s) unless input[:expired_object_delete_marker].nil?
        xml
      end
    end

    # Operation Builder for PutBucketPolicy
    class PutBucketPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20180820/bucket/%<Bucket>s/policy',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('PutBucketPolicyRequest')
        xml.attributes['xmlns'] = 'http://awss3control.amazonaws.com/doc/2018-08-20/'
        xml << Hearth::XML::Node.new('Policy', input[:policy].to_s) unless input[:policy].nil?
        http_req.body = StringIO.new(xml.to_str)
        http_req.headers['x-amz-account-id'] = input[:account_id] unless input[:account_id].nil? || input[:account_id].empty?
        http_req.headers['x-amz-confirm-remove-self-bucket-access'] = input[:confirm_remove_self_bucket_access].to_s unless input[:confirm_remove_self_bucket_access].nil?
      end
    end

    # Operation Builder for PutBucketTagging
    class PutBucketTagging
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20180820/bucket/%<Bucket>s/tagging',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/xml'
        xml = Builders::Tagging.build('Tagging', input[:tagging]) unless input[:tagging].nil?
        http_req.body = StringIO.new(xml.to_str)
        http_req.headers['x-amz-account-id'] = input[:account_id] unless input[:account_id].nil? || input[:account_id].empty?
      end
    end

    # Structure Builder for Tagging
    class Tagging
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('TagSet', Builders::S3TagSet.build('member', input[:tag_set])) unless input[:tag_set].nil?
        xml
      end
    end

    # Operation Builder for PutJobTagging
    class PutJobTagging
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:job_id].to_s.empty?
          raise ArgumentError, "HTTP label :job_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20180820/jobs/%<JobId>s/tagging',
            JobId: Hearth::HTTP.uri_escape(input[:job_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('PutJobTaggingRequest')
        xml.attributes['xmlns'] = 'http://awss3control.amazonaws.com/doc/2018-08-20/'
        xml << Hearth::XML::Node.new('Tags', Builders::S3TagSet.build('member', input[:tags])) unless input[:tags].nil?
        http_req.body = StringIO.new(xml.to_str)
        http_req.headers['x-amz-account-id'] = input[:account_id] unless input[:account_id].nil? || input[:account_id].empty?
      end
    end

    # Operation Builder for PutMultiRegionAccessPointPolicy
    class PutMultiRegionAccessPointPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v20180820/async-requests/mrap/put-policy')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('PutMultiRegionAccessPointPolicyRequest')
        xml.attributes['xmlns'] = 'http://awss3control.amazonaws.com/doc/2018-08-20/'
        xml << Hearth::XML::Node.new('ClientToken', input[:client_token].to_s) unless input[:client_token].nil?
        xml << Builders::PutMultiRegionAccessPointPolicyInput.build('Details', input[:details]) unless input[:details].nil?
        http_req.body = StringIO.new(xml.to_str)
        http_req.headers['x-amz-account-id'] = input[:account_id] unless input[:account_id].nil? || input[:account_id].empty?
      end
    end

    # Structure Builder for PutMultiRegionAccessPointPolicyInput
    class PutMultiRegionAccessPointPolicyInput
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Name', input[:name].to_s) unless input[:name].nil?
        xml << Hearth::XML::Node.new('Policy', input[:policy].to_s) unless input[:policy].nil?
        xml
      end
    end

    # Operation Builder for PutPublicAccessBlock
    class PutPublicAccessBlock
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/v20180820/configuration/publicAccessBlock')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/xml'
        xml = Builders::PublicAccessBlockConfiguration.build('PublicAccessBlockConfiguration', input[:public_access_block_configuration]) unless input[:public_access_block_configuration].nil?
        http_req.body = StringIO.new(xml.to_str)
        http_req.headers['x-amz-account-id'] = input[:account_id] unless input[:account_id].nil? || input[:account_id].empty?
      end
    end

    # Operation Builder for PutStorageLensConfiguration
    class PutStorageLensConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:config_id].to_s.empty?
          raise ArgumentError, "HTTP label :config_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20180820/storagelens/%<ConfigId>s',
            ConfigId: Hearth::HTTP.uri_escape(input[:config_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('PutStorageLensConfigurationRequest')
        xml.attributes['xmlns'] = 'http://awss3control.amazonaws.com/doc/2018-08-20/'
        xml << Builders::StorageLensConfiguration.build('StorageLensConfiguration', input[:storage_lens_configuration]) unless input[:storage_lens_configuration].nil?
        xml << Hearth::XML::Node.new('Tags', Builders::StorageLensTags.build('Tag', input[:tags])) unless input[:tags].nil?
        http_req.body = StringIO.new(xml.to_str)
        http_req.headers['x-amz-account-id'] = input[:account_id] unless input[:account_id].nil? || input[:account_id].empty?
      end
    end

    # List Builder for StorageLensTags
    class StorageLensTags
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Builders::StorageLensTag.build(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Builder for StorageLensTag
    class StorageLensTag
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Key', input[:key].to_s) unless input[:key].nil?
        xml << Hearth::XML::Node.new('Value', input[:value].to_s) unless input[:value].nil?
        xml
      end
    end

    # Structure Builder for StorageLensConfiguration
    class StorageLensConfiguration
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Id', input[:id].to_s) unless input[:id].nil?
        xml << Builders::AccountLevel.build('AccountLevel', input[:account_level]) unless input[:account_level].nil?
        xml << Builders::Include.build('Include', input[:include]) unless input[:include].nil?
        xml << Builders::Exclude.build('Exclude', input[:exclude]) unless input[:exclude].nil?
        xml << Builders::StorageLensDataExport.build('DataExport', input[:data_export]) unless input[:data_export].nil?
        xml << Hearth::XML::Node.new('IsEnabled', input[:is_enabled].to_s) unless input[:is_enabled].nil?
        xml << Builders::StorageLensAwsOrg.build('AwsOrg', input[:aws_org]) unless input[:aws_org].nil?
        xml << Hearth::XML::Node.new('StorageLensArn', input[:storage_lens_arn].to_s) unless input[:storage_lens_arn].nil?
        xml
      end
    end

    # Structure Builder for StorageLensAwsOrg
    class StorageLensAwsOrg
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Arn', input[:arn].to_s) unless input[:arn].nil?
        xml
      end
    end

    # Structure Builder for StorageLensDataExport
    class StorageLensDataExport
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Builders::S3BucketDestination.build('S3BucketDestination', input[:s3_bucket_destination]) unless input[:s3_bucket_destination].nil?
        xml << Builders::CloudWatchMetrics.build('CloudWatchMetrics', input[:cloud_watch_metrics]) unless input[:cloud_watch_metrics].nil?
        xml
      end
    end

    # Structure Builder for CloudWatchMetrics
    class CloudWatchMetrics
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('IsEnabled', input[:is_enabled].to_s) unless input[:is_enabled].nil?
        xml
      end
    end

    # Structure Builder for S3BucketDestination
    class S3BucketDestination
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Format', input[:format].to_s) unless input[:format].nil?
        xml << Hearth::XML::Node.new('OutputSchemaVersion', input[:output_schema_version].to_s) unless input[:output_schema_version].nil?
        xml << Hearth::XML::Node.new('AccountId', input[:account_id].to_s) unless input[:account_id].nil?
        xml << Hearth::XML::Node.new('Arn', input[:arn].to_s) unless input[:arn].nil?
        xml << Hearth::XML::Node.new('Prefix', input[:prefix].to_s) unless input[:prefix].nil?
        xml << Builders::StorageLensDataExportEncryption.build('Encryption', input[:encryption]) unless input[:encryption].nil?
        xml
      end
    end

    # Structure Builder for StorageLensDataExportEncryption
    class StorageLensDataExportEncryption
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Builders::SSES3.build('SSE-S3', input[:sses3]) unless input[:sses3].nil?
        xml << Builders::SSEKMS.build('SSE-KMS', input[:ssekms]) unless input[:ssekms].nil?
        xml
      end
    end

    # Structure Builder for SSEKMS
    class SSEKMS
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('KeyId', input[:key_id].to_s) unless input[:key_id].nil?
        xml
      end
    end

    # Structure Builder for SSES3
    class SSES3
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml
      end
    end

    # Structure Builder for Exclude
    class Exclude
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Buckets', Builders::Buckets.build('Arn', input[:buckets])) unless input[:buckets].nil?
        xml << Hearth::XML::Node.new('Regions', Builders::Regions.build('Region', input[:regions])) unless input[:regions].nil?
        xml
      end
    end

    # List Builder for Regions
    class Regions
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # List Builder for Buckets
    class Buckets
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Structure Builder for Include
    class Include
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Buckets', Builders::Buckets.build('Arn', input[:buckets])) unless input[:buckets].nil?
        xml << Hearth::XML::Node.new('Regions', Builders::Regions.build('Region', input[:regions])) unless input[:regions].nil?
        xml
      end
    end

    # Structure Builder for AccountLevel
    class AccountLevel
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Builders::ActivityMetrics.build('ActivityMetrics', input[:activity_metrics]) unless input[:activity_metrics].nil?
        xml << Builders::BucketLevel.build('BucketLevel', input[:bucket_level]) unless input[:bucket_level].nil?
        xml
      end
    end

    # Structure Builder for BucketLevel
    class BucketLevel
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Builders::ActivityMetrics.build('ActivityMetrics', input[:activity_metrics]) unless input[:activity_metrics].nil?
        xml << Builders::PrefixLevel.build('PrefixLevel', input[:prefix_level]) unless input[:prefix_level].nil?
        xml
      end
    end

    # Structure Builder for PrefixLevel
    class PrefixLevel
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Builders::PrefixLevelStorageMetrics.build('StorageMetrics', input[:storage_metrics]) unless input[:storage_metrics].nil?
        xml
      end
    end

    # Structure Builder for PrefixLevelStorageMetrics
    class PrefixLevelStorageMetrics
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('IsEnabled', input[:is_enabled].to_s) unless input[:is_enabled].nil?
        xml << Builders::SelectionCriteria.build('SelectionCriteria', input[:selection_criteria]) unless input[:selection_criteria].nil?
        xml
      end
    end

    # Structure Builder for SelectionCriteria
    class SelectionCriteria
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Delimiter', input[:delimiter].to_s) unless input[:delimiter].nil?
        xml << Hearth::XML::Node.new('MaxDepth', input[:max_depth].to_s) unless input[:max_depth].nil?
        xml << Hearth::XML::Node.new('MinStorageBytesPercentage', Hearth::NumberHelper.serialize(input[:min_storage_bytes_percentage]).to_s) unless input[:min_storage_bytes_percentage].nil?
        xml
      end
    end

    # Structure Builder for ActivityMetrics
    class ActivityMetrics
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('IsEnabled', input[:is_enabled].to_s) unless input[:is_enabled].nil?
        xml
      end
    end

    # Operation Builder for PutStorageLensConfigurationTagging
    class PutStorageLensConfigurationTagging
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:config_id].to_s.empty?
          raise ArgumentError, "HTTP label :config_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20180820/storagelens/%<ConfigId>s/tagging',
            ConfigId: Hearth::HTTP.uri_escape(input[:config_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('PutStorageLensConfigurationTaggingRequest')
        xml.attributes['xmlns'] = 'http://awss3control.amazonaws.com/doc/2018-08-20/'
        xml << Hearth::XML::Node.new('Tags', Builders::StorageLensTags.build('Tag', input[:tags])) unless input[:tags].nil?
        http_req.body = StringIO.new(xml.to_str)
        http_req.headers['x-amz-account-id'] = input[:account_id] unless input[:account_id].nil? || input[:account_id].empty?
      end
    end

    # Operation Builder for UpdateJobPriority
    class UpdateJobPriority
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:job_id].to_s.empty?
          raise ArgumentError, "HTTP label :job_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20180820/jobs/%<JobId>s/priority',
            JobId: Hearth::HTTP.uri_escape(input[:job_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['priority'] = input[:priority].to_s unless input[:priority].nil?
        http_req.append_query_params(params)
        http_req.headers['x-amz-account-id'] = input[:account_id] unless input[:account_id].nil? || input[:account_id].empty?
      end
    end

    # Operation Builder for UpdateJobStatus
    class UpdateJobStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:job_id].to_s.empty?
          raise ArgumentError, "HTTP label :job_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v20180820/jobs/%<JobId>s/status',
            JobId: Hearth::HTTP.uri_escape(input[:job_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['requestedJobStatus'] = input[:requested_job_status].to_s unless input[:requested_job_status].nil?
        params['statusUpdateReason'] = input[:status_update_reason].to_s unless input[:status_update_reason].nil?
        http_req.append_query_params(params)
        http_req.headers['x-amz-account-id'] = input[:account_id] unless input[:account_id].nil? || input[:account_id].empty?
      end
    end
  end
end
