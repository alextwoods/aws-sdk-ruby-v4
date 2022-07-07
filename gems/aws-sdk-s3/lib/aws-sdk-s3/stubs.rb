# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::S3
  module Stubs

    # Operation Stubber for AbortMultipartUpload
    class AbortMultipartUpload
      def self.default(visited=[])
        {
          request_charged: 'request_charged',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
        http_resp.headers['x-amz-request-charged'] = stub[:request_charged] unless stub[:request_charged].nil? || stub[:request_charged].empty?
      end
    end

    # Operation Stubber for CompleteMultipartUpload
    class CompleteMultipartUpload
      def self.default(visited=[])
        {
          location: 'location',
          bucket: 'bucket',
          key: 'key',
          expiration: 'expiration',
          e_tag: 'e_tag',
          checksum_crc32: 'checksum_crc32',
          checksum_crc32_c: 'checksum_crc32_c',
          checksum_sha1: 'checksum_sha1',
          checksum_sha256: 'checksum_sha256',
          server_side_encryption: 'server_side_encryption',
          version_id: 'version_id',
          ssekms_key_id: 'ssekms_key_id',
          bucket_key_enabled: false,
          request_charged: 'request_charged',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['x-amz-expiration'] = stub[:expiration] unless stub[:expiration].nil? || stub[:expiration].empty?
        http_resp.headers['x-amz-server-side-encryption'] = stub[:server_side_encryption] unless stub[:server_side_encryption].nil? || stub[:server_side_encryption].empty?
        http_resp.headers['x-amz-version-id'] = stub[:version_id] unless stub[:version_id].nil? || stub[:version_id].empty?
        http_resp.headers['x-amz-server-side-encryption-aws-kms-key-id'] = stub[:ssekms_key_id] unless stub[:ssekms_key_id].nil? || stub[:ssekms_key_id].empty?
        http_resp.headers['x-amz-server-side-encryption-bucket-key-enabled'] = stub[:bucket_key_enabled].to_s unless stub[:bucket_key_enabled].nil?
        http_resp.headers['x-amz-request-charged'] = stub[:request_charged] unless stub[:request_charged].nil? || stub[:request_charged].empty?

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('CompleteMultipartUploadResult')
        xml.attributes['xmlns'] = 'http://s3.amazonaws.com/doc/2006-03-01/'
        xml << Hearth::XML::Node.new('Location', stub[:location].to_s) unless stub[:location].nil?
        xml << Hearth::XML::Node.new('Bucket', stub[:bucket].to_s) unless stub[:bucket].nil?
        xml << Hearth::XML::Node.new('Key', stub[:key].to_s) unless stub[:key].nil?
        xml << Hearth::XML::Node.new('ETag', stub[:e_tag].to_s) unless stub[:e_tag].nil?
        xml << Hearth::XML::Node.new('ChecksumCRC32', stub[:checksum_crc32].to_s) unless stub[:checksum_crc32].nil?
        xml << Hearth::XML::Node.new('ChecksumCRC32C', stub[:checksum_crc32_c].to_s) unless stub[:checksum_crc32_c].nil?
        xml << Hearth::XML::Node.new('ChecksumSHA1', stub[:checksum_sha1].to_s) unless stub[:checksum_sha1].nil?
        xml << Hearth::XML::Node.new('ChecksumSHA256', stub[:checksum_sha256].to_s) unless stub[:checksum_sha256].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for CopyObject
    class CopyObject
      def self.default(visited=[])
        {
          copy_object_result: Stubs::CopyObjectResult.default(visited),
          expiration: 'expiration',
          copy_source_version_id: 'copy_source_version_id',
          version_id: 'version_id',
          server_side_encryption: 'server_side_encryption',
          sse_customer_algorithm: 'sse_customer_algorithm',
          sse_customer_key_md5: 'sse_customer_key_md5',
          ssekms_key_id: 'ssekms_key_id',
          ssekms_encryption_context: 'ssekms_encryption_context',
          bucket_key_enabled: false,
          request_charged: 'request_charged',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['x-amz-expiration'] = stub[:expiration] unless stub[:expiration].nil? || stub[:expiration].empty?
        http_resp.headers['x-amz-copy-source-version-id'] = stub[:copy_source_version_id] unless stub[:copy_source_version_id].nil? || stub[:copy_source_version_id].empty?
        http_resp.headers['x-amz-version-id'] = stub[:version_id] unless stub[:version_id].nil? || stub[:version_id].empty?
        http_resp.headers['x-amz-server-side-encryption'] = stub[:server_side_encryption] unless stub[:server_side_encryption].nil? || stub[:server_side_encryption].empty?
        http_resp.headers['x-amz-server-side-encryption-customer-algorithm'] = stub[:sse_customer_algorithm] unless stub[:sse_customer_algorithm].nil? || stub[:sse_customer_algorithm].empty?
        http_resp.headers['x-amz-server-side-encryption-customer-key-MD5'] = stub[:sse_customer_key_md5] unless stub[:sse_customer_key_md5].nil? || stub[:sse_customer_key_md5].empty?
        http_resp.headers['x-amz-server-side-encryption-aws-kms-key-id'] = stub[:ssekms_key_id] unless stub[:ssekms_key_id].nil? || stub[:ssekms_key_id].empty?
        http_resp.headers['x-amz-server-side-encryption-context'] = stub[:ssekms_encryption_context] unless stub[:ssekms_encryption_context].nil? || stub[:ssekms_encryption_context].empty?
        http_resp.headers['x-amz-server-side-encryption-bucket-key-enabled'] = stub[:bucket_key_enabled].to_s unless stub[:bucket_key_enabled].nil?
        http_resp.headers['x-amz-request-charged'] = stub[:request_charged] unless stub[:request_charged].nil? || stub[:request_charged].empty?
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::CopyObjectResult.build('CopyObjectResult', stub[:copy_object_result]) unless stub[:copy_object_result].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Structure Stubber for CopyObjectResult
    class CopyObjectResult
      def self.default(visited=[])
        return nil if visited.include?('CopyObjectResult')
        visited = visited + ['CopyObjectResult']
        {
          e_tag: 'e_tag',
          last_modified: Time.now,
          checksum_crc32: 'checksum_crc32',
          checksum_crc32_c: 'checksum_crc32_c',
          checksum_sha1: 'checksum_sha1',
          checksum_sha256: 'checksum_sha256',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::CopyObjectResult.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ETag', stub[:e_tag].to_s) unless stub[:e_tag].nil?
        xml << Hearth::XML::Node.new('LastModified', Hearth::TimeHelper.to_date_time(stub[:last_modified])) unless stub[:last_modified].nil?
        xml << Hearth::XML::Node.new('ChecksumCRC32', stub[:checksum_crc32].to_s) unless stub[:checksum_crc32].nil?
        xml << Hearth::XML::Node.new('ChecksumCRC32C', stub[:checksum_crc32_c].to_s) unless stub[:checksum_crc32_c].nil?
        xml << Hearth::XML::Node.new('ChecksumSHA1', stub[:checksum_sha1].to_s) unless stub[:checksum_sha1].nil?
        xml << Hearth::XML::Node.new('ChecksumSHA256', stub[:checksum_sha256].to_s) unless stub[:checksum_sha256].nil?
        xml
      end
    end

    # Operation Stubber for CreateBucket
    class CreateBucket
      def self.default(visited=[])
        {
          location: 'location',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Location'] = stub[:location] unless stub[:location].nil? || stub[:location].empty?
      end
    end

    # Operation Stubber for CreateMultipartUpload
    class CreateMultipartUpload
      def self.default(visited=[])
        {
          abort_date: Time.now,
          abort_rule_id: 'abort_rule_id',
          bucket: 'bucket',
          key: 'key',
          upload_id: 'upload_id',
          server_side_encryption: 'server_side_encryption',
          sse_customer_algorithm: 'sse_customer_algorithm',
          sse_customer_key_md5: 'sse_customer_key_md5',
          ssekms_key_id: 'ssekms_key_id',
          ssekms_encryption_context: 'ssekms_encryption_context',
          bucket_key_enabled: false,
          request_charged: 'request_charged',
          checksum_algorithm: 'checksum_algorithm',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['x-amz-abort-date'] = Hearth::TimeHelper.to_date_time(stub[:abort_date]) unless stub[:abort_date].nil?
        http_resp.headers['x-amz-abort-rule-id'] = stub[:abort_rule_id] unless stub[:abort_rule_id].nil? || stub[:abort_rule_id].empty?
        http_resp.headers['x-amz-server-side-encryption'] = stub[:server_side_encryption] unless stub[:server_side_encryption].nil? || stub[:server_side_encryption].empty?
        http_resp.headers['x-amz-server-side-encryption-customer-algorithm'] = stub[:sse_customer_algorithm] unless stub[:sse_customer_algorithm].nil? || stub[:sse_customer_algorithm].empty?
        http_resp.headers['x-amz-server-side-encryption-customer-key-MD5'] = stub[:sse_customer_key_md5] unless stub[:sse_customer_key_md5].nil? || stub[:sse_customer_key_md5].empty?
        http_resp.headers['x-amz-server-side-encryption-aws-kms-key-id'] = stub[:ssekms_key_id] unless stub[:ssekms_key_id].nil? || stub[:ssekms_key_id].empty?
        http_resp.headers['x-amz-server-side-encryption-context'] = stub[:ssekms_encryption_context] unless stub[:ssekms_encryption_context].nil? || stub[:ssekms_encryption_context].empty?
        http_resp.headers['x-amz-server-side-encryption-bucket-key-enabled'] = stub[:bucket_key_enabled].to_s unless stub[:bucket_key_enabled].nil?
        http_resp.headers['x-amz-request-charged'] = stub[:request_charged] unless stub[:request_charged].nil? || stub[:request_charged].empty?
        http_resp.headers['x-amz-checksum-algorithm'] = stub[:checksum_algorithm] unless stub[:checksum_algorithm].nil? || stub[:checksum_algorithm].empty?

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('InitiateMultipartUploadResult')
        xml.attributes['xmlns'] = 'http://s3.amazonaws.com/doc/2006-03-01/'
        xml << Hearth::XML::Node.new('Bucket', stub[:bucket].to_s) unless stub[:bucket].nil?
        xml << Hearth::XML::Node.new('Key', stub[:key].to_s) unless stub[:key].nil?
        xml << Hearth::XML::Node.new('UploadId', stub[:upload_id].to_s) unless stub[:upload_id].nil?
        http_resp.body = StringIO.new(xml.to_str)
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
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteBucketAnalyticsConfiguration
    class DeleteBucketAnalyticsConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteBucketCors
    class DeleteBucketCors
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteBucketEncryption
    class DeleteBucketEncryption
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteBucketIntelligentTieringConfiguration
    class DeleteBucketIntelligentTieringConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteBucketInventoryConfiguration
    class DeleteBucketInventoryConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteBucketLifecycle
    class DeleteBucketLifecycle
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteBucketMetricsConfiguration
    class DeleteBucketMetricsConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteBucketOwnershipControls
    class DeleteBucketOwnershipControls
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
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
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteBucketReplication
    class DeleteBucketReplication
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
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

    # Operation Stubber for DeleteBucketWebsite
    class DeleteBucketWebsite
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteObject
    class DeleteObject
      def self.default(visited=[])
        {
          delete_marker: false,
          version_id: 'version_id',
          request_charged: 'request_charged',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
        http_resp.headers['x-amz-delete-marker'] = stub[:delete_marker].to_s unless stub[:delete_marker].nil?
        http_resp.headers['x-amz-version-id'] = stub[:version_id] unless stub[:version_id].nil? || stub[:version_id].empty?
        http_resp.headers['x-amz-request-charged'] = stub[:request_charged] unless stub[:request_charged].nil? || stub[:request_charged].empty?
      end
    end

    # Operation Stubber for DeleteObjectTagging
    class DeleteObjectTagging
      def self.default(visited=[])
        {
          version_id: 'version_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
        http_resp.headers['x-amz-version-id'] = stub[:version_id] unless stub[:version_id].nil? || stub[:version_id].empty?
      end
    end

    # Operation Stubber for DeleteObjects
    class DeleteObjects
      def self.default(visited=[])
        {
          deleted: Stubs::DeletedObjects.default(visited),
          request_charged: 'request_charged',
          errors: Stubs::Errors.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['x-amz-request-charged'] = stub[:request_charged] unless stub[:request_charged].nil? || stub[:request_charged].empty?

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('DeleteResult')
        xml.attributes['xmlns'] = 'http://s3.amazonaws.com/doc/2006-03-01/'
        xml << Stubs::DeletedObjects.stub('Deleted', stub[:deleted]) unless stub[:deleted].nil?
        xml << Stubs::Errors.stub('Error', stub[:errors]) unless stub[:errors].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # List Stubber for Errors
    class Errors
      def self.default(visited=[])
        return nil if visited.include?('Errors')
        visited = visited + ['Errors']
        [
          Stubs::Error.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::Error.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for Error
    class Error
      def self.default(visited=[])
        return nil if visited.include?('Error')
        visited = visited + ['Error']
        {
          key: 'key',
          version_id: 'version_id',
          code: 'code',
          message: 'message',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Error.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Key', stub[:key].to_s) unless stub[:key].nil?
        xml << Hearth::XML::Node.new('VersionId', stub[:version_id].to_s) unless stub[:version_id].nil?
        xml << Hearth::XML::Node.new('Code', stub[:code].to_s) unless stub[:code].nil?
        xml << Hearth::XML::Node.new('Message', stub[:message].to_s) unless stub[:message].nil?
        xml
      end
    end

    # List Stubber for DeletedObjects
    class DeletedObjects
      def self.default(visited=[])
        return nil if visited.include?('DeletedObjects')
        visited = visited + ['DeletedObjects']
        [
          Stubs::DeletedObject.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::DeletedObject.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for DeletedObject
    class DeletedObject
      def self.default(visited=[])
        return nil if visited.include?('DeletedObject')
        visited = visited + ['DeletedObject']
        {
          key: 'key',
          version_id: 'version_id',
          delete_marker: false,
          delete_marker_version_id: 'delete_marker_version_id',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DeletedObject.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Key', stub[:key].to_s) unless stub[:key].nil?
        xml << Hearth::XML::Node.new('VersionId', stub[:version_id].to_s) unless stub[:version_id].nil?
        xml << Hearth::XML::Node.new('DeleteMarker', stub[:delete_marker].to_s) unless stub[:delete_marker].nil?
        xml << Hearth::XML::Node.new('DeleteMarkerVersionId', stub[:delete_marker_version_id].to_s) unless stub[:delete_marker_version_id].nil?
        xml
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
        http_resp.status = 204
      end
    end

    # Operation Stubber for GetBucketAccelerateConfiguration
    class GetBucketAccelerateConfiguration
      def self.default(visited=[])
        {
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('AccelerateConfiguration')
        xml.attributes['xmlns'] = 'http://s3.amazonaws.com/doc/2006-03-01/'
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for GetBucketAcl
    class GetBucketAcl
      def self.default(visited=[])
        {
          owner: Stubs::Owner.default(visited),
          grants: Stubs::Grants.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('AccessControlPolicy')
        xml.attributes['xmlns'] = 'http://s3.amazonaws.com/doc/2006-03-01/'
        xml << Stubs::Owner.stub('Owner', stub[:owner]) unless stub[:owner].nil?
        xml << Hearth::XML::Node.new('AccessControlList', Stubs::Grants.stub('Grant', stub[:grants])) unless stub[:grants].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # List Stubber for Grants
    class Grants
      def self.default(visited=[])
        return nil if visited.include?('Grants')
        visited = visited + ['Grants']
        [
          Stubs::Grant.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::Grant.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for Grant
    class Grant
      def self.default(visited=[])
        return nil if visited.include?('Grant')
        visited = visited + ['Grant']
        {
          grantee: Stubs::Grantee.default(visited),
          permission: 'permission',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Grant.new
        xml = Hearth::XML::Node.new(node_name)
        unless stub[:grantee].nil?
          nodes = Stubs::Grantee.stub('Grantee', stub[:grantee])
          nodes.each { |n| n.attributes['xmlns:xsi'] = 'http://www.w3.org/2001/XMLSchema-instance' }
          xml << nodes
        end
        xml << Hearth::XML::Node.new('Permission', stub[:permission].to_s) unless stub[:permission].nil?
        xml
      end
    end

    # Structure Stubber for Grantee
    class Grantee
      def self.default(visited=[])
        return nil if visited.include?('Grantee')
        visited = visited + ['Grantee']
        {
          display_name: 'display_name',
          email_address: 'email_address',
          id: 'id',
          uri: 'uri',
          type: 'type',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Grantee.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('DisplayName', stub[:display_name].to_s) unless stub[:display_name].nil?
        xml << Hearth::XML::Node.new('EmailAddress', stub[:email_address].to_s) unless stub[:email_address].nil?
        xml << Hearth::XML::Node.new('ID', stub[:id].to_s) unless stub[:id].nil?
        xml << Hearth::XML::Node.new('URI', stub[:uri].to_s) unless stub[:uri].nil?
        xml.attributes['xsi:type'] = stub[:type] unless stub[:type].nil?
        xml
      end
    end

    # Structure Stubber for Owner
    class Owner
      def self.default(visited=[])
        return nil if visited.include?('Owner')
        visited = visited + ['Owner']
        {
          display_name: 'display_name',
          id: 'id',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Owner.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('DisplayName', stub[:display_name].to_s) unless stub[:display_name].nil?
        xml << Hearth::XML::Node.new('ID', stub[:id].to_s) unless stub[:id].nil?
        xml
      end
    end

    # Operation Stubber for GetBucketAnalyticsConfiguration
    class GetBucketAnalyticsConfiguration
      def self.default(visited=[])
        {
          analytics_configuration: Stubs::AnalyticsConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::AnalyticsConfiguration.build('AnalyticsConfiguration', stub[:analytics_configuration]) unless stub[:analytics_configuration].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Structure Stubber for AnalyticsConfiguration
    class AnalyticsConfiguration
      def self.default(visited=[])
        return nil if visited.include?('AnalyticsConfiguration')
        visited = visited + ['AnalyticsConfiguration']
        {
          id: 'id',
          filter: Stubs::AnalyticsFilter.default(visited),
          storage_class_analysis: Stubs::StorageClassAnalysis.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::AnalyticsConfiguration.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Id', stub[:id].to_s) unless stub[:id].nil?
        xml << Stubs::AnalyticsFilter.stub('Filter', stub[:filter]) unless stub[:filter].nil?
        xml << Stubs::StorageClassAnalysis.stub('StorageClassAnalysis', stub[:storage_class_analysis]) unless stub[:storage_class_analysis].nil?
        xml
      end
    end

    # Structure Stubber for StorageClassAnalysis
    class StorageClassAnalysis
      def self.default(visited=[])
        return nil if visited.include?('StorageClassAnalysis')
        visited = visited + ['StorageClassAnalysis']
        {
          data_export: Stubs::StorageClassAnalysisDataExport.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::StorageClassAnalysis.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Stubs::StorageClassAnalysisDataExport.stub('DataExport', stub[:data_export]) unless stub[:data_export].nil?
        xml
      end
    end

    # Structure Stubber for StorageClassAnalysisDataExport
    class StorageClassAnalysisDataExport
      def self.default(visited=[])
        return nil if visited.include?('StorageClassAnalysisDataExport')
        visited = visited + ['StorageClassAnalysisDataExport']
        {
          output_schema_version: 'output_schema_version',
          destination: Stubs::AnalyticsExportDestination.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::StorageClassAnalysisDataExport.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('OutputSchemaVersion', stub[:output_schema_version].to_s) unless stub[:output_schema_version].nil?
        xml << Stubs::AnalyticsExportDestination.stub('Destination', stub[:destination]) unless stub[:destination].nil?
        xml
      end
    end

    # Structure Stubber for AnalyticsExportDestination
    class AnalyticsExportDestination
      def self.default(visited=[])
        return nil if visited.include?('AnalyticsExportDestination')
        visited = visited + ['AnalyticsExportDestination']
        {
          s3_bucket_destination: Stubs::AnalyticsS3BucketDestination.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::AnalyticsExportDestination.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Stubs::AnalyticsS3BucketDestination.stub('S3BucketDestination', stub[:s3_bucket_destination]) unless stub[:s3_bucket_destination].nil?
        xml
      end
    end

    # Structure Stubber for AnalyticsS3BucketDestination
    class AnalyticsS3BucketDestination
      def self.default(visited=[])
        return nil if visited.include?('AnalyticsS3BucketDestination')
        visited = visited + ['AnalyticsS3BucketDestination']
        {
          format: 'format',
          bucket_account_id: 'bucket_account_id',
          bucket: 'bucket',
          prefix: 'prefix',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::AnalyticsS3BucketDestination.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Format', stub[:format].to_s) unless stub[:format].nil?
        xml << Hearth::XML::Node.new('BucketAccountId', stub[:bucket_account_id].to_s) unless stub[:bucket_account_id].nil?
        xml << Hearth::XML::Node.new('Bucket', stub[:bucket].to_s) unless stub[:bucket].nil?
        xml << Hearth::XML::Node.new('Prefix', stub[:prefix].to_s) unless stub[:prefix].nil?
        xml
      end
    end

    # Union Stubber for AnalyticsFilter
    class AnalyticsFilter
      def self.default(visited=[])
        return nil if visited.include?('AnalyticsFilter')
        visited = visited + ['AnalyticsFilter']
        {
          prefix: 'prefix',
        }
      end

      def self.stub(node_name, stub)
        xml = Hearth::XML::Node.new(node_name)
        case stub
        when Types::AnalyticsFilter::Prefix
          xml << Hearth::XML::Node.new('Prefix', stub.__getobj__.to_s) unless stub.__getobj__.nil?
        when Types::AnalyticsFilter::Tag
          xml << Stubs::Tag.stub('Tag', stub.__getobj__) unless stub.__getobj__.nil?
        when Types::AnalyticsFilter::And
          xml << Stubs::AnalyticsAndOperator.stub('And', stub.__getobj__) unless stub.__getobj__.nil?
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::AnalyticsFilter"
        end

        xml
      end
    end

    # Structure Stubber for AnalyticsAndOperator
    class AnalyticsAndOperator
      def self.default(visited=[])
        return nil if visited.include?('AnalyticsAndOperator')
        visited = visited + ['AnalyticsAndOperator']
        {
          prefix: 'prefix',
          tags: Stubs::TagSet.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::AnalyticsAndOperator.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Prefix', stub[:prefix].to_s) unless stub[:prefix].nil?
        xml << Stubs::TagSet.stub('Tag', stub[:tags]) unless stub[:tags].nil?
        xml
      end
    end

    # List Stubber for TagSet
    class TagSet
      def self.default(visited=[])
        return nil if visited.include?('TagSet')
        visited = visited + ['TagSet']
        [
          Stubs::Tag.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::Tag.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for Tag
    class Tag
      def self.default(visited=[])
        return nil if visited.include?('Tag')
        visited = visited + ['Tag']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Tag.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Key', stub[:key].to_s) unless stub[:key].nil?
        xml << Hearth::XML::Node.new('Value', stub[:value].to_s) unless stub[:value].nil?
        xml
      end
    end

    # Operation Stubber for GetBucketCors
    class GetBucketCors
      def self.default(visited=[])
        {
          cors_rules: Stubs::CORSRules.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('CORSConfiguration')
        xml.attributes['xmlns'] = 'http://s3.amazonaws.com/doc/2006-03-01/'
        xml << Stubs::CORSRules.stub('CORSRule', stub[:cors_rules]) unless stub[:cors_rules].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # List Stubber for CORSRules
    class CORSRules
      def self.default(visited=[])
        return nil if visited.include?('CORSRules')
        visited = visited + ['CORSRules']
        [
          Stubs::CORSRule.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::CORSRule.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for CORSRule
    class CORSRule
      def self.default(visited=[])
        return nil if visited.include?('CORSRule')
        visited = visited + ['CORSRule']
        {
          id: 'id',
          allowed_headers: Stubs::AllowedHeaders.default(visited),
          allowed_methods: Stubs::AllowedMethods.default(visited),
          allowed_origins: Stubs::AllowedOrigins.default(visited),
          expose_headers: Stubs::ExposeHeaders.default(visited),
          max_age_seconds: 1,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::CORSRule.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ID', stub[:id].to_s) unless stub[:id].nil?
        xml << Stubs::AllowedHeaders.stub('AllowedHeader', stub[:allowed_headers]) unless stub[:allowed_headers].nil?
        xml << Stubs::AllowedMethods.stub('AllowedMethod', stub[:allowed_methods]) unless stub[:allowed_methods].nil?
        xml << Stubs::AllowedOrigins.stub('AllowedOrigin', stub[:allowed_origins]) unless stub[:allowed_origins].nil?
        xml << Stubs::ExposeHeaders.stub('ExposeHeader', stub[:expose_headers]) unless stub[:expose_headers].nil?
        xml << Hearth::XML::Node.new('MaxAgeSeconds', stub[:max_age_seconds].to_s) unless stub[:max_age_seconds].nil?
        xml
      end
    end

    # List Stubber for ExposeHeaders
    class ExposeHeaders
      def self.default(visited=[])
        return nil if visited.include?('ExposeHeaders')
        visited = visited + ['ExposeHeaders']
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

    # List Stubber for AllowedOrigins
    class AllowedOrigins
      def self.default(visited=[])
        return nil if visited.include?('AllowedOrigins')
        visited = visited + ['AllowedOrigins']
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

    # List Stubber for AllowedMethods
    class AllowedMethods
      def self.default(visited=[])
        return nil if visited.include?('AllowedMethods')
        visited = visited + ['AllowedMethods']
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

    # List Stubber for AllowedHeaders
    class AllowedHeaders
      def self.default(visited=[])
        return nil if visited.include?('AllowedHeaders')
        visited = visited + ['AllowedHeaders']
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

    # Operation Stubber for GetBucketEncryption
    class GetBucketEncryption
      def self.default(visited=[])
        {
          server_side_encryption_configuration: Stubs::ServerSideEncryptionConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::ServerSideEncryptionConfiguration.build('ServerSideEncryptionConfiguration', stub[:server_side_encryption_configuration]) unless stub[:server_side_encryption_configuration].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Structure Stubber for ServerSideEncryptionConfiguration
    class ServerSideEncryptionConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ServerSideEncryptionConfiguration')
        visited = visited + ['ServerSideEncryptionConfiguration']
        {
          rules: Stubs::ServerSideEncryptionRules.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ServerSideEncryptionConfiguration.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Stubs::ServerSideEncryptionRules.stub('Rule', stub[:rules]) unless stub[:rules].nil?
        xml
      end
    end

    # List Stubber for ServerSideEncryptionRules
    class ServerSideEncryptionRules
      def self.default(visited=[])
        return nil if visited.include?('ServerSideEncryptionRules')
        visited = visited + ['ServerSideEncryptionRules']
        [
          Stubs::ServerSideEncryptionRule.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::ServerSideEncryptionRule.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for ServerSideEncryptionRule
    class ServerSideEncryptionRule
      def self.default(visited=[])
        return nil if visited.include?('ServerSideEncryptionRule')
        visited = visited + ['ServerSideEncryptionRule']
        {
          apply_server_side_encryption_by_default: Stubs::ServerSideEncryptionByDefault.default(visited),
          bucket_key_enabled: false,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ServerSideEncryptionRule.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Stubs::ServerSideEncryptionByDefault.stub('ApplyServerSideEncryptionByDefault', stub[:apply_server_side_encryption_by_default]) unless stub[:apply_server_side_encryption_by_default].nil?
        xml << Hearth::XML::Node.new('BucketKeyEnabled', stub[:bucket_key_enabled].to_s) unless stub[:bucket_key_enabled].nil?
        xml
      end
    end

    # Structure Stubber for ServerSideEncryptionByDefault
    class ServerSideEncryptionByDefault
      def self.default(visited=[])
        return nil if visited.include?('ServerSideEncryptionByDefault')
        visited = visited + ['ServerSideEncryptionByDefault']
        {
          sse_algorithm: 'sse_algorithm',
          kms_master_key_id: 'kms_master_key_id',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ServerSideEncryptionByDefault.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('SSEAlgorithm', stub[:sse_algorithm].to_s) unless stub[:sse_algorithm].nil?
        xml << Hearth::XML::Node.new('KMSMasterKeyID', stub[:kms_master_key_id].to_s) unless stub[:kms_master_key_id].nil?
        xml
      end
    end

    # Operation Stubber for GetBucketIntelligentTieringConfiguration
    class GetBucketIntelligentTieringConfiguration
      def self.default(visited=[])
        {
          intelligent_tiering_configuration: Stubs::IntelligentTieringConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::IntelligentTieringConfiguration.build('IntelligentTieringConfiguration', stub[:intelligent_tiering_configuration]) unless stub[:intelligent_tiering_configuration].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Structure Stubber for IntelligentTieringConfiguration
    class IntelligentTieringConfiguration
      def self.default(visited=[])
        return nil if visited.include?('IntelligentTieringConfiguration')
        visited = visited + ['IntelligentTieringConfiguration']
        {
          id: 'id',
          filter: Stubs::IntelligentTieringFilter.default(visited),
          status: 'status',
          tierings: Stubs::TieringList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::IntelligentTieringConfiguration.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Id', stub[:id].to_s) unless stub[:id].nil?
        xml << Stubs::IntelligentTieringFilter.stub('Filter', stub[:filter]) unless stub[:filter].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Stubs::TieringList.stub('Tiering', stub[:tierings]) unless stub[:tierings].nil?
        xml
      end
    end

    # List Stubber for TieringList
    class TieringList
      def self.default(visited=[])
        return nil if visited.include?('TieringList')
        visited = visited + ['TieringList']
        [
          Stubs::Tiering.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::Tiering.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for Tiering
    class Tiering
      def self.default(visited=[])
        return nil if visited.include?('Tiering')
        visited = visited + ['Tiering']
        {
          days: 1,
          access_tier: 'access_tier',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Tiering.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Days', stub[:days].to_s) unless stub[:days].nil?
        xml << Hearth::XML::Node.new('AccessTier', stub[:access_tier].to_s) unless stub[:access_tier].nil?
        xml
      end
    end

    # Structure Stubber for IntelligentTieringFilter
    class IntelligentTieringFilter
      def self.default(visited=[])
        return nil if visited.include?('IntelligentTieringFilter')
        visited = visited + ['IntelligentTieringFilter']
        {
          prefix: 'prefix',
          tag: Stubs::Tag.default(visited),
          and: Stubs::IntelligentTieringAndOperator.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::IntelligentTieringFilter.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Prefix', stub[:prefix].to_s) unless stub[:prefix].nil?
        xml << Stubs::Tag.stub('Tag', stub[:tag]) unless stub[:tag].nil?
        xml << Stubs::IntelligentTieringAndOperator.stub('And', stub[:and]) unless stub[:and].nil?
        xml
      end
    end

    # Structure Stubber for IntelligentTieringAndOperator
    class IntelligentTieringAndOperator
      def self.default(visited=[])
        return nil if visited.include?('IntelligentTieringAndOperator')
        visited = visited + ['IntelligentTieringAndOperator']
        {
          prefix: 'prefix',
          tags: Stubs::TagSet.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::IntelligentTieringAndOperator.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Prefix', stub[:prefix].to_s) unless stub[:prefix].nil?
        xml << Stubs::TagSet.stub('Tag', stub[:tags]) unless stub[:tags].nil?
        xml
      end
    end

    # Operation Stubber for GetBucketInventoryConfiguration
    class GetBucketInventoryConfiguration
      def self.default(visited=[])
        {
          inventory_configuration: Stubs::InventoryConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::InventoryConfiguration.build('InventoryConfiguration', stub[:inventory_configuration]) unless stub[:inventory_configuration].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Structure Stubber for InventoryConfiguration
    class InventoryConfiguration
      def self.default(visited=[])
        return nil if visited.include?('InventoryConfiguration')
        visited = visited + ['InventoryConfiguration']
        {
          destination: Stubs::InventoryDestination.default(visited),
          is_enabled: false,
          filter: Stubs::InventoryFilter.default(visited),
          id: 'id',
          included_object_versions: 'included_object_versions',
          optional_fields: Stubs::InventoryOptionalFields.default(visited),
          schedule: Stubs::InventorySchedule.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::InventoryConfiguration.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Stubs::InventoryDestination.stub('Destination', stub[:destination]) unless stub[:destination].nil?
        xml << Hearth::XML::Node.new('IsEnabled', stub[:is_enabled].to_s) unless stub[:is_enabled].nil?
        xml << Stubs::InventoryFilter.stub('Filter', stub[:filter]) unless stub[:filter].nil?
        xml << Hearth::XML::Node.new('Id', stub[:id].to_s) unless stub[:id].nil?
        xml << Hearth::XML::Node.new('IncludedObjectVersions', stub[:included_object_versions].to_s) unless stub[:included_object_versions].nil?
        xml << Hearth::XML::Node.new('OptionalFields', Stubs::InventoryOptionalFields.stub('Field', stub[:optional_fields])) unless stub[:optional_fields].nil?
        xml << Stubs::InventorySchedule.stub('Schedule', stub[:schedule]) unless stub[:schedule].nil?
        xml
      end
    end

    # Structure Stubber for InventorySchedule
    class InventorySchedule
      def self.default(visited=[])
        return nil if visited.include?('InventorySchedule')
        visited = visited + ['InventorySchedule']
        {
          frequency: 'frequency',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::InventorySchedule.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Frequency', stub[:frequency].to_s) unless stub[:frequency].nil?
        xml
      end
    end

    # List Stubber for InventoryOptionalFields
    class InventoryOptionalFields
      def self.default(visited=[])
        return nil if visited.include?('InventoryOptionalFields')
        visited = visited + ['InventoryOptionalFields']
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

    # Structure Stubber for InventoryFilter
    class InventoryFilter
      def self.default(visited=[])
        return nil if visited.include?('InventoryFilter')
        visited = visited + ['InventoryFilter']
        {
          prefix: 'prefix',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::InventoryFilter.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Prefix', stub[:prefix].to_s) unless stub[:prefix].nil?
        xml
      end
    end

    # Structure Stubber for InventoryDestination
    class InventoryDestination
      def self.default(visited=[])
        return nil if visited.include?('InventoryDestination')
        visited = visited + ['InventoryDestination']
        {
          s3_bucket_destination: Stubs::InventoryS3BucketDestination.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::InventoryDestination.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Stubs::InventoryS3BucketDestination.stub('S3BucketDestination', stub[:s3_bucket_destination]) unless stub[:s3_bucket_destination].nil?
        xml
      end
    end

    # Structure Stubber for InventoryS3BucketDestination
    class InventoryS3BucketDestination
      def self.default(visited=[])
        return nil if visited.include?('InventoryS3BucketDestination')
        visited = visited + ['InventoryS3BucketDestination']
        {
          account_id: 'account_id',
          bucket: 'bucket',
          format: 'format',
          prefix: 'prefix',
          encryption: Stubs::InventoryEncryption.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::InventoryS3BucketDestination.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('AccountId', stub[:account_id].to_s) unless stub[:account_id].nil?
        xml << Hearth::XML::Node.new('Bucket', stub[:bucket].to_s) unless stub[:bucket].nil?
        xml << Hearth::XML::Node.new('Format', stub[:format].to_s) unless stub[:format].nil?
        xml << Hearth::XML::Node.new('Prefix', stub[:prefix].to_s) unless stub[:prefix].nil?
        xml << Stubs::InventoryEncryption.stub('Encryption', stub[:encryption]) unless stub[:encryption].nil?
        xml
      end
    end

    # Structure Stubber for InventoryEncryption
    class InventoryEncryption
      def self.default(visited=[])
        return nil if visited.include?('InventoryEncryption')
        visited = visited + ['InventoryEncryption']
        {
          sses3: Stubs::SSES3.default(visited),
          ssekms: Stubs::SSEKMS.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::InventoryEncryption.new
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

    # Operation Stubber for GetBucketLifecycleConfiguration
    class GetBucketLifecycleConfiguration
      def self.default(visited=[])
        {
          rules: Stubs::LifecycleRules.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('LifecycleConfiguration')
        xml.attributes['xmlns'] = 'http://s3.amazonaws.com/doc/2006-03-01/'
        xml << Stubs::LifecycleRules.stub('Rule', stub[:rules]) unless stub[:rules].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # List Stubber for LifecycleRules
    class LifecycleRules
      def self.default(visited=[])
        return nil if visited.include?('LifecycleRules')
        visited = visited + ['LifecycleRules']
        [
          Stubs::LifecycleRule.default(visited)
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
          expiration: Stubs::LifecycleExpiration.default(visited),
          id: 'id',
          prefix: 'prefix',
          filter: Stubs::LifecycleRuleFilter.default(visited),
          status: 'status',
          transitions: Stubs::TransitionList.default(visited),
          noncurrent_version_transitions: Stubs::NoncurrentVersionTransitionList.default(visited),
          noncurrent_version_expiration: Stubs::NoncurrentVersionExpiration.default(visited),
          abort_incomplete_multipart_upload: Stubs::AbortIncompleteMultipartUpload.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::LifecycleRule.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Stubs::LifecycleExpiration.stub('Expiration', stub[:expiration]) unless stub[:expiration].nil?
        xml << Hearth::XML::Node.new('ID', stub[:id].to_s) unless stub[:id].nil?
        xml << Hearth::XML::Node.new('Prefix', stub[:prefix].to_s) unless stub[:prefix].nil?
        xml << Stubs::LifecycleRuleFilter.stub('Filter', stub[:filter]) unless stub[:filter].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Stubs::TransitionList.stub('Transition', stub[:transitions]) unless stub[:transitions].nil?
        xml << Stubs::NoncurrentVersionTransitionList.stub('NoncurrentVersionTransition', stub[:noncurrent_version_transitions]) unless stub[:noncurrent_version_transitions].nil?
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
          newer_noncurrent_versions: 1,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::NoncurrentVersionExpiration.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('NoncurrentDays', stub[:noncurrent_days].to_s) unless stub[:noncurrent_days].nil?
        xml << Hearth::XML::Node.new('NewerNoncurrentVersions', stub[:newer_noncurrent_versions].to_s) unless stub[:newer_noncurrent_versions].nil?
        xml
      end
    end

    # List Stubber for NoncurrentVersionTransitionList
    class NoncurrentVersionTransitionList
      def self.default(visited=[])
        return nil if visited.include?('NoncurrentVersionTransitionList')
        visited = visited + ['NoncurrentVersionTransitionList']
        [
          Stubs::NoncurrentVersionTransition.default(visited)
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
          newer_noncurrent_versions: 1,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::NoncurrentVersionTransition.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('NoncurrentDays', stub[:noncurrent_days].to_s) unless stub[:noncurrent_days].nil?
        xml << Hearth::XML::Node.new('StorageClass', stub[:storage_class].to_s) unless stub[:storage_class].nil?
        xml << Hearth::XML::Node.new('NewerNoncurrentVersions', stub[:newer_noncurrent_versions].to_s) unless stub[:newer_noncurrent_versions].nil?
        xml
      end
    end

    # List Stubber for TransitionList
    class TransitionList
      def self.default(visited=[])
        return nil if visited.include?('TransitionList')
        visited = visited + ['TransitionList']
        [
          Stubs::Transition.default(visited)
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

    # Union Stubber for LifecycleRuleFilter
    class LifecycleRuleFilter
      def self.default(visited=[])
        return nil if visited.include?('LifecycleRuleFilter')
        visited = visited + ['LifecycleRuleFilter']
        {
          prefix: 'prefix',
        }
      end

      def self.stub(node_name, stub)
        xml = Hearth::XML::Node.new(node_name)
        case stub
        when Types::LifecycleRuleFilter::Prefix
          xml << Hearth::XML::Node.new('Prefix', stub.__getobj__.to_s) unless stub.__getobj__.nil?
        when Types::LifecycleRuleFilter::Tag
          xml << Stubs::Tag.stub('Tag', stub.__getobj__) unless stub.__getobj__.nil?
        when Types::LifecycleRuleFilter::ObjectSizeGreaterThan
          xml << Hearth::XML::Node.new('ObjectSizeGreaterThan', stub.__getobj__.to_s) unless stub.__getobj__.nil?
        when Types::LifecycleRuleFilter::ObjectSizeLessThan
          xml << Hearth::XML::Node.new('ObjectSizeLessThan', stub.__getobj__.to_s) unless stub.__getobj__.nil?
        when Types::LifecycleRuleFilter::And
          xml << Stubs::LifecycleRuleAndOperator.stub('And', stub.__getobj__) unless stub.__getobj__.nil?
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::LifecycleRuleFilter"
        end

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
          tags: Stubs::TagSet.default(visited),
          object_size_greater_than: 1,
          object_size_less_than: 1,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::LifecycleRuleAndOperator.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Prefix', stub[:prefix].to_s) unless stub[:prefix].nil?
        xml << Stubs::TagSet.stub('Tag', stub[:tags]) unless stub[:tags].nil?
        xml << Hearth::XML::Node.new('ObjectSizeGreaterThan', stub[:object_size_greater_than].to_s) unless stub[:object_size_greater_than].nil?
        xml << Hearth::XML::Node.new('ObjectSizeLessThan', stub[:object_size_less_than].to_s) unless stub[:object_size_less_than].nil?
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

    # Operation Stubber for GetBucketLocation
    class GetBucketLocation
      def self.default(visited=[])
        {
          location_constraint: 'location_constraint',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('LocationConstraint')
        xml.attributes['xmlns'] = 'http://s3.amazonaws.com/doc/2006-03-01/'
        xml << Hearth::XML::Node.new('LocationConstraint', stub[:location_constraint].to_s) unless stub[:location_constraint].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for GetBucketLogging
    class GetBucketLogging
      def self.default(visited=[])
        {
          logging_enabled: Stubs::LoggingEnabled.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('BucketLoggingStatus')
        xml.attributes['xmlns'] = 'http://s3.amazonaws.com/doc/2006-03-01/'
        xml << Stubs::LoggingEnabled.stub('LoggingEnabled', stub[:logging_enabled]) unless stub[:logging_enabled].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Structure Stubber for LoggingEnabled
    class LoggingEnabled
      def self.default(visited=[])
        return nil if visited.include?('LoggingEnabled')
        visited = visited + ['LoggingEnabled']
        {
          target_bucket: 'target_bucket',
          target_grants: Stubs::TargetGrants.default(visited),
          target_prefix: 'target_prefix',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::LoggingEnabled.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('TargetBucket', stub[:target_bucket].to_s) unless stub[:target_bucket].nil?
        xml << Hearth::XML::Node.new('TargetGrants', Stubs::TargetGrants.stub('Grant', stub[:target_grants])) unless stub[:target_grants].nil?
        xml << Hearth::XML::Node.new('TargetPrefix', stub[:target_prefix].to_s) unless stub[:target_prefix].nil?
        xml
      end
    end

    # List Stubber for TargetGrants
    class TargetGrants
      def self.default(visited=[])
        return nil if visited.include?('TargetGrants')
        visited = visited + ['TargetGrants']
        [
          Stubs::TargetGrant.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::TargetGrant.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for TargetGrant
    class TargetGrant
      def self.default(visited=[])
        return nil if visited.include?('TargetGrant')
        visited = visited + ['TargetGrant']
        {
          grantee: Stubs::Grantee.default(visited),
          permission: 'permission',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::TargetGrant.new
        xml = Hearth::XML::Node.new(node_name)
        unless stub[:grantee].nil?
          nodes = Stubs::Grantee.stub('Grantee', stub[:grantee])
          nodes.each { |n| n.attributes['xmlns:xsi'] = 'http://www.w3.org/2001/XMLSchema-instance' }
          xml << nodes
        end
        xml << Hearth::XML::Node.new('Permission', stub[:permission].to_s) unless stub[:permission].nil?
        xml
      end
    end

    # Operation Stubber for GetBucketMetricsConfiguration
    class GetBucketMetricsConfiguration
      def self.default(visited=[])
        {
          metrics_configuration: Stubs::MetricsConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::MetricsConfiguration.build('MetricsConfiguration', stub[:metrics_configuration]) unless stub[:metrics_configuration].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Structure Stubber for MetricsConfiguration
    class MetricsConfiguration
      def self.default(visited=[])
        return nil if visited.include?('MetricsConfiguration')
        visited = visited + ['MetricsConfiguration']
        {
          id: 'id',
          filter: Stubs::MetricsFilter.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::MetricsConfiguration.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Id', stub[:id].to_s) unless stub[:id].nil?
        xml << Stubs::MetricsFilter.stub('Filter', stub[:filter]) unless stub[:filter].nil?
        xml
      end
    end

    # Union Stubber for MetricsFilter
    class MetricsFilter
      def self.default(visited=[])
        return nil if visited.include?('MetricsFilter')
        visited = visited + ['MetricsFilter']
        {
          prefix: 'prefix',
        }
      end

      def self.stub(node_name, stub)
        xml = Hearth::XML::Node.new(node_name)
        case stub
        when Types::MetricsFilter::Prefix
          xml << Hearth::XML::Node.new('Prefix', stub.__getobj__.to_s) unless stub.__getobj__.nil?
        when Types::MetricsFilter::Tag
          xml << Stubs::Tag.stub('Tag', stub.__getobj__) unless stub.__getobj__.nil?
        when Types::MetricsFilter::AccessPointArn
          xml << Hearth::XML::Node.new('AccessPointArn', stub.__getobj__.to_s) unless stub.__getobj__.nil?
        when Types::MetricsFilter::And
          xml << Stubs::MetricsAndOperator.stub('And', stub.__getobj__) unless stub.__getobj__.nil?
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::MetricsFilter"
        end

        xml
      end
    end

    # Structure Stubber for MetricsAndOperator
    class MetricsAndOperator
      def self.default(visited=[])
        return nil if visited.include?('MetricsAndOperator')
        visited = visited + ['MetricsAndOperator']
        {
          prefix: 'prefix',
          tags: Stubs::TagSet.default(visited),
          access_point_arn: 'access_point_arn',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::MetricsAndOperator.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Prefix', stub[:prefix].to_s) unless stub[:prefix].nil?
        xml << Stubs::TagSet.stub('Tag', stub[:tags]) unless stub[:tags].nil?
        xml << Hearth::XML::Node.new('AccessPointArn', stub[:access_point_arn].to_s) unless stub[:access_point_arn].nil?
        xml
      end
    end

    # Operation Stubber for GetBucketNotificationConfiguration
    class GetBucketNotificationConfiguration
      def self.default(visited=[])
        {
          topic_configurations: Stubs::TopicConfigurationList.default(visited),
          queue_configurations: Stubs::QueueConfigurationList.default(visited),
          lambda_function_configurations: Stubs::LambdaFunctionConfigurationList.default(visited),
          event_bridge_configuration: Stubs::EventBridgeConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('NotificationConfiguration')
        xml.attributes['xmlns'] = 'http://s3.amazonaws.com/doc/2006-03-01/'
        xml << Stubs::TopicConfigurationList.stub('TopicConfiguration', stub[:topic_configurations]) unless stub[:topic_configurations].nil?
        xml << Stubs::QueueConfigurationList.stub('QueueConfiguration', stub[:queue_configurations]) unless stub[:queue_configurations].nil?
        xml << Stubs::LambdaFunctionConfigurationList.stub('CloudFunctionConfiguration', stub[:lambda_function_configurations]) unless stub[:lambda_function_configurations].nil?
        xml << Stubs::EventBridgeConfiguration.stub('EventBridgeConfiguration', stub[:event_bridge_configuration]) unless stub[:event_bridge_configuration].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Structure Stubber for EventBridgeConfiguration
    class EventBridgeConfiguration
      def self.default(visited=[])
        return nil if visited.include?('EventBridgeConfiguration')
        visited = visited + ['EventBridgeConfiguration']
        {
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::EventBridgeConfiguration.new
        xml = Hearth::XML::Node.new(node_name)
        xml
      end
    end

    # List Stubber for LambdaFunctionConfigurationList
    class LambdaFunctionConfigurationList
      def self.default(visited=[])
        return nil if visited.include?('LambdaFunctionConfigurationList')
        visited = visited + ['LambdaFunctionConfigurationList']
        [
          Stubs::LambdaFunctionConfiguration.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::LambdaFunctionConfiguration.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for LambdaFunctionConfiguration
    class LambdaFunctionConfiguration
      def self.default(visited=[])
        return nil if visited.include?('LambdaFunctionConfiguration')
        visited = visited + ['LambdaFunctionConfiguration']
        {
          id: 'id',
          lambda_function_arn: 'lambda_function_arn',
          events: Stubs::EventList.default(visited),
          filter: Stubs::NotificationConfigurationFilter.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::LambdaFunctionConfiguration.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Id', stub[:id].to_s) unless stub[:id].nil?
        xml << Hearth::XML::Node.new('CloudFunction', stub[:lambda_function_arn].to_s) unless stub[:lambda_function_arn].nil?
        xml << Stubs::EventList.stub('Event', stub[:events]) unless stub[:events].nil?
        xml << Stubs::NotificationConfigurationFilter.stub('Filter', stub[:filter]) unless stub[:filter].nil?
        xml
      end
    end

    # Structure Stubber for NotificationConfigurationFilter
    class NotificationConfigurationFilter
      def self.default(visited=[])
        return nil if visited.include?('NotificationConfigurationFilter')
        visited = visited + ['NotificationConfigurationFilter']
        {
          key: Stubs::S3KeyFilter.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::NotificationConfigurationFilter.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Stubs::S3KeyFilter.stub('S3Key', stub[:key]) unless stub[:key].nil?
        xml
      end
    end

    # Structure Stubber for S3KeyFilter
    class S3KeyFilter
      def self.default(visited=[])
        return nil if visited.include?('S3KeyFilter')
        visited = visited + ['S3KeyFilter']
        {
          filter_rules: Stubs::FilterRuleList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::S3KeyFilter.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Stubs::FilterRuleList.stub('FilterRule', stub[:filter_rules]) unless stub[:filter_rules].nil?
        xml
      end
    end

    # List Stubber for FilterRuleList
    class FilterRuleList
      def self.default(visited=[])
        return nil if visited.include?('FilterRuleList')
        visited = visited + ['FilterRuleList']
        [
          Stubs::FilterRule.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::FilterRule.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for FilterRule
    class FilterRule
      def self.default(visited=[])
        return nil if visited.include?('FilterRule')
        visited = visited + ['FilterRule']
        {
          name: 'name',
          value: 'value',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::FilterRule.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml << Hearth::XML::Node.new('Value', stub[:value].to_s) unless stub[:value].nil?
        xml
      end
    end

    # List Stubber for EventList
    class EventList
      def self.default(visited=[])
        return nil if visited.include?('EventList')
        visited = visited + ['EventList']
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

    # List Stubber for QueueConfigurationList
    class QueueConfigurationList
      def self.default(visited=[])
        return nil if visited.include?('QueueConfigurationList')
        visited = visited + ['QueueConfigurationList']
        [
          Stubs::QueueConfiguration.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::QueueConfiguration.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for QueueConfiguration
    class QueueConfiguration
      def self.default(visited=[])
        return nil if visited.include?('QueueConfiguration')
        visited = visited + ['QueueConfiguration']
        {
          id: 'id',
          queue_arn: 'queue_arn',
          events: Stubs::EventList.default(visited),
          filter: Stubs::NotificationConfigurationFilter.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::QueueConfiguration.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Id', stub[:id].to_s) unless stub[:id].nil?
        xml << Hearth::XML::Node.new('Queue', stub[:queue_arn].to_s) unless stub[:queue_arn].nil?
        xml << Stubs::EventList.stub('Event', stub[:events]) unless stub[:events].nil?
        xml << Stubs::NotificationConfigurationFilter.stub('Filter', stub[:filter]) unless stub[:filter].nil?
        xml
      end
    end

    # List Stubber for TopicConfigurationList
    class TopicConfigurationList
      def self.default(visited=[])
        return nil if visited.include?('TopicConfigurationList')
        visited = visited + ['TopicConfigurationList']
        [
          Stubs::TopicConfiguration.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::TopicConfiguration.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for TopicConfiguration
    class TopicConfiguration
      def self.default(visited=[])
        return nil if visited.include?('TopicConfiguration')
        visited = visited + ['TopicConfiguration']
        {
          id: 'id',
          topic_arn: 'topic_arn',
          events: Stubs::EventList.default(visited),
          filter: Stubs::NotificationConfigurationFilter.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::TopicConfiguration.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Id', stub[:id].to_s) unless stub[:id].nil?
        xml << Hearth::XML::Node.new('Topic', stub[:topic_arn].to_s) unless stub[:topic_arn].nil?
        xml << Stubs::EventList.stub('Event', stub[:events]) unless stub[:events].nil?
        xml << Stubs::NotificationConfigurationFilter.stub('Filter', stub[:filter]) unless stub[:filter].nil?
        xml
      end
    end

    # Operation Stubber for GetBucketOwnershipControls
    class GetBucketOwnershipControls
      def self.default(visited=[])
        {
          ownership_controls: Stubs::OwnershipControls.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::OwnershipControls.build('OwnershipControls', stub[:ownership_controls]) unless stub[:ownership_controls].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Structure Stubber for OwnershipControls
    class OwnershipControls
      def self.default(visited=[])
        return nil if visited.include?('OwnershipControls')
        visited = visited + ['OwnershipControls']
        {
          rules: Stubs::OwnershipControlsRules.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::OwnershipControls.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Stubs::OwnershipControlsRules.stub('Rule', stub[:rules]) unless stub[:rules].nil?
        xml
      end
    end

    # List Stubber for OwnershipControlsRules
    class OwnershipControlsRules
      def self.default(visited=[])
        return nil if visited.include?('OwnershipControlsRules')
        visited = visited + ['OwnershipControlsRules']
        [
          Stubs::OwnershipControlsRule.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::OwnershipControlsRule.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for OwnershipControlsRule
    class OwnershipControlsRule
      def self.default(visited=[])
        return nil if visited.include?('OwnershipControlsRule')
        visited = visited + ['OwnershipControlsRule']
        {
          object_ownership: 'object_ownership',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::OwnershipControlsRule.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ObjectOwnership', stub[:object_ownership].to_s) unless stub[:object_ownership].nil?
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
        http_resp.headers['Content-Type'] = 'text/plain'
        http_resp.body = StringIO.new(stub[:policy] || '')
      end
    end

    # Operation Stubber for GetBucketPolicyStatus
    class GetBucketPolicyStatus
      def self.default(visited=[])
        {
          policy_status: Stubs::PolicyStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::PolicyStatus.build('PolicyStatus', stub[:policy_status]) unless stub[:policy_status].nil?
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

    # Operation Stubber for GetBucketReplication
    class GetBucketReplication
      def self.default(visited=[])
        {
          replication_configuration: Stubs::ReplicationConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::ReplicationConfiguration.build('ReplicationConfiguration', stub[:replication_configuration]) unless stub[:replication_configuration].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Structure Stubber for ReplicationConfiguration
    class ReplicationConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ReplicationConfiguration')
        visited = visited + ['ReplicationConfiguration']
        {
          role: 'role',
          rules: Stubs::ReplicationRules.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ReplicationConfiguration.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Role', stub[:role].to_s) unless stub[:role].nil?
        xml << Stubs::ReplicationRules.stub('Rule', stub[:rules]) unless stub[:rules].nil?
        xml
      end
    end

    # List Stubber for ReplicationRules
    class ReplicationRules
      def self.default(visited=[])
        return nil if visited.include?('ReplicationRules')
        visited = visited + ['ReplicationRules']
        [
          Stubs::ReplicationRule.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::ReplicationRule.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for ReplicationRule
    class ReplicationRule
      def self.default(visited=[])
        return nil if visited.include?('ReplicationRule')
        visited = visited + ['ReplicationRule']
        {
          id: 'id',
          priority: 1,
          prefix: 'prefix',
          filter: Stubs::ReplicationRuleFilter.default(visited),
          status: 'status',
          source_selection_criteria: Stubs::SourceSelectionCriteria.default(visited),
          existing_object_replication: Stubs::ExistingObjectReplication.default(visited),
          destination: Stubs::Destination.default(visited),
          delete_marker_replication: Stubs::DeleteMarkerReplication.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ReplicationRule.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ID', stub[:id].to_s) unless stub[:id].nil?
        xml << Hearth::XML::Node.new('Priority', stub[:priority].to_s) unless stub[:priority].nil?
        xml << Hearth::XML::Node.new('Prefix', stub[:prefix].to_s) unless stub[:prefix].nil?
        xml << Stubs::ReplicationRuleFilter.stub('Filter', stub[:filter]) unless stub[:filter].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Stubs::SourceSelectionCriteria.stub('SourceSelectionCriteria', stub[:source_selection_criteria]) unless stub[:source_selection_criteria].nil?
        xml << Stubs::ExistingObjectReplication.stub('ExistingObjectReplication', stub[:existing_object_replication]) unless stub[:existing_object_replication].nil?
        xml << Stubs::Destination.stub('Destination', stub[:destination]) unless stub[:destination].nil?
        xml << Stubs::DeleteMarkerReplication.stub('DeleteMarkerReplication', stub[:delete_marker_replication]) unless stub[:delete_marker_replication].nil?
        xml
      end
    end

    # Structure Stubber for DeleteMarkerReplication
    class DeleteMarkerReplication
      def self.default(visited=[])
        return nil if visited.include?('DeleteMarkerReplication')
        visited = visited + ['DeleteMarkerReplication']
        {
          status: 'status',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DeleteMarkerReplication.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml
      end
    end

    # Structure Stubber for Destination
    class Destination
      def self.default(visited=[])
        return nil if visited.include?('Destination')
        visited = visited + ['Destination']
        {
          bucket: 'bucket',
          account: 'account',
          storage_class: 'storage_class',
          access_control_translation: Stubs::AccessControlTranslation.default(visited),
          encryption_configuration: Stubs::EncryptionConfiguration.default(visited),
          replication_time: Stubs::ReplicationTime.default(visited),
          metrics: Stubs::Metrics.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Destination.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Bucket', stub[:bucket].to_s) unless stub[:bucket].nil?
        xml << Hearth::XML::Node.new('Account', stub[:account].to_s) unless stub[:account].nil?
        xml << Hearth::XML::Node.new('StorageClass', stub[:storage_class].to_s) unless stub[:storage_class].nil?
        xml << Stubs::AccessControlTranslation.stub('AccessControlTranslation', stub[:access_control_translation]) unless stub[:access_control_translation].nil?
        xml << Stubs::EncryptionConfiguration.stub('EncryptionConfiguration', stub[:encryption_configuration]) unless stub[:encryption_configuration].nil?
        xml << Stubs::ReplicationTime.stub('ReplicationTime', stub[:replication_time]) unless stub[:replication_time].nil?
        xml << Stubs::Metrics.stub('Metrics', stub[:metrics]) unless stub[:metrics].nil?
        xml
      end
    end

    # Structure Stubber for Metrics
    class Metrics
      def self.default(visited=[])
        return nil if visited.include?('Metrics')
        visited = visited + ['Metrics']
        {
          status: 'status',
          event_threshold: Stubs::ReplicationTimeValue.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Metrics.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Stubs::ReplicationTimeValue.stub('EventThreshold', stub[:event_threshold]) unless stub[:event_threshold].nil?
        xml
      end
    end

    # Structure Stubber for ReplicationTimeValue
    class ReplicationTimeValue
      def self.default(visited=[])
        return nil if visited.include?('ReplicationTimeValue')
        visited = visited + ['ReplicationTimeValue']
        {
          minutes: 1,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ReplicationTimeValue.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Minutes', stub[:minutes].to_s) unless stub[:minutes].nil?
        xml
      end
    end

    # Structure Stubber for ReplicationTime
    class ReplicationTime
      def self.default(visited=[])
        return nil if visited.include?('ReplicationTime')
        visited = visited + ['ReplicationTime']
        {
          status: 'status',
          time: Stubs::ReplicationTimeValue.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ReplicationTime.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Stubs::ReplicationTimeValue.stub('Time', stub[:time]) unless stub[:time].nil?
        xml
      end
    end

    # Structure Stubber for EncryptionConfiguration
    class EncryptionConfiguration
      def self.default(visited=[])
        return nil if visited.include?('EncryptionConfiguration')
        visited = visited + ['EncryptionConfiguration']
        {
          replica_kms_key_id: 'replica_kms_key_id',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::EncryptionConfiguration.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ReplicaKmsKeyID', stub[:replica_kms_key_id].to_s) unless stub[:replica_kms_key_id].nil?
        xml
      end
    end

    # Structure Stubber for AccessControlTranslation
    class AccessControlTranslation
      def self.default(visited=[])
        return nil if visited.include?('AccessControlTranslation')
        visited = visited + ['AccessControlTranslation']
        {
          owner: 'owner',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::AccessControlTranslation.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Owner', stub[:owner].to_s) unless stub[:owner].nil?
        xml
      end
    end

    # Structure Stubber for ExistingObjectReplication
    class ExistingObjectReplication
      def self.default(visited=[])
        return nil if visited.include?('ExistingObjectReplication')
        visited = visited + ['ExistingObjectReplication']
        {
          status: 'status',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ExistingObjectReplication.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml
      end
    end

    # Structure Stubber for SourceSelectionCriteria
    class SourceSelectionCriteria
      def self.default(visited=[])
        return nil if visited.include?('SourceSelectionCriteria')
        visited = visited + ['SourceSelectionCriteria']
        {
          sse_kms_encrypted_objects: Stubs::SseKmsEncryptedObjects.default(visited),
          replica_modifications: Stubs::ReplicaModifications.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::SourceSelectionCriteria.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Stubs::SseKmsEncryptedObjects.stub('SseKmsEncryptedObjects', stub[:sse_kms_encrypted_objects]) unless stub[:sse_kms_encrypted_objects].nil?
        xml << Stubs::ReplicaModifications.stub('ReplicaModifications', stub[:replica_modifications]) unless stub[:replica_modifications].nil?
        xml
      end
    end

    # Structure Stubber for ReplicaModifications
    class ReplicaModifications
      def self.default(visited=[])
        return nil if visited.include?('ReplicaModifications')
        visited = visited + ['ReplicaModifications']
        {
          status: 'status',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ReplicaModifications.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml
      end
    end

    # Structure Stubber for SseKmsEncryptedObjects
    class SseKmsEncryptedObjects
      def self.default(visited=[])
        return nil if visited.include?('SseKmsEncryptedObjects')
        visited = visited + ['SseKmsEncryptedObjects']
        {
          status: 'status',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::SseKmsEncryptedObjects.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml
      end
    end

    # Union Stubber for ReplicationRuleFilter
    class ReplicationRuleFilter
      def self.default(visited=[])
        return nil if visited.include?('ReplicationRuleFilter')
        visited = visited + ['ReplicationRuleFilter']
        {
          prefix: 'prefix',
        }
      end

      def self.stub(node_name, stub)
        xml = Hearth::XML::Node.new(node_name)
        case stub
        when Types::ReplicationRuleFilter::Prefix
          xml << Hearth::XML::Node.new('Prefix', stub.__getobj__.to_s) unless stub.__getobj__.nil?
        when Types::ReplicationRuleFilter::Tag
          xml << Stubs::Tag.stub('Tag', stub.__getobj__) unless stub.__getobj__.nil?
        when Types::ReplicationRuleFilter::And
          xml << Stubs::ReplicationRuleAndOperator.stub('And', stub.__getobj__) unless stub.__getobj__.nil?
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::ReplicationRuleFilter"
        end

        xml
      end
    end

    # Structure Stubber for ReplicationRuleAndOperator
    class ReplicationRuleAndOperator
      def self.default(visited=[])
        return nil if visited.include?('ReplicationRuleAndOperator')
        visited = visited + ['ReplicationRuleAndOperator']
        {
          prefix: 'prefix',
          tags: Stubs::TagSet.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ReplicationRuleAndOperator.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Prefix', stub[:prefix].to_s) unless stub[:prefix].nil?
        xml << Stubs::TagSet.stub('Tag', stub[:tags]) unless stub[:tags].nil?
        xml
      end
    end

    # Operation Stubber for GetBucketRequestPayment
    class GetBucketRequestPayment
      def self.default(visited=[])
        {
          payer: 'payer',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('RequestPaymentConfiguration')
        xml.attributes['xmlns'] = 'http://s3.amazonaws.com/doc/2006-03-01/'
        xml << Hearth::XML::Node.new('Payer', stub[:payer].to_s) unless stub[:payer].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for GetBucketTagging
    class GetBucketTagging
      def self.default(visited=[])
        {
          tag_set: Stubs::TagSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('Tagging')
        xml.attributes['xmlns'] = 'http://s3.amazonaws.com/doc/2006-03-01/'
        xml << Hearth::XML::Node.new('TagSet', Stubs::TagSet.stub('Tag', stub[:tag_set])) unless stub[:tag_set].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for GetBucketVersioning
    class GetBucketVersioning
      def self.default(visited=[])
        {
          status: 'status',
          mfa_delete: 'mfa_delete',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('VersioningConfiguration')
        xml.attributes['xmlns'] = 'http://s3.amazonaws.com/doc/2006-03-01/'
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('MfaDelete', stub[:mfa_delete].to_s) unless stub[:mfa_delete].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for GetBucketWebsite
    class GetBucketWebsite
      def self.default(visited=[])
        {
          redirect_all_requests_to: Stubs::RedirectAllRequestsTo.default(visited),
          index_document: Stubs::IndexDocument.default(visited),
          error_document: Stubs::ErrorDocument.default(visited),
          routing_rules: Stubs::RoutingRules.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('WebsiteConfiguration')
        xml.attributes['xmlns'] = 'http://s3.amazonaws.com/doc/2006-03-01/'
        xml << Stubs::RedirectAllRequestsTo.stub('RedirectAllRequestsTo', stub[:redirect_all_requests_to]) unless stub[:redirect_all_requests_to].nil?
        xml << Stubs::IndexDocument.stub('IndexDocument', stub[:index_document]) unless stub[:index_document].nil?
        xml << Stubs::ErrorDocument.stub('ErrorDocument', stub[:error_document]) unless stub[:error_document].nil?
        xml << Hearth::XML::Node.new('RoutingRules', Stubs::RoutingRules.stub('RoutingRule', stub[:routing_rules])) unless stub[:routing_rules].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # List Stubber for RoutingRules
    class RoutingRules
      def self.default(visited=[])
        return nil if visited.include?('RoutingRules')
        visited = visited + ['RoutingRules']
        [
          Stubs::RoutingRule.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::RoutingRule.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for RoutingRule
    class RoutingRule
      def self.default(visited=[])
        return nil if visited.include?('RoutingRule')
        visited = visited + ['RoutingRule']
        {
          condition: Stubs::Condition.default(visited),
          redirect: Stubs::Redirect.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::RoutingRule.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Stubs::Condition.stub('Condition', stub[:condition]) unless stub[:condition].nil?
        xml << Stubs::Redirect.stub('Redirect', stub[:redirect]) unless stub[:redirect].nil?
        xml
      end
    end

    # Structure Stubber for Redirect
    class Redirect
      def self.default(visited=[])
        return nil if visited.include?('Redirect')
        visited = visited + ['Redirect']
        {
          host_name: 'host_name',
          http_redirect_code: 'http_redirect_code',
          protocol: 'protocol',
          replace_key_prefix_with: 'replace_key_prefix_with',
          replace_key_with: 'replace_key_with',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Redirect.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('HostName', stub[:host_name].to_s) unless stub[:host_name].nil?
        xml << Hearth::XML::Node.new('HttpRedirectCode', stub[:http_redirect_code].to_s) unless stub[:http_redirect_code].nil?
        xml << Hearth::XML::Node.new('Protocol', stub[:protocol].to_s) unless stub[:protocol].nil?
        xml << Hearth::XML::Node.new('ReplaceKeyPrefixWith', stub[:replace_key_prefix_with].to_s) unless stub[:replace_key_prefix_with].nil?
        xml << Hearth::XML::Node.new('ReplaceKeyWith', stub[:replace_key_with].to_s) unless stub[:replace_key_with].nil?
        xml
      end
    end

    # Structure Stubber for Condition
    class Condition
      def self.default(visited=[])
        return nil if visited.include?('Condition')
        visited = visited + ['Condition']
        {
          http_error_code_returned_equals: 'http_error_code_returned_equals',
          key_prefix_equals: 'key_prefix_equals',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Condition.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('HttpErrorCodeReturnedEquals', stub[:http_error_code_returned_equals].to_s) unless stub[:http_error_code_returned_equals].nil?
        xml << Hearth::XML::Node.new('KeyPrefixEquals', stub[:key_prefix_equals].to_s) unless stub[:key_prefix_equals].nil?
        xml
      end
    end

    # Structure Stubber for ErrorDocument
    class ErrorDocument
      def self.default(visited=[])
        return nil if visited.include?('ErrorDocument')
        visited = visited + ['ErrorDocument']
        {
          key: 'key',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ErrorDocument.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Key', stub[:key].to_s) unless stub[:key].nil?
        xml
      end
    end

    # Structure Stubber for IndexDocument
    class IndexDocument
      def self.default(visited=[])
        return nil if visited.include?('IndexDocument')
        visited = visited + ['IndexDocument']
        {
          suffix: 'suffix',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::IndexDocument.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Suffix', stub[:suffix].to_s) unless stub[:suffix].nil?
        xml
      end
    end

    # Structure Stubber for RedirectAllRequestsTo
    class RedirectAllRequestsTo
      def self.default(visited=[])
        return nil if visited.include?('RedirectAllRequestsTo')
        visited = visited + ['RedirectAllRequestsTo']
        {
          host_name: 'host_name',
          protocol: 'protocol',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::RedirectAllRequestsTo.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('HostName', stub[:host_name].to_s) unless stub[:host_name].nil?
        xml << Hearth::XML::Node.new('Protocol', stub[:protocol].to_s) unless stub[:protocol].nil?
        xml
      end
    end

    # Operation Stubber for GetObject
    class GetObject
      def self.default(visited=[])
        {
          body: 'body',
          delete_marker: false,
          accept_ranges: 'accept_ranges',
          expiration: 'expiration',
          restore: 'restore',
          last_modified: Time.now,
          content_length: 1,
          e_tag: 'e_tag',
          checksum_crc32: 'checksum_crc32',
          checksum_crc32_c: 'checksum_crc32_c',
          checksum_sha1: 'checksum_sha1',
          checksum_sha256: 'checksum_sha256',
          missing_meta: 1,
          version_id: 'version_id',
          cache_control: 'cache_control',
          content_disposition: 'content_disposition',
          content_encoding: 'content_encoding',
          content_language: 'content_language',
          content_range: 'content_range',
          content_type: 'content_type',
          expires: Time.now,
          website_redirect_location: 'website_redirect_location',
          server_side_encryption: 'server_side_encryption',
          metadata: Stubs::Metadata.default(visited),
          sse_customer_algorithm: 'sse_customer_algorithm',
          sse_customer_key_md5: 'sse_customer_key_md5',
          ssekms_key_id: 'ssekms_key_id',
          bucket_key_enabled: false,
          storage_class: 'storage_class',
          request_charged: 'request_charged',
          replication_status: 'replication_status',
          parts_count: 1,
          tag_count: 1,
          object_lock_mode: 'object_lock_mode',
          object_lock_retain_until_date: Time.now,
          object_lock_legal_hold_status: 'object_lock_legal_hold_status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['x-amz-delete-marker'] = stub[:delete_marker].to_s unless stub[:delete_marker].nil?
        http_resp.headers['accept-ranges'] = stub[:accept_ranges] unless stub[:accept_ranges].nil? || stub[:accept_ranges].empty?
        http_resp.headers['x-amz-expiration'] = stub[:expiration] unless stub[:expiration].nil? || stub[:expiration].empty?
        http_resp.headers['x-amz-restore'] = stub[:restore] unless stub[:restore].nil? || stub[:restore].empty?
        http_resp.headers['Last-Modified'] = Hearth::TimeHelper.to_date_time(stub[:last_modified]) unless stub[:last_modified].nil?
        http_resp.headers['Content-Length'] = stub[:content_length].to_s unless stub[:content_length].nil?
        http_resp.headers['ETag'] = stub[:e_tag] unless stub[:e_tag].nil? || stub[:e_tag].empty?
        http_resp.headers['x-amz-checksum-crc32'] = stub[:checksum_crc32] unless stub[:checksum_crc32].nil? || stub[:checksum_crc32].empty?
        http_resp.headers['x-amz-checksum-crc32c'] = stub[:checksum_crc32_c] unless stub[:checksum_crc32_c].nil? || stub[:checksum_crc32_c].empty?
        http_resp.headers['x-amz-checksum-sha1'] = stub[:checksum_sha1] unless stub[:checksum_sha1].nil? || stub[:checksum_sha1].empty?
        http_resp.headers['x-amz-checksum-sha256'] = stub[:checksum_sha256] unless stub[:checksum_sha256].nil? || stub[:checksum_sha256].empty?
        http_resp.headers['x-amz-missing-meta'] = stub[:missing_meta].to_s unless stub[:missing_meta].nil?
        http_resp.headers['x-amz-version-id'] = stub[:version_id] unless stub[:version_id].nil? || stub[:version_id].empty?
        http_resp.headers['Cache-Control'] = stub[:cache_control] unless stub[:cache_control].nil? || stub[:cache_control].empty?
        http_resp.headers['Content-Disposition'] = stub[:content_disposition] unless stub[:content_disposition].nil? || stub[:content_disposition].empty?
        http_resp.headers['Content-Encoding'] = stub[:content_encoding] unless stub[:content_encoding].nil? || stub[:content_encoding].empty?
        http_resp.headers['Content-Language'] = stub[:content_language] unless stub[:content_language].nil? || stub[:content_language].empty?
        http_resp.headers['Content-Range'] = stub[:content_range] unless stub[:content_range].nil? || stub[:content_range].empty?
        http_resp.headers['Content-Type'] = stub[:content_type] unless stub[:content_type].nil? || stub[:content_type].empty?
        http_resp.headers['Expires'] = Hearth::TimeHelper.to_date_time(stub[:expires]) unless stub[:expires].nil?
        http_resp.headers['x-amz-website-redirect-location'] = stub[:website_redirect_location] unless stub[:website_redirect_location].nil? || stub[:website_redirect_location].empty?
        http_resp.headers['x-amz-server-side-encryption'] = stub[:server_side_encryption] unless stub[:server_side_encryption].nil? || stub[:server_side_encryption].empty?
        http_resp.headers['x-amz-server-side-encryption-customer-algorithm'] = stub[:sse_customer_algorithm] unless stub[:sse_customer_algorithm].nil? || stub[:sse_customer_algorithm].empty?
        http_resp.headers['x-amz-server-side-encryption-customer-key-MD5'] = stub[:sse_customer_key_md5] unless stub[:sse_customer_key_md5].nil? || stub[:sse_customer_key_md5].empty?
        http_resp.headers['x-amz-server-side-encryption-aws-kms-key-id'] = stub[:ssekms_key_id] unless stub[:ssekms_key_id].nil? || stub[:ssekms_key_id].empty?
        http_resp.headers['x-amz-server-side-encryption-bucket-key-enabled'] = stub[:bucket_key_enabled].to_s unless stub[:bucket_key_enabled].nil?
        http_resp.headers['x-amz-storage-class'] = stub[:storage_class] unless stub[:storage_class].nil? || stub[:storage_class].empty?
        http_resp.headers['x-amz-request-charged'] = stub[:request_charged] unless stub[:request_charged].nil? || stub[:request_charged].empty?
        http_resp.headers['x-amz-replication-status'] = stub[:replication_status] unless stub[:replication_status].nil? || stub[:replication_status].empty?
        http_resp.headers['x-amz-mp-parts-count'] = stub[:parts_count].to_s unless stub[:parts_count].nil?
        http_resp.headers['x-amz-tagging-count'] = stub[:tag_count].to_s unless stub[:tag_count].nil?
        http_resp.headers['x-amz-object-lock-mode'] = stub[:object_lock_mode] unless stub[:object_lock_mode].nil? || stub[:object_lock_mode].empty?
        http_resp.headers['x-amz-object-lock-retain-until-date'] = Hearth::TimeHelper.to_date_time(stub[:object_lock_retain_until_date]) unless stub[:object_lock_retain_until_date].nil?
        http_resp.headers['x-amz-object-lock-legal-hold'] = stub[:object_lock_legal_hold_status] unless stub[:object_lock_legal_hold_status].nil? || stub[:object_lock_legal_hold_status].empty?
        stub[:metadata].each do |key, value|
          http_resp.headers["x-amz-meta-#{key}"] = value unless value.nil? || value.empty?
        end
        IO.copy_stream(stub[:body], http_resp.body)
      end
    end

    # Map Stubber for Metadata
    class Metadata
      def self.default(visited=[])
        return nil if visited.include?('Metadata')
        visited = visited + ['Metadata']
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

    # Operation Stubber for GetObjectAcl
    class GetObjectAcl
      def self.default(visited=[])
        {
          owner: Stubs::Owner.default(visited),
          grants: Stubs::Grants.default(visited),
          request_charged: 'request_charged',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['x-amz-request-charged'] = stub[:request_charged] unless stub[:request_charged].nil? || stub[:request_charged].empty?

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('AccessControlPolicy')
        xml.attributes['xmlns'] = 'http://s3.amazonaws.com/doc/2006-03-01/'
        xml << Stubs::Owner.stub('Owner', stub[:owner]) unless stub[:owner].nil?
        xml << Hearth::XML::Node.new('AccessControlList', Stubs::Grants.stub('Grant', stub[:grants])) unless stub[:grants].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for GetObjectAttributes
    class GetObjectAttributes
      def self.default(visited=[])
        {
          delete_marker: false,
          last_modified: Time.now,
          version_id: 'version_id',
          request_charged: 'request_charged',
          e_tag: 'e_tag',
          checksum: Stubs::Checksum.default(visited),
          object_parts: Stubs::GetObjectAttributesParts.default(visited),
          storage_class: 'storage_class',
          object_size: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['x-amz-delete-marker'] = stub[:delete_marker].to_s unless stub[:delete_marker].nil?
        http_resp.headers['Last-Modified'] = Hearth::TimeHelper.to_date_time(stub[:last_modified]) unless stub[:last_modified].nil?
        http_resp.headers['x-amz-version-id'] = stub[:version_id] unless stub[:version_id].nil? || stub[:version_id].empty?
        http_resp.headers['x-amz-request-charged'] = stub[:request_charged] unless stub[:request_charged].nil? || stub[:request_charged].empty?

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('GetObjectAttributesOutput')
        xml.attributes['xmlns'] = 'http://s3.amazonaws.com/doc/2006-03-01/'
        xml << Hearth::XML::Node.new('ETag', stub[:e_tag].to_s) unless stub[:e_tag].nil?
        xml << Stubs::Checksum.stub('Checksum', stub[:checksum]) unless stub[:checksum].nil?
        xml << Stubs::GetObjectAttributesParts.stub('ObjectParts', stub[:object_parts]) unless stub[:object_parts].nil?
        xml << Hearth::XML::Node.new('StorageClass', stub[:storage_class].to_s) unless stub[:storage_class].nil?
        xml << Hearth::XML::Node.new('ObjectSize', stub[:object_size].to_s) unless stub[:object_size].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Structure Stubber for GetObjectAttributesParts
    class GetObjectAttributesParts
      def self.default(visited=[])
        return nil if visited.include?('GetObjectAttributesParts')
        visited = visited + ['GetObjectAttributesParts']
        {
          total_parts_count: 1,
          part_number_marker: 'part_number_marker',
          next_part_number_marker: 'next_part_number_marker',
          max_parts: 1,
          is_truncated: false,
          parts: Stubs::PartsList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::GetObjectAttributesParts.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('PartsCount', stub[:total_parts_count].to_s) unless stub[:total_parts_count].nil?
        xml << Hearth::XML::Node.new('PartNumberMarker', stub[:part_number_marker].to_s) unless stub[:part_number_marker].nil?
        xml << Hearth::XML::Node.new('NextPartNumberMarker', stub[:next_part_number_marker].to_s) unless stub[:next_part_number_marker].nil?
        xml << Hearth::XML::Node.new('MaxParts', stub[:max_parts].to_s) unless stub[:max_parts].nil?
        xml << Hearth::XML::Node.new('IsTruncated', stub[:is_truncated].to_s) unless stub[:is_truncated].nil?
        xml << Stubs::PartsList.stub('Part', stub[:parts]) unless stub[:parts].nil?
        xml
      end
    end

    # List Stubber for PartsList
    class PartsList
      def self.default(visited=[])
        return nil if visited.include?('PartsList')
        visited = visited + ['PartsList']
        [
          Stubs::ObjectPart.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::ObjectPart.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for ObjectPart
    class ObjectPart
      def self.default(visited=[])
        return nil if visited.include?('ObjectPart')
        visited = visited + ['ObjectPart']
        {
          part_number: 1,
          size: 1,
          checksum_crc32: 'checksum_crc32',
          checksum_crc32_c: 'checksum_crc32_c',
          checksum_sha1: 'checksum_sha1',
          checksum_sha256: 'checksum_sha256',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ObjectPart.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('PartNumber', stub[:part_number].to_s) unless stub[:part_number].nil?
        xml << Hearth::XML::Node.new('Size', stub[:size].to_s) unless stub[:size].nil?
        xml << Hearth::XML::Node.new('ChecksumCRC32', stub[:checksum_crc32].to_s) unless stub[:checksum_crc32].nil?
        xml << Hearth::XML::Node.new('ChecksumCRC32C', stub[:checksum_crc32_c].to_s) unless stub[:checksum_crc32_c].nil?
        xml << Hearth::XML::Node.new('ChecksumSHA1', stub[:checksum_sha1].to_s) unless stub[:checksum_sha1].nil?
        xml << Hearth::XML::Node.new('ChecksumSHA256', stub[:checksum_sha256].to_s) unless stub[:checksum_sha256].nil?
        xml
      end
    end

    # Structure Stubber for Checksum
    class Checksum
      def self.default(visited=[])
        return nil if visited.include?('Checksum')
        visited = visited + ['Checksum']
        {
          checksum_crc32: 'checksum_crc32',
          checksum_crc32_c: 'checksum_crc32_c',
          checksum_sha1: 'checksum_sha1',
          checksum_sha256: 'checksum_sha256',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Checksum.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ChecksumCRC32', stub[:checksum_crc32].to_s) unless stub[:checksum_crc32].nil?
        xml << Hearth::XML::Node.new('ChecksumCRC32C', stub[:checksum_crc32_c].to_s) unless stub[:checksum_crc32_c].nil?
        xml << Hearth::XML::Node.new('ChecksumSHA1', stub[:checksum_sha1].to_s) unless stub[:checksum_sha1].nil?
        xml << Hearth::XML::Node.new('ChecksumSHA256', stub[:checksum_sha256].to_s) unless stub[:checksum_sha256].nil?
        xml
      end
    end

    # Operation Stubber for GetObjectLegalHold
    class GetObjectLegalHold
      def self.default(visited=[])
        {
          legal_hold: Stubs::ObjectLockLegalHold.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::ObjectLockLegalHold.build('ObjectLockLegalHold', stub[:legal_hold]) unless stub[:legal_hold].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Structure Stubber for ObjectLockLegalHold
    class ObjectLockLegalHold
      def self.default(visited=[])
        return nil if visited.include?('ObjectLockLegalHold')
        visited = visited + ['ObjectLockLegalHold']
        {
          status: 'status',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ObjectLockLegalHold.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml
      end
    end

    # Operation Stubber for GetObjectLockConfiguration
    class GetObjectLockConfiguration
      def self.default(visited=[])
        {
          object_lock_configuration: Stubs::ObjectLockConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::ObjectLockConfiguration.build('ObjectLockConfiguration', stub[:object_lock_configuration]) unless stub[:object_lock_configuration].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Structure Stubber for ObjectLockConfiguration
    class ObjectLockConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ObjectLockConfiguration')
        visited = visited + ['ObjectLockConfiguration']
        {
          object_lock_enabled: 'object_lock_enabled',
          rule: Stubs::ObjectLockRule.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ObjectLockConfiguration.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ObjectLockEnabled', stub[:object_lock_enabled].to_s) unless stub[:object_lock_enabled].nil?
        xml << Stubs::ObjectLockRule.stub('Rule', stub[:rule]) unless stub[:rule].nil?
        xml
      end
    end

    # Structure Stubber for ObjectLockRule
    class ObjectLockRule
      def self.default(visited=[])
        return nil if visited.include?('ObjectLockRule')
        visited = visited + ['ObjectLockRule']
        {
          default_retention: Stubs::DefaultRetention.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ObjectLockRule.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Stubs::DefaultRetention.stub('DefaultRetention', stub[:default_retention]) unless stub[:default_retention].nil?
        xml
      end
    end

    # Structure Stubber for DefaultRetention
    class DefaultRetention
      def self.default(visited=[])
        return nil if visited.include?('DefaultRetention')
        visited = visited + ['DefaultRetention']
        {
          mode: 'mode',
          days: 1,
          years: 1,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DefaultRetention.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Mode', stub[:mode].to_s) unless stub[:mode].nil?
        xml << Hearth::XML::Node.new('Days', stub[:days].to_s) unless stub[:days].nil?
        xml << Hearth::XML::Node.new('Years', stub[:years].to_s) unless stub[:years].nil?
        xml
      end
    end

    # Operation Stubber for GetObjectRetention
    class GetObjectRetention
      def self.default(visited=[])
        {
          retention: Stubs::ObjectLockRetention.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::ObjectLockRetention.build('ObjectLockRetention', stub[:retention]) unless stub[:retention].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Structure Stubber for ObjectLockRetention
    class ObjectLockRetention
      def self.default(visited=[])
        return nil if visited.include?('ObjectLockRetention')
        visited = visited + ['ObjectLockRetention']
        {
          mode: 'mode',
          retain_until_date: Time.now,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ObjectLockRetention.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Mode', stub[:mode].to_s) unless stub[:mode].nil?
        xml << Hearth::XML::Node.new('RetainUntilDate', Hearth::TimeHelper.to_date_time(stub[:retain_until_date])) unless stub[:retain_until_date].nil?
        xml
      end
    end

    # Operation Stubber for GetObjectTagging
    class GetObjectTagging
      def self.default(visited=[])
        {
          version_id: 'version_id',
          tag_set: Stubs::TagSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['x-amz-version-id'] = stub[:version_id] unless stub[:version_id].nil? || stub[:version_id].empty?

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('Tagging')
        xml.attributes['xmlns'] = 'http://s3.amazonaws.com/doc/2006-03-01/'
        xml << Hearth::XML::Node.new('TagSet', Stubs::TagSet.stub('Tag', stub[:tag_set])) unless stub[:tag_set].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for GetObjectTorrent
    class GetObjectTorrent
      def self.default(visited=[])
        {
          body: 'body',
          request_charged: 'request_charged',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['x-amz-request-charged'] = stub[:request_charged] unless stub[:request_charged].nil? || stub[:request_charged].empty?
        IO.copy_stream(stub[:body], http_resp.body)
      end
    end

    # Operation Stubber for GetPublicAccessBlock
    class GetPublicAccessBlock
      def self.default(visited=[])
        {
          public_access_block_configuration: Stubs::PublicAccessBlockConfiguration.default(visited),
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

    # Operation Stubber for HeadBucket
    class HeadBucket
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for HeadObject
    class HeadObject
      def self.default(visited=[])
        {
          delete_marker: false,
          accept_ranges: 'accept_ranges',
          expiration: 'expiration',
          restore: 'restore',
          archive_status: 'archive_status',
          last_modified: Time.now,
          content_length: 1,
          checksum_crc32: 'checksum_crc32',
          checksum_crc32_c: 'checksum_crc32_c',
          checksum_sha1: 'checksum_sha1',
          checksum_sha256: 'checksum_sha256',
          e_tag: 'e_tag',
          missing_meta: 1,
          version_id: 'version_id',
          cache_control: 'cache_control',
          content_disposition: 'content_disposition',
          content_encoding: 'content_encoding',
          content_language: 'content_language',
          content_type: 'content_type',
          expires: Time.now,
          website_redirect_location: 'website_redirect_location',
          server_side_encryption: 'server_side_encryption',
          metadata: Stubs::Metadata.default(visited),
          sse_customer_algorithm: 'sse_customer_algorithm',
          sse_customer_key_md5: 'sse_customer_key_md5',
          ssekms_key_id: 'ssekms_key_id',
          bucket_key_enabled: false,
          storage_class: 'storage_class',
          request_charged: 'request_charged',
          replication_status: 'replication_status',
          parts_count: 1,
          object_lock_mode: 'object_lock_mode',
          object_lock_retain_until_date: Time.now,
          object_lock_legal_hold_status: 'object_lock_legal_hold_status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['x-amz-delete-marker'] = stub[:delete_marker].to_s unless stub[:delete_marker].nil?
        http_resp.headers['accept-ranges'] = stub[:accept_ranges] unless stub[:accept_ranges].nil? || stub[:accept_ranges].empty?
        http_resp.headers['x-amz-expiration'] = stub[:expiration] unless stub[:expiration].nil? || stub[:expiration].empty?
        http_resp.headers['x-amz-restore'] = stub[:restore] unless stub[:restore].nil? || stub[:restore].empty?
        http_resp.headers['x-amz-archive-status'] = stub[:archive_status] unless stub[:archive_status].nil? || stub[:archive_status].empty?
        http_resp.headers['Last-Modified'] = Hearth::TimeHelper.to_date_time(stub[:last_modified]) unless stub[:last_modified].nil?
        http_resp.headers['Content-Length'] = stub[:content_length].to_s unless stub[:content_length].nil?
        http_resp.headers['x-amz-checksum-crc32'] = stub[:checksum_crc32] unless stub[:checksum_crc32].nil? || stub[:checksum_crc32].empty?
        http_resp.headers['x-amz-checksum-crc32c'] = stub[:checksum_crc32_c] unless stub[:checksum_crc32_c].nil? || stub[:checksum_crc32_c].empty?
        http_resp.headers['x-amz-checksum-sha1'] = stub[:checksum_sha1] unless stub[:checksum_sha1].nil? || stub[:checksum_sha1].empty?
        http_resp.headers['x-amz-checksum-sha256'] = stub[:checksum_sha256] unless stub[:checksum_sha256].nil? || stub[:checksum_sha256].empty?
        http_resp.headers['ETag'] = stub[:e_tag] unless stub[:e_tag].nil? || stub[:e_tag].empty?
        http_resp.headers['x-amz-missing-meta'] = stub[:missing_meta].to_s unless stub[:missing_meta].nil?
        http_resp.headers['x-amz-version-id'] = stub[:version_id] unless stub[:version_id].nil? || stub[:version_id].empty?
        http_resp.headers['Cache-Control'] = stub[:cache_control] unless stub[:cache_control].nil? || stub[:cache_control].empty?
        http_resp.headers['Content-Disposition'] = stub[:content_disposition] unless stub[:content_disposition].nil? || stub[:content_disposition].empty?
        http_resp.headers['Content-Encoding'] = stub[:content_encoding] unless stub[:content_encoding].nil? || stub[:content_encoding].empty?
        http_resp.headers['Content-Language'] = stub[:content_language] unless stub[:content_language].nil? || stub[:content_language].empty?
        http_resp.headers['Content-Type'] = stub[:content_type] unless stub[:content_type].nil? || stub[:content_type].empty?
        http_resp.headers['Expires'] = Hearth::TimeHelper.to_date_time(stub[:expires]) unless stub[:expires].nil?
        http_resp.headers['x-amz-website-redirect-location'] = stub[:website_redirect_location] unless stub[:website_redirect_location].nil? || stub[:website_redirect_location].empty?
        http_resp.headers['x-amz-server-side-encryption'] = stub[:server_side_encryption] unless stub[:server_side_encryption].nil? || stub[:server_side_encryption].empty?
        http_resp.headers['x-amz-server-side-encryption-customer-algorithm'] = stub[:sse_customer_algorithm] unless stub[:sse_customer_algorithm].nil? || stub[:sse_customer_algorithm].empty?
        http_resp.headers['x-amz-server-side-encryption-customer-key-MD5'] = stub[:sse_customer_key_md5] unless stub[:sse_customer_key_md5].nil? || stub[:sse_customer_key_md5].empty?
        http_resp.headers['x-amz-server-side-encryption-aws-kms-key-id'] = stub[:ssekms_key_id] unless stub[:ssekms_key_id].nil? || stub[:ssekms_key_id].empty?
        http_resp.headers['x-amz-server-side-encryption-bucket-key-enabled'] = stub[:bucket_key_enabled].to_s unless stub[:bucket_key_enabled].nil?
        http_resp.headers['x-amz-storage-class'] = stub[:storage_class] unless stub[:storage_class].nil? || stub[:storage_class].empty?
        http_resp.headers['x-amz-request-charged'] = stub[:request_charged] unless stub[:request_charged].nil? || stub[:request_charged].empty?
        http_resp.headers['x-amz-replication-status'] = stub[:replication_status] unless stub[:replication_status].nil? || stub[:replication_status].empty?
        http_resp.headers['x-amz-mp-parts-count'] = stub[:parts_count].to_s unless stub[:parts_count].nil?
        http_resp.headers['x-amz-object-lock-mode'] = stub[:object_lock_mode] unless stub[:object_lock_mode].nil? || stub[:object_lock_mode].empty?
        http_resp.headers['x-amz-object-lock-retain-until-date'] = Hearth::TimeHelper.to_date_time(stub[:object_lock_retain_until_date]) unless stub[:object_lock_retain_until_date].nil?
        http_resp.headers['x-amz-object-lock-legal-hold'] = stub[:object_lock_legal_hold_status] unless stub[:object_lock_legal_hold_status].nil? || stub[:object_lock_legal_hold_status].empty?
        stub[:metadata].each do |key, value|
          http_resp.headers["x-amz-meta-#{key}"] = value unless value.nil? || value.empty?
        end
      end
    end

    # Operation Stubber for ListBucketAnalyticsConfigurations
    class ListBucketAnalyticsConfigurations
      def self.default(visited=[])
        {
          is_truncated: false,
          continuation_token: 'continuation_token',
          next_continuation_token: 'next_continuation_token',
          analytics_configuration_list: Stubs::AnalyticsConfigurationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('ListBucketAnalyticsConfigurationResult')
        xml.attributes['xmlns'] = 'http://s3.amazonaws.com/doc/2006-03-01/'
        xml << Hearth::XML::Node.new('IsTruncated', stub[:is_truncated].to_s) unless stub[:is_truncated].nil?
        xml << Hearth::XML::Node.new('ContinuationToken', stub[:continuation_token].to_s) unless stub[:continuation_token].nil?
        xml << Hearth::XML::Node.new('NextContinuationToken', stub[:next_continuation_token].to_s) unless stub[:next_continuation_token].nil?
        xml << Stubs::AnalyticsConfigurationList.stub('AnalyticsConfiguration', stub[:analytics_configuration_list]) unless stub[:analytics_configuration_list].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # List Stubber for AnalyticsConfigurationList
    class AnalyticsConfigurationList
      def self.default(visited=[])
        return nil if visited.include?('AnalyticsConfigurationList')
        visited = visited + ['AnalyticsConfigurationList']
        [
          Stubs::AnalyticsConfiguration.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::AnalyticsConfiguration.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for ListBucketIntelligentTieringConfigurations
    class ListBucketIntelligentTieringConfigurations
      def self.default(visited=[])
        {
          is_truncated: false,
          continuation_token: 'continuation_token',
          next_continuation_token: 'next_continuation_token',
          intelligent_tiering_configuration_list: Stubs::IntelligentTieringConfigurationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('ListBucketIntelligentTieringConfigurationsOutput')
        xml.attributes['xmlns'] = 'http://s3.amazonaws.com/doc/2006-03-01/'
        xml << Hearth::XML::Node.new('IsTruncated', stub[:is_truncated].to_s) unless stub[:is_truncated].nil?
        xml << Hearth::XML::Node.new('ContinuationToken', stub[:continuation_token].to_s) unless stub[:continuation_token].nil?
        xml << Hearth::XML::Node.new('NextContinuationToken', stub[:next_continuation_token].to_s) unless stub[:next_continuation_token].nil?
        xml << Stubs::IntelligentTieringConfigurationList.stub('IntelligentTieringConfiguration', stub[:intelligent_tiering_configuration_list]) unless stub[:intelligent_tiering_configuration_list].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # List Stubber for IntelligentTieringConfigurationList
    class IntelligentTieringConfigurationList
      def self.default(visited=[])
        return nil if visited.include?('IntelligentTieringConfigurationList')
        visited = visited + ['IntelligentTieringConfigurationList']
        [
          Stubs::IntelligentTieringConfiguration.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::IntelligentTieringConfiguration.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for ListBucketInventoryConfigurations
    class ListBucketInventoryConfigurations
      def self.default(visited=[])
        {
          continuation_token: 'continuation_token',
          inventory_configuration_list: Stubs::InventoryConfigurationList.default(visited),
          is_truncated: false,
          next_continuation_token: 'next_continuation_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('ListInventoryConfigurationsResult')
        xml.attributes['xmlns'] = 'http://s3.amazonaws.com/doc/2006-03-01/'
        xml << Hearth::XML::Node.new('ContinuationToken', stub[:continuation_token].to_s) unless stub[:continuation_token].nil?
        xml << Stubs::InventoryConfigurationList.stub('InventoryConfiguration', stub[:inventory_configuration_list]) unless stub[:inventory_configuration_list].nil?
        xml << Hearth::XML::Node.new('IsTruncated', stub[:is_truncated].to_s) unless stub[:is_truncated].nil?
        xml << Hearth::XML::Node.new('NextContinuationToken', stub[:next_continuation_token].to_s) unless stub[:next_continuation_token].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # List Stubber for InventoryConfigurationList
    class InventoryConfigurationList
      def self.default(visited=[])
        return nil if visited.include?('InventoryConfigurationList')
        visited = visited + ['InventoryConfigurationList']
        [
          Stubs::InventoryConfiguration.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::InventoryConfiguration.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for ListBucketMetricsConfigurations
    class ListBucketMetricsConfigurations
      def self.default(visited=[])
        {
          is_truncated: false,
          continuation_token: 'continuation_token',
          next_continuation_token: 'next_continuation_token',
          metrics_configuration_list: Stubs::MetricsConfigurationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('ListMetricsConfigurationsResult')
        xml.attributes['xmlns'] = 'http://s3.amazonaws.com/doc/2006-03-01/'
        xml << Hearth::XML::Node.new('IsTruncated', stub[:is_truncated].to_s) unless stub[:is_truncated].nil?
        xml << Hearth::XML::Node.new('ContinuationToken', stub[:continuation_token].to_s) unless stub[:continuation_token].nil?
        xml << Hearth::XML::Node.new('NextContinuationToken', stub[:next_continuation_token].to_s) unless stub[:next_continuation_token].nil?
        xml << Stubs::MetricsConfigurationList.stub('MetricsConfiguration', stub[:metrics_configuration_list]) unless stub[:metrics_configuration_list].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # List Stubber for MetricsConfigurationList
    class MetricsConfigurationList
      def self.default(visited=[])
        return nil if visited.include?('MetricsConfigurationList')
        visited = visited + ['MetricsConfigurationList']
        [
          Stubs::MetricsConfiguration.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::MetricsConfiguration.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for ListBuckets
    class ListBuckets
      def self.default(visited=[])
        {
          buckets: Stubs::Buckets.default(visited),
          owner: Stubs::Owner.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('ListAllMyBucketsResult')
        xml.attributes['xmlns'] = 'http://s3.amazonaws.com/doc/2006-03-01/'
        xml << Hearth::XML::Node.new('Buckets', Stubs::Buckets.stub('Bucket', stub[:buckets])) unless stub[:buckets].nil?
        xml << Stubs::Owner.stub('Owner', stub[:owner]) unless stub[:owner].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # List Stubber for Buckets
    class Buckets
      def self.default(visited=[])
        return nil if visited.include?('Buckets')
        visited = visited + ['Buckets']
        [
          Stubs::Bucket.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::Bucket.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for Bucket
    class Bucket
      def self.default(visited=[])
        return nil if visited.include?('Bucket')
        visited = visited + ['Bucket']
        {
          name: 'name',
          creation_date: Time.now,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Bucket.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml << Hearth::XML::Node.new('CreationDate', Hearth::TimeHelper.to_date_time(stub[:creation_date])) unless stub[:creation_date].nil?
        xml
      end
    end

    # Operation Stubber for ListMultipartUploads
    class ListMultipartUploads
      def self.default(visited=[])
        {
          bucket: 'bucket',
          key_marker: 'key_marker',
          upload_id_marker: 'upload_id_marker',
          next_key_marker: 'next_key_marker',
          prefix: 'prefix',
          delimiter: 'delimiter',
          next_upload_id_marker: 'next_upload_id_marker',
          max_uploads: 1,
          is_truncated: false,
          uploads: Stubs::MultipartUploadList.default(visited),
          common_prefixes: Stubs::CommonPrefixList.default(visited),
          encoding_type: 'encoding_type',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('ListMultipartUploadsResult')
        xml.attributes['xmlns'] = 'http://s3.amazonaws.com/doc/2006-03-01/'
        xml << Hearth::XML::Node.new('Bucket', stub[:bucket].to_s) unless stub[:bucket].nil?
        xml << Hearth::XML::Node.new('KeyMarker', stub[:key_marker].to_s) unless stub[:key_marker].nil?
        xml << Hearth::XML::Node.new('UploadIdMarker', stub[:upload_id_marker].to_s) unless stub[:upload_id_marker].nil?
        xml << Hearth::XML::Node.new('NextKeyMarker', stub[:next_key_marker].to_s) unless stub[:next_key_marker].nil?
        xml << Hearth::XML::Node.new('Prefix', stub[:prefix].to_s) unless stub[:prefix].nil?
        xml << Hearth::XML::Node.new('Delimiter', stub[:delimiter].to_s) unless stub[:delimiter].nil?
        xml << Hearth::XML::Node.new('NextUploadIdMarker', stub[:next_upload_id_marker].to_s) unless stub[:next_upload_id_marker].nil?
        xml << Hearth::XML::Node.new('MaxUploads', stub[:max_uploads].to_s) unless stub[:max_uploads].nil?
        xml << Hearth::XML::Node.new('IsTruncated', stub[:is_truncated].to_s) unless stub[:is_truncated].nil?
        xml << Stubs::MultipartUploadList.stub('Upload', stub[:uploads]) unless stub[:uploads].nil?
        xml << Stubs::CommonPrefixList.stub('CommonPrefixes', stub[:common_prefixes]) unless stub[:common_prefixes].nil?
        xml << Hearth::XML::Node.new('EncodingType', stub[:encoding_type].to_s) unless stub[:encoding_type].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # List Stubber for CommonPrefixList
    class CommonPrefixList
      def self.default(visited=[])
        return nil if visited.include?('CommonPrefixList')
        visited = visited + ['CommonPrefixList']
        [
          Stubs::CommonPrefix.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::CommonPrefix.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for CommonPrefix
    class CommonPrefix
      def self.default(visited=[])
        return nil if visited.include?('CommonPrefix')
        visited = visited + ['CommonPrefix']
        {
          prefix: 'prefix',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::CommonPrefix.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Prefix', stub[:prefix].to_s) unless stub[:prefix].nil?
        xml
      end
    end

    # List Stubber for MultipartUploadList
    class MultipartUploadList
      def self.default(visited=[])
        return nil if visited.include?('MultipartUploadList')
        visited = visited + ['MultipartUploadList']
        [
          Stubs::MultipartUpload.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::MultipartUpload.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for MultipartUpload
    class MultipartUpload
      def self.default(visited=[])
        return nil if visited.include?('MultipartUpload')
        visited = visited + ['MultipartUpload']
        {
          upload_id: 'upload_id',
          key: 'key',
          initiated: Time.now,
          storage_class: 'storage_class',
          owner: Stubs::Owner.default(visited),
          initiator: Stubs::Initiator.default(visited),
          checksum_algorithm: 'checksum_algorithm',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::MultipartUpload.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('UploadId', stub[:upload_id].to_s) unless stub[:upload_id].nil?
        xml << Hearth::XML::Node.new('Key', stub[:key].to_s) unless stub[:key].nil?
        xml << Hearth::XML::Node.new('Initiated', Hearth::TimeHelper.to_date_time(stub[:initiated])) unless stub[:initiated].nil?
        xml << Hearth::XML::Node.new('StorageClass', stub[:storage_class].to_s) unless stub[:storage_class].nil?
        xml << Stubs::Owner.stub('Owner', stub[:owner]) unless stub[:owner].nil?
        xml << Stubs::Initiator.stub('Initiator', stub[:initiator]) unless stub[:initiator].nil?
        xml << Hearth::XML::Node.new('ChecksumAlgorithm', stub[:checksum_algorithm].to_s) unless stub[:checksum_algorithm].nil?
        xml
      end
    end

    # Structure Stubber for Initiator
    class Initiator
      def self.default(visited=[])
        return nil if visited.include?('Initiator')
        visited = visited + ['Initiator']
        {
          id: 'id',
          display_name: 'display_name',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Initiator.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ID', stub[:id].to_s) unless stub[:id].nil?
        xml << Hearth::XML::Node.new('DisplayName', stub[:display_name].to_s) unless stub[:display_name].nil?
        xml
      end
    end

    # Operation Stubber for ListObjectVersions
    class ListObjectVersions
      def self.default(visited=[])
        {
          is_truncated: false,
          key_marker: 'key_marker',
          version_id_marker: 'version_id_marker',
          next_key_marker: 'next_key_marker',
          next_version_id_marker: 'next_version_id_marker',
          versions: Stubs::ObjectVersionList.default(visited),
          delete_markers: Stubs::DeleteMarkers.default(visited),
          name: 'name',
          prefix: 'prefix',
          delimiter: 'delimiter',
          max_keys: 1,
          common_prefixes: Stubs::CommonPrefixList.default(visited),
          encoding_type: 'encoding_type',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('ListVersionsResult')
        xml.attributes['xmlns'] = 'http://s3.amazonaws.com/doc/2006-03-01/'
        xml << Hearth::XML::Node.new('IsTruncated', stub[:is_truncated].to_s) unless stub[:is_truncated].nil?
        xml << Hearth::XML::Node.new('KeyMarker', stub[:key_marker].to_s) unless stub[:key_marker].nil?
        xml << Hearth::XML::Node.new('VersionIdMarker', stub[:version_id_marker].to_s) unless stub[:version_id_marker].nil?
        xml << Hearth::XML::Node.new('NextKeyMarker', stub[:next_key_marker].to_s) unless stub[:next_key_marker].nil?
        xml << Hearth::XML::Node.new('NextVersionIdMarker', stub[:next_version_id_marker].to_s) unless stub[:next_version_id_marker].nil?
        xml << Stubs::ObjectVersionList.stub('Version', stub[:versions]) unless stub[:versions].nil?
        xml << Stubs::DeleteMarkers.stub('DeleteMarker', stub[:delete_markers]) unless stub[:delete_markers].nil?
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml << Hearth::XML::Node.new('Prefix', stub[:prefix].to_s) unless stub[:prefix].nil?
        xml << Hearth::XML::Node.new('Delimiter', stub[:delimiter].to_s) unless stub[:delimiter].nil?
        xml << Hearth::XML::Node.new('MaxKeys', stub[:max_keys].to_s) unless stub[:max_keys].nil?
        xml << Stubs::CommonPrefixList.stub('CommonPrefixes', stub[:common_prefixes]) unless stub[:common_prefixes].nil?
        xml << Hearth::XML::Node.new('EncodingType', stub[:encoding_type].to_s) unless stub[:encoding_type].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # List Stubber for DeleteMarkers
    class DeleteMarkers
      def self.default(visited=[])
        return nil if visited.include?('DeleteMarkers')
        visited = visited + ['DeleteMarkers']
        [
          Stubs::DeleteMarkerEntry.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::DeleteMarkerEntry.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for DeleteMarkerEntry
    class DeleteMarkerEntry
      def self.default(visited=[])
        return nil if visited.include?('DeleteMarkerEntry')
        visited = visited + ['DeleteMarkerEntry']
        {
          owner: Stubs::Owner.default(visited),
          key: 'key',
          version_id: 'version_id',
          is_latest: false,
          last_modified: Time.now,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DeleteMarkerEntry.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Stubs::Owner.stub('Owner', stub[:owner]) unless stub[:owner].nil?
        xml << Hearth::XML::Node.new('Key', stub[:key].to_s) unless stub[:key].nil?
        xml << Hearth::XML::Node.new('VersionId', stub[:version_id].to_s) unless stub[:version_id].nil?
        xml << Hearth::XML::Node.new('IsLatest', stub[:is_latest].to_s) unless stub[:is_latest].nil?
        xml << Hearth::XML::Node.new('LastModified', Hearth::TimeHelper.to_date_time(stub[:last_modified])) unless stub[:last_modified].nil?
        xml
      end
    end

    # List Stubber for ObjectVersionList
    class ObjectVersionList
      def self.default(visited=[])
        return nil if visited.include?('ObjectVersionList')
        visited = visited + ['ObjectVersionList']
        [
          Stubs::ObjectVersion.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::ObjectVersion.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for ObjectVersion
    class ObjectVersion
      def self.default(visited=[])
        return nil if visited.include?('ObjectVersion')
        visited = visited + ['ObjectVersion']
        {
          e_tag: 'e_tag',
          checksum_algorithm: Stubs::ChecksumAlgorithmList.default(visited),
          size: 1,
          storage_class: 'storage_class',
          key: 'key',
          version_id: 'version_id',
          is_latest: false,
          last_modified: Time.now,
          owner: Stubs::Owner.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ObjectVersion.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ETag', stub[:e_tag].to_s) unless stub[:e_tag].nil?
        xml << Stubs::ChecksumAlgorithmList.stub('ChecksumAlgorithm', stub[:checksum_algorithm]) unless stub[:checksum_algorithm].nil?
        xml << Hearth::XML::Node.new('Size', stub[:size].to_s) unless stub[:size].nil?
        xml << Hearth::XML::Node.new('StorageClass', stub[:storage_class].to_s) unless stub[:storage_class].nil?
        xml << Hearth::XML::Node.new('Key', stub[:key].to_s) unless stub[:key].nil?
        xml << Hearth::XML::Node.new('VersionId', stub[:version_id].to_s) unless stub[:version_id].nil?
        xml << Hearth::XML::Node.new('IsLatest', stub[:is_latest].to_s) unless stub[:is_latest].nil?
        xml << Hearth::XML::Node.new('LastModified', Hearth::TimeHelper.to_date_time(stub[:last_modified])) unless stub[:last_modified].nil?
        xml << Stubs::Owner.stub('Owner', stub[:owner]) unless stub[:owner].nil?
        xml
      end
    end

    # List Stubber for ChecksumAlgorithmList
    class ChecksumAlgorithmList
      def self.default(visited=[])
        return nil if visited.include?('ChecksumAlgorithmList')
        visited = visited + ['ChecksumAlgorithmList']
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

    # Operation Stubber for ListObjects
    class ListObjects
      def self.default(visited=[])
        {
          is_truncated: false,
          marker: 'marker',
          next_marker: 'next_marker',
          contents: Stubs::ObjectList.default(visited),
          name: 'name',
          prefix: 'prefix',
          delimiter: 'delimiter',
          max_keys: 1,
          common_prefixes: Stubs::CommonPrefixList.default(visited),
          encoding_type: 'encoding_type',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('ListBucketResult')
        xml.attributes['xmlns'] = 'http://s3.amazonaws.com/doc/2006-03-01/'
        xml << Hearth::XML::Node.new('IsTruncated', stub[:is_truncated].to_s) unless stub[:is_truncated].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        xml << Hearth::XML::Node.new('NextMarker', stub[:next_marker].to_s) unless stub[:next_marker].nil?
        xml << Stubs::ObjectList.stub('Contents', stub[:contents]) unless stub[:contents].nil?
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml << Hearth::XML::Node.new('Prefix', stub[:prefix].to_s) unless stub[:prefix].nil?
        xml << Hearth::XML::Node.new('Delimiter', stub[:delimiter].to_s) unless stub[:delimiter].nil?
        xml << Hearth::XML::Node.new('MaxKeys', stub[:max_keys].to_s) unless stub[:max_keys].nil?
        xml << Stubs::CommonPrefixList.stub('CommonPrefixes', stub[:common_prefixes]) unless stub[:common_prefixes].nil?
        xml << Hearth::XML::Node.new('EncodingType', stub[:encoding_type].to_s) unless stub[:encoding_type].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # List Stubber for ObjectList
    class ObjectList
      def self.default(visited=[])
        return nil if visited.include?('ObjectList')
        visited = visited + ['ObjectList']
        [
          Stubs::Object.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::Object.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for Object
    class Object
      def self.default(visited=[])
        return nil if visited.include?('Object')
        visited = visited + ['Object']
        {
          key: 'key',
          last_modified: Time.now,
          e_tag: 'e_tag',
          checksum_algorithm: Stubs::ChecksumAlgorithmList.default(visited),
          size: 1,
          storage_class: 'storage_class',
          owner: Stubs::Owner.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Object.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Key', stub[:key].to_s) unless stub[:key].nil?
        xml << Hearth::XML::Node.new('LastModified', Hearth::TimeHelper.to_date_time(stub[:last_modified])) unless stub[:last_modified].nil?
        xml << Hearth::XML::Node.new('ETag', stub[:e_tag].to_s) unless stub[:e_tag].nil?
        xml << Stubs::ChecksumAlgorithmList.stub('ChecksumAlgorithm', stub[:checksum_algorithm]) unless stub[:checksum_algorithm].nil?
        xml << Hearth::XML::Node.new('Size', stub[:size].to_s) unless stub[:size].nil?
        xml << Hearth::XML::Node.new('StorageClass', stub[:storage_class].to_s) unless stub[:storage_class].nil?
        xml << Stubs::Owner.stub('Owner', stub[:owner]) unless stub[:owner].nil?
        xml
      end
    end

    # Operation Stubber for ListObjectsV2
    class ListObjectsV2
      def self.default(visited=[])
        {
          is_truncated: false,
          contents: Stubs::ObjectList.default(visited),
          name: 'name',
          prefix: 'prefix',
          delimiter: 'delimiter',
          max_keys: 1,
          common_prefixes: Stubs::CommonPrefixList.default(visited),
          encoding_type: 'encoding_type',
          key_count: 1,
          continuation_token: 'continuation_token',
          next_continuation_token: 'next_continuation_token',
          start_after: 'start_after',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('ListBucketResult')
        xml.attributes['xmlns'] = 'http://s3.amazonaws.com/doc/2006-03-01/'
        xml << Hearth::XML::Node.new('IsTruncated', stub[:is_truncated].to_s) unless stub[:is_truncated].nil?
        xml << Stubs::ObjectList.stub('Contents', stub[:contents]) unless stub[:contents].nil?
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml << Hearth::XML::Node.new('Prefix', stub[:prefix].to_s) unless stub[:prefix].nil?
        xml << Hearth::XML::Node.new('Delimiter', stub[:delimiter].to_s) unless stub[:delimiter].nil?
        xml << Hearth::XML::Node.new('MaxKeys', stub[:max_keys].to_s) unless stub[:max_keys].nil?
        xml << Stubs::CommonPrefixList.stub('CommonPrefixes', stub[:common_prefixes]) unless stub[:common_prefixes].nil?
        xml << Hearth::XML::Node.new('EncodingType', stub[:encoding_type].to_s) unless stub[:encoding_type].nil?
        xml << Hearth::XML::Node.new('KeyCount', stub[:key_count].to_s) unless stub[:key_count].nil?
        xml << Hearth::XML::Node.new('ContinuationToken', stub[:continuation_token].to_s) unless stub[:continuation_token].nil?
        xml << Hearth::XML::Node.new('NextContinuationToken', stub[:next_continuation_token].to_s) unless stub[:next_continuation_token].nil?
        xml << Hearth::XML::Node.new('StartAfter', stub[:start_after].to_s) unless stub[:start_after].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for ListParts
    class ListParts
      def self.default(visited=[])
        {
          abort_date: Time.now,
          abort_rule_id: 'abort_rule_id',
          bucket: 'bucket',
          key: 'key',
          upload_id: 'upload_id',
          part_number_marker: 'part_number_marker',
          next_part_number_marker: 'next_part_number_marker',
          max_parts: 1,
          is_truncated: false,
          parts: Stubs::Parts.default(visited),
          initiator: Stubs::Initiator.default(visited),
          owner: Stubs::Owner.default(visited),
          storage_class: 'storage_class',
          request_charged: 'request_charged',
          checksum_algorithm: 'checksum_algorithm',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['x-amz-abort-date'] = Hearth::TimeHelper.to_date_time(stub[:abort_date]) unless stub[:abort_date].nil?
        http_resp.headers['x-amz-abort-rule-id'] = stub[:abort_rule_id] unless stub[:abort_rule_id].nil? || stub[:abort_rule_id].empty?
        http_resp.headers['x-amz-request-charged'] = stub[:request_charged] unless stub[:request_charged].nil? || stub[:request_charged].empty?

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('ListPartsResult')
        xml.attributes['xmlns'] = 'http://s3.amazonaws.com/doc/2006-03-01/'
        xml << Hearth::XML::Node.new('Bucket', stub[:bucket].to_s) unless stub[:bucket].nil?
        xml << Hearth::XML::Node.new('Key', stub[:key].to_s) unless stub[:key].nil?
        xml << Hearth::XML::Node.new('UploadId', stub[:upload_id].to_s) unless stub[:upload_id].nil?
        xml << Hearth::XML::Node.new('PartNumberMarker', stub[:part_number_marker].to_s) unless stub[:part_number_marker].nil?
        xml << Hearth::XML::Node.new('NextPartNumberMarker', stub[:next_part_number_marker].to_s) unless stub[:next_part_number_marker].nil?
        xml << Hearth::XML::Node.new('MaxParts', stub[:max_parts].to_s) unless stub[:max_parts].nil?
        xml << Hearth::XML::Node.new('IsTruncated', stub[:is_truncated].to_s) unless stub[:is_truncated].nil?
        xml << Stubs::Parts.stub('Part', stub[:parts]) unless stub[:parts].nil?
        xml << Stubs::Initiator.stub('Initiator', stub[:initiator]) unless stub[:initiator].nil?
        xml << Stubs::Owner.stub('Owner', stub[:owner]) unless stub[:owner].nil?
        xml << Hearth::XML::Node.new('StorageClass', stub[:storage_class].to_s) unless stub[:storage_class].nil?
        xml << Hearth::XML::Node.new('ChecksumAlgorithm', stub[:checksum_algorithm].to_s) unless stub[:checksum_algorithm].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # List Stubber for Parts
    class Parts
      def self.default(visited=[])
        return nil if visited.include?('Parts')
        visited = visited + ['Parts']
        [
          Stubs::Part.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::Part.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for Part
    class Part
      def self.default(visited=[])
        return nil if visited.include?('Part')
        visited = visited + ['Part']
        {
          part_number: 1,
          last_modified: Time.now,
          e_tag: 'e_tag',
          size: 1,
          checksum_crc32: 'checksum_crc32',
          checksum_crc32_c: 'checksum_crc32_c',
          checksum_sha1: 'checksum_sha1',
          checksum_sha256: 'checksum_sha256',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Part.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('PartNumber', stub[:part_number].to_s) unless stub[:part_number].nil?
        xml << Hearth::XML::Node.new('LastModified', Hearth::TimeHelper.to_date_time(stub[:last_modified])) unless stub[:last_modified].nil?
        xml << Hearth::XML::Node.new('ETag', stub[:e_tag].to_s) unless stub[:e_tag].nil?
        xml << Hearth::XML::Node.new('Size', stub[:size].to_s) unless stub[:size].nil?
        xml << Hearth::XML::Node.new('ChecksumCRC32', stub[:checksum_crc32].to_s) unless stub[:checksum_crc32].nil?
        xml << Hearth::XML::Node.new('ChecksumCRC32C', stub[:checksum_crc32_c].to_s) unless stub[:checksum_crc32_c].nil?
        xml << Hearth::XML::Node.new('ChecksumSHA1', stub[:checksum_sha1].to_s) unless stub[:checksum_sha1].nil?
        xml << Hearth::XML::Node.new('ChecksumSHA256', stub[:checksum_sha256].to_s) unless stub[:checksum_sha256].nil?
        xml
      end
    end

    # Operation Stubber for PutBucketAccelerateConfiguration
    class PutBucketAccelerateConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutBucketAcl
    class PutBucketAcl
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutBucketAnalyticsConfiguration
    class PutBucketAnalyticsConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutBucketCors
    class PutBucketCors
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutBucketEncryption
    class PutBucketEncryption
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutBucketIntelligentTieringConfiguration
    class PutBucketIntelligentTieringConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutBucketInventoryConfiguration
    class PutBucketInventoryConfiguration
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

    # Operation Stubber for PutBucketLogging
    class PutBucketLogging
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutBucketMetricsConfiguration
    class PutBucketMetricsConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutBucketNotificationConfiguration
    class PutBucketNotificationConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutBucketOwnershipControls
    class PutBucketOwnershipControls
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

    # Operation Stubber for PutBucketReplication
    class PutBucketReplication
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutBucketRequestPayment
    class PutBucketRequestPayment
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

    # Operation Stubber for PutBucketVersioning
    class PutBucketVersioning
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutBucketWebsite
    class PutBucketWebsite
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutObject
    class PutObject
      def self.default(visited=[])
        {
          expiration: 'expiration',
          e_tag: 'e_tag',
          checksum_crc32: 'checksum_crc32',
          checksum_crc32_c: 'checksum_crc32_c',
          checksum_sha1: 'checksum_sha1',
          checksum_sha256: 'checksum_sha256',
          server_side_encryption: 'server_side_encryption',
          version_id: 'version_id',
          sse_customer_algorithm: 'sse_customer_algorithm',
          sse_customer_key_md5: 'sse_customer_key_md5',
          ssekms_key_id: 'ssekms_key_id',
          ssekms_encryption_context: 'ssekms_encryption_context',
          bucket_key_enabled: false,
          request_charged: 'request_charged',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['x-amz-expiration'] = stub[:expiration] unless stub[:expiration].nil? || stub[:expiration].empty?
        http_resp.headers['ETag'] = stub[:e_tag] unless stub[:e_tag].nil? || stub[:e_tag].empty?
        http_resp.headers['x-amz-checksum-crc32'] = stub[:checksum_crc32] unless stub[:checksum_crc32].nil? || stub[:checksum_crc32].empty?
        http_resp.headers['x-amz-checksum-crc32c'] = stub[:checksum_crc32_c] unless stub[:checksum_crc32_c].nil? || stub[:checksum_crc32_c].empty?
        http_resp.headers['x-amz-checksum-sha1'] = stub[:checksum_sha1] unless stub[:checksum_sha1].nil? || stub[:checksum_sha1].empty?
        http_resp.headers['x-amz-checksum-sha256'] = stub[:checksum_sha256] unless stub[:checksum_sha256].nil? || stub[:checksum_sha256].empty?
        http_resp.headers['x-amz-server-side-encryption'] = stub[:server_side_encryption] unless stub[:server_side_encryption].nil? || stub[:server_side_encryption].empty?
        http_resp.headers['x-amz-version-id'] = stub[:version_id] unless stub[:version_id].nil? || stub[:version_id].empty?
        http_resp.headers['x-amz-server-side-encryption-customer-algorithm'] = stub[:sse_customer_algorithm] unless stub[:sse_customer_algorithm].nil? || stub[:sse_customer_algorithm].empty?
        http_resp.headers['x-amz-server-side-encryption-customer-key-MD5'] = stub[:sse_customer_key_md5] unless stub[:sse_customer_key_md5].nil? || stub[:sse_customer_key_md5].empty?
        http_resp.headers['x-amz-server-side-encryption-aws-kms-key-id'] = stub[:ssekms_key_id] unless stub[:ssekms_key_id].nil? || stub[:ssekms_key_id].empty?
        http_resp.headers['x-amz-server-side-encryption-context'] = stub[:ssekms_encryption_context] unless stub[:ssekms_encryption_context].nil? || stub[:ssekms_encryption_context].empty?
        http_resp.headers['x-amz-server-side-encryption-bucket-key-enabled'] = stub[:bucket_key_enabled].to_s unless stub[:bucket_key_enabled].nil?
        http_resp.headers['x-amz-request-charged'] = stub[:request_charged] unless stub[:request_charged].nil? || stub[:request_charged].empty?
      end
    end

    # Operation Stubber for PutObjectAcl
    class PutObjectAcl
      def self.default(visited=[])
        {
          request_charged: 'request_charged',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['x-amz-request-charged'] = stub[:request_charged] unless stub[:request_charged].nil? || stub[:request_charged].empty?
      end
    end

    # Operation Stubber for PutObjectLegalHold
    class PutObjectLegalHold
      def self.default(visited=[])
        {
          request_charged: 'request_charged',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['x-amz-request-charged'] = stub[:request_charged] unless stub[:request_charged].nil? || stub[:request_charged].empty?
      end
    end

    # Operation Stubber for PutObjectLockConfiguration
    class PutObjectLockConfiguration
      def self.default(visited=[])
        {
          request_charged: 'request_charged',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['x-amz-request-charged'] = stub[:request_charged] unless stub[:request_charged].nil? || stub[:request_charged].empty?
      end
    end

    # Operation Stubber for PutObjectRetention
    class PutObjectRetention
      def self.default(visited=[])
        {
          request_charged: 'request_charged',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['x-amz-request-charged'] = stub[:request_charged] unless stub[:request_charged].nil? || stub[:request_charged].empty?
      end
    end

    # Operation Stubber for PutObjectTagging
    class PutObjectTagging
      def self.default(visited=[])
        {
          version_id: 'version_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['x-amz-version-id'] = stub[:version_id] unless stub[:version_id].nil? || stub[:version_id].empty?
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

    # Operation Stubber for RestoreObject
    class RestoreObject
      def self.default(visited=[])
        {
          request_charged: 'request_charged',
          restore_output_path: 'restore_output_path',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['x-amz-request-charged'] = stub[:request_charged] unless stub[:request_charged].nil? || stub[:request_charged].empty?
        http_resp.headers['x-amz-restore-output-path'] = stub[:restore_output_path] unless stub[:restore_output_path].nil? || stub[:restore_output_path].empty?
      end
    end

    # Operation Stubber for SelectObjectContent
    class SelectObjectContent
      def self.default(visited=[])
        {
          payload: Stubs::SelectObjectContentEventStream.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        IO.copy_stream(stub[:payload], http_resp.body)
      end
    end

    # Union Stubber for SelectObjectContentEventStream
    class SelectObjectContentEventStream
      def self.default(visited=[])
        return nil if visited.include?('SelectObjectContentEventStream')
        visited = visited + ['SelectObjectContentEventStream']
        {
          records: Stubs::RecordsEvent.default(visited),
        }
      end

      def self.stub(node_name, stub)
        xml = Hearth::XML::Node.new(node_name)
        case stub
        when Types::SelectObjectContentEventStream::Records
          xml << Stubs::RecordsEvent.stub('Records', stub.__getobj__) unless stub.__getobj__.nil?
        when Types::SelectObjectContentEventStream::Stats
          xml << Stubs::StatsEvent.stub('Stats', stub.__getobj__) unless stub.__getobj__.nil?
        when Types::SelectObjectContentEventStream::Progress
          xml << Stubs::ProgressEvent.stub('Progress', stub.__getobj__) unless stub.__getobj__.nil?
        when Types::SelectObjectContentEventStream::Cont
          xml << Stubs::ContinuationEvent.stub('Cont', stub.__getobj__) unless stub.__getobj__.nil?
        when Types::SelectObjectContentEventStream::End
          xml << Stubs::EndEvent.stub('End', stub.__getobj__) unless stub.__getobj__.nil?
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::SelectObjectContentEventStream"
        end

        xml
      end
    end

    # Structure Stubber for EndEvent
    class EndEvent
      def self.default(visited=[])
        return nil if visited.include?('EndEvent')
        visited = visited + ['EndEvent']
        {
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::EndEvent.new
        xml = Hearth::XML::Node.new(node_name)
        xml
      end
    end

    # Structure Stubber for ContinuationEvent
    class ContinuationEvent
      def self.default(visited=[])
        return nil if visited.include?('ContinuationEvent')
        visited = visited + ['ContinuationEvent']
        {
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ContinuationEvent.new
        xml = Hearth::XML::Node.new(node_name)
        xml
      end
    end

    # Structure Stubber for ProgressEvent
    class ProgressEvent
      def self.default(visited=[])
        return nil if visited.include?('ProgressEvent')
        visited = visited + ['ProgressEvent']
        {
          details: Stubs::Progress.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ProgressEvent.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Stubs::Progress.stub('Details', stub[:details]) unless stub[:details].nil?
        xml
      end
    end

    # Structure Stubber for Progress
    class Progress
      def self.default(visited=[])
        return nil if visited.include?('Progress')
        visited = visited + ['Progress']
        {
          bytes_scanned: 1,
          bytes_processed: 1,
          bytes_returned: 1,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Progress.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('BytesScanned', stub[:bytes_scanned].to_s) unless stub[:bytes_scanned].nil?
        xml << Hearth::XML::Node.new('BytesProcessed', stub[:bytes_processed].to_s) unless stub[:bytes_processed].nil?
        xml << Hearth::XML::Node.new('BytesReturned', stub[:bytes_returned].to_s) unless stub[:bytes_returned].nil?
        xml
      end
    end

    # Structure Stubber for StatsEvent
    class StatsEvent
      def self.default(visited=[])
        return nil if visited.include?('StatsEvent')
        visited = visited + ['StatsEvent']
        {
          details: Stubs::Stats.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::StatsEvent.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Stubs::Stats.stub('Details', stub[:details]) unless stub[:details].nil?
        xml
      end
    end

    # Structure Stubber for Stats
    class Stats
      def self.default(visited=[])
        return nil if visited.include?('Stats')
        visited = visited + ['Stats']
        {
          bytes_scanned: 1,
          bytes_processed: 1,
          bytes_returned: 1,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Stats.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('BytesScanned', stub[:bytes_scanned].to_s) unless stub[:bytes_scanned].nil?
        xml << Hearth::XML::Node.new('BytesProcessed', stub[:bytes_processed].to_s) unless stub[:bytes_processed].nil?
        xml << Hearth::XML::Node.new('BytesReturned', stub[:bytes_returned].to_s) unless stub[:bytes_returned].nil?
        xml
      end
    end

    # Structure Stubber for RecordsEvent
    class RecordsEvent
      def self.default(visited=[])
        return nil if visited.include?('RecordsEvent')
        visited = visited + ['RecordsEvent']
        {
          payload: 'payload',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::RecordsEvent.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Payload', Base64::encode64(stub[:payload]).strip) unless stub[:payload].nil?
        xml
      end
    end

    # Operation Stubber for UploadPart
    class UploadPart
      def self.default(visited=[])
        {
          server_side_encryption: 'server_side_encryption',
          e_tag: 'e_tag',
          checksum_crc32: 'checksum_crc32',
          checksum_crc32_c: 'checksum_crc32_c',
          checksum_sha1: 'checksum_sha1',
          checksum_sha256: 'checksum_sha256',
          sse_customer_algorithm: 'sse_customer_algorithm',
          sse_customer_key_md5: 'sse_customer_key_md5',
          ssekms_key_id: 'ssekms_key_id',
          bucket_key_enabled: false,
          request_charged: 'request_charged',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['x-amz-server-side-encryption'] = stub[:server_side_encryption] unless stub[:server_side_encryption].nil? || stub[:server_side_encryption].empty?
        http_resp.headers['ETag'] = stub[:e_tag] unless stub[:e_tag].nil? || stub[:e_tag].empty?
        http_resp.headers['x-amz-checksum-crc32'] = stub[:checksum_crc32] unless stub[:checksum_crc32].nil? || stub[:checksum_crc32].empty?
        http_resp.headers['x-amz-checksum-crc32c'] = stub[:checksum_crc32_c] unless stub[:checksum_crc32_c].nil? || stub[:checksum_crc32_c].empty?
        http_resp.headers['x-amz-checksum-sha1'] = stub[:checksum_sha1] unless stub[:checksum_sha1].nil? || stub[:checksum_sha1].empty?
        http_resp.headers['x-amz-checksum-sha256'] = stub[:checksum_sha256] unless stub[:checksum_sha256].nil? || stub[:checksum_sha256].empty?
        http_resp.headers['x-amz-server-side-encryption-customer-algorithm'] = stub[:sse_customer_algorithm] unless stub[:sse_customer_algorithm].nil? || stub[:sse_customer_algorithm].empty?
        http_resp.headers['x-amz-server-side-encryption-customer-key-MD5'] = stub[:sse_customer_key_md5] unless stub[:sse_customer_key_md5].nil? || stub[:sse_customer_key_md5].empty?
        http_resp.headers['x-amz-server-side-encryption-aws-kms-key-id'] = stub[:ssekms_key_id] unless stub[:ssekms_key_id].nil? || stub[:ssekms_key_id].empty?
        http_resp.headers['x-amz-server-side-encryption-bucket-key-enabled'] = stub[:bucket_key_enabled].to_s unless stub[:bucket_key_enabled].nil?
        http_resp.headers['x-amz-request-charged'] = stub[:request_charged] unless stub[:request_charged].nil? || stub[:request_charged].empty?
      end
    end

    # Operation Stubber for UploadPartCopy
    class UploadPartCopy
      def self.default(visited=[])
        {
          copy_source_version_id: 'copy_source_version_id',
          copy_part_result: Stubs::CopyPartResult.default(visited),
          server_side_encryption: 'server_side_encryption',
          sse_customer_algorithm: 'sse_customer_algorithm',
          sse_customer_key_md5: 'sse_customer_key_md5',
          ssekms_key_id: 'ssekms_key_id',
          bucket_key_enabled: false,
          request_charged: 'request_charged',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['x-amz-copy-source-version-id'] = stub[:copy_source_version_id] unless stub[:copy_source_version_id].nil? || stub[:copy_source_version_id].empty?
        http_resp.headers['x-amz-server-side-encryption'] = stub[:server_side_encryption] unless stub[:server_side_encryption].nil? || stub[:server_side_encryption].empty?
        http_resp.headers['x-amz-server-side-encryption-customer-algorithm'] = stub[:sse_customer_algorithm] unless stub[:sse_customer_algorithm].nil? || stub[:sse_customer_algorithm].empty?
        http_resp.headers['x-amz-server-side-encryption-customer-key-MD5'] = stub[:sse_customer_key_md5] unless stub[:sse_customer_key_md5].nil? || stub[:sse_customer_key_md5].empty?
        http_resp.headers['x-amz-server-side-encryption-aws-kms-key-id'] = stub[:ssekms_key_id] unless stub[:ssekms_key_id].nil? || stub[:ssekms_key_id].empty?
        http_resp.headers['x-amz-server-side-encryption-bucket-key-enabled'] = stub[:bucket_key_enabled].to_s unless stub[:bucket_key_enabled].nil?
        http_resp.headers['x-amz-request-charged'] = stub[:request_charged] unless stub[:request_charged].nil? || stub[:request_charged].empty?
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::CopyPartResult.build('CopyPartResult', stub[:copy_part_result]) unless stub[:copy_part_result].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Structure Stubber for CopyPartResult
    class CopyPartResult
      def self.default(visited=[])
        return nil if visited.include?('CopyPartResult')
        visited = visited + ['CopyPartResult']
        {
          e_tag: 'e_tag',
          last_modified: Time.now,
          checksum_crc32: 'checksum_crc32',
          checksum_crc32_c: 'checksum_crc32_c',
          checksum_sha1: 'checksum_sha1',
          checksum_sha256: 'checksum_sha256',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::CopyPartResult.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ETag', stub[:e_tag].to_s) unless stub[:e_tag].nil?
        xml << Hearth::XML::Node.new('LastModified', Hearth::TimeHelper.to_date_time(stub[:last_modified])) unless stub[:last_modified].nil?
        xml << Hearth::XML::Node.new('ChecksumCRC32', stub[:checksum_crc32].to_s) unless stub[:checksum_crc32].nil?
        xml << Hearth::XML::Node.new('ChecksumCRC32C', stub[:checksum_crc32_c].to_s) unless stub[:checksum_crc32_c].nil?
        xml << Hearth::XML::Node.new('ChecksumSHA1', stub[:checksum_sha1].to_s) unless stub[:checksum_sha1].nil?
        xml << Hearth::XML::Node.new('ChecksumSHA256', stub[:checksum_sha256].to_s) unless stub[:checksum_sha256].nil?
        xml
      end
    end

    # Operation Stubber for WriteGetObjectResponse
    class WriteGetObjectResponse
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