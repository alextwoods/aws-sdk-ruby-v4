# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::S3
  # @api private
  module Parsers

    class AbortIncompleteMultipartUpload
      def self.parse(xml)
        data = Types::AbortIncompleteMultipartUpload.new
        xml.at('DaysAfterInitiation') do |node|
          data.days_after_initiation = node.text&.to_i
        end
        return data
      end
    end

    class AbortMultipartUpload
      def self.parse(http_resp)
        data = Types::AbortMultipartUploadOutput.new
        data.request_charged = http_resp.headers['x-amz-request-charged']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    class AccessControlTranslation
      def self.parse(xml)
        data = Types::AccessControlTranslation.new
        xml.at('Owner') do |node|
          data.owner = (node.text || '')
        end
        return data
      end
    end

    class AllowedHeaders
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class AllowedMethods
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class AllowedOrigins
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class AnalyticsAndOperator
      def self.parse(xml)
        data = Types::AnalyticsAndOperator.new
        xml.at('Prefix') do |node|
          data.prefix = (node.text || '')
        end
        xml.children('Tag') do |children|
          data.tags = TagSet.parse(children)
        end
        return data
      end
    end

    class AnalyticsConfiguration
      def self.parse(xml)
        data = Types::AnalyticsConfiguration.new
        xml.at('Id') do |node|
          data.id = (node.text || '')
        end
        xml.at('Filter') do |node|
          data.member_filter = AnalyticsFilter.parse(node)
        end
        xml.at('StorageClassAnalysis') do |node|
          data.storage_class_analysis = StorageClassAnalysis.parse(node)
        end
        return data
      end
    end

    class AnalyticsConfigurationList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << AnalyticsConfiguration.parse(node)
        end
        data
      end
    end

    class AnalyticsExportDestination
      def self.parse(xml)
        data = Types::AnalyticsExportDestination.new
        xml.at('S3BucketDestination') do |node|
          data.s3_bucket_destination = AnalyticsS3BucketDestination.parse(node)
        end
        return data
      end
    end

    class AnalyticsFilter
      def self.parse(xml)
        value = xml.children.first
        key = value.name
        case key
        when 'Prefix'
          node = value
          value = (node.text || '')
          Types::AnalyticsFilter::Prefix.new(value) if value
        when 'Tag'
          node = value
          value = Tag.parse(node)
          Types::AnalyticsFilter::Tag.new(value) if value
        when 'And'
          node = value
          value = AnalyticsAndOperator.parse(node)
          Types::AnalyticsFilter::And.new(value) if value
        else
          Types::AnalyticsFilter::Unknown.new(name: key, value: value)
        end
      end
    end

    class AnalyticsS3BucketDestination
      def self.parse(xml)
        data = Types::AnalyticsS3BucketDestination.new
        xml.at('Format') do |node|
          data.format = (node.text || '')
        end
        xml.at('BucketAccountId') do |node|
          data.bucket_account_id = (node.text || '')
        end
        xml.at('Bucket') do |node|
          data.bucket = (node.text || '')
        end
        xml.at('Prefix') do |node|
          data.prefix = (node.text || '')
        end
        return data
      end
    end

    class Bucket
      def self.parse(xml)
        data = Types::Bucket.new
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        xml.at('CreationDate') do |node|
          data.creation_date = Time.parse(node.text) if node.text
        end
        return data
      end
    end

    # Error Parser for BucketAlreadyExists
    class BucketAlreadyExists
      def self.parse(http_resp)
        data = Types::BucketAlreadyExists.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
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
        data
      end
    end

    class Buckets
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Bucket.parse(node)
        end
        data
      end
    end

    class CORSRule
      def self.parse(xml)
        data = Types::CORSRule.new
        xml.at('ID') do |node|
          data.id = (node.text || '')
        end
        xml.children('AllowedHeader') do |children|
          data.allowed_headers = AllowedHeaders.parse(children)
        end
        xml.children('AllowedMethod') do |children|
          data.allowed_methods = AllowedMethods.parse(children)
        end
        xml.children('AllowedOrigin') do |children|
          data.allowed_origins = AllowedOrigins.parse(children)
        end
        xml.children('ExposeHeader') do |children|
          data.expose_headers = ExposeHeaders.parse(children)
        end
        xml.at('MaxAgeSeconds') do |node|
          data.max_age_seconds = node.text&.to_i
        end
        return data
      end
    end

    class CORSRules
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << CORSRule.parse(node)
        end
        data
      end
    end

    class Checksum
      def self.parse(xml)
        data = Types::Checksum.new
        xml.at('ChecksumCRC32') do |node|
          data.checksum_crc32 = (node.text || '')
        end
        xml.at('ChecksumCRC32C') do |node|
          data.checksum_crc32_c = (node.text || '')
        end
        xml.at('ChecksumSHA1') do |node|
          data.checksum_sha1 = (node.text || '')
        end
        xml.at('ChecksumSHA256') do |node|
          data.checksum_sha256 = (node.text || '')
        end
        return data
      end
    end

    class ChecksumAlgorithmList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class CommonPrefix
      def self.parse(xml)
        data = Types::CommonPrefix.new
        xml.at('Prefix') do |node|
          data.prefix = (node.text || '')
        end
        return data
      end
    end

    class CommonPrefixList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << CommonPrefix.parse(node)
        end
        data
      end
    end

    class CompleteMultipartUpload
      def self.parse(http_resp)
        data = Types::CompleteMultipartUploadOutput.new
        data.expiration = http_resp.headers['x-amz-expiration']
        data.server_side_encryption = http_resp.headers['x-amz-server-side-encryption']
        data.version_id = http_resp.headers['x-amz-version-id']
        data.ssekms_key_id = http_resp.headers['x-amz-server-side-encryption-aws-kms-key-id']
        data.bucket_key_enabled = http_resp.headers['x-amz-server-side-encryption-bucket-key-enabled'] == 'true' unless http_resp.headers['x-amz-server-side-encryption-bucket-key-enabled'].nil?
        data.request_charged = http_resp.headers['x-amz-request-charged']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('Location') do |node|
          data.location = (node.text || '')
        end
        xml.at('Bucket') do |node|
          data.bucket = (node.text || '')
        end
        xml.at('Key') do |node|
          data.key = (node.text || '')
        end
        xml.at('ETag') do |node|
          data.e_tag = (node.text || '')
        end
        xml.at('ChecksumCRC32') do |node|
          data.checksum_crc32 = (node.text || '')
        end
        xml.at('ChecksumCRC32C') do |node|
          data.checksum_crc32_c = (node.text || '')
        end
        xml.at('ChecksumSHA1') do |node|
          data.checksum_sha1 = (node.text || '')
        end
        xml.at('ChecksumSHA256') do |node|
          data.checksum_sha256 = (node.text || '')
        end
        data
      end
    end

    class Condition
      def self.parse(xml)
        data = Types::Condition.new
        xml.at('HttpErrorCodeReturnedEquals') do |node|
          data.http_error_code_returned_equals = (node.text || '')
        end
        xml.at('KeyPrefixEquals') do |node|
          data.key_prefix_equals = (node.text || '')
        end
        return data
      end
    end

    class ContinuationEvent
      def self.parse(xml)
        data = Types::ContinuationEvent.new
        return data
      end
    end

    class CopyObject
      def self.parse(http_resp)
        data = Types::CopyObjectOutput.new
        data.expiration = http_resp.headers['x-amz-expiration']
        data.copy_source_version_id = http_resp.headers['x-amz-copy-source-version-id']
        data.version_id = http_resp.headers['x-amz-version-id']
        data.server_side_encryption = http_resp.headers['x-amz-server-side-encryption']
        data.sse_customer_algorithm = http_resp.headers['x-amz-server-side-encryption-customer-algorithm']
        data.sse_customer_key_md5 = http_resp.headers['x-amz-server-side-encryption-customer-key-MD5']
        data.ssekms_key_id = http_resp.headers['x-amz-server-side-encryption-aws-kms-key-id']
        data.ssekms_encryption_context = http_resp.headers['x-amz-server-side-encryption-context']
        data.bucket_key_enabled = http_resp.headers['x-amz-server-side-encryption-bucket-key-enabled'] == 'true' unless http_resp.headers['x-amz-server-side-encryption-bucket-key-enabled'].nil?
        data.request_charged = http_resp.headers['x-amz-request-charged']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.copy_object_result = CopyObjectResult.parse(xml)
        data
      end
    end

    class CopyObjectResult
      def self.parse(xml)
        data = Types::CopyObjectResult.new
        xml.at('ETag') do |node|
          data.e_tag = (node.text || '')
        end
        xml.at('LastModified') do |node|
          data.last_modified = Time.parse(node.text) if node.text
        end
        xml.at('ChecksumCRC32') do |node|
          data.checksum_crc32 = (node.text || '')
        end
        xml.at('ChecksumCRC32C') do |node|
          data.checksum_crc32_c = (node.text || '')
        end
        xml.at('ChecksumSHA1') do |node|
          data.checksum_sha1 = (node.text || '')
        end
        xml.at('ChecksumSHA256') do |node|
          data.checksum_sha256 = (node.text || '')
        end
        return data
      end
    end

    class CopyPartResult
      def self.parse(xml)
        data = Types::CopyPartResult.new
        xml.at('ETag') do |node|
          data.e_tag = (node.text || '')
        end
        xml.at('LastModified') do |node|
          data.last_modified = Time.parse(node.text) if node.text
        end
        xml.at('ChecksumCRC32') do |node|
          data.checksum_crc32 = (node.text || '')
        end
        xml.at('ChecksumCRC32C') do |node|
          data.checksum_crc32_c = (node.text || '')
        end
        xml.at('ChecksumSHA1') do |node|
          data.checksum_sha1 = (node.text || '')
        end
        xml.at('ChecksumSHA256') do |node|
          data.checksum_sha256 = (node.text || '')
        end
        return data
      end
    end

    class CreateBucket
      def self.parse(http_resp)
        data = Types::CreateBucketOutput.new
        data.location = http_resp.headers['Location']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    class CreateMultipartUpload
      def self.parse(http_resp)
        data = Types::CreateMultipartUploadOutput.new
        data.abort_date = Time.parse(http_resp.headers['x-amz-abort-date']) if http_resp.headers['x-amz-abort-date']
        data.abort_rule_id = http_resp.headers['x-amz-abort-rule-id']
        data.server_side_encryption = http_resp.headers['x-amz-server-side-encryption']
        data.sse_customer_algorithm = http_resp.headers['x-amz-server-side-encryption-customer-algorithm']
        data.sse_customer_key_md5 = http_resp.headers['x-amz-server-side-encryption-customer-key-MD5']
        data.ssekms_key_id = http_resp.headers['x-amz-server-side-encryption-aws-kms-key-id']
        data.ssekms_encryption_context = http_resp.headers['x-amz-server-side-encryption-context']
        data.bucket_key_enabled = http_resp.headers['x-amz-server-side-encryption-bucket-key-enabled'] == 'true' unless http_resp.headers['x-amz-server-side-encryption-bucket-key-enabled'].nil?
        data.request_charged = http_resp.headers['x-amz-request-charged']
        data.checksum_algorithm = http_resp.headers['x-amz-checksum-algorithm']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('Bucket') do |node|
          data.bucket = (node.text || '')
        end
        xml.at('Key') do |node|
          data.key = (node.text || '')
        end
        xml.at('UploadId') do |node|
          data.upload_id = (node.text || '')
        end
        data
      end
    end

    class CreateSession
      def self.parse(http_resp)
        data = Types::CreateSessionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('Credentials') do |node|
          data.credentials = SessionCredentials.parse(node)
        end
        data
      end
    end

    class DefaultRetention
      def self.parse(xml)
        data = Types::DefaultRetention.new
        xml.at('Mode') do |node|
          data.mode = (node.text || '')
        end
        xml.at('Days') do |node|
          data.days = node.text&.to_i
        end
        xml.at('Years') do |node|
          data.years = node.text&.to_i
        end
        return data
      end
    end

    class DeleteBucket
      def self.parse(http_resp)
        data = Types::DeleteBucketOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    class DeleteBucketAnalyticsConfiguration
      def self.parse(http_resp)
        data = Types::DeleteBucketAnalyticsConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    class DeleteBucketCors
      def self.parse(http_resp)
        data = Types::DeleteBucketCorsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    class DeleteBucketEncryption
      def self.parse(http_resp)
        data = Types::DeleteBucketEncryptionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    class DeleteBucketIntelligentTieringConfiguration
      def self.parse(http_resp)
        data = Types::DeleteBucketIntelligentTieringConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    class DeleteBucketInventoryConfiguration
      def self.parse(http_resp)
        data = Types::DeleteBucketInventoryConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    class DeleteBucketLifecycle
      def self.parse(http_resp)
        data = Types::DeleteBucketLifecycleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    class DeleteBucketMetricsConfiguration
      def self.parse(http_resp)
        data = Types::DeleteBucketMetricsConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    class DeleteBucketOwnershipControls
      def self.parse(http_resp)
        data = Types::DeleteBucketOwnershipControlsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    class DeleteBucketPolicy
      def self.parse(http_resp)
        data = Types::DeleteBucketPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    class DeleteBucketReplication
      def self.parse(http_resp)
        data = Types::DeleteBucketReplicationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    class DeleteBucketTagging
      def self.parse(http_resp)
        data = Types::DeleteBucketTaggingOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    class DeleteBucketWebsite
      def self.parse(http_resp)
        data = Types::DeleteBucketWebsiteOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    class DeleteMarkerEntry
      def self.parse(xml)
        data = Types::DeleteMarkerEntry.new
        xml.at('Owner') do |node|
          data.owner = Owner.parse(node)
        end
        xml.at('Key') do |node|
          data.key = (node.text || '')
        end
        xml.at('VersionId') do |node|
          data.version_id = (node.text || '')
        end
        xml.at('IsLatest') do |node|
          data.is_latest = (node.text == 'true')
        end
        xml.at('LastModified') do |node|
          data.last_modified = Time.parse(node.text) if node.text
        end
        return data
      end
    end

    class DeleteMarkerReplication
      def self.parse(xml)
        data = Types::DeleteMarkerReplication.new
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        return data
      end
    end

    class DeleteMarkers
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << DeleteMarkerEntry.parse(node)
        end
        data
      end
    end

    class DeleteObject
      def self.parse(http_resp)
        data = Types::DeleteObjectOutput.new
        data.delete_marker = http_resp.headers['x-amz-delete-marker'] == 'true' unless http_resp.headers['x-amz-delete-marker'].nil?
        data.version_id = http_resp.headers['x-amz-version-id']
        data.request_charged = http_resp.headers['x-amz-request-charged']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    class DeleteObjectTagging
      def self.parse(http_resp)
        data = Types::DeleteObjectTaggingOutput.new
        data.version_id = http_resp.headers['x-amz-version-id']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    class DeleteObjects
      def self.parse(http_resp)
        data = Types::DeleteObjectsOutput.new
        data.request_charged = http_resp.headers['x-amz-request-charged']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.children('Deleted') do |children|
          data.deleted = DeletedObjects.parse(children)
        end
        xml.children('Error') do |children|
          data.errors = Errors.parse(children)
        end
        data
      end
    end

    class DeletePublicAccessBlock
      def self.parse(http_resp)
        data = Types::DeletePublicAccessBlockOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    class DeletedObject
      def self.parse(xml)
        data = Types::DeletedObject.new
        xml.at('Key') do |node|
          data.key = (node.text || '')
        end
        xml.at('VersionId') do |node|
          data.version_id = (node.text || '')
        end
        xml.at('DeleteMarker') do |node|
          data.delete_marker = (node.text == 'true')
        end
        xml.at('DeleteMarkerVersionId') do |node|
          data.delete_marker_version_id = (node.text || '')
        end
        return data
      end
    end

    class DeletedObjects
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << DeletedObject.parse(node)
        end
        data
      end
    end

    class Destination
      def self.parse(xml)
        data = Types::Destination.new
        xml.at('Bucket') do |node|
          data.bucket = (node.text || '')
        end
        xml.at('Account') do |node|
          data.account = (node.text || '')
        end
        xml.at('StorageClass') do |node|
          data.storage_class = (node.text || '')
        end
        xml.at('AccessControlTranslation') do |node|
          data.access_control_translation = AccessControlTranslation.parse(node)
        end
        xml.at('EncryptionConfiguration') do |node|
          data.encryption_configuration = EncryptionConfiguration.parse(node)
        end
        xml.at('ReplicationTime') do |node|
          data.replication_time = ReplicationTime.parse(node)
        end
        xml.at('Metrics') do |node|
          data.metrics = Metrics.parse(node)
        end
        return data
      end
    end

    class EncryptionConfiguration
      def self.parse(xml)
        data = Types::EncryptionConfiguration.new
        xml.at('ReplicaKmsKeyID') do |node|
          data.replica_kms_key_id = (node.text || '')
        end
        return data
      end
    end

    class EndEvent
      def self.parse(xml)
        data = Types::EndEvent.new
        return data
      end
    end

    class Error
      def self.parse(xml)
        data = Types::Error.new
        xml.at('Key') do |node|
          data.key = (node.text || '')
        end
        xml.at('VersionId') do |node|
          data.version_id = (node.text || '')
        end
        xml.at('Code') do |node|
          data.code = (node.text || '')
        end
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        return data
      end
    end

    class ErrorDocument
      def self.parse(xml)
        data = Types::ErrorDocument.new
        xml.at('Key') do |node|
          data.key = (node.text || '')
        end
        return data
      end
    end

    class Errors
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Error.parse(node)
        end
        data
      end
    end

    class EventBridgeConfiguration
      def self.parse(xml)
        data = Types::EventBridgeConfiguration.new
        return data
      end
    end

    class EventList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class ExistingObjectReplication
      def self.parse(xml)
        data = Types::ExistingObjectReplication.new
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        return data
      end
    end

    class ExposeHeaders
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class FilterRule
      def self.parse(xml)
        data = Types::FilterRule.new
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        xml.at('Value') do |node|
          data.value = (node.text || '')
        end
        return data
      end
    end

    class FilterRuleList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << FilterRule.parse(node)
        end
        data
      end
    end

    class GetBucketAccelerateConfiguration
      def self.parse(http_resp)
        data = Types::GetBucketAccelerateConfigurationOutput.new
        data.request_charged = http_resp.headers['x-amz-request-charged']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        data
      end
    end

    class GetBucketAcl
      def self.parse(http_resp)
        data = Types::GetBucketAclOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('Owner') do |node|
          data.owner = Owner.parse(node)
        end
        xml.at('AccessControlList') do |node|
          children = node.children('Grant')
          data.grants = Grants.parse(children)
        end
        data
      end
    end

    class GetBucketAnalyticsConfiguration
      def self.parse(http_resp)
        data = Types::GetBucketAnalyticsConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.analytics_configuration = AnalyticsConfiguration.parse(xml)
        data
      end
    end

    class GetBucketCors
      def self.parse(http_resp)
        data = Types::GetBucketCorsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.children('CORSRule') do |children|
          data.cors_rules = CORSRules.parse(children)
        end
        data
      end
    end

    class GetBucketEncryption
      def self.parse(http_resp)
        data = Types::GetBucketEncryptionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.server_side_encryption_configuration = ServerSideEncryptionConfiguration.parse(xml)
        data
      end
    end

    class GetBucketIntelligentTieringConfiguration
      def self.parse(http_resp)
        data = Types::GetBucketIntelligentTieringConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.intelligent_tiering_configuration = IntelligentTieringConfiguration.parse(xml)
        data
      end
    end

    class GetBucketInventoryConfiguration
      def self.parse(http_resp)
        data = Types::GetBucketInventoryConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.inventory_configuration = InventoryConfiguration.parse(xml)
        data
      end
    end

    class GetBucketLifecycleConfiguration
      def self.parse(http_resp)
        data = Types::GetBucketLifecycleConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.children('Rule') do |children|
          data.rules = LifecycleRules.parse(children)
        end
        data
      end
    end

    class GetBucketLocation
      def self.parse(http_resp)
        data = Types::GetBucketLocationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('LocationConstraint') do |node|
          data.location_constraint = (node.text || '')
        end
        data
      end
    end

    class GetBucketLogging
      def self.parse(http_resp)
        data = Types::GetBucketLoggingOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('LoggingEnabled') do |node|
          data.logging_enabled = LoggingEnabled.parse(node)
        end
        data
      end
    end

    class GetBucketMetricsConfiguration
      def self.parse(http_resp)
        data = Types::GetBucketMetricsConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.metrics_configuration = MetricsConfiguration.parse(xml)
        data
      end
    end

    class GetBucketNotificationConfiguration
      def self.parse(http_resp)
        data = Types::GetBucketNotificationConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.children('TopicConfiguration') do |children|
          data.topic_configurations = TopicConfigurationList.parse(children)
        end
        xml.children('QueueConfiguration') do |children|
          data.queue_configurations = QueueConfigurationList.parse(children)
        end
        xml.children('CloudFunctionConfiguration') do |children|
          data.lambda_function_configurations = LambdaFunctionConfigurationList.parse(children)
        end
        xml.at('EventBridgeConfiguration') do |node|
          data.event_bridge_configuration = EventBridgeConfiguration.parse(node)
        end
        data
      end
    end

    class GetBucketOwnershipControls
      def self.parse(http_resp)
        data = Types::GetBucketOwnershipControlsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.ownership_controls = OwnershipControls.parse(xml)
        data
      end
    end

    class GetBucketPolicy
      def self.parse(http_resp)
        data = Types::GetBucketPolicyOutput.new
        payload = http_resp.body.read
        data.policy = payload unless payload.empty?
        data
      end
    end

    class GetBucketPolicyStatus
      def self.parse(http_resp)
        data = Types::GetBucketPolicyStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.policy_status = PolicyStatus.parse(xml)
        data
      end
    end

    class GetBucketReplication
      def self.parse(http_resp)
        data = Types::GetBucketReplicationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.replication_configuration = ReplicationConfiguration.parse(xml)
        data
      end
    end

    class GetBucketRequestPayment
      def self.parse(http_resp)
        data = Types::GetBucketRequestPaymentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('Payer') do |node|
          data.payer = (node.text || '')
        end
        data
      end
    end

    class GetBucketTagging
      def self.parse(http_resp)
        data = Types::GetBucketTaggingOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('TagSet') do |node|
          children = node.children('Tag')
          data.tag_set = TagSet.parse(children)
        end
        data
      end
    end

    class GetBucketVersioning
      def self.parse(http_resp)
        data = Types::GetBucketVersioningOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('MfaDelete') do |node|
          data.mfa_delete = (node.text || '')
        end
        data
      end
    end

    class GetBucketWebsite
      def self.parse(http_resp)
        data = Types::GetBucketWebsiteOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('RedirectAllRequestsTo') do |node|
          data.redirect_all_requests_to = RedirectAllRequestsTo.parse(node)
        end
        xml.at('IndexDocument') do |node|
          data.index_document = IndexDocument.parse(node)
        end
        xml.at('ErrorDocument') do |node|
          data.error_document = ErrorDocument.parse(node)
        end
        xml.at('RoutingRules') do |node|
          children = node.children('RoutingRule')
          data.routing_rules = RoutingRules.parse(children)
        end
        data
      end
    end

    class GetObject
      def self.parse(http_resp)
        data = Types::GetObjectOutput.new
        data.delete_marker = http_resp.headers['x-amz-delete-marker'] == 'true' unless http_resp.headers['x-amz-delete-marker'].nil?
        data.accept_ranges = http_resp.headers['accept-ranges']
        data.expiration = http_resp.headers['x-amz-expiration']
        data.restore = http_resp.headers['x-amz-restore']
        data.last_modified = Time.parse(http_resp.headers['Last-Modified']) if http_resp.headers['Last-Modified']
        data.content_length = http_resp.headers['Content-Length'].to_i unless http_resp.headers['Content-Length'].nil?
        data.e_tag = http_resp.headers['ETag']
        data.checksum_crc32 = http_resp.headers['x-amz-checksum-crc32']
        data.checksum_crc32_c = http_resp.headers['x-amz-checksum-crc32c']
        data.checksum_sha1 = http_resp.headers['x-amz-checksum-sha1']
        data.checksum_sha256 = http_resp.headers['x-amz-checksum-sha256']
        data.missing_meta = http_resp.headers['x-amz-missing-meta'].to_i unless http_resp.headers['x-amz-missing-meta'].nil?
        data.version_id = http_resp.headers['x-amz-version-id']
        data.cache_control = http_resp.headers['Cache-Control']
        data.content_disposition = http_resp.headers['Content-Disposition']
        data.content_encoding = http_resp.headers['Content-Encoding']
        data.content_language = http_resp.headers['Content-Language']
        data.content_range = http_resp.headers['Content-Range']
        data.content_type = http_resp.headers['Content-Type']
        data.expires = Time.parse(http_resp.headers['Expires']) if http_resp.headers['Expires']
        data.website_redirect_location = http_resp.headers['x-amz-website-redirect-location']
        data.server_side_encryption = http_resp.headers['x-amz-server-side-encryption']
        data.sse_customer_algorithm = http_resp.headers['x-amz-server-side-encryption-customer-algorithm']
        data.sse_customer_key_md5 = http_resp.headers['x-amz-server-side-encryption-customer-key-MD5']
        data.ssekms_key_id = http_resp.headers['x-amz-server-side-encryption-aws-kms-key-id']
        data.bucket_key_enabled = http_resp.headers['x-amz-server-side-encryption-bucket-key-enabled'] == 'true' unless http_resp.headers['x-amz-server-side-encryption-bucket-key-enabled'].nil?
        data.storage_class = http_resp.headers['x-amz-storage-class']
        data.request_charged = http_resp.headers['x-amz-request-charged']
        data.replication_status = http_resp.headers['x-amz-replication-status']
        data.parts_count = http_resp.headers['x-amz-mp-parts-count'].to_i unless http_resp.headers['x-amz-mp-parts-count'].nil?
        data.tag_count = http_resp.headers['x-amz-tagging-count'].to_i unless http_resp.headers['x-amz-tagging-count'].nil?
        data.object_lock_mode = http_resp.headers['x-amz-object-lock-mode']
        data.object_lock_retain_until_date = Time.parse(http_resp.headers['x-amz-object-lock-retain-until-date']) if http_resp.headers['x-amz-object-lock-retain-until-date']
        data.object_lock_legal_hold_status = http_resp.headers['x-amz-object-lock-legal-hold']
        data.metadata = {}
        http_resp.headers.each do |key, value|
          if key.start_with?('x-amz-meta-')
            data.metadata[key.delete_prefix('x-amz-meta-')] = value
          end
        end
        data.body = http_resp.body
        data
      end
    end

    class GetObjectAcl
      def self.parse(http_resp)
        data = Types::GetObjectAclOutput.new
        data.request_charged = http_resp.headers['x-amz-request-charged']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('Owner') do |node|
          data.owner = Owner.parse(node)
        end
        xml.at('AccessControlList') do |node|
          children = node.children('Grant')
          data.grants = Grants.parse(children)
        end
        data
      end
    end

    class GetObjectAttributes
      def self.parse(http_resp)
        data = Types::GetObjectAttributesOutput.new
        data.delete_marker = http_resp.headers['x-amz-delete-marker'] == 'true' unless http_resp.headers['x-amz-delete-marker'].nil?
        data.last_modified = Time.parse(http_resp.headers['Last-Modified']) if http_resp.headers['Last-Modified']
        data.version_id = http_resp.headers['x-amz-version-id']
        data.request_charged = http_resp.headers['x-amz-request-charged']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('ETag') do |node|
          data.e_tag = (node.text || '')
        end
        xml.at('Checksum') do |node|
          data.checksum = Checksum.parse(node)
        end
        xml.at('ObjectParts') do |node|
          data.object_parts = GetObjectAttributesParts.parse(node)
        end
        xml.at('StorageClass') do |node|
          data.storage_class = (node.text || '')
        end
        xml.at('ObjectSize') do |node|
          data.object_size = node.text&.to_i
        end
        data
      end
    end

    class GetObjectAttributesParts
      def self.parse(xml)
        data = Types::GetObjectAttributesParts.new
        xml.at('PartsCount') do |node|
          data.total_parts_count = node.text&.to_i
        end
        xml.at('PartNumberMarker') do |node|
          data.part_number_marker = (node.text || '')
        end
        xml.at('NextPartNumberMarker') do |node|
          data.next_part_number_marker = (node.text || '')
        end
        xml.at('MaxParts') do |node|
          data.max_parts = node.text&.to_i
        end
        xml.at('IsTruncated') do |node|
          data.is_truncated = (node.text == 'true')
        end
        xml.children('Part') do |children|
          data.parts = PartsList.parse(children)
        end
        return data
      end
    end

    class GetObjectLegalHold
      def self.parse(http_resp)
        data = Types::GetObjectLegalHoldOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.legal_hold = ObjectLockLegalHold.parse(xml)
        data
      end
    end

    class GetObjectLockConfiguration
      def self.parse(http_resp)
        data = Types::GetObjectLockConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.object_lock_configuration = ObjectLockConfiguration.parse(xml)
        data
      end
    end

    class GetObjectRetention
      def self.parse(http_resp)
        data = Types::GetObjectRetentionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.retention = ObjectLockRetention.parse(xml)
        data
      end
    end

    class GetObjectTagging
      def self.parse(http_resp)
        data = Types::GetObjectTaggingOutput.new
        data.version_id = http_resp.headers['x-amz-version-id']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('TagSet') do |node|
          children = node.children('Tag')
          data.tag_set = TagSet.parse(children)
        end
        data
      end
    end

    class GetObjectTorrent
      def self.parse(http_resp)
        data = Types::GetObjectTorrentOutput.new
        data.request_charged = http_resp.headers['x-amz-request-charged']
        data.body = http_resp.body
        data
      end
    end

    class GetPublicAccessBlock
      def self.parse(http_resp)
        data = Types::GetPublicAccessBlockOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.public_access_block_configuration = PublicAccessBlockConfiguration.parse(xml)
        data
      end
    end

    class Grant
      def self.parse(xml)
        data = Types::Grant.new
        xml.at('Grantee') do |node|
          data.grantee = Grantee.parse(node)
        end
        xml.at('Permission') do |node|
          data.permission = (node.text || '')
        end
        return data
      end
    end

    class Grantee
      def self.parse(xml)
        data = Types::Grantee.new
        xml.at('DisplayName') do |node|
          data.display_name = (node.text || '')
        end
        xml.at('EmailAddress') do |node|
          data.email_address = (node.text || '')
        end
        xml.at('ID') do |node|
          data.id = (node.text || '')
        end
        xml.at('URI') do |node|
          data.uri = (node.text || '')
        end
        data.type = xml.attributes['xsi:type']
        return data
      end
    end

    class Grants
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Grant.parse(node)
        end
        data
      end
    end

    class HeadBucket
      def self.parse(http_resp)
        data = Types::HeadBucketOutput.new
        data.bucket_location_type = http_resp.headers['x-amz-bucket-location-type']
        data.bucket_location_name = http_resp.headers['x-amz-bucket-location-name']
        data.bucket_region = http_resp.headers['x-amz-bucket-region']
        data.access_point_alias = http_resp.headers['x-amz-access-point-alias'] == 'true' unless http_resp.headers['x-amz-access-point-alias'].nil?
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    class HeadObject
      def self.parse(http_resp)
        data = Types::HeadObjectOutput.new
        data.delete_marker = http_resp.headers['x-amz-delete-marker'] == 'true' unless http_resp.headers['x-amz-delete-marker'].nil?
        data.accept_ranges = http_resp.headers['accept-ranges']
        data.expiration = http_resp.headers['x-amz-expiration']
        data.restore = http_resp.headers['x-amz-restore']
        data.archive_status = http_resp.headers['x-amz-archive-status']
        data.last_modified = Time.parse(http_resp.headers['Last-Modified']) if http_resp.headers['Last-Modified']
        data.content_length = http_resp.headers['Content-Length'].to_i unless http_resp.headers['Content-Length'].nil?
        data.checksum_crc32 = http_resp.headers['x-amz-checksum-crc32']
        data.checksum_crc32_c = http_resp.headers['x-amz-checksum-crc32c']
        data.checksum_sha1 = http_resp.headers['x-amz-checksum-sha1']
        data.checksum_sha256 = http_resp.headers['x-amz-checksum-sha256']
        data.e_tag = http_resp.headers['ETag']
        data.missing_meta = http_resp.headers['x-amz-missing-meta'].to_i unless http_resp.headers['x-amz-missing-meta'].nil?
        data.version_id = http_resp.headers['x-amz-version-id']
        data.cache_control = http_resp.headers['Cache-Control']
        data.content_disposition = http_resp.headers['Content-Disposition']
        data.content_encoding = http_resp.headers['Content-Encoding']
        data.content_language = http_resp.headers['Content-Language']
        data.content_type = http_resp.headers['Content-Type']
        data.expires = Time.parse(http_resp.headers['Expires']) if http_resp.headers['Expires']
        data.website_redirect_location = http_resp.headers['x-amz-website-redirect-location']
        data.server_side_encryption = http_resp.headers['x-amz-server-side-encryption']
        data.sse_customer_algorithm = http_resp.headers['x-amz-server-side-encryption-customer-algorithm']
        data.sse_customer_key_md5 = http_resp.headers['x-amz-server-side-encryption-customer-key-MD5']
        data.ssekms_key_id = http_resp.headers['x-amz-server-side-encryption-aws-kms-key-id']
        data.bucket_key_enabled = http_resp.headers['x-amz-server-side-encryption-bucket-key-enabled'] == 'true' unless http_resp.headers['x-amz-server-side-encryption-bucket-key-enabled'].nil?
        data.storage_class = http_resp.headers['x-amz-storage-class']
        data.request_charged = http_resp.headers['x-amz-request-charged']
        data.replication_status = http_resp.headers['x-amz-replication-status']
        data.parts_count = http_resp.headers['x-amz-mp-parts-count'].to_i unless http_resp.headers['x-amz-mp-parts-count'].nil?
        data.object_lock_mode = http_resp.headers['x-amz-object-lock-mode']
        data.object_lock_retain_until_date = Time.parse(http_resp.headers['x-amz-object-lock-retain-until-date']) if http_resp.headers['x-amz-object-lock-retain-until-date']
        data.object_lock_legal_hold_status = http_resp.headers['x-amz-object-lock-legal-hold']
        data.metadata = {}
        http_resp.headers.each do |key, value|
          if key.start_with?('x-amz-meta-')
            data.metadata[key.delete_prefix('x-amz-meta-')] = value
          end
        end
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    class IndexDocument
      def self.parse(xml)
        data = Types::IndexDocument.new
        xml.at('Suffix') do |node|
          data.suffix = (node.text || '')
        end
        return data
      end
    end

    class Initiator
      def self.parse(xml)
        data = Types::Initiator.new
        xml.at('ID') do |node|
          data.id = (node.text || '')
        end
        xml.at('DisplayName') do |node|
          data.display_name = (node.text || '')
        end
        return data
      end
    end

    class IntelligentTieringAndOperator
      def self.parse(xml)
        data = Types::IntelligentTieringAndOperator.new
        xml.at('Prefix') do |node|
          data.prefix = (node.text || '')
        end
        xml.children('Tag') do |children|
          data.tags = TagSet.parse(children)
        end
        return data
      end
    end

    class IntelligentTieringConfiguration
      def self.parse(xml)
        data = Types::IntelligentTieringConfiguration.new
        xml.at('Id') do |node|
          data.id = (node.text || '')
        end
        xml.at('Filter') do |node|
          data.member_filter = IntelligentTieringFilter.parse(node)
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.children('Tiering') do |children|
          data.tierings = TieringList.parse(children)
        end
        return data
      end
    end

    class IntelligentTieringConfigurationList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << IntelligentTieringConfiguration.parse(node)
        end
        data
      end
    end

    class IntelligentTieringFilter
      def self.parse(xml)
        data = Types::IntelligentTieringFilter.new
        xml.at('Prefix') do |node|
          data.prefix = (node.text || '')
        end
        xml.at('Tag') do |node|
          data.tag = Tag.parse(node)
        end
        xml.at('And') do |node|
          data.and = IntelligentTieringAndOperator.parse(node)
        end
        return data
      end
    end

    # Error Parser for InvalidObjectState
    class InvalidObjectState
      def self.parse(http_resp)
        data = Types::InvalidObjectState.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('StorageClass') do |node|
          data.storage_class = (node.text || '')
        end
        xml.at('AccessTier') do |node|
          data.access_tier = (node.text || '')
        end
        data
      end
    end

    class InventoryConfiguration
      def self.parse(xml)
        data = Types::InventoryConfiguration.new
        xml.at('Destination') do |node|
          data.destination = InventoryDestination.parse(node)
        end
        xml.at('IsEnabled') do |node|
          data.is_enabled = (node.text == 'true')
        end
        xml.at('Filter') do |node|
          data.member_filter = InventoryFilter.parse(node)
        end
        xml.at('Id') do |node|
          data.id = (node.text || '')
        end
        xml.at('IncludedObjectVersions') do |node|
          data.included_object_versions = (node.text || '')
        end
        xml.at('OptionalFields') do |node|
          children = node.children('Field')
          data.optional_fields = InventoryOptionalFields.parse(children)
        end
        xml.at('Schedule') do |node|
          data.schedule = InventorySchedule.parse(node)
        end
        return data
      end
    end

    class InventoryConfigurationList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << InventoryConfiguration.parse(node)
        end
        data
      end
    end

    class InventoryDestination
      def self.parse(xml)
        data = Types::InventoryDestination.new
        xml.at('S3BucketDestination') do |node|
          data.s3_bucket_destination = InventoryS3BucketDestination.parse(node)
        end
        return data
      end
    end

    class InventoryEncryption
      def self.parse(xml)
        data = Types::InventoryEncryption.new
        xml.at('SSE-S3') do |node|
          data.sses3 = SSES3.parse(node)
        end
        xml.at('SSE-KMS') do |node|
          data.ssekms = SSEKMS.parse(node)
        end
        return data
      end
    end

    class InventoryFilter
      def self.parse(xml)
        data = Types::InventoryFilter.new
        xml.at('Prefix') do |node|
          data.prefix = (node.text || '')
        end
        return data
      end
    end

    class InventoryOptionalFields
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class InventoryS3BucketDestination
      def self.parse(xml)
        data = Types::InventoryS3BucketDestination.new
        xml.at('AccountId') do |node|
          data.account_id = (node.text || '')
        end
        xml.at('Bucket') do |node|
          data.bucket = (node.text || '')
        end
        xml.at('Format') do |node|
          data.format = (node.text || '')
        end
        xml.at('Prefix') do |node|
          data.prefix = (node.text || '')
        end
        xml.at('Encryption') do |node|
          data.encryption = InventoryEncryption.parse(node)
        end
        return data
      end
    end

    class InventorySchedule
      def self.parse(xml)
        data = Types::InventorySchedule.new
        xml.at('Frequency') do |node|
          data.frequency = (node.text || '')
        end
        return data
      end
    end

    class LambdaFunctionConfiguration
      def self.parse(xml)
        data = Types::LambdaFunctionConfiguration.new
        xml.at('Id') do |node|
          data.id = (node.text || '')
        end
        xml.at('CloudFunction') do |node|
          data.lambda_function_arn = (node.text || '')
        end
        xml.children('Event') do |children|
          data.events = EventList.parse(children)
        end
        xml.at('Filter') do |node|
          data.member_filter = NotificationConfigurationFilter.parse(node)
        end
        return data
      end
    end

    class LambdaFunctionConfigurationList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << LambdaFunctionConfiguration.parse(node)
        end
        data
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

    class LifecycleRule
      def self.parse(xml)
        data = Types::LifecycleRule.new
        xml.at('Expiration') do |node|
          data.expiration = LifecycleExpiration.parse(node)
        end
        xml.at('ID') do |node|
          data.id = (node.text || '')
        end
        xml.at('Prefix') do |node|
          data.prefix = (node.text || '')
        end
        xml.at('Filter') do |node|
          data.member_filter = LifecycleRuleFilter.parse(node)
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.children('Transition') do |children|
          data.transitions = TransitionList.parse(children)
        end
        xml.children('NoncurrentVersionTransition') do |children|
          data.noncurrent_version_transitions = NoncurrentVersionTransitionList.parse(children)
        end
        xml.at('NoncurrentVersionExpiration') do |node|
          data.noncurrent_version_expiration = NoncurrentVersionExpiration.parse(node)
        end
        xml.at('AbortIncompleteMultipartUpload') do |node|
          data.abort_incomplete_multipart_upload = AbortIncompleteMultipartUpload.parse(node)
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
        xml.children('Tag') do |children|
          data.tags = TagSet.parse(children)
        end
        xml.at('ObjectSizeGreaterThan') do |node|
          data.object_size_greater_than = node.text&.to_i
        end
        xml.at('ObjectSizeLessThan') do |node|
          data.object_size_less_than = node.text&.to_i
        end
        return data
      end
    end

    class LifecycleRuleFilter
      def self.parse(xml)
        value = xml.children.first
        key = value.name
        case key
        when 'Prefix'
          node = value
          value = (node.text || '')
          Types::LifecycleRuleFilter::Prefix.new(value) if value
        when 'Tag'
          node = value
          value = Tag.parse(node)
          Types::LifecycleRuleFilter::Tag.new(value) if value
        when 'ObjectSizeGreaterThan'
          node = value
          value = node.text&.to_i
          Types::LifecycleRuleFilter::ObjectSizeGreaterThan.new(value) if value
        when 'ObjectSizeLessThan'
          node = value
          value = node.text&.to_i
          Types::LifecycleRuleFilter::ObjectSizeLessThan.new(value) if value
        when 'And'
          node = value
          value = LifecycleRuleAndOperator.parse(node)
          Types::LifecycleRuleFilter::And.new(value) if value
        else
          Types::LifecycleRuleFilter::Unknown.new(name: key, value: value)
        end
      end
    end

    class LifecycleRules
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << LifecycleRule.parse(node)
        end
        data
      end
    end

    class ListBucketAnalyticsConfigurations
      def self.parse(http_resp)
        data = Types::ListBucketAnalyticsConfigurationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('IsTruncated') do |node|
          data.is_truncated = (node.text == 'true')
        end
        xml.at('ContinuationToken') do |node|
          data.continuation_token = (node.text || '')
        end
        xml.at('NextContinuationToken') do |node|
          data.next_continuation_token = (node.text || '')
        end
        xml.children('AnalyticsConfiguration') do |children|
          data.analytics_configuration_list = AnalyticsConfigurationList.parse(children)
        end
        data
      end
    end

    class ListBucketIntelligentTieringConfigurations
      def self.parse(http_resp)
        data = Types::ListBucketIntelligentTieringConfigurationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('IsTruncated') do |node|
          data.is_truncated = (node.text == 'true')
        end
        xml.at('ContinuationToken') do |node|
          data.continuation_token = (node.text || '')
        end
        xml.at('NextContinuationToken') do |node|
          data.next_continuation_token = (node.text || '')
        end
        xml.children('IntelligentTieringConfiguration') do |children|
          data.intelligent_tiering_configuration_list = IntelligentTieringConfigurationList.parse(children)
        end
        data
      end
    end

    class ListBucketInventoryConfigurations
      def self.parse(http_resp)
        data = Types::ListBucketInventoryConfigurationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('ContinuationToken') do |node|
          data.continuation_token = (node.text || '')
        end
        xml.children('InventoryConfiguration') do |children|
          data.inventory_configuration_list = InventoryConfigurationList.parse(children)
        end
        xml.at('IsTruncated') do |node|
          data.is_truncated = (node.text == 'true')
        end
        xml.at('NextContinuationToken') do |node|
          data.next_continuation_token = (node.text || '')
        end
        data
      end
    end

    class ListBucketMetricsConfigurations
      def self.parse(http_resp)
        data = Types::ListBucketMetricsConfigurationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('IsTruncated') do |node|
          data.is_truncated = (node.text == 'true')
        end
        xml.at('ContinuationToken') do |node|
          data.continuation_token = (node.text || '')
        end
        xml.at('NextContinuationToken') do |node|
          data.next_continuation_token = (node.text || '')
        end
        xml.children('MetricsConfiguration') do |children|
          data.metrics_configuration_list = MetricsConfigurationList.parse(children)
        end
        data
      end
    end

    class ListBuckets
      def self.parse(http_resp)
        data = Types::ListBucketsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('Buckets') do |node|
          children = node.children('Bucket')
          data.buckets = Buckets.parse(children)
        end
        xml.at('Owner') do |node|
          data.owner = Owner.parse(node)
        end
        data
      end
    end

    class ListDirectoryBuckets
      def self.parse(http_resp)
        data = Types::ListDirectoryBucketsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('Buckets') do |node|
          children = node.children('Bucket')
          data.buckets = Buckets.parse(children)
        end
        xml.at('ContinuationToken') do |node|
          data.continuation_token = (node.text || '')
        end
        data
      end
    end

    class ListMultipartUploads
      def self.parse(http_resp)
        data = Types::ListMultipartUploadsOutput.new
        data.request_charged = http_resp.headers['x-amz-request-charged']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('Bucket') do |node|
          data.bucket = (node.text || '')
        end
        xml.at('KeyMarker') do |node|
          data.key_marker = (node.text || '')
        end
        xml.at('UploadIdMarker') do |node|
          data.upload_id_marker = (node.text || '')
        end
        xml.at('NextKeyMarker') do |node|
          data.next_key_marker = (node.text || '')
        end
        xml.at('Prefix') do |node|
          data.prefix = (node.text || '')
        end
        xml.at('Delimiter') do |node|
          data.delimiter = (node.text || '')
        end
        xml.at('NextUploadIdMarker') do |node|
          data.next_upload_id_marker = (node.text || '')
        end
        xml.at('MaxUploads') do |node|
          data.max_uploads = node.text&.to_i
        end
        xml.at('IsTruncated') do |node|
          data.is_truncated = (node.text == 'true')
        end
        xml.children('Upload') do |children|
          data.uploads = MultipartUploadList.parse(children)
        end
        xml.children('CommonPrefixes') do |children|
          data.common_prefixes = CommonPrefixList.parse(children)
        end
        xml.at('EncodingType') do |node|
          data.encoding_type = (node.text || '')
        end
        data
      end
    end

    class ListObjectVersions
      def self.parse(http_resp)
        data = Types::ListObjectVersionsOutput.new
        data.request_charged = http_resp.headers['x-amz-request-charged']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('IsTruncated') do |node|
          data.is_truncated = (node.text == 'true')
        end
        xml.at('KeyMarker') do |node|
          data.key_marker = (node.text || '')
        end
        xml.at('VersionIdMarker') do |node|
          data.version_id_marker = (node.text || '')
        end
        xml.at('NextKeyMarker') do |node|
          data.next_key_marker = (node.text || '')
        end
        xml.at('NextVersionIdMarker') do |node|
          data.next_version_id_marker = (node.text || '')
        end
        xml.children('Version') do |children|
          data.versions = ObjectVersionList.parse(children)
        end
        xml.children('DeleteMarker') do |children|
          data.delete_markers = DeleteMarkers.parse(children)
        end
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        xml.at('Prefix') do |node|
          data.prefix = (node.text || '')
        end
        xml.at('Delimiter') do |node|
          data.delimiter = (node.text || '')
        end
        xml.at('MaxKeys') do |node|
          data.max_keys = node.text&.to_i
        end
        xml.children('CommonPrefixes') do |children|
          data.common_prefixes = CommonPrefixList.parse(children)
        end
        xml.at('EncodingType') do |node|
          data.encoding_type = (node.text || '')
        end
        data
      end
    end

    class ListObjects
      def self.parse(http_resp)
        data = Types::ListObjectsOutput.new
        data.request_charged = http_resp.headers['x-amz-request-charged']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('IsTruncated') do |node|
          data.is_truncated = (node.text == 'true')
        end
        xml.at('Marker') do |node|
          data.marker = (node.text || '')
        end
        xml.at('NextMarker') do |node|
          data.next_marker = (node.text || '')
        end
        xml.children('Contents') do |children|
          data.contents = ObjectList.parse(children)
        end
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        xml.at('Prefix') do |node|
          data.prefix = (node.text || '')
        end
        xml.at('Delimiter') do |node|
          data.delimiter = (node.text || '')
        end
        xml.at('MaxKeys') do |node|
          data.max_keys = node.text&.to_i
        end
        xml.children('CommonPrefixes') do |children|
          data.common_prefixes = CommonPrefixList.parse(children)
        end
        xml.at('EncodingType') do |node|
          data.encoding_type = (node.text || '')
        end
        data
      end
    end

    class ListObjectsV2
      def self.parse(http_resp)
        data = Types::ListObjectsV2Output.new
        data.request_charged = http_resp.headers['x-amz-request-charged']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('IsTruncated') do |node|
          data.is_truncated = (node.text == 'true')
        end
        xml.children('Contents') do |children|
          data.contents = ObjectList.parse(children)
        end
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        xml.at('Prefix') do |node|
          data.prefix = (node.text || '')
        end
        xml.at('Delimiter') do |node|
          data.delimiter = (node.text || '')
        end
        xml.at('MaxKeys') do |node|
          data.max_keys = node.text&.to_i
        end
        xml.children('CommonPrefixes') do |children|
          data.common_prefixes = CommonPrefixList.parse(children)
        end
        xml.at('EncodingType') do |node|
          data.encoding_type = (node.text || '')
        end
        xml.at('KeyCount') do |node|
          data.key_count = node.text&.to_i
        end
        xml.at('ContinuationToken') do |node|
          data.continuation_token = (node.text || '')
        end
        xml.at('NextContinuationToken') do |node|
          data.next_continuation_token = (node.text || '')
        end
        xml.at('StartAfter') do |node|
          data.start_after = (node.text || '')
        end
        data
      end
    end

    class ListParts
      def self.parse(http_resp)
        data = Types::ListPartsOutput.new
        data.abort_date = Time.parse(http_resp.headers['x-amz-abort-date']) if http_resp.headers['x-amz-abort-date']
        data.abort_rule_id = http_resp.headers['x-amz-abort-rule-id']
        data.request_charged = http_resp.headers['x-amz-request-charged']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('Bucket') do |node|
          data.bucket = (node.text || '')
        end
        xml.at('Key') do |node|
          data.key = (node.text || '')
        end
        xml.at('UploadId') do |node|
          data.upload_id = (node.text || '')
        end
        xml.at('PartNumberMarker') do |node|
          data.part_number_marker = (node.text || '')
        end
        xml.at('NextPartNumberMarker') do |node|
          data.next_part_number_marker = (node.text || '')
        end
        xml.at('MaxParts') do |node|
          data.max_parts = node.text&.to_i
        end
        xml.at('IsTruncated') do |node|
          data.is_truncated = (node.text == 'true')
        end
        xml.children('Part') do |children|
          data.parts = Parts.parse(children)
        end
        xml.at('Initiator') do |node|
          data.initiator = Initiator.parse(node)
        end
        xml.at('Owner') do |node|
          data.owner = Owner.parse(node)
        end
        xml.at('StorageClass') do |node|
          data.storage_class = (node.text || '')
        end
        xml.at('ChecksumAlgorithm') do |node|
          data.checksum_algorithm = (node.text || '')
        end
        data
      end
    end

    class LoggingEnabled
      def self.parse(xml)
        data = Types::LoggingEnabled.new
        xml.at('TargetBucket') do |node|
          data.target_bucket = (node.text || '')
        end
        xml.at('TargetGrants') do |node|
          children = node.children('Grant')
          data.target_grants = TargetGrants.parse(children)
        end
        xml.at('TargetPrefix') do |node|
          data.target_prefix = (node.text || '')
        end
        xml.at('TargetObjectKeyFormat') do |node|
          data.target_object_key_format = TargetObjectKeyFormat.parse(node)
        end
        return data
      end
    end

    class Metadata
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

    class Metrics
      def self.parse(xml)
        data = Types::Metrics.new
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('EventThreshold') do |node|
          data.event_threshold = ReplicationTimeValue.parse(node)
        end
        return data
      end
    end

    class MetricsAndOperator
      def self.parse(xml)
        data = Types::MetricsAndOperator.new
        xml.at('Prefix') do |node|
          data.prefix = (node.text || '')
        end
        xml.children('Tag') do |children|
          data.tags = TagSet.parse(children)
        end
        xml.at('AccessPointArn') do |node|
          data.access_point_arn = (node.text || '')
        end
        return data
      end
    end

    class MetricsConfiguration
      def self.parse(xml)
        data = Types::MetricsConfiguration.new
        xml.at('Id') do |node|
          data.id = (node.text || '')
        end
        xml.at('Filter') do |node|
          data.member_filter = MetricsFilter.parse(node)
        end
        return data
      end
    end

    class MetricsConfigurationList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << MetricsConfiguration.parse(node)
        end
        data
      end
    end

    class MetricsFilter
      def self.parse(xml)
        value = xml.children.first
        key = value.name
        case key
        when 'Prefix'
          node = value
          value = (node.text || '')
          Types::MetricsFilter::Prefix.new(value) if value
        when 'Tag'
          node = value
          value = Tag.parse(node)
          Types::MetricsFilter::Tag.new(value) if value
        when 'AccessPointArn'
          node = value
          value = (node.text || '')
          Types::MetricsFilter::AccessPointArn.new(value) if value
        when 'And'
          node = value
          value = MetricsAndOperator.parse(node)
          Types::MetricsFilter::And.new(value) if value
        else
          Types::MetricsFilter::Unknown.new(name: key, value: value)
        end
      end
    end

    class MultipartUpload
      def self.parse(xml)
        data = Types::MultipartUpload.new
        xml.at('UploadId') do |node|
          data.upload_id = (node.text || '')
        end
        xml.at('Key') do |node|
          data.key = (node.text || '')
        end
        xml.at('Initiated') do |node|
          data.initiated = Time.parse(node.text) if node.text
        end
        xml.at('StorageClass') do |node|
          data.storage_class = (node.text || '')
        end
        xml.at('Owner') do |node|
          data.owner = Owner.parse(node)
        end
        xml.at('Initiator') do |node|
          data.initiator = Initiator.parse(node)
        end
        xml.at('ChecksumAlgorithm') do |node|
          data.checksum_algorithm = (node.text || '')
        end
        return data
      end
    end

    class MultipartUploadList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << MultipartUpload.parse(node)
        end
        data
      end
    end

    # Error Parser for NoSuchBucket
    class NoSuchBucket
      def self.parse(http_resp)
        data = Types::NoSuchBucket.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Error Parser for NoSuchKey
    class NoSuchKey
      def self.parse(http_resp)
        data = Types::NoSuchKey.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Error Parser for NoSuchUpload
    class NoSuchUpload
      def self.parse(http_resp)
        data = Types::NoSuchUpload.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    class NoncurrentVersionExpiration
      def self.parse(xml)
        data = Types::NoncurrentVersionExpiration.new
        xml.at('NoncurrentDays') do |node|
          data.noncurrent_days = node.text&.to_i
        end
        xml.at('NewerNoncurrentVersions') do |node|
          data.newer_noncurrent_versions = node.text&.to_i
        end
        return data
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
        xml.at('NewerNoncurrentVersions') do |node|
          data.newer_noncurrent_versions = node.text&.to_i
        end
        return data
      end
    end

    class NoncurrentVersionTransitionList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << NoncurrentVersionTransition.parse(node)
        end
        data
      end
    end

    # Error Parser for NotFound
    class NotFound
      def self.parse(http_resp)
        data = Types::NotFound.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    class NotificationConfigurationFilter
      def self.parse(xml)
        data = Types::NotificationConfigurationFilter.new
        xml.at('S3Key') do |node|
          data.key = S3KeyFilter.parse(node)
        end
        return data
      end
    end

    class Object
      def self.parse(xml)
        data = Types::Object.new
        xml.at('Key') do |node|
          data.key = (node.text || '')
        end
        xml.at('LastModified') do |node|
          data.last_modified = Time.parse(node.text) if node.text
        end
        xml.at('ETag') do |node|
          data.e_tag = (node.text || '')
        end
        xml.children('ChecksumAlgorithm') do |children|
          data.checksum_algorithm = ChecksumAlgorithmList.parse(children)
        end
        xml.at('Size') do |node|
          data.member_size = node.text&.to_i
        end
        xml.at('StorageClass') do |node|
          data.storage_class = (node.text || '')
        end
        xml.at('Owner') do |node|
          data.owner = Owner.parse(node)
        end
        xml.at('RestoreStatus') do |node|
          data.restore_status = RestoreStatus.parse(node)
        end
        return data
      end
    end

    # Error Parser for ObjectAlreadyInActiveTierError
    class ObjectAlreadyInActiveTierError
      def self.parse(http_resp)
        data = Types::ObjectAlreadyInActiveTierError.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    class ObjectList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Object.parse(node)
        end
        data
      end
    end

    class ObjectLockConfiguration
      def self.parse(xml)
        data = Types::ObjectLockConfiguration.new
        xml.at('ObjectLockEnabled') do |node|
          data.object_lock_enabled = (node.text || '')
        end
        xml.at('Rule') do |node|
          data.rule = ObjectLockRule.parse(node)
        end
        return data
      end
    end

    class ObjectLockLegalHold
      def self.parse(xml)
        data = Types::ObjectLockLegalHold.new
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        return data
      end
    end

    class ObjectLockRetention
      def self.parse(xml)
        data = Types::ObjectLockRetention.new
        xml.at('Mode') do |node|
          data.mode = (node.text || '')
        end
        xml.at('RetainUntilDate') do |node|
          data.retain_until_date = Time.parse(node.text) if node.text
        end
        return data
      end
    end

    class ObjectLockRule
      def self.parse(xml)
        data = Types::ObjectLockRule.new
        xml.at('DefaultRetention') do |node|
          data.default_retention = DefaultRetention.parse(node)
        end
        return data
      end
    end

    # Error Parser for ObjectNotInActiveTierError
    class ObjectNotInActiveTierError
      def self.parse(http_resp)
        data = Types::ObjectNotInActiveTierError.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    class ObjectPart
      def self.parse(xml)
        data = Types::ObjectPart.new
        xml.at('PartNumber') do |node|
          data.part_number = node.text&.to_i
        end
        xml.at('Size') do |node|
          data.member_size = node.text&.to_i
        end
        xml.at('ChecksumCRC32') do |node|
          data.checksum_crc32 = (node.text || '')
        end
        xml.at('ChecksumCRC32C') do |node|
          data.checksum_crc32_c = (node.text || '')
        end
        xml.at('ChecksumSHA1') do |node|
          data.checksum_sha1 = (node.text || '')
        end
        xml.at('ChecksumSHA256') do |node|
          data.checksum_sha256 = (node.text || '')
        end
        return data
      end
    end

    class ObjectVersion
      def self.parse(xml)
        data = Types::ObjectVersion.new
        xml.at('ETag') do |node|
          data.e_tag = (node.text || '')
        end
        xml.children('ChecksumAlgorithm') do |children|
          data.checksum_algorithm = ChecksumAlgorithmList.parse(children)
        end
        xml.at('Size') do |node|
          data.member_size = node.text&.to_i
        end
        xml.at('StorageClass') do |node|
          data.storage_class = (node.text || '')
        end
        xml.at('Key') do |node|
          data.key = (node.text || '')
        end
        xml.at('VersionId') do |node|
          data.version_id = (node.text || '')
        end
        xml.at('IsLatest') do |node|
          data.is_latest = (node.text == 'true')
        end
        xml.at('LastModified') do |node|
          data.last_modified = Time.parse(node.text) if node.text
        end
        xml.at('Owner') do |node|
          data.owner = Owner.parse(node)
        end
        xml.at('RestoreStatus') do |node|
          data.restore_status = RestoreStatus.parse(node)
        end
        return data
      end
    end

    class ObjectVersionList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << ObjectVersion.parse(node)
        end
        data
      end
    end

    class Owner
      def self.parse(xml)
        data = Types::Owner.new
        xml.at('DisplayName') do |node|
          data.display_name = (node.text || '')
        end
        xml.at('ID') do |node|
          data.id = (node.text || '')
        end
        return data
      end
    end

    class OwnershipControls
      def self.parse(xml)
        data = Types::OwnershipControls.new
        xml.children('Rule') do |children|
          data.rules = OwnershipControlsRules.parse(children)
        end
        return data
      end
    end

    class OwnershipControlsRule
      def self.parse(xml)
        data = Types::OwnershipControlsRule.new
        xml.at('ObjectOwnership') do |node|
          data.object_ownership = (node.text || '')
        end
        return data
      end
    end

    class OwnershipControlsRules
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << OwnershipControlsRule.parse(node)
        end
        data
      end
    end

    class Part
      def self.parse(xml)
        data = Types::Part.new
        xml.at('PartNumber') do |node|
          data.part_number = node.text&.to_i
        end
        xml.at('LastModified') do |node|
          data.last_modified = Time.parse(node.text) if node.text
        end
        xml.at('ETag') do |node|
          data.e_tag = (node.text || '')
        end
        xml.at('Size') do |node|
          data.member_size = node.text&.to_i
        end
        xml.at('ChecksumCRC32') do |node|
          data.checksum_crc32 = (node.text || '')
        end
        xml.at('ChecksumCRC32C') do |node|
          data.checksum_crc32_c = (node.text || '')
        end
        xml.at('ChecksumSHA1') do |node|
          data.checksum_sha1 = (node.text || '')
        end
        xml.at('ChecksumSHA256') do |node|
          data.checksum_sha256 = (node.text || '')
        end
        return data
      end
    end

    class PartitionedPrefix
      def self.parse(xml)
        data = Types::PartitionedPrefix.new
        xml.at('PartitionDateSource') do |node|
          data.partition_date_source = (node.text || '')
        end
        return data
      end
    end

    class Parts
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Part.parse(node)
        end
        data
      end
    end

    class PartsList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << ObjectPart.parse(node)
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

    class Progress
      def self.parse(xml)
        data = Types::Progress.new
        xml.at('BytesScanned') do |node|
          data.bytes_scanned = node.text&.to_i
        end
        xml.at('BytesProcessed') do |node|
          data.bytes_processed = node.text&.to_i
        end
        xml.at('BytesReturned') do |node|
          data.bytes_returned = node.text&.to_i
        end
        return data
      end
    end

    class ProgressEvent
      def self.parse(xml)
        data = Types::ProgressEvent.new
        xml.at('Details') do |node|
          data.details = Progress.parse(node)
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

    class PutBucketAccelerateConfiguration
      def self.parse(http_resp)
        data = Types::PutBucketAccelerateConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    class PutBucketAcl
      def self.parse(http_resp)
        data = Types::PutBucketAclOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    class PutBucketAnalyticsConfiguration
      def self.parse(http_resp)
        data = Types::PutBucketAnalyticsConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    class PutBucketCors
      def self.parse(http_resp)
        data = Types::PutBucketCorsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    class PutBucketEncryption
      def self.parse(http_resp)
        data = Types::PutBucketEncryptionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    class PutBucketIntelligentTieringConfiguration
      def self.parse(http_resp)
        data = Types::PutBucketIntelligentTieringConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    class PutBucketInventoryConfiguration
      def self.parse(http_resp)
        data = Types::PutBucketInventoryConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    class PutBucketLifecycleConfiguration
      def self.parse(http_resp)
        data = Types::PutBucketLifecycleConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    class PutBucketLogging
      def self.parse(http_resp)
        data = Types::PutBucketLoggingOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    class PutBucketMetricsConfiguration
      def self.parse(http_resp)
        data = Types::PutBucketMetricsConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    class PutBucketNotificationConfiguration
      def self.parse(http_resp)
        data = Types::PutBucketNotificationConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    class PutBucketOwnershipControls
      def self.parse(http_resp)
        data = Types::PutBucketOwnershipControlsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    class PutBucketPolicy
      def self.parse(http_resp)
        data = Types::PutBucketPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    class PutBucketReplication
      def self.parse(http_resp)
        data = Types::PutBucketReplicationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    class PutBucketRequestPayment
      def self.parse(http_resp)
        data = Types::PutBucketRequestPaymentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    class PutBucketTagging
      def self.parse(http_resp)
        data = Types::PutBucketTaggingOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    class PutBucketVersioning
      def self.parse(http_resp)
        data = Types::PutBucketVersioningOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    class PutBucketWebsite
      def self.parse(http_resp)
        data = Types::PutBucketWebsiteOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    class PutObject
      def self.parse(http_resp)
        data = Types::PutObjectOutput.new
        data.expiration = http_resp.headers['x-amz-expiration']
        data.e_tag = http_resp.headers['ETag']
        data.checksum_crc32 = http_resp.headers['x-amz-checksum-crc32']
        data.checksum_crc32_c = http_resp.headers['x-amz-checksum-crc32c']
        data.checksum_sha1 = http_resp.headers['x-amz-checksum-sha1']
        data.checksum_sha256 = http_resp.headers['x-amz-checksum-sha256']
        data.server_side_encryption = http_resp.headers['x-amz-server-side-encryption']
        data.version_id = http_resp.headers['x-amz-version-id']
        data.sse_customer_algorithm = http_resp.headers['x-amz-server-side-encryption-customer-algorithm']
        data.sse_customer_key_md5 = http_resp.headers['x-amz-server-side-encryption-customer-key-MD5']
        data.ssekms_key_id = http_resp.headers['x-amz-server-side-encryption-aws-kms-key-id']
        data.ssekms_encryption_context = http_resp.headers['x-amz-server-side-encryption-context']
        data.bucket_key_enabled = http_resp.headers['x-amz-server-side-encryption-bucket-key-enabled'] == 'true' unless http_resp.headers['x-amz-server-side-encryption-bucket-key-enabled'].nil?
        data.request_charged = http_resp.headers['x-amz-request-charged']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    class PutObjectAcl
      def self.parse(http_resp)
        data = Types::PutObjectAclOutput.new
        data.request_charged = http_resp.headers['x-amz-request-charged']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    class PutObjectLegalHold
      def self.parse(http_resp)
        data = Types::PutObjectLegalHoldOutput.new
        data.request_charged = http_resp.headers['x-amz-request-charged']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    class PutObjectLockConfiguration
      def self.parse(http_resp)
        data = Types::PutObjectLockConfigurationOutput.new
        data.request_charged = http_resp.headers['x-amz-request-charged']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    class PutObjectRetention
      def self.parse(http_resp)
        data = Types::PutObjectRetentionOutput.new
        data.request_charged = http_resp.headers['x-amz-request-charged']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    class PutObjectTagging
      def self.parse(http_resp)
        data = Types::PutObjectTaggingOutput.new
        data.version_id = http_resp.headers['x-amz-version-id']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    class PutPublicAccessBlock
      def self.parse(http_resp)
        data = Types::PutPublicAccessBlockOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    class QueueConfiguration
      def self.parse(xml)
        data = Types::QueueConfiguration.new
        xml.at('Id') do |node|
          data.id = (node.text || '')
        end
        xml.at('Queue') do |node|
          data.queue_arn = (node.text || '')
        end
        xml.children('Event') do |children|
          data.events = EventList.parse(children)
        end
        xml.at('Filter') do |node|
          data.member_filter = NotificationConfigurationFilter.parse(node)
        end
        return data
      end
    end

    class QueueConfigurationList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << QueueConfiguration.parse(node)
        end
        data
      end
    end

    class RecordsEvent
      def self.parse(xml)
        data = Types::RecordsEvent.new
        xml.at('Payload') do |node|
          data.payload = ((::Base64::decode64(node.text) unless node.text.nil?) || '')
        end
        return data
      end
    end

    class Redirect
      def self.parse(xml)
        data = Types::Redirect.new
        xml.at('HostName') do |node|
          data.host_name = (node.text || '')
        end
        xml.at('HttpRedirectCode') do |node|
          data.http_redirect_code = (node.text || '')
        end
        xml.at('Protocol') do |node|
          data.protocol = (node.text || '')
        end
        xml.at('ReplaceKeyPrefixWith') do |node|
          data.replace_key_prefix_with = (node.text || '')
        end
        xml.at('ReplaceKeyWith') do |node|
          data.replace_key_with = (node.text || '')
        end
        return data
      end
    end

    class RedirectAllRequestsTo
      def self.parse(xml)
        data = Types::RedirectAllRequestsTo.new
        xml.at('HostName') do |node|
          data.host_name = (node.text || '')
        end
        xml.at('Protocol') do |node|
          data.protocol = (node.text || '')
        end
        return data
      end
    end

    class ReplicaModifications
      def self.parse(xml)
        data = Types::ReplicaModifications.new
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        return data
      end
    end

    class ReplicationConfiguration
      def self.parse(xml)
        data = Types::ReplicationConfiguration.new
        xml.at('Role') do |node|
          data.role = (node.text || '')
        end
        xml.children('Rule') do |children|
          data.rules = ReplicationRules.parse(children)
        end
        return data
      end
    end

    class ReplicationRule
      def self.parse(xml)
        data = Types::ReplicationRule.new
        xml.at('ID') do |node|
          data.id = (node.text || '')
        end
        xml.at('Priority') do |node|
          data.priority = node.text&.to_i
        end
        xml.at('Prefix') do |node|
          data.prefix = (node.text || '')
        end
        xml.at('Filter') do |node|
          data.member_filter = ReplicationRuleFilter.parse(node)
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('SourceSelectionCriteria') do |node|
          data.source_selection_criteria = SourceSelectionCriteria.parse(node)
        end
        xml.at('ExistingObjectReplication') do |node|
          data.existing_object_replication = ExistingObjectReplication.parse(node)
        end
        xml.at('Destination') do |node|
          data.destination = Destination.parse(node)
        end
        xml.at('DeleteMarkerReplication') do |node|
          data.delete_marker_replication = DeleteMarkerReplication.parse(node)
        end
        return data
      end
    end

    class ReplicationRuleAndOperator
      def self.parse(xml)
        data = Types::ReplicationRuleAndOperator.new
        xml.at('Prefix') do |node|
          data.prefix = (node.text || '')
        end
        xml.children('Tag') do |children|
          data.tags = TagSet.parse(children)
        end
        return data
      end
    end

    class ReplicationRuleFilter
      def self.parse(xml)
        value = xml.children.first
        key = value.name
        case key
        when 'Prefix'
          node = value
          value = (node.text || '')
          Types::ReplicationRuleFilter::Prefix.new(value) if value
        when 'Tag'
          node = value
          value = Tag.parse(node)
          Types::ReplicationRuleFilter::Tag.new(value) if value
        when 'And'
          node = value
          value = ReplicationRuleAndOperator.parse(node)
          Types::ReplicationRuleFilter::And.new(value) if value
        else
          Types::ReplicationRuleFilter::Unknown.new(name: key, value: value)
        end
      end
    end

    class ReplicationRules
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << ReplicationRule.parse(node)
        end
        data
      end
    end

    class ReplicationTime
      def self.parse(xml)
        data = Types::ReplicationTime.new
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('Time') do |node|
          data.time = ReplicationTimeValue.parse(node)
        end
        return data
      end
    end

    class ReplicationTimeValue
      def self.parse(xml)
        data = Types::ReplicationTimeValue.new
        xml.at('Minutes') do |node|
          data.minutes = node.text&.to_i
        end
        return data
      end
    end

    class RestoreObject
      def self.parse(http_resp)
        data = Types::RestoreObjectOutput.new
        data.request_charged = http_resp.headers['x-amz-request-charged']
        data.restore_output_path = http_resp.headers['x-amz-restore-output-path']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    class RestoreStatus
      def self.parse(xml)
        data = Types::RestoreStatus.new
        xml.at('IsRestoreInProgress') do |node|
          data.is_restore_in_progress = (node.text == 'true')
        end
        xml.at('RestoreExpiryDate') do |node|
          data.restore_expiry_date = Time.parse(node.text) if node.text
        end
        return data
      end
    end

    class RoutingRule
      def self.parse(xml)
        data = Types::RoutingRule.new
        xml.at('Condition') do |node|
          data.condition = Condition.parse(node)
        end
        xml.at('Redirect') do |node|
          data.redirect = Redirect.parse(node)
        end
        return data
      end
    end

    class RoutingRules
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << RoutingRule.parse(node)
        end
        data
      end
    end

    class S3KeyFilter
      def self.parse(xml)
        data = Types::S3KeyFilter.new
        xml.children('FilterRule') do |children|
          data.filter_rules = FilterRuleList.parse(children)
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

    class SelectObjectContent
      def self.parse(http_resp)
        data = Types::SelectObjectContentOutput.new
        data.payload = http_resp.body
        data
      end
    end

    class ServerSideEncryptionByDefault
      def self.parse(xml)
        data = Types::ServerSideEncryptionByDefault.new
        xml.at('SSEAlgorithm') do |node|
          data.sse_algorithm = (node.text || '')
        end
        xml.at('KMSMasterKeyID') do |node|
          data.kms_master_key_id = (node.text || '')
        end
        return data
      end
    end

    class ServerSideEncryptionConfiguration
      def self.parse(xml)
        data = Types::ServerSideEncryptionConfiguration.new
        xml.children('Rule') do |children|
          data.rules = ServerSideEncryptionRules.parse(children)
        end
        return data
      end
    end

    class ServerSideEncryptionRule
      def self.parse(xml)
        data = Types::ServerSideEncryptionRule.new
        xml.at('ApplyServerSideEncryptionByDefault') do |node|
          data.apply_server_side_encryption_by_default = ServerSideEncryptionByDefault.parse(node)
        end
        xml.at('BucketKeyEnabled') do |node|
          data.bucket_key_enabled = (node.text == 'true')
        end
        return data
      end
    end

    class ServerSideEncryptionRules
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << ServerSideEncryptionRule.parse(node)
        end
        data
      end
    end

    class SessionCredentials
      def self.parse(xml)
        data = Types::SessionCredentials.new
        xml.at('AccessKeyId') do |node|
          data.access_key_id = (node.text || '')
        end
        xml.at('SecretAccessKey') do |node|
          data.secret_access_key = (node.text || '')
        end
        xml.at('SessionToken') do |node|
          data.session_token = (node.text || '')
        end
        xml.at('Expiration') do |node|
          data.expiration = Time.parse(node.text) if node.text
        end
        return data
      end
    end

    class SimplePrefix
      def self.parse(xml)
        data = Types::SimplePrefix.new
        return data
      end
    end

    class SourceSelectionCriteria
      def self.parse(xml)
        data = Types::SourceSelectionCriteria.new
        xml.at('SseKmsEncryptedObjects') do |node|
          data.sse_kms_encrypted_objects = SseKmsEncryptedObjects.parse(node)
        end
        xml.at('ReplicaModifications') do |node|
          data.replica_modifications = ReplicaModifications.parse(node)
        end
        return data
      end
    end

    class SseKmsEncryptedObjects
      def self.parse(xml)
        data = Types::SseKmsEncryptedObjects.new
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        return data
      end
    end

    class Stats
      def self.parse(xml)
        data = Types::Stats.new
        xml.at('BytesScanned') do |node|
          data.bytes_scanned = node.text&.to_i
        end
        xml.at('BytesProcessed') do |node|
          data.bytes_processed = node.text&.to_i
        end
        xml.at('BytesReturned') do |node|
          data.bytes_returned = node.text&.to_i
        end
        return data
      end
    end

    class StatsEvent
      def self.parse(xml)
        data = Types::StatsEvent.new
        xml.at('Details') do |node|
          data.details = Stats.parse(node)
        end
        return data
      end
    end

    class StorageClassAnalysis
      def self.parse(xml)
        data = Types::StorageClassAnalysis.new
        xml.at('DataExport') do |node|
          data.data_export = StorageClassAnalysisDataExport.parse(node)
        end
        return data
      end
    end

    class StorageClassAnalysisDataExport
      def self.parse(xml)
        data = Types::StorageClassAnalysisDataExport.new
        xml.at('OutputSchemaVersion') do |node|
          data.output_schema_version = (node.text || '')
        end
        xml.at('Destination') do |node|
          data.destination = AnalyticsExportDestination.parse(node)
        end
        return data
      end
    end

    class Tag
      def self.parse(xml)
        data = Types::Tag.new
        xml.at('Key') do |node|
          data.key = (node.text || '')
        end
        xml.at('Value') do |node|
          data.value = (node.text || '')
        end
        return data
      end
    end

    class TagSet
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Tag.parse(node)
        end
        data
      end
    end

    class TargetGrant
      def self.parse(xml)
        data = Types::TargetGrant.new
        xml.at('Grantee') do |node|
          data.grantee = Grantee.parse(node)
        end
        xml.at('Permission') do |node|
          data.permission = (node.text || '')
        end
        return data
      end
    end

    class TargetGrants
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << TargetGrant.parse(node)
        end
        data
      end
    end

    class TargetObjectKeyFormat
      def self.parse(xml)
        data = Types::TargetObjectKeyFormat.new
        xml.at('SimplePrefix') do |node|
          data.simple_prefix = SimplePrefix.parse(node)
        end
        xml.at('PartitionedPrefix') do |node|
          data.partitioned_prefix = PartitionedPrefix.parse(node)
        end
        return data
      end
    end

    class Tiering
      def self.parse(xml)
        data = Types::Tiering.new
        xml.at('Days') do |node|
          data.days = node.text&.to_i
        end
        xml.at('AccessTier') do |node|
          data.access_tier = (node.text || '')
        end
        return data
      end
    end

    class TieringList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Tiering.parse(node)
        end
        data
      end
    end

    class TopicConfiguration
      def self.parse(xml)
        data = Types::TopicConfiguration.new
        xml.at('Id') do |node|
          data.id = (node.text || '')
        end
        xml.at('Topic') do |node|
          data.topic_arn = (node.text || '')
        end
        xml.children('Event') do |children|
          data.events = EventList.parse(children)
        end
        xml.at('Filter') do |node|
          data.member_filter = NotificationConfigurationFilter.parse(node)
        end
        return data
      end
    end

    class TopicConfigurationList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << TopicConfiguration.parse(node)
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

    class TransitionList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Transition.parse(node)
        end
        data
      end
    end

    class UploadPart
      def self.parse(http_resp)
        data = Types::UploadPartOutput.new
        data.server_side_encryption = http_resp.headers['x-amz-server-side-encryption']
        data.e_tag = http_resp.headers['ETag']
        data.checksum_crc32 = http_resp.headers['x-amz-checksum-crc32']
        data.checksum_crc32_c = http_resp.headers['x-amz-checksum-crc32c']
        data.checksum_sha1 = http_resp.headers['x-amz-checksum-sha1']
        data.checksum_sha256 = http_resp.headers['x-amz-checksum-sha256']
        data.sse_customer_algorithm = http_resp.headers['x-amz-server-side-encryption-customer-algorithm']
        data.sse_customer_key_md5 = http_resp.headers['x-amz-server-side-encryption-customer-key-MD5']
        data.ssekms_key_id = http_resp.headers['x-amz-server-side-encryption-aws-kms-key-id']
        data.bucket_key_enabled = http_resp.headers['x-amz-server-side-encryption-bucket-key-enabled'] == 'true' unless http_resp.headers['x-amz-server-side-encryption-bucket-key-enabled'].nil?
        data.request_charged = http_resp.headers['x-amz-request-charged']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    class UploadPartCopy
      def self.parse(http_resp)
        data = Types::UploadPartCopyOutput.new
        data.copy_source_version_id = http_resp.headers['x-amz-copy-source-version-id']
        data.server_side_encryption = http_resp.headers['x-amz-server-side-encryption']
        data.sse_customer_algorithm = http_resp.headers['x-amz-server-side-encryption-customer-algorithm']
        data.sse_customer_key_md5 = http_resp.headers['x-amz-server-side-encryption-customer-key-MD5']
        data.ssekms_key_id = http_resp.headers['x-amz-server-side-encryption-aws-kms-key-id']
        data.bucket_key_enabled = http_resp.headers['x-amz-server-side-encryption-bucket-key-enabled'] == 'true' unless http_resp.headers['x-amz-server-side-encryption-bucket-key-enabled'].nil?
        data.request_charged = http_resp.headers['x-amz-request-charged']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.copy_part_result = CopyPartResult.parse(xml)
        data
      end
    end

    class WriteGetObjectResponse
      def self.parse(http_resp)
        data = Types::WriteGetObjectResponseOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    module EventStream

      class ContinuationEvent
        def self.parse(message)
          data = Types::ContinuationEvent.new
          payload = message.payload.read
          return data if payload.empty?
          xml = Hearth::XML.parse(payload)
          data
        end
      end

      class EndEvent
        def self.parse(message)
          data = Types::EndEvent.new
          payload = message.payload.read
          return data if payload.empty?
          xml = Hearth::XML.parse(payload)
          data
        end
      end

      class ProgressEvent
        def self.parse(message)
          data = Types::ProgressEvent.new
          payload = message.payload.read
          return data if payload.empty?
          xml = Hearth::XML.parse(payload)
          xml.at('Details') do |node|
            data.details = Progress.parse(node)
          end
          data
        end
      end

      class RecordsEvent
        def self.parse(message)
          data = Types::RecordsEvent.new
          payload = message.payload.read
          return data if payload.empty?
          xml = Hearth::XML.parse(payload)
          xml.at('Payload') do |node|
            data.payload = ((::Base64::decode64(node.text) unless node.text.nil?) || '')
          end
          data
        end
      end

      class StatsEvent
        def self.parse(message)
          data = Types::StatsEvent.new
          payload = message.payload.read
          return data if payload.empty?
          xml = Hearth::XML.parse(payload)
          xml.at('Details') do |node|
            data.details = Stats.parse(node)
          end
          data
        end
      end
    end
  end
end
