# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

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

    # Operation Parser for AbortMultipartUpload
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
          data.tags = Types::TagSet.parse(children)
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
          data.filter = Types::AnalyticsFilter.parse(node)
        end
        xml.at('StorageClassAnalysis') do |node|
          data.storage_class_analysis = Types::StorageClassAnalysis.parse(node)
        end
        return data
      end
    end

    class AnalyticsConfigurationList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Types::AnalyticsConfiguration.parse(node)
        end
        data
      end
    end

    class AnalyticsExportDestination
      def self.parse(xml)
        data = Types::AnalyticsExportDestination.new
        xml.at('S3BucketDestination') do |node|
          data.s3_bucket_destination = Types::AnalyticsS3BucketDestination.parse(node)
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
          value = Types::Tag.parse(node)
          Types::AnalyticsFilter::Tag.new(value) if value
        when 'And'
          node = value
          value = Types::AnalyticsAndOperator.parse(node)
          Types::AnalyticsFilter::And.new(value) if value
        else
          Types::AnalyticsFilter::Unknown.new({name: key, value: value})
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
          data << Types::Bucket.parse(node)
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
          data.allowed_headers = Types::AllowedHeaders.parse(children)
        end
        xml.children('AllowedMethod') do |children|
          data.allowed_methods = Types::AllowedMethods.parse(children)
        end
        xml.children('AllowedOrigin') do |children|
          data.allowed_origins = Types::AllowedOrigins.parse(children)
        end
        xml.children('ExposeHeader') do |children|
          data.expose_headers = Types::ExposeHeaders.parse(children)
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
          data << Types::CORSRule.parse(node)
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
          data << Types::CommonPrefix.parse(node)
        end
        data
      end
    end

    # Operation Parser for CompleteMultipartUpload
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

    # Operation Parser for CopyObject
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
        data.copy_object_result = Types::CopyObjectResult.parse(xml)
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

    # Operation Parser for CreateBucket
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

    # Operation Parser for CreateMultipartUpload
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

    # Operation Parser for DeleteBucketAnalyticsConfiguration
    class DeleteBucketAnalyticsConfiguration
      def self.parse(http_resp)
        data = Types::DeleteBucketAnalyticsConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for DeleteBucketCors
    class DeleteBucketCors
      def self.parse(http_resp)
        data = Types::DeleteBucketCorsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for DeleteBucketEncryption
    class DeleteBucketEncryption
      def self.parse(http_resp)
        data = Types::DeleteBucketEncryptionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for DeleteBucketIntelligentTieringConfiguration
    class DeleteBucketIntelligentTieringConfiguration
      def self.parse(http_resp)
        data = Types::DeleteBucketIntelligentTieringConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for DeleteBucketInventoryConfiguration
    class DeleteBucketInventoryConfiguration
      def self.parse(http_resp)
        data = Types::DeleteBucketInventoryConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for DeleteBucketLifecycle
    class DeleteBucketLifecycle
      def self.parse(http_resp)
        data = Types::DeleteBucketLifecycleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for DeleteBucketMetricsConfiguration
    class DeleteBucketMetricsConfiguration
      def self.parse(http_resp)
        data = Types::DeleteBucketMetricsConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for DeleteBucketOwnershipControls
    class DeleteBucketOwnershipControls
      def self.parse(http_resp)
        data = Types::DeleteBucketOwnershipControlsOutput.new
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

    # Operation Parser for DeleteBucketReplication
    class DeleteBucketReplication
      def self.parse(http_resp)
        data = Types::DeleteBucketReplicationOutput.new
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

    # Operation Parser for DeleteBucketWebsite
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
          data.owner = Types::Owner.parse(node)
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
          data << Types::DeleteMarkerEntry.parse(node)
        end
        data
      end
    end

    # Operation Parser for DeleteObject
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

    # Operation Parser for DeleteObjectTagging
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

    # Operation Parser for DeleteObjects
    class DeleteObjects
      def self.parse(http_resp)
        data = Types::DeleteObjectsOutput.new
        data.request_charged = http_resp.headers['x-amz-request-charged']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.children('Deleted') do |children|
          data.deleted = Types::DeletedObjects.parse(children)
        end
        xml.children('Error') do |children|
          data.errors = Types::Errors.parse(children)
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
          data << Types::DeletedObject.parse(node)
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
          data.access_control_translation = Types::AccessControlTranslation.parse(node)
        end
        xml.at('EncryptionConfiguration') do |node|
          data.encryption_configuration = Types::EncryptionConfiguration.parse(node)
        end
        xml.at('ReplicationTime') do |node|
          data.replication_time = Types::ReplicationTime.parse(node)
        end
        xml.at('Metrics') do |node|
          data.metrics = Types::Metrics.parse(node)
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
          data << Types::Error.parse(node)
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
          data << Types::FilterRule.parse(node)
        end
        data
      end
    end

    # Operation Parser for GetBucketAccelerateConfiguration
    class GetBucketAccelerateConfiguration
      def self.parse(http_resp)
        data = Types::GetBucketAccelerateConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for GetBucketAcl
    class GetBucketAcl
      def self.parse(http_resp)
        data = Types::GetBucketAclOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('Owner') do |node|
          data.owner = Types::Owner.parse(node)
        end
        xml.at('AccessControlList') do |node|
          children = node.children('Grant')
          data.grants = Types::Grants.parse(children)
        end
        data
      end
    end

    # Operation Parser for GetBucketAnalyticsConfiguration
    class GetBucketAnalyticsConfiguration
      def self.parse(http_resp)
        data = Types::GetBucketAnalyticsConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.analytics_configuration = Types::AnalyticsConfiguration.parse(xml)
        data
      end
    end

    # Operation Parser for GetBucketCors
    class GetBucketCors
      def self.parse(http_resp)
        data = Types::GetBucketCorsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.children('CORSRule') do |children|
          data.cors_rules = Types::CORSRules.parse(children)
        end
        data
      end
    end

    # Operation Parser for GetBucketEncryption
    class GetBucketEncryption
      def self.parse(http_resp)
        data = Types::GetBucketEncryptionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.server_side_encryption_configuration = Types::ServerSideEncryptionConfiguration.parse(xml)
        data
      end
    end

    # Operation Parser for GetBucketIntelligentTieringConfiguration
    class GetBucketIntelligentTieringConfiguration
      def self.parse(http_resp)
        data = Types::GetBucketIntelligentTieringConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.intelligent_tiering_configuration = Types::IntelligentTieringConfiguration.parse(xml)
        data
      end
    end

    # Operation Parser for GetBucketInventoryConfiguration
    class GetBucketInventoryConfiguration
      def self.parse(http_resp)
        data = Types::GetBucketInventoryConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.inventory_configuration = Types::InventoryConfiguration.parse(xml)
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
        xml.children('Rule') do |children|
          data.rules = Types::LifecycleRules.parse(children)
        end
        data
      end
    end

    # Operation Parser for GetBucketLocation
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

    # Operation Parser for GetBucketLogging
    class GetBucketLogging
      def self.parse(http_resp)
        data = Types::GetBucketLoggingOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('LoggingEnabled') do |node|
          data.logging_enabled = Types::LoggingEnabled.parse(node)
        end
        data
      end
    end

    # Operation Parser for GetBucketMetricsConfiguration
    class GetBucketMetricsConfiguration
      def self.parse(http_resp)
        data = Types::GetBucketMetricsConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.metrics_configuration = Types::MetricsConfiguration.parse(xml)
        data
      end
    end

    # Operation Parser for GetBucketNotificationConfiguration
    class GetBucketNotificationConfiguration
      def self.parse(http_resp)
        data = Types::GetBucketNotificationConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.children('TopicConfiguration') do |children|
          data.topic_configurations = Types::TopicConfigurationList.parse(children)
        end
        xml.children('QueueConfiguration') do |children|
          data.queue_configurations = Types::QueueConfigurationList.parse(children)
        end
        xml.children('CloudFunctionConfiguration') do |children|
          data.lambda_function_configurations = Types::LambdaFunctionConfigurationList.parse(children)
        end
        xml.at('EventBridgeConfiguration') do |node|
          data.event_bridge_configuration = Types::EventBridgeConfiguration.parse(node)
        end
        data
      end
    end

    # Operation Parser for GetBucketOwnershipControls
    class GetBucketOwnershipControls
      def self.parse(http_resp)
        data = Types::GetBucketOwnershipControlsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.ownership_controls = Types::OwnershipControls.parse(xml)
        data
      end
    end

    # Operation Parser for GetBucketPolicy
    class GetBucketPolicy
      def self.parse(http_resp)
        data = Types::GetBucketPolicyOutput.new
        payload = http_resp.body.read
        data.policy = payload unless payload.empty?
        data
      end
    end

    # Operation Parser for GetBucketPolicyStatus
    class GetBucketPolicyStatus
      def self.parse(http_resp)
        data = Types::GetBucketPolicyStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.policy_status = Types::PolicyStatus.parse(xml)
        data
      end
    end

    # Operation Parser for GetBucketReplication
    class GetBucketReplication
      def self.parse(http_resp)
        data = Types::GetBucketReplicationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.replication_configuration = Types::ReplicationConfiguration.parse(xml)
        data
      end
    end

    # Operation Parser for GetBucketRequestPayment
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

    # Operation Parser for GetBucketTagging
    class GetBucketTagging
      def self.parse(http_resp)
        data = Types::GetBucketTaggingOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('TagSet') do |node|
          children = node.children('Tag')
          data.tag_set = Types::TagSet.parse(children)
        end
        data
      end
    end

    # Operation Parser for GetBucketVersioning
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

    # Operation Parser for GetBucketWebsite
    class GetBucketWebsite
      def self.parse(http_resp)
        data = Types::GetBucketWebsiteOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('RedirectAllRequestsTo') do |node|
          data.redirect_all_requests_to = Types::RedirectAllRequestsTo.parse(node)
        end
        xml.at('IndexDocument') do |node|
          data.index_document = Types::IndexDocument.parse(node)
        end
        xml.at('ErrorDocument') do |node|
          data.error_document = Types::ErrorDocument.parse(node)
        end
        xml.at('RoutingRules') do |node|
          children = node.children('RoutingRule')
          data.routing_rules = Types::RoutingRules.parse(children)
        end
        data
      end
    end

    # Operation Parser for GetObject
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

    # Operation Parser for GetObjectAcl
    class GetObjectAcl
      def self.parse(http_resp)
        data = Types::GetObjectAclOutput.new
        data.request_charged = http_resp.headers['x-amz-request-charged']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('Owner') do |node|
          data.owner = Types::Owner.parse(node)
        end
        xml.at('AccessControlList') do |node|
          children = node.children('Grant')
          data.grants = Types::Grants.parse(children)
        end
        data
      end
    end

    # Operation Parser for GetObjectAttributes
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
          data.checksum = Types::Checksum.parse(node)
        end
        xml.at('ObjectParts') do |node|
          data.object_parts = Types::GetObjectAttributesParts.parse(node)
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
          data.parts = Types::PartsList.parse(children)
        end
        return data
      end
    end

    # Operation Parser for GetObjectLegalHold
    class GetObjectLegalHold
      def self.parse(http_resp)
        data = Types::GetObjectLegalHoldOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.legal_hold = Types::ObjectLockLegalHold.parse(xml)
        data
      end
    end

    # Operation Parser for GetObjectLockConfiguration
    class GetObjectLockConfiguration
      def self.parse(http_resp)
        data = Types::GetObjectLockConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.object_lock_configuration = Types::ObjectLockConfiguration.parse(xml)
        data
      end
    end

    # Operation Parser for GetObjectRetention
    class GetObjectRetention
      def self.parse(http_resp)
        data = Types::GetObjectRetentionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data.retention = Types::ObjectLockRetention.parse(xml)
        data
      end
    end

    # Operation Parser for GetObjectTagging
    class GetObjectTagging
      def self.parse(http_resp)
        data = Types::GetObjectTaggingOutput.new
        data.version_id = http_resp.headers['x-amz-version-id']
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('TagSet') do |node|
          children = node.children('Tag')
          data.tag_set = Types::TagSet.parse(children)
        end
        data
      end
    end

    # Operation Parser for GetObjectTorrent
    class GetObjectTorrent
      def self.parse(http_resp)
        data = Types::GetObjectTorrentOutput.new
        data.request_charged = http_resp.headers['x-amz-request-charged']
        data.body = http_resp.body
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
        data.public_access_block_configuration = Types::PublicAccessBlockConfiguration.parse(xml)
        data
      end
    end

    class Grant
      def self.parse(xml)
        data = Types::Grant.new
        xml.at('Grantee') do |node|
          data.grantee = Types::Grantee.parse(node)
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
          data << Types::Grant.parse(node)
        end
        data
      end
    end

    # Operation Parser for HeadBucket
    class HeadBucket
      def self.parse(http_resp)
        data = Types::HeadBucketOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for HeadObject
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
          data.tags = Types::TagSet.parse(children)
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
          data.filter = Types::IntelligentTieringFilter.parse(node)
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.children('Tiering') do |children|
          data.tierings = Types::TieringList.parse(children)
        end
        return data
      end
    end

    class IntelligentTieringConfigurationList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Types::IntelligentTieringConfiguration.parse(node)
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
          data.tag = Types::Tag.parse(node)
        end
        xml.at('And') do |node|
          data.and = Types::IntelligentTieringAndOperator.parse(node)
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
          data.destination = Types::InventoryDestination.parse(node)
        end
        xml.at('IsEnabled') do |node|
          data.is_enabled = (node.text == 'true')
        end
        xml.at('Filter') do |node|
          data.filter = Types::InventoryFilter.parse(node)
        end
        xml.at('Id') do |node|
          data.id = (node.text || '')
        end
        xml.at('IncludedObjectVersions') do |node|
          data.included_object_versions = (node.text || '')
        end
        xml.at('OptionalFields') do |node|
          children = node.children('Field')
          data.optional_fields = Types::InventoryOptionalFields.parse(children)
        end
        xml.at('Schedule') do |node|
          data.schedule = Types::InventorySchedule.parse(node)
        end
        return data
      end
    end

    class InventoryConfigurationList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Types::InventoryConfiguration.parse(node)
        end
        data
      end
    end

    class InventoryDestination
      def self.parse(xml)
        data = Types::InventoryDestination.new
        xml.at('S3BucketDestination') do |node|
          data.s3_bucket_destination = Types::InventoryS3BucketDestination.parse(node)
        end
        return data
      end
    end

    class InventoryEncryption
      def self.parse(xml)
        data = Types::InventoryEncryption.new
        xml.at('SSE-S3') do |node|
          data.sses3 = Types::SSES3.parse(node)
        end
        xml.at('SSE-KMS') do |node|
          data.ssekms = Types::SSEKMS.parse(node)
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
          data.encryption = Types::InventoryEncryption.parse(node)
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
          data.events = Types::EventList.parse(children)
        end
        xml.at('Filter') do |node|
          data.filter = Types::NotificationConfigurationFilter.parse(node)
        end
        return data
      end
    end

    class LambdaFunctionConfigurationList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Types::LambdaFunctionConfiguration.parse(node)
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
          data.expiration = Types::LifecycleExpiration.parse(node)
        end
        xml.at('ID') do |node|
          data.id = (node.text || '')
        end
        xml.at('Prefix') do |node|
          data.prefix = (node.text || '')
        end
        xml.at('Filter') do |node|
          data.filter = Types::LifecycleRuleFilter.parse(node)
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.children('Transition') do |children|
          data.transitions = Types::TransitionList.parse(children)
        end
        xml.children('NoncurrentVersionTransition') do |children|
          data.noncurrent_version_transitions = Types::NoncurrentVersionTransitionList.parse(children)
        end
        xml.at('NoncurrentVersionExpiration') do |node|
          data.noncurrent_version_expiration = Types::NoncurrentVersionExpiration.parse(node)
        end
        xml.at('AbortIncompleteMultipartUpload') do |node|
          data.abort_incomplete_multipart_upload = Types::AbortIncompleteMultipartUpload.parse(node)
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
          data.tags = Types::TagSet.parse(children)
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
          value = Types::Tag.parse(node)
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
          value = Types::LifecycleRuleAndOperator.parse(node)
          Types::LifecycleRuleFilter::And.new(value) if value
        else
          Types::LifecycleRuleFilter::Unknown.new({name: key, value: value})
        end
      end
    end

    class LifecycleRules
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Types::LifecycleRule.parse(node)
        end
        data
      end
    end

    # Operation Parser for ListBucketAnalyticsConfigurations
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
          data.analytics_configuration_list = Types::AnalyticsConfigurationList.parse(children)
        end
        data
      end
    end

    # Operation Parser for ListBucketIntelligentTieringConfigurations
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
          data.intelligent_tiering_configuration_list = Types::IntelligentTieringConfigurationList.parse(children)
        end
        data
      end
    end

    # Operation Parser for ListBucketInventoryConfigurations
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
          data.inventory_configuration_list = Types::InventoryConfigurationList.parse(children)
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

    # Operation Parser for ListBucketMetricsConfigurations
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
          data.metrics_configuration_list = Types::MetricsConfigurationList.parse(children)
        end
        data
      end
    end

    # Operation Parser for ListBuckets
    class ListBuckets
      def self.parse(http_resp)
        data = Types::ListBucketsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('Buckets') do |node|
          children = node.children('Bucket')
          data.buckets = Types::Buckets.parse(children)
        end
        xml.at('Owner') do |node|
          data.owner = Types::Owner.parse(node)
        end
        data
      end
    end

    # Operation Parser for ListMultipartUploads
    class ListMultipartUploads
      def self.parse(http_resp)
        data = Types::ListMultipartUploadsOutput.new
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
          data.uploads = Types::MultipartUploadList.parse(children)
        end
        xml.children('CommonPrefixes') do |children|
          data.common_prefixes = Types::CommonPrefixList.parse(children)
        end
        xml.at('EncodingType') do |node|
          data.encoding_type = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ListObjectVersions
    class ListObjectVersions
      def self.parse(http_resp)
        data = Types::ListObjectVersionsOutput.new
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
          data.versions = Types::ObjectVersionList.parse(children)
        end
        xml.children('DeleteMarker') do |children|
          data.delete_markers = Types::DeleteMarkers.parse(children)
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
          data.common_prefixes = Types::CommonPrefixList.parse(children)
        end
        xml.at('EncodingType') do |node|
          data.encoding_type = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ListObjects
    class ListObjects
      def self.parse(http_resp)
        data = Types::ListObjectsOutput.new
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
          data.contents = Types::ObjectList.parse(children)
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
          data.common_prefixes = Types::CommonPrefixList.parse(children)
        end
        xml.at('EncodingType') do |node|
          data.encoding_type = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ListObjectsV2
    class ListObjectsV2
      def self.parse(http_resp)
        data = Types::ListObjectsV2Output.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        xml.at('IsTruncated') do |node|
          data.is_truncated = (node.text == 'true')
        end
        xml.children('Contents') do |children|
          data.contents = Types::ObjectList.parse(children)
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
          data.common_prefixes = Types::CommonPrefixList.parse(children)
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

    # Operation Parser for ListParts
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
          data.parts = Types::Parts.parse(children)
        end
        xml.at('Initiator') do |node|
          data.initiator = Types::Initiator.parse(node)
        end
        xml.at('Owner') do |node|
          data.owner = Types::Owner.parse(node)
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
          data.target_grants = Types::TargetGrants.parse(children)
        end
        xml.at('TargetPrefix') do |node|
          data.target_prefix = (node.text || '')
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
          data.event_threshold = Types::ReplicationTimeValue.parse(node)
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
          data.tags = Types::TagSet.parse(children)
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
          data.filter = Types::MetricsFilter.parse(node)
        end
        return data
      end
    end

    class MetricsConfigurationList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Types::MetricsConfiguration.parse(node)
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
          value = Types::Tag.parse(node)
          Types::MetricsFilter::Tag.new(value) if value
        when 'AccessPointArn'
          node = value
          value = (node.text || '')
          Types::MetricsFilter::AccessPointArn.new(value) if value
        when 'And'
          node = value
          value = Types::MetricsAndOperator.parse(node)
          Types::MetricsFilter::And.new(value) if value
        else
          Types::MetricsFilter::Unknown.new({name: key, value: value})
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
          data.owner = Types::Owner.parse(node)
        end
        xml.at('Initiator') do |node|
          data.initiator = Types::Initiator.parse(node)
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
          data << Types::MultipartUpload.parse(node)
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
          data << Types::NoncurrentVersionTransition.parse(node)
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
          data.key = Types::S3KeyFilter.parse(node)
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
          data.checksum_algorithm = Types::ChecksumAlgorithmList.parse(children)
        end
        xml.at('Size') do |node|
          data.size = node.text&.to_i
        end
        xml.at('StorageClass') do |node|
          data.storage_class = (node.text || '')
        end
        xml.at('Owner') do |node|
          data.owner = Types::Owner.parse(node)
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
          data << Types::Object.parse(node)
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
          data.rule = Types::ObjectLockRule.parse(node)
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
          data.default_retention = Types::DefaultRetention.parse(node)
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
          data.size = node.text&.to_i
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
          data.checksum_algorithm = Types::ChecksumAlgorithmList.parse(children)
        end
        xml.at('Size') do |node|
          data.size = node.text&.to_i
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
          data.owner = Types::Owner.parse(node)
        end
        return data
      end
    end

    class ObjectVersionList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Types::ObjectVersion.parse(node)
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
          data.rules = Types::OwnershipControlsRules.parse(children)
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
          data << Types::OwnershipControlsRule.parse(node)
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
          data.size = node.text&.to_i
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

    class Parts
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Types::Part.parse(node)
        end
        data
      end
    end

    class PartsList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Types::ObjectPart.parse(node)
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

    # Operation Parser for PutBucketAccelerateConfiguration
    class PutBucketAccelerateConfiguration
      def self.parse(http_resp)
        data = Types::PutBucketAccelerateConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for PutBucketAcl
    class PutBucketAcl
      def self.parse(http_resp)
        data = Types::PutBucketAclOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for PutBucketAnalyticsConfiguration
    class PutBucketAnalyticsConfiguration
      def self.parse(http_resp)
        data = Types::PutBucketAnalyticsConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for PutBucketCors
    class PutBucketCors
      def self.parse(http_resp)
        data = Types::PutBucketCorsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for PutBucketEncryption
    class PutBucketEncryption
      def self.parse(http_resp)
        data = Types::PutBucketEncryptionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for PutBucketIntelligentTieringConfiguration
    class PutBucketIntelligentTieringConfiguration
      def self.parse(http_resp)
        data = Types::PutBucketIntelligentTieringConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for PutBucketInventoryConfiguration
    class PutBucketInventoryConfiguration
      def self.parse(http_resp)
        data = Types::PutBucketInventoryConfigurationOutput.new
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

    # Operation Parser for PutBucketLogging
    class PutBucketLogging
      def self.parse(http_resp)
        data = Types::PutBucketLoggingOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for PutBucketMetricsConfiguration
    class PutBucketMetricsConfiguration
      def self.parse(http_resp)
        data = Types::PutBucketMetricsConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for PutBucketNotificationConfiguration
    class PutBucketNotificationConfiguration
      def self.parse(http_resp)
        data = Types::PutBucketNotificationConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for PutBucketOwnershipControls
    class PutBucketOwnershipControls
      def self.parse(http_resp)
        data = Types::PutBucketOwnershipControlsOutput.new
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

    # Operation Parser for PutBucketReplication
    class PutBucketReplication
      def self.parse(http_resp)
        data = Types::PutBucketReplicationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for PutBucketRequestPayment
    class PutBucketRequestPayment
      def self.parse(http_resp)
        data = Types::PutBucketRequestPaymentOutput.new
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

    # Operation Parser for PutBucketVersioning
    class PutBucketVersioning
      def self.parse(http_resp)
        data = Types::PutBucketVersioningOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for PutBucketWebsite
    class PutBucketWebsite
      def self.parse(http_resp)
        data = Types::PutBucketWebsiteOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end

    # Operation Parser for PutObject
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

    # Operation Parser for PutObjectAcl
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

    # Operation Parser for PutObjectLegalHold
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

    # Operation Parser for PutObjectLockConfiguration
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

    # Operation Parser for PutObjectRetention
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

    # Operation Parser for PutObjectTagging
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
          data.events = Types::EventList.parse(children)
        end
        xml.at('Filter') do |node|
          data.filter = Types::NotificationConfigurationFilter.parse(node)
        end
        return data
      end
    end

    class QueueConfigurationList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Types::QueueConfiguration.parse(node)
        end
        data
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
          data.rules = Types::ReplicationRules.parse(children)
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
          data.filter = Types::ReplicationRuleFilter.parse(node)
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('SourceSelectionCriteria') do |node|
          data.source_selection_criteria = Types::SourceSelectionCriteria.parse(node)
        end
        xml.at('ExistingObjectReplication') do |node|
          data.existing_object_replication = Types::ExistingObjectReplication.parse(node)
        end
        xml.at('Destination') do |node|
          data.destination = Types::Destination.parse(node)
        end
        xml.at('DeleteMarkerReplication') do |node|
          data.delete_marker_replication = Types::DeleteMarkerReplication.parse(node)
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
          data.tags = Types::TagSet.parse(children)
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
          value = Types::Tag.parse(node)
          Types::ReplicationRuleFilter::Tag.new(value) if value
        when 'And'
          node = value
          value = Types::ReplicationRuleAndOperator.parse(node)
          Types::ReplicationRuleFilter::And.new(value) if value
        else
          Types::ReplicationRuleFilter::Unknown.new({name: key, value: value})
        end
      end
    end

    class ReplicationRules
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Types::ReplicationRule.parse(node)
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
          data.time = Types::ReplicationTimeValue.parse(node)
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

    # Operation Parser for RestoreObject
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

    class RoutingRule
      def self.parse(xml)
        data = Types::RoutingRule.new
        xml.at('Condition') do |node|
          data.condition = Types::Condition.parse(node)
        end
        xml.at('Redirect') do |node|
          data.redirect = Types::Redirect.parse(node)
        end
        return data
      end
    end

    class RoutingRules
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Types::RoutingRule.parse(node)
        end
        data
      end
    end

    class S3KeyFilter
      def self.parse(xml)
        data = Types::S3KeyFilter.new
        xml.children('FilterRule') do |children|
          data.filter_rules = Types::FilterRuleList.parse(children)
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
          data.rules = Types::ServerSideEncryptionRules.parse(children)
        end
        return data
      end
    end

    class ServerSideEncryptionRule
      def self.parse(xml)
        data = Types::ServerSideEncryptionRule.new
        xml.at('ApplyServerSideEncryptionByDefault') do |node|
          data.apply_server_side_encryption_by_default = Types::ServerSideEncryptionByDefault.parse(node)
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
          data << Types::ServerSideEncryptionRule.parse(node)
        end
        data
      end
    end

    class SourceSelectionCriteria
      def self.parse(xml)
        data = Types::SourceSelectionCriteria.new
        xml.at('SseKmsEncryptedObjects') do |node|
          data.sse_kms_encrypted_objects = Types::SseKmsEncryptedObjects.parse(node)
        end
        xml.at('ReplicaModifications') do |node|
          data.replica_modifications = Types::ReplicaModifications.parse(node)
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

    class StorageClassAnalysis
      def self.parse(xml)
        data = Types::StorageClassAnalysis.new
        xml.at('DataExport') do |node|
          data.data_export = Types::StorageClassAnalysisDataExport.parse(node)
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
          data.destination = Types::AnalyticsExportDestination.parse(node)
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
          data << Types::Tag.parse(node)
        end
        data
      end
    end

    class TargetGrant
      def self.parse(xml)
        data = Types::TargetGrant.new
        xml.at('Grantee') do |node|
          data.grantee = Types::Grantee.parse(node)
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
          data << Types::TargetGrant.parse(node)
        end
        data
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
          data << Types::Tiering.parse(node)
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
          data.events = Types::EventList.parse(children)
        end
        xml.at('Filter') do |node|
          data.filter = Types::NotificationConfigurationFilter.parse(node)
        end
        return data
      end
    end

    class TopicConfigurationList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Types::TopicConfiguration.parse(node)
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
          data << Types::Transition.parse(node)
        end
        data
      end
    end

    # Operation Parser for UploadPart
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

    # Operation Parser for UploadPartCopy
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
        data.copy_part_result = Types::CopyPartResult.parse(xml)
        data
      end
    end

    # Operation Parser for WriteGetObjectResponse
    class WriteGetObjectResponse
      def self.parse(http_resp)
        data = Types::WriteGetObjectResponseOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body)
        data
      end
    end
  end
end
