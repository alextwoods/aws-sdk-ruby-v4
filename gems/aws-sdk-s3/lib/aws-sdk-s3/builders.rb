# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::S3
  # @api private
  module Builders

    # Structure Builder for AbortIncompleteMultipartUpload
    class AbortIncompleteMultipartUpload
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('DaysAfterInitiation', input[:days_after_initiation].to_s) unless input[:days_after_initiation].nil?
        xml
      end
    end

    # Operation Builder for AbortMultipartUpload
    class AbortMultipartUpload
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        CGI.parse('x-id=AbortMultipartUpload').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        if input[:key].to_s.empty?
          raise ArgumentError, "HTTP label :key cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s/%<Key>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s),
            Key: (input[:key].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        params['uploadId'] = input[:upload_id].to_s unless input[:upload_id].nil?
        http_req.append_query_params(params)
        http_req.headers['x-amz-request-payer'] = input[:request_payer] unless input[:request_payer].nil? || input[:request_payer].empty?
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Structure Builder for AccelerateConfiguration
    class AccelerateConfiguration
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Status', input[:status].to_s) unless input[:status].nil?
        xml
      end
    end

    # Structure Builder for AccessControlPolicy
    class AccessControlPolicy
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('AccessControlList', Types::Grants.build('Grant', input[:grants])) unless input[:grants].nil?
        xml << Types::Owner.build('Owner', input[:owner]) unless input[:owner].nil?
        xml
      end
    end

    # Structure Builder for AccessControlTranslation
    class AccessControlTranslation
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Owner', input[:owner].to_s) unless input[:owner].nil?
        xml
      end
    end

    # List Builder for AllowedHeaders
    class AllowedHeaders
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # List Builder for AllowedMethods
    class AllowedMethods
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # List Builder for AllowedOrigins
    class AllowedOrigins
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Structure Builder for AnalyticsAndOperator
    class AnalyticsAndOperator
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Prefix', input[:prefix].to_s) unless input[:prefix].nil?
        xml << Types::TagSet.build('Tag', input[:tags]) unless input[:tags].nil?
        xml
      end
    end

    # Structure Builder for AnalyticsConfiguration
    class AnalyticsConfiguration
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Id', input[:id].to_s) unless input[:id].nil?
        xml << Types::AnalyticsFilter.build('Filter', input[:filter]) unless input[:filter].nil?
        xml << Types::StorageClassAnalysis.build('StorageClassAnalysis', input[:storage_class_analysis]) unless input[:storage_class_analysis].nil?
        xml
      end
    end

    # Structure Builder for AnalyticsExportDestination
    class AnalyticsExportDestination
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Types::AnalyticsS3BucketDestination.build('S3BucketDestination', input[:s3_bucket_destination]) unless input[:s3_bucket_destination].nil?
        xml
      end
    end

    # Structure Builder for AnalyticsFilter
    class AnalyticsFilter
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        case input
        when Types::AnalyticsFilter::Prefix
          xml << Hearth::XML::Node.new('Prefix', input.__getobj__.to_s)
        when Types::AnalyticsFilter::Tag
          xml << Types::Tag.build('Tag', input.__getobj__) unless input.__getobj__.nil?
        when Types::AnalyticsFilter::And
          xml << Types::AnalyticsAndOperator.build('And', input.__getobj__) unless input.__getobj__.nil?
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::AnalyticsFilter"
        end

        xml
      end
    end

    # Structure Builder for AnalyticsS3BucketDestination
    class AnalyticsS3BucketDestination
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Format', input[:format].to_s) unless input[:format].nil?
        xml << Hearth::XML::Node.new('BucketAccountId', input[:bucket_account_id].to_s) unless input[:bucket_account_id].nil?
        xml << Hearth::XML::Node.new('Bucket', input[:bucket].to_s) unless input[:bucket].nil?
        xml << Hearth::XML::Node.new('Prefix', input[:prefix].to_s) unless input[:prefix].nil?
        xml
      end
    end

    # Structure Builder for BucketLifecycleConfiguration
    class BucketLifecycleConfiguration
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Types::LifecycleRules.build('Rule', input[:rules]) unless input[:rules].nil?
        xml
      end
    end

    # Structure Builder for BucketLoggingStatus
    class BucketLoggingStatus
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Types::LoggingEnabled.build('LoggingEnabled', input[:logging_enabled]) unless input[:logging_enabled].nil?
        xml
      end
    end

    # Structure Builder for CORSConfiguration
    class CORSConfiguration
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Types::CORSRules.build('CORSRule', input[:cors_rules]) unless input[:cors_rules].nil?
        xml
      end
    end

    # Structure Builder for CORSRule
    class CORSRule
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ID', input[:id].to_s) unless input[:id].nil?
        xml << Types::AllowedHeaders.build('AllowedHeader', input[:allowed_headers]) unless input[:allowed_headers].nil?
        xml << Types::AllowedMethods.build('AllowedMethod', input[:allowed_methods]) unless input[:allowed_methods].nil?
        xml << Types::AllowedOrigins.build('AllowedOrigin', input[:allowed_origins]) unless input[:allowed_origins].nil?
        xml << Types::ExposeHeaders.build('ExposeHeader', input[:expose_headers]) unless input[:expose_headers].nil?
        xml << Hearth::XML::Node.new('MaxAgeSeconds', input[:max_age_seconds].to_s) unless input[:max_age_seconds].nil?
        xml
      end
    end

    # List Builder for CORSRules
    class CORSRules
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Types::CORSRule.build(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Builder for CSVInput
    class CSVInput
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('FileHeaderInfo', input[:file_header_info].to_s) unless input[:file_header_info].nil?
        xml << Hearth::XML::Node.new('Comments', input[:comments].to_s) unless input[:comments].nil?
        xml << Hearth::XML::Node.new('QuoteEscapeCharacter', input[:quote_escape_character].to_s) unless input[:quote_escape_character].nil?
        xml << Hearth::XML::Node.new('RecordDelimiter', input[:record_delimiter].to_s) unless input[:record_delimiter].nil?
        xml << Hearth::XML::Node.new('FieldDelimiter', input[:field_delimiter].to_s) unless input[:field_delimiter].nil?
        xml << Hearth::XML::Node.new('QuoteCharacter', input[:quote_character].to_s) unless input[:quote_character].nil?
        xml << Hearth::XML::Node.new('AllowQuotedRecordDelimiter', input[:allow_quoted_record_delimiter].to_s) unless input[:allow_quoted_record_delimiter].nil?
        xml
      end
    end

    # Structure Builder for CSVOutput
    class CSVOutput
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('QuoteFields', input[:quote_fields].to_s) unless input[:quote_fields].nil?
        xml << Hearth::XML::Node.new('QuoteEscapeCharacter', input[:quote_escape_character].to_s) unless input[:quote_escape_character].nil?
        xml << Hearth::XML::Node.new('RecordDelimiter', input[:record_delimiter].to_s) unless input[:record_delimiter].nil?
        xml << Hearth::XML::Node.new('FieldDelimiter', input[:field_delimiter].to_s) unless input[:field_delimiter].nil?
        xml << Hearth::XML::Node.new('QuoteCharacter', input[:quote_character].to_s) unless input[:quote_character].nil?
        xml
      end
    end

    # Operation Builder for CompleteMultipartUpload
    class CompleteMultipartUpload
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        CGI.parse('x-id=CompleteMultipartUpload').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        if input[:key].to_s.empty?
          raise ArgumentError, "HTTP label :key cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s/%<Key>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s),
            Key: (input[:key].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        params['uploadId'] = input[:upload_id].to_s unless input[:upload_id].nil?
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/xml'
        xml = Builders::CompletedMultipartUpload.build('CompleteMultipartUpload', input[:multipart_upload]) unless input[:multipart_upload].nil?
        http_req.body = ::StringIO.new(xml.to_str)
        http_req.headers['x-amz-checksum-crc32'] = input[:checksum_crc32] unless input[:checksum_crc32].nil? || input[:checksum_crc32].empty?
        http_req.headers['x-amz-checksum-crc32c'] = input[:checksum_crc32_c] unless input[:checksum_crc32_c].nil? || input[:checksum_crc32_c].empty?
        http_req.headers['x-amz-checksum-sha1'] = input[:checksum_sha1] unless input[:checksum_sha1].nil? || input[:checksum_sha1].empty?
        http_req.headers['x-amz-checksum-sha256'] = input[:checksum_sha256] unless input[:checksum_sha256].nil? || input[:checksum_sha256].empty?
        http_req.headers['x-amz-request-payer'] = input[:request_payer] unless input[:request_payer].nil? || input[:request_payer].empty?
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
        http_req.headers['x-amz-server-side-encryption-customer-algorithm'] = input[:sse_customer_algorithm] unless input[:sse_customer_algorithm].nil? || input[:sse_customer_algorithm].empty?
        http_req.headers['x-amz-server-side-encryption-customer-key'] = input[:sse_customer_key] unless input[:sse_customer_key].nil? || input[:sse_customer_key].empty?
        http_req.headers['x-amz-server-side-encryption-customer-key-MD5'] = input[:sse_customer_key_md5] unless input[:sse_customer_key_md5].nil? || input[:sse_customer_key_md5].empty?
      end
    end

    # Structure Builder for CompletedMultipartUpload
    class CompletedMultipartUpload
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Types::CompletedPartList.build('Part', input[:parts]) unless input[:parts].nil?
        xml
      end
    end

    # Structure Builder for CompletedPart
    class CompletedPart
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ETag', input[:e_tag].to_s) unless input[:e_tag].nil?
        xml << Hearth::XML::Node.new('ChecksumCRC32', input[:checksum_crc32].to_s) unless input[:checksum_crc32].nil?
        xml << Hearth::XML::Node.new('ChecksumCRC32C', input[:checksum_crc32_c].to_s) unless input[:checksum_crc32_c].nil?
        xml << Hearth::XML::Node.new('ChecksumSHA1', input[:checksum_sha1].to_s) unless input[:checksum_sha1].nil?
        xml << Hearth::XML::Node.new('ChecksumSHA256', input[:checksum_sha256].to_s) unless input[:checksum_sha256].nil?
        xml << Hearth::XML::Node.new('PartNumber', input[:part_number].to_s) unless input[:part_number].nil?
        xml
      end
    end

    # List Builder for CompletedPartList
    class CompletedPartList
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Types::CompletedPart.build(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Builder for Condition
    class Condition
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('HttpErrorCodeReturnedEquals', input[:http_error_code_returned_equals].to_s) unless input[:http_error_code_returned_equals].nil?
        xml << Hearth::XML::Node.new('KeyPrefixEquals', input[:key_prefix_equals].to_s) unless input[:key_prefix_equals].nil?
        xml
      end
    end

    # Operation Builder for CopyObject
    class CopyObject
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        CGI.parse('x-id=CopyObject').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        if input[:key].to_s.empty?
          raise ArgumentError, "HTTP label :key cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s/%<Key>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s),
            Key: (input[:key].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-acl'] = input[:acl] unless input[:acl].nil? || input[:acl].empty?
        http_req.headers['Cache-Control'] = input[:cache_control] unless input[:cache_control].nil? || input[:cache_control].empty?
        http_req.headers['x-amz-checksum-algorithm'] = input[:checksum_algorithm] unless input[:checksum_algorithm].nil? || input[:checksum_algorithm].empty?
        http_req.headers['Content-Disposition'] = input[:content_disposition] unless input[:content_disposition].nil? || input[:content_disposition].empty?
        http_req.headers['Content-Encoding'] = input[:content_encoding] unless input[:content_encoding].nil? || input[:content_encoding].empty?
        http_req.headers['Content-Language'] = input[:content_language] unless input[:content_language].nil? || input[:content_language].empty?
        http_req.headers['Content-Type'] = input[:content_type] unless input[:content_type].nil? || input[:content_type].empty?
        http_req.headers['x-amz-copy-source'] = input[:copy_source] unless input[:copy_source].nil? || input[:copy_source].empty?
        http_req.headers['x-amz-copy-source-if-match'] = input[:copy_source_if_match] unless input[:copy_source_if_match].nil? || input[:copy_source_if_match].empty?
        http_req.headers['x-amz-copy-source-if-modified-since'] = Hearth::TimeHelper.to_http_date(input[:copy_source_if_modified_since]) unless input[:copy_source_if_modified_since].nil?
        http_req.headers['x-amz-copy-source-if-none-match'] = input[:copy_source_if_none_match] unless input[:copy_source_if_none_match].nil? || input[:copy_source_if_none_match].empty?
        http_req.headers['x-amz-copy-source-if-unmodified-since'] = Hearth::TimeHelper.to_http_date(input[:copy_source_if_unmodified_since]) unless input[:copy_source_if_unmodified_since].nil?
        http_req.headers['Expires'] = Hearth::TimeHelper.to_http_date(input[:expires]) unless input[:expires].nil?
        http_req.headers['x-amz-grant-full-control'] = input[:grant_full_control] unless input[:grant_full_control].nil? || input[:grant_full_control].empty?
        http_req.headers['x-amz-grant-read'] = input[:grant_read] unless input[:grant_read].nil? || input[:grant_read].empty?
        http_req.headers['x-amz-grant-read-acp'] = input[:grant_read_acp] unless input[:grant_read_acp].nil? || input[:grant_read_acp].empty?
        http_req.headers['x-amz-grant-write-acp'] = input[:grant_write_acp] unless input[:grant_write_acp].nil? || input[:grant_write_acp].empty?
        http_req.headers['x-amz-metadata-directive'] = input[:metadata_directive] unless input[:metadata_directive].nil? || input[:metadata_directive].empty?
        http_req.headers['x-amz-tagging-directive'] = input[:tagging_directive] unless input[:tagging_directive].nil? || input[:tagging_directive].empty?
        http_req.headers['x-amz-server-side-encryption'] = input[:server_side_encryption] unless input[:server_side_encryption].nil? || input[:server_side_encryption].empty?
        http_req.headers['x-amz-storage-class'] = input[:storage_class] unless input[:storage_class].nil? || input[:storage_class].empty?
        http_req.headers['x-amz-website-redirect-location'] = input[:website_redirect_location] unless input[:website_redirect_location].nil? || input[:website_redirect_location].empty?
        http_req.headers['x-amz-server-side-encryption-customer-algorithm'] = input[:sse_customer_algorithm] unless input[:sse_customer_algorithm].nil? || input[:sse_customer_algorithm].empty?
        http_req.headers['x-amz-server-side-encryption-customer-key'] = input[:sse_customer_key] unless input[:sse_customer_key].nil? || input[:sse_customer_key].empty?
        http_req.headers['x-amz-server-side-encryption-customer-key-MD5'] = input[:sse_customer_key_md5] unless input[:sse_customer_key_md5].nil? || input[:sse_customer_key_md5].empty?
        http_req.headers['x-amz-server-side-encryption-aws-kms-key-id'] = input[:ssekms_key_id] unless input[:ssekms_key_id].nil? || input[:ssekms_key_id].empty?
        http_req.headers['x-amz-server-side-encryption-context'] = input[:ssekms_encryption_context] unless input[:ssekms_encryption_context].nil? || input[:ssekms_encryption_context].empty?
        http_req.headers['x-amz-server-side-encryption-bucket-key-enabled'] = input[:bucket_key_enabled].to_s unless input[:bucket_key_enabled].nil?
        http_req.headers['x-amz-copy-source-server-side-encryption-customer-algorithm'] = input[:copy_source_sse_customer_algorithm] unless input[:copy_source_sse_customer_algorithm].nil? || input[:copy_source_sse_customer_algorithm].empty?
        http_req.headers['x-amz-copy-source-server-side-encryption-customer-key'] = input[:copy_source_sse_customer_key] unless input[:copy_source_sse_customer_key].nil? || input[:copy_source_sse_customer_key].empty?
        http_req.headers['x-amz-copy-source-server-side-encryption-customer-key-MD5'] = input[:copy_source_sse_customer_key_md5] unless input[:copy_source_sse_customer_key_md5].nil? || input[:copy_source_sse_customer_key_md5].empty?
        http_req.headers['x-amz-request-payer'] = input[:request_payer] unless input[:request_payer].nil? || input[:request_payer].empty?
        http_req.headers['x-amz-tagging'] = input[:tagging] unless input[:tagging].nil? || input[:tagging].empty?
        http_req.headers['x-amz-object-lock-mode'] = input[:object_lock_mode] unless input[:object_lock_mode].nil? || input[:object_lock_mode].empty?
        http_req.headers['x-amz-object-lock-retain-until-date'] = Hearth::TimeHelper.to_date_time(input[:object_lock_retain_until_date]) unless input[:object_lock_retain_until_date].nil?
        http_req.headers['x-amz-object-lock-legal-hold'] = input[:object_lock_legal_hold_status] unless input[:object_lock_legal_hold_status].nil? || input[:object_lock_legal_hold_status].empty?
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
        http_req.headers['x-amz-source-expected-bucket-owner'] = input[:expected_source_bucket_owner] unless input[:expected_source_bucket_owner].nil? || input[:expected_source_bucket_owner].empty?
        input[:metadata].each do |key, value|
          http_req.headers["x-amz-meta-#{key}"] = value unless value.nil? || value.empty?
        end
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
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/xml'
        xml = Builders::CreateBucketConfiguration.build('CreateBucketConfiguration', input[:create_bucket_configuration]) unless input[:create_bucket_configuration].nil?
        http_req.body = ::StringIO.new(xml.to_str)
        http_req.headers['x-amz-acl'] = input[:acl] unless input[:acl].nil? || input[:acl].empty?
        http_req.headers['x-amz-grant-full-control'] = input[:grant_full_control] unless input[:grant_full_control].nil? || input[:grant_full_control].empty?
        http_req.headers['x-amz-grant-read'] = input[:grant_read] unless input[:grant_read].nil? || input[:grant_read].empty?
        http_req.headers['x-amz-grant-read-acp'] = input[:grant_read_acp] unless input[:grant_read_acp].nil? || input[:grant_read_acp].empty?
        http_req.headers['x-amz-grant-write'] = input[:grant_write] unless input[:grant_write].nil? || input[:grant_write].empty?
        http_req.headers['x-amz-grant-write-acp'] = input[:grant_write_acp] unless input[:grant_write_acp].nil? || input[:grant_write_acp].empty?
        http_req.headers['x-amz-bucket-object-lock-enabled'] = input[:object_lock_enabled_for_bucket].to_s unless input[:object_lock_enabled_for_bucket].nil?
        http_req.headers['x-amz-object-ownership'] = input[:object_ownership] unless input[:object_ownership].nil? || input[:object_ownership].empty?
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

    # Operation Builder for CreateMultipartUpload
    class CreateMultipartUpload
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        CGI.parse('uploads&x-id=CreateMultipartUpload').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        if input[:key].to_s.empty?
          raise ArgumentError, "HTTP label :key cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s/%<Key>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s),
            Key: (input[:key].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-acl'] = input[:acl] unless input[:acl].nil? || input[:acl].empty?
        http_req.headers['Cache-Control'] = input[:cache_control] unless input[:cache_control].nil? || input[:cache_control].empty?
        http_req.headers['Content-Disposition'] = input[:content_disposition] unless input[:content_disposition].nil? || input[:content_disposition].empty?
        http_req.headers['Content-Encoding'] = input[:content_encoding] unless input[:content_encoding].nil? || input[:content_encoding].empty?
        http_req.headers['Content-Language'] = input[:content_language] unless input[:content_language].nil? || input[:content_language].empty?
        http_req.headers['Content-Type'] = input[:content_type] unless input[:content_type].nil? || input[:content_type].empty?
        http_req.headers['Expires'] = Hearth::TimeHelper.to_http_date(input[:expires]) unless input[:expires].nil?
        http_req.headers['x-amz-grant-full-control'] = input[:grant_full_control] unless input[:grant_full_control].nil? || input[:grant_full_control].empty?
        http_req.headers['x-amz-grant-read'] = input[:grant_read] unless input[:grant_read].nil? || input[:grant_read].empty?
        http_req.headers['x-amz-grant-read-acp'] = input[:grant_read_acp] unless input[:grant_read_acp].nil? || input[:grant_read_acp].empty?
        http_req.headers['x-amz-grant-write-acp'] = input[:grant_write_acp] unless input[:grant_write_acp].nil? || input[:grant_write_acp].empty?
        http_req.headers['x-amz-server-side-encryption'] = input[:server_side_encryption] unless input[:server_side_encryption].nil? || input[:server_side_encryption].empty?
        http_req.headers['x-amz-storage-class'] = input[:storage_class] unless input[:storage_class].nil? || input[:storage_class].empty?
        http_req.headers['x-amz-website-redirect-location'] = input[:website_redirect_location] unless input[:website_redirect_location].nil? || input[:website_redirect_location].empty?
        http_req.headers['x-amz-server-side-encryption-customer-algorithm'] = input[:sse_customer_algorithm] unless input[:sse_customer_algorithm].nil? || input[:sse_customer_algorithm].empty?
        http_req.headers['x-amz-server-side-encryption-customer-key'] = input[:sse_customer_key] unless input[:sse_customer_key].nil? || input[:sse_customer_key].empty?
        http_req.headers['x-amz-server-side-encryption-customer-key-MD5'] = input[:sse_customer_key_md5] unless input[:sse_customer_key_md5].nil? || input[:sse_customer_key_md5].empty?
        http_req.headers['x-amz-server-side-encryption-aws-kms-key-id'] = input[:ssekms_key_id] unless input[:ssekms_key_id].nil? || input[:ssekms_key_id].empty?
        http_req.headers['x-amz-server-side-encryption-context'] = input[:ssekms_encryption_context] unless input[:ssekms_encryption_context].nil? || input[:ssekms_encryption_context].empty?
        http_req.headers['x-amz-server-side-encryption-bucket-key-enabled'] = input[:bucket_key_enabled].to_s unless input[:bucket_key_enabled].nil?
        http_req.headers['x-amz-request-payer'] = input[:request_payer] unless input[:request_payer].nil? || input[:request_payer].empty?
        http_req.headers['x-amz-tagging'] = input[:tagging] unless input[:tagging].nil? || input[:tagging].empty?
        http_req.headers['x-amz-object-lock-mode'] = input[:object_lock_mode] unless input[:object_lock_mode].nil? || input[:object_lock_mode].empty?
        http_req.headers['x-amz-object-lock-retain-until-date'] = Hearth::TimeHelper.to_date_time(input[:object_lock_retain_until_date]) unless input[:object_lock_retain_until_date].nil?
        http_req.headers['x-amz-object-lock-legal-hold'] = input[:object_lock_legal_hold_status] unless input[:object_lock_legal_hold_status].nil? || input[:object_lock_legal_hold_status].empty?
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
        http_req.headers['x-amz-checksum-algorithm'] = input[:checksum_algorithm] unless input[:checksum_algorithm].nil? || input[:checksum_algorithm].empty?
        input[:metadata].each do |key, value|
          http_req.headers["x-amz-meta-#{key}"] = value unless value.nil? || value.empty?
        end
      end
    end

    # Structure Builder for DefaultRetention
    class DefaultRetention
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Mode', input[:mode].to_s) unless input[:mode].nil?
        xml << Hearth::XML::Node.new('Days', input[:days].to_s) unless input[:days].nil?
        xml << Hearth::XML::Node.new('Years', input[:years].to_s) unless input[:years].nil?
        xml
      end
    end

    # Structure Builder for Delete
    class Delete
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Types::ObjectIdentifierList.build('Object', input[:objects]) unless input[:objects].nil?
        xml << Hearth::XML::Node.new('Quiet', input[:quiet].to_s) unless input[:quiet].nil?
        xml
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
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Operation Builder for DeleteBucketAnalyticsConfiguration
    class DeleteBucketAnalyticsConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        CGI.parse('analytics').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['id'] = input[:id].to_s unless input[:id].nil?
        http_req.append_query_params(params)
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Operation Builder for DeleteBucketCors
    class DeleteBucketCors
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        CGI.parse('cors').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Operation Builder for DeleteBucketEncryption
    class DeleteBucketEncryption
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        CGI.parse('encryption').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Operation Builder for DeleteBucketIntelligentTieringConfiguration
    class DeleteBucketIntelligentTieringConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        CGI.parse('intelligent-tiering').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['id'] = input[:id].to_s unless input[:id].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteBucketInventoryConfiguration
    class DeleteBucketInventoryConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        CGI.parse('inventory').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['id'] = input[:id].to_s unless input[:id].nil?
        http_req.append_query_params(params)
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Operation Builder for DeleteBucketLifecycle
    class DeleteBucketLifecycle
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        CGI.parse('lifecycle').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Operation Builder for DeleteBucketMetricsConfiguration
    class DeleteBucketMetricsConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        CGI.parse('metrics').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['id'] = input[:id].to_s unless input[:id].nil?
        http_req.append_query_params(params)
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Operation Builder for DeleteBucketOwnershipControls
    class DeleteBucketOwnershipControls
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        CGI.parse('ownershipControls').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Operation Builder for DeleteBucketPolicy
    class DeleteBucketPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        CGI.parse('policy').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Operation Builder for DeleteBucketReplication
    class DeleteBucketReplication
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        CGI.parse('replication').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Operation Builder for DeleteBucketTagging
    class DeleteBucketTagging
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        CGI.parse('tagging').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Operation Builder for DeleteBucketWebsite
    class DeleteBucketWebsite
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        CGI.parse('website').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Structure Builder for DeleteMarkerReplication
    class DeleteMarkerReplication
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Status', input[:status].to_s) unless input[:status].nil?
        xml
      end
    end

    # Operation Builder for DeleteObject
    class DeleteObject
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        CGI.parse('x-id=DeleteObject').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        if input[:key].to_s.empty?
          raise ArgumentError, "HTTP label :key cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s/%<Key>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s),
            Key: (input[:key].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        params['versionId'] = input[:version_id].to_s unless input[:version_id].nil?
        http_req.append_query_params(params)
        http_req.headers['x-amz-mfa'] = input[:mfa] unless input[:mfa].nil? || input[:mfa].empty?
        http_req.headers['x-amz-request-payer'] = input[:request_payer] unless input[:request_payer].nil? || input[:request_payer].empty?
        http_req.headers['x-amz-bypass-governance-retention'] = input[:bypass_governance_retention].to_s unless input[:bypass_governance_retention].nil?
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Operation Builder for DeleteObjectTagging
    class DeleteObjectTagging
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        CGI.parse('tagging').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        if input[:key].to_s.empty?
          raise ArgumentError, "HTTP label :key cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s/%<Key>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s),
            Key: (input[:key].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        params['versionId'] = input[:version_id].to_s unless input[:version_id].nil?
        http_req.append_query_params(params)
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Operation Builder for DeleteObjects
    class DeleteObjects
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        CGI.parse('delete&x-id=DeleteObjects').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/xml'
        xml = Builders::Delete.build('Delete', input[:delete]) unless input[:delete].nil?
        http_req.body = ::StringIO.new(xml.to_str)
        http_req.headers['x-amz-mfa'] = input[:mfa] unless input[:mfa].nil? || input[:mfa].empty?
        http_req.headers['x-amz-request-payer'] = input[:request_payer] unless input[:request_payer].nil? || input[:request_payer].empty?
        http_req.headers['x-amz-bypass-governance-retention'] = input[:bypass_governance_retention].to_s unless input[:bypass_governance_retention].nil?
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
        http_req.headers['x-amz-sdk-checksum-algorithm'] = input[:checksum_algorithm] unless input[:checksum_algorithm].nil? || input[:checksum_algorithm].empty?
      end
    end

    # Operation Builder for DeletePublicAccessBlock
    class DeletePublicAccessBlock
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        CGI.parse('publicAccessBlock').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Structure Builder for Destination
    class Destination
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Bucket', input[:bucket].to_s) unless input[:bucket].nil?
        xml << Hearth::XML::Node.new('Account', input[:account].to_s) unless input[:account].nil?
        xml << Hearth::XML::Node.new('StorageClass', input[:storage_class].to_s) unless input[:storage_class].nil?
        xml << Types::AccessControlTranslation.build('AccessControlTranslation', input[:access_control_translation]) unless input[:access_control_translation].nil?
        xml << Types::EncryptionConfiguration.build('EncryptionConfiguration', input[:encryption_configuration]) unless input[:encryption_configuration].nil?
        xml << Types::ReplicationTime.build('ReplicationTime', input[:replication_time]) unless input[:replication_time].nil?
        xml << Types::Metrics.build('Metrics', input[:metrics]) unless input[:metrics].nil?
        xml
      end
    end

    # Structure Builder for Encryption
    class Encryption
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('EncryptionType', input[:encryption_type].to_s) unless input[:encryption_type].nil?
        xml << Hearth::XML::Node.new('KMSKeyId', input[:kms_key_id].to_s) unless input[:kms_key_id].nil?
        xml << Hearth::XML::Node.new('KMSContext', input[:kms_context].to_s) unless input[:kms_context].nil?
        xml
      end
    end

    # Structure Builder for EncryptionConfiguration
    class EncryptionConfiguration
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ReplicaKmsKeyID', input[:replica_kms_key_id].to_s) unless input[:replica_kms_key_id].nil?
        xml
      end
    end

    # Structure Builder for ErrorDocument
    class ErrorDocument
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Key', input[:key].to_s) unless input[:key].nil?
        xml
      end
    end

    # Structure Builder for EventBridgeConfiguration
    class EventBridgeConfiguration
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml
      end
    end

    # List Builder for EventList
    class EventList
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Structure Builder for ExistingObjectReplication
    class ExistingObjectReplication
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Status', input[:status].to_s) unless input[:status].nil?
        xml
      end
    end

    # List Builder for ExposeHeaders
    class ExposeHeaders
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Structure Builder for FilterRule
    class FilterRule
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Name', input[:name].to_s) unless input[:name].nil?
        xml << Hearth::XML::Node.new('Value', input[:value].to_s) unless input[:value].nil?
        xml
      end
    end

    # List Builder for FilterRuleList
    class FilterRuleList
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Types::FilterRule.build(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Builder for GetBucketAccelerateConfiguration
    class GetBucketAccelerateConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        CGI.parse('accelerate').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Operation Builder for GetBucketAcl
    class GetBucketAcl
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        CGI.parse('acl').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Operation Builder for GetBucketAnalyticsConfiguration
    class GetBucketAnalyticsConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        CGI.parse('analytics&x-id=GetBucketAnalyticsConfiguration').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['id'] = input[:id].to_s unless input[:id].nil?
        http_req.append_query_params(params)
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Operation Builder for GetBucketCors
    class GetBucketCors
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        CGI.parse('cors').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Operation Builder for GetBucketEncryption
    class GetBucketEncryption
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        CGI.parse('encryption').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Operation Builder for GetBucketIntelligentTieringConfiguration
    class GetBucketIntelligentTieringConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        CGI.parse('intelligent-tiering&x-id=GetBucketIntelligentTieringConfiguration').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['id'] = input[:id].to_s unless input[:id].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetBucketInventoryConfiguration
    class GetBucketInventoryConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        CGI.parse('inventory&x-id=GetBucketInventoryConfiguration').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['id'] = input[:id].to_s unless input[:id].nil?
        http_req.append_query_params(params)
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Operation Builder for GetBucketLifecycleConfiguration
    class GetBucketLifecycleConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        CGI.parse('lifecycle').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Operation Builder for GetBucketLocation
    class GetBucketLocation
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        CGI.parse('location').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Operation Builder for GetBucketLogging
    class GetBucketLogging
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        CGI.parse('logging').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Operation Builder for GetBucketMetricsConfiguration
    class GetBucketMetricsConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        CGI.parse('metrics&x-id=GetBucketMetricsConfiguration').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['id'] = input[:id].to_s unless input[:id].nil?
        http_req.append_query_params(params)
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Operation Builder for GetBucketNotificationConfiguration
    class GetBucketNotificationConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        CGI.parse('notification').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Operation Builder for GetBucketOwnershipControls
    class GetBucketOwnershipControls
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        CGI.parse('ownershipControls').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Operation Builder for GetBucketPolicy
    class GetBucketPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        CGI.parse('policy').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Operation Builder for GetBucketPolicyStatus
    class GetBucketPolicyStatus
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        CGI.parse('policyStatus').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Operation Builder for GetBucketReplication
    class GetBucketReplication
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        CGI.parse('replication').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Operation Builder for GetBucketRequestPayment
    class GetBucketRequestPayment
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        CGI.parse('requestPayment').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Operation Builder for GetBucketTagging
    class GetBucketTagging
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        CGI.parse('tagging').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Operation Builder for GetBucketVersioning
    class GetBucketVersioning
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        CGI.parse('versioning').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Operation Builder for GetBucketWebsite
    class GetBucketWebsite
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        CGI.parse('website').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Operation Builder for GetObject
    class GetObject
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        CGI.parse('x-id=GetObject').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        if input[:key].to_s.empty?
          raise ArgumentError, "HTTP label :key cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s/%<Key>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s),
            Key: (input[:key].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        params['response-cache-control'] = input[:response_cache_control].to_s unless input[:response_cache_control].nil?
        params['response-content-disposition'] = input[:response_content_disposition].to_s unless input[:response_content_disposition].nil?
        params['response-content-encoding'] = input[:response_content_encoding].to_s unless input[:response_content_encoding].nil?
        params['response-content-language'] = input[:response_content_language].to_s unless input[:response_content_language].nil?
        params['response-content-type'] = input[:response_content_type].to_s unless input[:response_content_type].nil?
        params['response-expires'] = Hearth::TimeHelper.to_http_date(input[:response_expires]) unless input[:response_expires].nil?
        params['versionId'] = input[:version_id].to_s unless input[:version_id].nil?
        params['partNumber'] = input[:part_number].to_s unless input[:part_number].nil?
        http_req.append_query_params(params)
        http_req.headers['If-Match'] = input[:if_match] unless input[:if_match].nil? || input[:if_match].empty?
        http_req.headers['If-Modified-Since'] = Hearth::TimeHelper.to_http_date(input[:if_modified_since]) unless input[:if_modified_since].nil?
        http_req.headers['If-None-Match'] = input[:if_none_match] unless input[:if_none_match].nil? || input[:if_none_match].empty?
        http_req.headers['If-Unmodified-Since'] = Hearth::TimeHelper.to_http_date(input[:if_unmodified_since]) unless input[:if_unmodified_since].nil?
        http_req.headers['Range'] = input[:range] unless input[:range].nil? || input[:range].empty?
        http_req.headers['x-amz-server-side-encryption-customer-algorithm'] = input[:sse_customer_algorithm] unless input[:sse_customer_algorithm].nil? || input[:sse_customer_algorithm].empty?
        http_req.headers['x-amz-server-side-encryption-customer-key'] = input[:sse_customer_key] unless input[:sse_customer_key].nil? || input[:sse_customer_key].empty?
        http_req.headers['x-amz-server-side-encryption-customer-key-MD5'] = input[:sse_customer_key_md5] unless input[:sse_customer_key_md5].nil? || input[:sse_customer_key_md5].empty?
        http_req.headers['x-amz-request-payer'] = input[:request_payer] unless input[:request_payer].nil? || input[:request_payer].empty?
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
        http_req.headers['x-amz-checksum-mode'] = input[:checksum_mode] unless input[:checksum_mode].nil? || input[:checksum_mode].empty?
      end
    end

    # Operation Builder for GetObjectAcl
    class GetObjectAcl
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        CGI.parse('acl').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        if input[:key].to_s.empty?
          raise ArgumentError, "HTTP label :key cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s/%<Key>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s),
            Key: (input[:key].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        params['versionId'] = input[:version_id].to_s unless input[:version_id].nil?
        http_req.append_query_params(params)
        http_req.headers['x-amz-request-payer'] = input[:request_payer] unless input[:request_payer].nil? || input[:request_payer].empty?
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Operation Builder for GetObjectAttributes
    class GetObjectAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        CGI.parse('attributes').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        if input[:key].to_s.empty?
          raise ArgumentError, "HTTP label :key cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s/%<Key>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s),
            Key: (input[:key].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        params['versionId'] = input[:version_id].to_s unless input[:version_id].nil?
        http_req.append_query_params(params)
        http_req.headers['x-amz-max-parts'] = input[:max_parts].to_s unless input[:max_parts].nil?
        http_req.headers['x-amz-part-number-marker'] = input[:part_number_marker] unless input[:part_number_marker].nil? || input[:part_number_marker].empty?
        http_req.headers['x-amz-server-side-encryption-customer-algorithm'] = input[:sse_customer_algorithm] unless input[:sse_customer_algorithm].nil? || input[:sse_customer_algorithm].empty?
        http_req.headers['x-amz-server-side-encryption-customer-key'] = input[:sse_customer_key] unless input[:sse_customer_key].nil? || input[:sse_customer_key].empty?
        http_req.headers['x-amz-server-side-encryption-customer-key-MD5'] = input[:sse_customer_key_md5] unless input[:sse_customer_key_md5].nil? || input[:sse_customer_key_md5].empty?
        http_req.headers['x-amz-request-payer'] = input[:request_payer] unless input[:request_payer].nil? || input[:request_payer].empty?
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
        unless input[:object_attributes].nil? || input[:object_attributes].empty?
          http_req.headers['x-amz-object-attributes'] = input[:object_attributes]
            .compact
            .map { |s| (s.include?('"') || s.include?(",")) ? "\"#{s.gsub('"', '\"')}\"" : s }
            .join(', ')
        end
      end
    end

    # Operation Builder for GetObjectLegalHold
    class GetObjectLegalHold
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        CGI.parse('legal-hold').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        if input[:key].to_s.empty?
          raise ArgumentError, "HTTP label :key cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s/%<Key>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s),
            Key: (input[:key].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        params['versionId'] = input[:version_id].to_s unless input[:version_id].nil?
        http_req.append_query_params(params)
        http_req.headers['x-amz-request-payer'] = input[:request_payer] unless input[:request_payer].nil? || input[:request_payer].empty?
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Operation Builder for GetObjectLockConfiguration
    class GetObjectLockConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        CGI.parse('object-lock').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Operation Builder for GetObjectRetention
    class GetObjectRetention
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        CGI.parse('retention').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        if input[:key].to_s.empty?
          raise ArgumentError, "HTTP label :key cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s/%<Key>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s),
            Key: (input[:key].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        params['versionId'] = input[:version_id].to_s unless input[:version_id].nil?
        http_req.append_query_params(params)
        http_req.headers['x-amz-request-payer'] = input[:request_payer] unless input[:request_payer].nil? || input[:request_payer].empty?
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Operation Builder for GetObjectTagging
    class GetObjectTagging
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        CGI.parse('tagging').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        if input[:key].to_s.empty?
          raise ArgumentError, "HTTP label :key cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s/%<Key>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s),
            Key: (input[:key].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        params['versionId'] = input[:version_id].to_s unless input[:version_id].nil?
        http_req.append_query_params(params)
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
        http_req.headers['x-amz-request-payer'] = input[:request_payer] unless input[:request_payer].nil? || input[:request_payer].empty?
      end
    end

    # Operation Builder for GetObjectTorrent
    class GetObjectTorrent
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        CGI.parse('torrent').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        if input[:key].to_s.empty?
          raise ArgumentError, "HTTP label :key cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s/%<Key>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s),
            Key: (input[:key].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-request-payer'] = input[:request_payer] unless input[:request_payer].nil? || input[:request_payer].empty?
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Operation Builder for GetPublicAccessBlock
    class GetPublicAccessBlock
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        CGI.parse('publicAccessBlock').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Structure Builder for GlacierJobParameters
    class GlacierJobParameters
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Tier', input[:tier].to_s) unless input[:tier].nil?
        xml
      end
    end

    # Structure Builder for Grant
    class Grant
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        unless input[:grantee].nil?
          nodes = Types::Grantee.build('Grantee', input[:grantee])
          nodes.each { |n| n.attributes['xmlns:xsi'] = 'http://www.w3.org/2001/XMLSchema-instance' }
          xml << nodes
        end
        xml << Hearth::XML::Node.new('Permission', input[:permission].to_s) unless input[:permission].nil?
        xml
      end
    end

    # Structure Builder for Grantee
    class Grantee
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('DisplayName', input[:display_name].to_s) unless input[:display_name].nil?
        xml << Hearth::XML::Node.new('EmailAddress', input[:email_address].to_s) unless input[:email_address].nil?
        xml << Hearth::XML::Node.new('ID', input[:id].to_s) unless input[:id].nil?
        xml << Hearth::XML::Node.new('URI', input[:uri].to_s) unless input[:uri].nil?
        xml.attributes['xsi:type'] = input[:type] unless input[:type].nil?
        xml
      end
    end

    # List Builder for Grants
    class Grants
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Types::Grant.build(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Builder for HeadBucket
    class HeadBucket
      def self.build(http_req, input:)
        http_req.http_method = 'HEAD'
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Operation Builder for HeadObject
    class HeadObject
      def self.build(http_req, input:)
        http_req.http_method = 'HEAD'
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        if input[:key].to_s.empty?
          raise ArgumentError, "HTTP label :key cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s/%<Key>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s),
            Key: (input[:key].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        params['versionId'] = input[:version_id].to_s unless input[:version_id].nil?
        params['partNumber'] = input[:part_number].to_s unless input[:part_number].nil?
        http_req.append_query_params(params)
        http_req.headers['If-Match'] = input[:if_match] unless input[:if_match].nil? || input[:if_match].empty?
        http_req.headers['If-Modified-Since'] = Hearth::TimeHelper.to_http_date(input[:if_modified_since]) unless input[:if_modified_since].nil?
        http_req.headers['If-None-Match'] = input[:if_none_match] unless input[:if_none_match].nil? || input[:if_none_match].empty?
        http_req.headers['If-Unmodified-Since'] = Hearth::TimeHelper.to_http_date(input[:if_unmodified_since]) unless input[:if_unmodified_since].nil?
        http_req.headers['Range'] = input[:range] unless input[:range].nil? || input[:range].empty?
        http_req.headers['x-amz-server-side-encryption-customer-algorithm'] = input[:sse_customer_algorithm] unless input[:sse_customer_algorithm].nil? || input[:sse_customer_algorithm].empty?
        http_req.headers['x-amz-server-side-encryption-customer-key'] = input[:sse_customer_key] unless input[:sse_customer_key].nil? || input[:sse_customer_key].empty?
        http_req.headers['x-amz-server-side-encryption-customer-key-MD5'] = input[:sse_customer_key_md5] unless input[:sse_customer_key_md5].nil? || input[:sse_customer_key_md5].empty?
        http_req.headers['x-amz-request-payer'] = input[:request_payer] unless input[:request_payer].nil? || input[:request_payer].empty?
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
        http_req.headers['x-amz-checksum-mode'] = input[:checksum_mode] unless input[:checksum_mode].nil? || input[:checksum_mode].empty?
      end
    end

    # Structure Builder for IndexDocument
    class IndexDocument
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Suffix', input[:suffix].to_s) unless input[:suffix].nil?
        xml
      end
    end

    # Structure Builder for InputSerialization
    class InputSerialization
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Types::CSVInput.build('CSV', input[:csv]) unless input[:csv].nil?
        xml << Hearth::XML::Node.new('CompressionType', input[:compression_type].to_s) unless input[:compression_type].nil?
        xml << Types::JSONInput.build('JSON', input[:json]) unless input[:json].nil?
        xml << Types::ParquetInput.build('Parquet', input[:parquet]) unless input[:parquet].nil?
        xml
      end
    end

    # Structure Builder for IntelligentTieringAndOperator
    class IntelligentTieringAndOperator
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Prefix', input[:prefix].to_s) unless input[:prefix].nil?
        xml << Types::TagSet.build('Tag', input[:tags]) unless input[:tags].nil?
        xml
      end
    end

    # Structure Builder for IntelligentTieringConfiguration
    class IntelligentTieringConfiguration
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Id', input[:id].to_s) unless input[:id].nil?
        xml << Types::IntelligentTieringFilter.build('Filter', input[:filter]) unless input[:filter].nil?
        xml << Hearth::XML::Node.new('Status', input[:status].to_s) unless input[:status].nil?
        xml << Types::TieringList.build('Tiering', input[:tierings]) unless input[:tierings].nil?
        xml
      end
    end

    # Structure Builder for IntelligentTieringFilter
    class IntelligentTieringFilter
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Prefix', input[:prefix].to_s) unless input[:prefix].nil?
        xml << Types::Tag.build('Tag', input[:tag]) unless input[:tag].nil?
        xml << Types::IntelligentTieringAndOperator.build('And', input[:and]) unless input[:and].nil?
        xml
      end
    end

    # Structure Builder for InventoryConfiguration
    class InventoryConfiguration
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Types::InventoryDestination.build('Destination', input[:destination]) unless input[:destination].nil?
        xml << Hearth::XML::Node.new('IsEnabled', input[:is_enabled].to_s) unless input[:is_enabled].nil?
        xml << Types::InventoryFilter.build('Filter', input[:filter]) unless input[:filter].nil?
        xml << Hearth::XML::Node.new('Id', input[:id].to_s) unless input[:id].nil?
        xml << Hearth::XML::Node.new('IncludedObjectVersions', input[:included_object_versions].to_s) unless input[:included_object_versions].nil?
        xml << Hearth::XML::Node.new('OptionalFields', Types::InventoryOptionalFields.build('Field', input[:optional_fields])) unless input[:optional_fields].nil?
        xml << Types::InventorySchedule.build('Schedule', input[:schedule]) unless input[:schedule].nil?
        xml
      end
    end

    # Structure Builder for InventoryDestination
    class InventoryDestination
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Types::InventoryS3BucketDestination.build('S3BucketDestination', input[:s3_bucket_destination]) unless input[:s3_bucket_destination].nil?
        xml
      end
    end

    # Structure Builder for InventoryEncryption
    class InventoryEncryption
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Types::SSES3.build('SSE-S3', input[:sses3]) unless input[:sses3].nil?
        xml << Types::SSEKMS.build('SSE-KMS', input[:ssekms]) unless input[:ssekms].nil?
        xml
      end
    end

    # Structure Builder for InventoryFilter
    class InventoryFilter
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Prefix', input[:prefix].to_s) unless input[:prefix].nil?
        xml
      end
    end

    # List Builder for InventoryOptionalFields
    class InventoryOptionalFields
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Structure Builder for InventoryS3BucketDestination
    class InventoryS3BucketDestination
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('AccountId', input[:account_id].to_s) unless input[:account_id].nil?
        xml << Hearth::XML::Node.new('Bucket', input[:bucket].to_s) unless input[:bucket].nil?
        xml << Hearth::XML::Node.new('Format', input[:format].to_s) unless input[:format].nil?
        xml << Hearth::XML::Node.new('Prefix', input[:prefix].to_s) unless input[:prefix].nil?
        xml << Types::InventoryEncryption.build('Encryption', input[:encryption]) unless input[:encryption].nil?
        xml
      end
    end

    # Structure Builder for InventorySchedule
    class InventorySchedule
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Frequency', input[:frequency].to_s) unless input[:frequency].nil?
        xml
      end
    end

    # Structure Builder for JSONInput
    class JSONInput
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Type', input[:type].to_s) unless input[:type].nil?
        xml
      end
    end

    # Structure Builder for JSONOutput
    class JSONOutput
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('RecordDelimiter', input[:record_delimiter].to_s) unless input[:record_delimiter].nil?
        xml
      end
    end

    # Structure Builder for LambdaFunctionConfiguration
    class LambdaFunctionConfiguration
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Id', input[:id].to_s) unless input[:id].nil?
        xml << Hearth::XML::Node.new('CloudFunction', input[:lambda_function_arn].to_s) unless input[:lambda_function_arn].nil?
        xml << Types::EventList.build('Event', input[:events]) unless input[:events].nil?
        xml << Types::NotificationConfigurationFilter.build('Filter', input[:filter]) unless input[:filter].nil?
        xml
      end
    end

    # List Builder for LambdaFunctionConfigurationList
    class LambdaFunctionConfigurationList
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Types::LambdaFunctionConfiguration.build(node_name, element) unless element.nil?
        end
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

    # Structure Builder for LifecycleRule
    class LifecycleRule
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Types::LifecycleExpiration.build('Expiration', input[:expiration]) unless input[:expiration].nil?
        xml << Hearth::XML::Node.new('ID', input[:id].to_s) unless input[:id].nil?
        xml << Hearth::XML::Node.new('Prefix', input[:prefix].to_s) unless input[:prefix].nil?
        xml << Types::LifecycleRuleFilter.build('Filter', input[:filter]) unless input[:filter].nil?
        xml << Hearth::XML::Node.new('Status', input[:status].to_s) unless input[:status].nil?
        xml << Types::TransitionList.build('Transition', input[:transitions]) unless input[:transitions].nil?
        xml << Types::NoncurrentVersionTransitionList.build('NoncurrentVersionTransition', input[:noncurrent_version_transitions]) unless input[:noncurrent_version_transitions].nil?
        xml << Types::NoncurrentVersionExpiration.build('NoncurrentVersionExpiration', input[:noncurrent_version_expiration]) unless input[:noncurrent_version_expiration].nil?
        xml << Types::AbortIncompleteMultipartUpload.build('AbortIncompleteMultipartUpload', input[:abort_incomplete_multipart_upload]) unless input[:abort_incomplete_multipart_upload].nil?
        xml
      end
    end

    # Structure Builder for LifecycleRuleAndOperator
    class LifecycleRuleAndOperator
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Prefix', input[:prefix].to_s) unless input[:prefix].nil?
        xml << Types::TagSet.build('Tag', input[:tags]) unless input[:tags].nil?
        xml << Hearth::XML::Node.new('ObjectSizeGreaterThan', input[:object_size_greater_than].to_s) unless input[:object_size_greater_than].nil?
        xml << Hearth::XML::Node.new('ObjectSizeLessThan', input[:object_size_less_than].to_s) unless input[:object_size_less_than].nil?
        xml
      end
    end

    # Structure Builder for LifecycleRuleFilter
    class LifecycleRuleFilter
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        case input
        when Types::LifecycleRuleFilter::Prefix
          xml << Hearth::XML::Node.new('Prefix', input.__getobj__.to_s)
        when Types::LifecycleRuleFilter::Tag
          xml << Types::Tag.build('Tag', input.__getobj__) unless input.__getobj__.nil?
        when Types::LifecycleRuleFilter::ObjectSizeGreaterThan
          xml << Hearth::XML::Node.new('ObjectSizeGreaterThan', input.__getobj__.to_s)
        when Types::LifecycleRuleFilter::ObjectSizeLessThan
          xml << Hearth::XML::Node.new('ObjectSizeLessThan', input.__getobj__.to_s)
        when Types::LifecycleRuleFilter::And
          xml << Types::LifecycleRuleAndOperator.build('And', input.__getobj__) unless input.__getobj__.nil?
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::LifecycleRuleFilter"
        end

        xml
      end
    end

    # List Builder for LifecycleRules
    class LifecycleRules
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Types::LifecycleRule.build(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Builder for ListBucketAnalyticsConfigurations
    class ListBucketAnalyticsConfigurations
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        CGI.parse('analytics&x-id=ListBucketAnalyticsConfigurations').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['continuation-token'] = input[:continuation_token].to_s unless input[:continuation_token].nil?
        http_req.append_query_params(params)
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Operation Builder for ListBucketIntelligentTieringConfigurations
    class ListBucketIntelligentTieringConfigurations
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        CGI.parse('intelligent-tiering&x-id=ListBucketIntelligentTieringConfigurations').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['continuation-token'] = input[:continuation_token].to_s unless input[:continuation_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListBucketInventoryConfigurations
    class ListBucketInventoryConfigurations
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        CGI.parse('inventory&x-id=ListBucketInventoryConfigurations').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['continuation-token'] = input[:continuation_token].to_s unless input[:continuation_token].nil?
        http_req.append_query_params(params)
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Operation Builder for ListBucketMetricsConfigurations
    class ListBucketMetricsConfigurations
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        CGI.parse('metrics&x-id=ListBucketMetricsConfigurations').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['continuation-token'] = input[:continuation_token].to_s unless input[:continuation_token].nil?
        http_req.append_query_params(params)
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Operation Builder for ListBuckets
    class ListBuckets
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListMultipartUploads
    class ListMultipartUploads
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        CGI.parse('uploads').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['delimiter'] = input[:delimiter].to_s unless input[:delimiter].nil?
        params['encoding-type'] = input[:encoding_type].to_s unless input[:encoding_type].nil?
        params['key-marker'] = input[:key_marker].to_s unless input[:key_marker].nil?
        params['max-uploads'] = input[:max_uploads].to_s unless input[:max_uploads].nil?
        params['prefix'] = input[:prefix].to_s unless input[:prefix].nil?
        params['upload-id-marker'] = input[:upload_id_marker].to_s unless input[:upload_id_marker].nil?
        http_req.append_query_params(params)
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Operation Builder for ListObjectVersions
    class ListObjectVersions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        CGI.parse('versions').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['delimiter'] = input[:delimiter].to_s unless input[:delimiter].nil?
        params['encoding-type'] = input[:encoding_type].to_s unless input[:encoding_type].nil?
        params['key-marker'] = input[:key_marker].to_s unless input[:key_marker].nil?
        params['max-keys'] = input[:max_keys].to_s unless input[:max_keys].nil?
        params['prefix'] = input[:prefix].to_s unless input[:prefix].nil?
        params['version-id-marker'] = input[:version_id_marker].to_s unless input[:version_id_marker].nil?
        http_req.append_query_params(params)
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Operation Builder for ListObjects
    class ListObjects
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['delimiter'] = input[:delimiter].to_s unless input[:delimiter].nil?
        params['encoding-type'] = input[:encoding_type].to_s unless input[:encoding_type].nil?
        params['marker'] = input[:marker].to_s unless input[:marker].nil?
        params['max-keys'] = input[:max_keys].to_s unless input[:max_keys].nil?
        params['prefix'] = input[:prefix].to_s unless input[:prefix].nil?
        http_req.append_query_params(params)
        http_req.headers['x-amz-request-payer'] = input[:request_payer] unless input[:request_payer].nil? || input[:request_payer].empty?
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Operation Builder for ListObjectsV2
    class ListObjectsV2
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        CGI.parse('list-type=2').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['delimiter'] = input[:delimiter].to_s unless input[:delimiter].nil?
        params['encoding-type'] = input[:encoding_type].to_s unless input[:encoding_type].nil?
        params['max-keys'] = input[:max_keys].to_s unless input[:max_keys].nil?
        params['prefix'] = input[:prefix].to_s unless input[:prefix].nil?
        params['continuation-token'] = input[:continuation_token].to_s unless input[:continuation_token].nil?
        params['fetch-owner'] = input[:fetch_owner].to_s unless input[:fetch_owner].nil?
        params['start-after'] = input[:start_after].to_s unless input[:start_after].nil?
        http_req.append_query_params(params)
        http_req.headers['x-amz-request-payer'] = input[:request_payer] unless input[:request_payer].nil? || input[:request_payer].empty?
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Operation Builder for ListParts
    class ListParts
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        CGI.parse('x-id=ListParts').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        if input[:key].to_s.empty?
          raise ArgumentError, "HTTP label :key cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s/%<Key>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s),
            Key: (input[:key].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        params['max-parts'] = input[:max_parts].to_s unless input[:max_parts].nil?
        params['part-number-marker'] = input[:part_number_marker].to_s unless input[:part_number_marker].nil?
        params['uploadId'] = input[:upload_id].to_s unless input[:upload_id].nil?
        http_req.append_query_params(params)
        http_req.headers['x-amz-request-payer'] = input[:request_payer] unless input[:request_payer].nil? || input[:request_payer].empty?
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
        http_req.headers['x-amz-server-side-encryption-customer-algorithm'] = input[:sse_customer_algorithm] unless input[:sse_customer_algorithm].nil? || input[:sse_customer_algorithm].empty?
        http_req.headers['x-amz-server-side-encryption-customer-key'] = input[:sse_customer_key] unless input[:sse_customer_key].nil? || input[:sse_customer_key].empty?
        http_req.headers['x-amz-server-side-encryption-customer-key-MD5'] = input[:sse_customer_key_md5] unless input[:sse_customer_key_md5].nil? || input[:sse_customer_key_md5].empty?
      end
    end

    # Structure Builder for LoggingEnabled
    class LoggingEnabled
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('TargetBucket', input[:target_bucket].to_s) unless input[:target_bucket].nil?
        xml << Hearth::XML::Node.new('TargetGrants', Types::TargetGrants.build('Grant', input[:target_grants])) unless input[:target_grants].nil?
        xml << Hearth::XML::Node.new('TargetPrefix', input[:target_prefix].to_s) unless input[:target_prefix].nil?
        xml
      end
    end

    # Map Builder for Metadata
    class Metadata
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

    # Structure Builder for MetadataEntry
    class MetadataEntry
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Name', input[:name].to_s) unless input[:name].nil?
        xml << Hearth::XML::Node.new('Value', input[:value].to_s) unless input[:value].nil?
        xml
      end
    end

    # Structure Builder for Metrics
    class Metrics
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Status', input[:status].to_s) unless input[:status].nil?
        xml << Types::ReplicationTimeValue.build('EventThreshold', input[:event_threshold]) unless input[:event_threshold].nil?
        xml
      end
    end

    # Structure Builder for MetricsAndOperator
    class MetricsAndOperator
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Prefix', input[:prefix].to_s) unless input[:prefix].nil?
        xml << Types::TagSet.build('Tag', input[:tags]) unless input[:tags].nil?
        xml << Hearth::XML::Node.new('AccessPointArn', input[:access_point_arn].to_s) unless input[:access_point_arn].nil?
        xml
      end
    end

    # Structure Builder for MetricsConfiguration
    class MetricsConfiguration
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Id', input[:id].to_s) unless input[:id].nil?
        xml << Types::MetricsFilter.build('Filter', input[:filter]) unless input[:filter].nil?
        xml
      end
    end

    # Structure Builder for MetricsFilter
    class MetricsFilter
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        case input
        when Types::MetricsFilter::Prefix
          xml << Hearth::XML::Node.new('Prefix', input.__getobj__.to_s)
        when Types::MetricsFilter::Tag
          xml << Types::Tag.build('Tag', input.__getobj__) unless input.__getobj__.nil?
        when Types::MetricsFilter::AccessPointArn
          xml << Hearth::XML::Node.new('AccessPointArn', input.__getobj__.to_s)
        when Types::MetricsFilter::And
          xml << Types::MetricsAndOperator.build('And', input.__getobj__) unless input.__getobj__.nil?
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::MetricsFilter"
        end

        xml
      end
    end

    # Structure Builder for NoncurrentVersionExpiration
    class NoncurrentVersionExpiration
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('NoncurrentDays', input[:noncurrent_days].to_s) unless input[:noncurrent_days].nil?
        xml << Hearth::XML::Node.new('NewerNoncurrentVersions', input[:newer_noncurrent_versions].to_s) unless input[:newer_noncurrent_versions].nil?
        xml
      end
    end

    # Structure Builder for NoncurrentVersionTransition
    class NoncurrentVersionTransition
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('NoncurrentDays', input[:noncurrent_days].to_s) unless input[:noncurrent_days].nil?
        xml << Hearth::XML::Node.new('StorageClass', input[:storage_class].to_s) unless input[:storage_class].nil?
        xml << Hearth::XML::Node.new('NewerNoncurrentVersions', input[:newer_noncurrent_versions].to_s) unless input[:newer_noncurrent_versions].nil?
        xml
      end
    end

    # List Builder for NoncurrentVersionTransitionList
    class NoncurrentVersionTransitionList
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Types::NoncurrentVersionTransition.build(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Builder for NotificationConfiguration
    class NotificationConfiguration
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Types::TopicConfigurationList.build('TopicConfiguration', input[:topic_configurations]) unless input[:topic_configurations].nil?
        xml << Types::QueueConfigurationList.build('QueueConfiguration', input[:queue_configurations]) unless input[:queue_configurations].nil?
        xml << Types::LambdaFunctionConfigurationList.build('CloudFunctionConfiguration', input[:lambda_function_configurations]) unless input[:lambda_function_configurations].nil?
        xml << Types::EventBridgeConfiguration.build('EventBridgeConfiguration', input[:event_bridge_configuration]) unless input[:event_bridge_configuration].nil?
        xml
      end
    end

    # Structure Builder for NotificationConfigurationFilter
    class NotificationConfigurationFilter
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Types::S3KeyFilter.build('S3Key', input[:key]) unless input[:key].nil?
        xml
      end
    end

    # List Builder for ObjectAttributesList
    class ObjectAttributesList
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Structure Builder for ObjectIdentifier
    class ObjectIdentifier
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Key', input[:key].to_s) unless input[:key].nil?
        xml << Hearth::XML::Node.new('VersionId', input[:version_id].to_s) unless input[:version_id].nil?
        xml
      end
    end

    # List Builder for ObjectIdentifierList
    class ObjectIdentifierList
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Types::ObjectIdentifier.build(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Builder for ObjectLockConfiguration
    class ObjectLockConfiguration
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ObjectLockEnabled', input[:object_lock_enabled].to_s) unless input[:object_lock_enabled].nil?
        xml << Types::ObjectLockRule.build('Rule', input[:rule]) unless input[:rule].nil?
        xml
      end
    end

    # Structure Builder for ObjectLockLegalHold
    class ObjectLockLegalHold
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Status', input[:status].to_s) unless input[:status].nil?
        xml
      end
    end

    # Structure Builder for ObjectLockRetention
    class ObjectLockRetention
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Mode', input[:mode].to_s) unless input[:mode].nil?
        xml << Hearth::XML::Node.new('RetainUntilDate', Hearth::TimeHelper.to_date_time(input[:retain_until_date])) unless input[:retain_until_date].nil?
        xml
      end
    end

    # Structure Builder for ObjectLockRule
    class ObjectLockRule
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Types::DefaultRetention.build('DefaultRetention', input[:default_retention]) unless input[:default_retention].nil?
        xml
      end
    end

    # Structure Builder for OutputLocation
    class OutputLocation
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Types::S3Location.build('S3', input[:s3]) unless input[:s3].nil?
        xml
      end
    end

    # Structure Builder for OutputSerialization
    class OutputSerialization
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Types::CSVOutput.build('CSV', input[:csv]) unless input[:csv].nil?
        xml << Types::JSONOutput.build('JSON', input[:json]) unless input[:json].nil?
        xml
      end
    end

    # Structure Builder for Owner
    class Owner
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('DisplayName', input[:display_name].to_s) unless input[:display_name].nil?
        xml << Hearth::XML::Node.new('ID', input[:id].to_s) unless input[:id].nil?
        xml
      end
    end

    # Structure Builder for OwnershipControls
    class OwnershipControls
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Types::OwnershipControlsRules.build('Rule', input[:rules]) unless input[:rules].nil?
        xml
      end
    end

    # Structure Builder for OwnershipControlsRule
    class OwnershipControlsRule
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ObjectOwnership', input[:object_ownership].to_s) unless input[:object_ownership].nil?
        xml
      end
    end

    # List Builder for OwnershipControlsRules
    class OwnershipControlsRules
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Types::OwnershipControlsRule.build(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Builder for ParquetInput
    class ParquetInput
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml
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

    # Operation Builder for PutBucketAccelerateConfiguration
    class PutBucketAccelerateConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        CGI.parse('accelerate').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/xml'
        xml = Builders::AccelerateConfiguration.build('AccelerateConfiguration', input[:accelerate_configuration]) unless input[:accelerate_configuration].nil?
        http_req.body = ::StringIO.new(xml.to_str)
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
        http_req.headers['x-amz-sdk-checksum-algorithm'] = input[:checksum_algorithm] unless input[:checksum_algorithm].nil? || input[:checksum_algorithm].empty?
      end
    end

    # Operation Builder for PutBucketAcl
    class PutBucketAcl
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        CGI.parse('acl').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/xml'
        xml = Builders::AccessControlPolicy.build('AccessControlPolicy', input[:access_control_policy]) unless input[:access_control_policy].nil?
        http_req.body = ::StringIO.new(xml.to_str)
        http_req.headers['x-amz-acl'] = input[:acl] unless input[:acl].nil? || input[:acl].empty?
        http_req.headers['Content-MD5'] = input[:content_md5] unless input[:content_md5].nil? || input[:content_md5].empty?
        http_req.headers['x-amz-sdk-checksum-algorithm'] = input[:checksum_algorithm] unless input[:checksum_algorithm].nil? || input[:checksum_algorithm].empty?
        http_req.headers['x-amz-grant-full-control'] = input[:grant_full_control] unless input[:grant_full_control].nil? || input[:grant_full_control].empty?
        http_req.headers['x-amz-grant-read'] = input[:grant_read] unless input[:grant_read].nil? || input[:grant_read].empty?
        http_req.headers['x-amz-grant-read-acp'] = input[:grant_read_acp] unless input[:grant_read_acp].nil? || input[:grant_read_acp].empty?
        http_req.headers['x-amz-grant-write'] = input[:grant_write] unless input[:grant_write].nil? || input[:grant_write].empty?
        http_req.headers['x-amz-grant-write-acp'] = input[:grant_write_acp] unless input[:grant_write_acp].nil? || input[:grant_write_acp].empty?
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Operation Builder for PutBucketAnalyticsConfiguration
    class PutBucketAnalyticsConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        CGI.parse('analytics').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['id'] = input[:id].to_s unless input[:id].nil?
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/xml'
        xml = Builders::AnalyticsConfiguration.build('AnalyticsConfiguration', input[:analytics_configuration]) unless input[:analytics_configuration].nil?
        http_req.body = ::StringIO.new(xml.to_str)
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Operation Builder for PutBucketCors
    class PutBucketCors
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        CGI.parse('cors').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/xml'
        xml = Builders::CORSConfiguration.build('CORSConfiguration', input[:cors_configuration]) unless input[:cors_configuration].nil?
        http_req.body = ::StringIO.new(xml.to_str)
        http_req.headers['Content-MD5'] = input[:content_md5] unless input[:content_md5].nil? || input[:content_md5].empty?
        http_req.headers['x-amz-sdk-checksum-algorithm'] = input[:checksum_algorithm] unless input[:checksum_algorithm].nil? || input[:checksum_algorithm].empty?
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Operation Builder for PutBucketEncryption
    class PutBucketEncryption
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        CGI.parse('encryption').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/xml'
        xml = Builders::ServerSideEncryptionConfiguration.build('ServerSideEncryptionConfiguration', input[:server_side_encryption_configuration]) unless input[:server_side_encryption_configuration].nil?
        http_req.body = ::StringIO.new(xml.to_str)
        http_req.headers['Content-MD5'] = input[:content_md5] unless input[:content_md5].nil? || input[:content_md5].empty?
        http_req.headers['x-amz-sdk-checksum-algorithm'] = input[:checksum_algorithm] unless input[:checksum_algorithm].nil? || input[:checksum_algorithm].empty?
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Operation Builder for PutBucketIntelligentTieringConfiguration
    class PutBucketIntelligentTieringConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        CGI.parse('intelligent-tiering').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['id'] = input[:id].to_s unless input[:id].nil?
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/xml'
        xml = Builders::IntelligentTieringConfiguration.build('IntelligentTieringConfiguration', input[:intelligent_tiering_configuration]) unless input[:intelligent_tiering_configuration].nil?
        http_req.body = ::StringIO.new(xml.to_str)
      end
    end

    # Operation Builder for PutBucketInventoryConfiguration
    class PutBucketInventoryConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        CGI.parse('inventory').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['id'] = input[:id].to_s unless input[:id].nil?
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/xml'
        xml = Builders::InventoryConfiguration.build('InventoryConfiguration', input[:inventory_configuration]) unless input[:inventory_configuration].nil?
        http_req.body = ::StringIO.new(xml.to_str)
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Operation Builder for PutBucketLifecycleConfiguration
    class PutBucketLifecycleConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        CGI.parse('lifecycle').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/xml'
        xml = Builders::BucketLifecycleConfiguration.build('LifecycleConfiguration', input[:lifecycle_configuration]) unless input[:lifecycle_configuration].nil?
        http_req.body = ::StringIO.new(xml.to_str)
        http_req.headers['x-amz-sdk-checksum-algorithm'] = input[:checksum_algorithm] unless input[:checksum_algorithm].nil? || input[:checksum_algorithm].empty?
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Operation Builder for PutBucketLogging
    class PutBucketLogging
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        CGI.parse('logging').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/xml'
        xml = Builders::BucketLoggingStatus.build('BucketLoggingStatus', input[:bucket_logging_status]) unless input[:bucket_logging_status].nil?
        http_req.body = ::StringIO.new(xml.to_str)
        http_req.headers['Content-MD5'] = input[:content_md5] unless input[:content_md5].nil? || input[:content_md5].empty?
        http_req.headers['x-amz-sdk-checksum-algorithm'] = input[:checksum_algorithm] unless input[:checksum_algorithm].nil? || input[:checksum_algorithm].empty?
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Operation Builder for PutBucketMetricsConfiguration
    class PutBucketMetricsConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        CGI.parse('metrics').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['id'] = input[:id].to_s unless input[:id].nil?
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/xml'
        xml = Builders::MetricsConfiguration.build('MetricsConfiguration', input[:metrics_configuration]) unless input[:metrics_configuration].nil?
        http_req.body = ::StringIO.new(xml.to_str)
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Operation Builder for PutBucketNotificationConfiguration
    class PutBucketNotificationConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        CGI.parse('notification').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/xml'
        xml = Builders::NotificationConfiguration.build('NotificationConfiguration', input[:notification_configuration]) unless input[:notification_configuration].nil?
        http_req.body = ::StringIO.new(xml.to_str)
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
        http_req.headers['x-amz-skip-destination-validation'] = input[:skip_destination_validation].to_s unless input[:skip_destination_validation].nil?
      end
    end

    # Operation Builder for PutBucketOwnershipControls
    class PutBucketOwnershipControls
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        CGI.parse('ownershipControls').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/xml'
        xml = Builders::OwnershipControls.build('OwnershipControls', input[:ownership_controls]) unless input[:ownership_controls].nil?
        http_req.body = ::StringIO.new(xml.to_str)
        http_req.headers['Content-MD5'] = input[:content_md5] unless input[:content_md5].nil? || input[:content_md5].empty?
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Operation Builder for PutBucketPolicy
    class PutBucketPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        CGI.parse('policy').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'text/plain'
        http_req.body = ::StringIO.new(input[:policy] || '')
        http_req.headers['Content-MD5'] = input[:content_md5] unless input[:content_md5].nil? || input[:content_md5].empty?
        http_req.headers['x-amz-sdk-checksum-algorithm'] = input[:checksum_algorithm] unless input[:checksum_algorithm].nil? || input[:checksum_algorithm].empty?
        http_req.headers['x-amz-confirm-remove-self-bucket-access'] = input[:confirm_remove_self_bucket_access].to_s unless input[:confirm_remove_self_bucket_access].nil?
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Operation Builder for PutBucketReplication
    class PutBucketReplication
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        CGI.parse('replication').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/xml'
        xml = Builders::ReplicationConfiguration.build('ReplicationConfiguration', input[:replication_configuration]) unless input[:replication_configuration].nil?
        http_req.body = ::StringIO.new(xml.to_str)
        http_req.headers['Content-MD5'] = input[:content_md5] unless input[:content_md5].nil? || input[:content_md5].empty?
        http_req.headers['x-amz-sdk-checksum-algorithm'] = input[:checksum_algorithm] unless input[:checksum_algorithm].nil? || input[:checksum_algorithm].empty?
        http_req.headers['x-amz-bucket-object-lock-token'] = input[:token] unless input[:token].nil? || input[:token].empty?
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Operation Builder for PutBucketRequestPayment
    class PutBucketRequestPayment
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        CGI.parse('requestPayment').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/xml'
        xml = Builders::RequestPaymentConfiguration.build('RequestPaymentConfiguration', input[:request_payment_configuration]) unless input[:request_payment_configuration].nil?
        http_req.body = ::StringIO.new(xml.to_str)
        http_req.headers['Content-MD5'] = input[:content_md5] unless input[:content_md5].nil? || input[:content_md5].empty?
        http_req.headers['x-amz-sdk-checksum-algorithm'] = input[:checksum_algorithm] unless input[:checksum_algorithm].nil? || input[:checksum_algorithm].empty?
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Operation Builder for PutBucketTagging
    class PutBucketTagging
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        CGI.parse('tagging').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/xml'
        xml = Builders::Tagging.build('Tagging', input[:tagging]) unless input[:tagging].nil?
        http_req.body = ::StringIO.new(xml.to_str)
        http_req.headers['Content-MD5'] = input[:content_md5] unless input[:content_md5].nil? || input[:content_md5].empty?
        http_req.headers['x-amz-sdk-checksum-algorithm'] = input[:checksum_algorithm] unless input[:checksum_algorithm].nil? || input[:checksum_algorithm].empty?
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Operation Builder for PutBucketVersioning
    class PutBucketVersioning
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        CGI.parse('versioning').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/xml'
        xml = Builders::VersioningConfiguration.build('VersioningConfiguration', input[:versioning_configuration]) unless input[:versioning_configuration].nil?
        http_req.body = ::StringIO.new(xml.to_str)
        http_req.headers['Content-MD5'] = input[:content_md5] unless input[:content_md5].nil? || input[:content_md5].empty?
        http_req.headers['x-amz-sdk-checksum-algorithm'] = input[:checksum_algorithm] unless input[:checksum_algorithm].nil? || input[:checksum_algorithm].empty?
        http_req.headers['x-amz-mfa'] = input[:mfa] unless input[:mfa].nil? || input[:mfa].empty?
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Operation Builder for PutBucketWebsite
    class PutBucketWebsite
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        CGI.parse('website').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/xml'
        xml = Builders::WebsiteConfiguration.build('WebsiteConfiguration', input[:website_configuration]) unless input[:website_configuration].nil?
        http_req.body = ::StringIO.new(xml.to_str)
        http_req.headers['Content-MD5'] = input[:content_md5] unless input[:content_md5].nil? || input[:content_md5].empty?
        http_req.headers['x-amz-sdk-checksum-algorithm'] = input[:checksum_algorithm] unless input[:checksum_algorithm].nil? || input[:checksum_algorithm].empty?
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Operation Builder for PutObject
    class PutObject
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        CGI.parse('x-id=PutObject').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        if input[:key].to_s.empty?
          raise ArgumentError, "HTTP label :key cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s/%<Key>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s),
            Key: (input[:key].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.body = input[:body]
        http_req.headers['Transfer-Encoding'] = 'chunked'
        http_req.headers['Content-Type'] = 'application/octet-stream'
        http_req.headers['x-amz-acl'] = input[:acl] unless input[:acl].nil? || input[:acl].empty?
        http_req.headers['Cache-Control'] = input[:cache_control] unless input[:cache_control].nil? || input[:cache_control].empty?
        http_req.headers['Content-Disposition'] = input[:content_disposition] unless input[:content_disposition].nil? || input[:content_disposition].empty?
        http_req.headers['Content-Encoding'] = input[:content_encoding] unless input[:content_encoding].nil? || input[:content_encoding].empty?
        http_req.headers['Content-Language'] = input[:content_language] unless input[:content_language].nil? || input[:content_language].empty?
        http_req.headers['Content-Length'] = input[:content_length].to_s unless input[:content_length].nil?
        http_req.headers['Content-MD5'] = input[:content_md5] unless input[:content_md5].nil? || input[:content_md5].empty?
        http_req.headers['Content-Type'] = input[:content_type] unless input[:content_type].nil? || input[:content_type].empty?
        http_req.headers['x-amz-sdk-checksum-algorithm'] = input[:checksum_algorithm] unless input[:checksum_algorithm].nil? || input[:checksum_algorithm].empty?
        http_req.headers['x-amz-checksum-crc32'] = input[:checksum_crc32] unless input[:checksum_crc32].nil? || input[:checksum_crc32].empty?
        http_req.headers['x-amz-checksum-crc32c'] = input[:checksum_crc32_c] unless input[:checksum_crc32_c].nil? || input[:checksum_crc32_c].empty?
        http_req.headers['x-amz-checksum-sha1'] = input[:checksum_sha1] unless input[:checksum_sha1].nil? || input[:checksum_sha1].empty?
        http_req.headers['x-amz-checksum-sha256'] = input[:checksum_sha256] unless input[:checksum_sha256].nil? || input[:checksum_sha256].empty?
        http_req.headers['Expires'] = Hearth::TimeHelper.to_http_date(input[:expires]) unless input[:expires].nil?
        http_req.headers['x-amz-grant-full-control'] = input[:grant_full_control] unless input[:grant_full_control].nil? || input[:grant_full_control].empty?
        http_req.headers['x-amz-grant-read'] = input[:grant_read] unless input[:grant_read].nil? || input[:grant_read].empty?
        http_req.headers['x-amz-grant-read-acp'] = input[:grant_read_acp] unless input[:grant_read_acp].nil? || input[:grant_read_acp].empty?
        http_req.headers['x-amz-grant-write-acp'] = input[:grant_write_acp] unless input[:grant_write_acp].nil? || input[:grant_write_acp].empty?
        http_req.headers['x-amz-server-side-encryption'] = input[:server_side_encryption] unless input[:server_side_encryption].nil? || input[:server_side_encryption].empty?
        http_req.headers['x-amz-storage-class'] = input[:storage_class] unless input[:storage_class].nil? || input[:storage_class].empty?
        http_req.headers['x-amz-website-redirect-location'] = input[:website_redirect_location] unless input[:website_redirect_location].nil? || input[:website_redirect_location].empty?
        http_req.headers['x-amz-server-side-encryption-customer-algorithm'] = input[:sse_customer_algorithm] unless input[:sse_customer_algorithm].nil? || input[:sse_customer_algorithm].empty?
        http_req.headers['x-amz-server-side-encryption-customer-key'] = input[:sse_customer_key] unless input[:sse_customer_key].nil? || input[:sse_customer_key].empty?
        http_req.headers['x-amz-server-side-encryption-customer-key-MD5'] = input[:sse_customer_key_md5] unless input[:sse_customer_key_md5].nil? || input[:sse_customer_key_md5].empty?
        http_req.headers['x-amz-server-side-encryption-aws-kms-key-id'] = input[:ssekms_key_id] unless input[:ssekms_key_id].nil? || input[:ssekms_key_id].empty?
        http_req.headers['x-amz-server-side-encryption-context'] = input[:ssekms_encryption_context] unless input[:ssekms_encryption_context].nil? || input[:ssekms_encryption_context].empty?
        http_req.headers['x-amz-server-side-encryption-bucket-key-enabled'] = input[:bucket_key_enabled].to_s unless input[:bucket_key_enabled].nil?
        http_req.headers['x-amz-request-payer'] = input[:request_payer] unless input[:request_payer].nil? || input[:request_payer].empty?
        http_req.headers['x-amz-tagging'] = input[:tagging] unless input[:tagging].nil? || input[:tagging].empty?
        http_req.headers['x-amz-object-lock-mode'] = input[:object_lock_mode] unless input[:object_lock_mode].nil? || input[:object_lock_mode].empty?
        http_req.headers['x-amz-object-lock-retain-until-date'] = Hearth::TimeHelper.to_date_time(input[:object_lock_retain_until_date]) unless input[:object_lock_retain_until_date].nil?
        http_req.headers['x-amz-object-lock-legal-hold'] = input[:object_lock_legal_hold_status] unless input[:object_lock_legal_hold_status].nil? || input[:object_lock_legal_hold_status].empty?
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
        input[:metadata].each do |key, value|
          http_req.headers["x-amz-meta-#{key}"] = value unless value.nil? || value.empty?
        end
      end
    end

    # Operation Builder for PutObjectAcl
    class PutObjectAcl
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        CGI.parse('acl').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        if input[:key].to_s.empty?
          raise ArgumentError, "HTTP label :key cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s/%<Key>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s),
            Key: (input[:key].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        params['versionId'] = input[:version_id].to_s unless input[:version_id].nil?
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/xml'
        xml = Builders::AccessControlPolicy.build('AccessControlPolicy', input[:access_control_policy]) unless input[:access_control_policy].nil?
        http_req.body = ::StringIO.new(xml.to_str)
        http_req.headers['x-amz-acl'] = input[:acl] unless input[:acl].nil? || input[:acl].empty?
        http_req.headers['Content-MD5'] = input[:content_md5] unless input[:content_md5].nil? || input[:content_md5].empty?
        http_req.headers['x-amz-sdk-checksum-algorithm'] = input[:checksum_algorithm] unless input[:checksum_algorithm].nil? || input[:checksum_algorithm].empty?
        http_req.headers['x-amz-grant-full-control'] = input[:grant_full_control] unless input[:grant_full_control].nil? || input[:grant_full_control].empty?
        http_req.headers['x-amz-grant-read'] = input[:grant_read] unless input[:grant_read].nil? || input[:grant_read].empty?
        http_req.headers['x-amz-grant-read-acp'] = input[:grant_read_acp] unless input[:grant_read_acp].nil? || input[:grant_read_acp].empty?
        http_req.headers['x-amz-grant-write'] = input[:grant_write] unless input[:grant_write].nil? || input[:grant_write].empty?
        http_req.headers['x-amz-grant-write-acp'] = input[:grant_write_acp] unless input[:grant_write_acp].nil? || input[:grant_write_acp].empty?
        http_req.headers['x-amz-request-payer'] = input[:request_payer] unless input[:request_payer].nil? || input[:request_payer].empty?
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Operation Builder for PutObjectLegalHold
    class PutObjectLegalHold
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        CGI.parse('legal-hold').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        if input[:key].to_s.empty?
          raise ArgumentError, "HTTP label :key cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s/%<Key>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s),
            Key: (input[:key].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        params['versionId'] = input[:version_id].to_s unless input[:version_id].nil?
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/xml'
        xml = Builders::ObjectLockLegalHold.build('LegalHold', input[:legal_hold]) unless input[:legal_hold].nil?
        http_req.body = ::StringIO.new(xml.to_str)
        http_req.headers['x-amz-request-payer'] = input[:request_payer] unless input[:request_payer].nil? || input[:request_payer].empty?
        http_req.headers['Content-MD5'] = input[:content_md5] unless input[:content_md5].nil? || input[:content_md5].empty?
        http_req.headers['x-amz-sdk-checksum-algorithm'] = input[:checksum_algorithm] unless input[:checksum_algorithm].nil? || input[:checksum_algorithm].empty?
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Operation Builder for PutObjectLockConfiguration
    class PutObjectLockConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        CGI.parse('object-lock').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/xml'
        xml = Builders::ObjectLockConfiguration.build('ObjectLockConfiguration', input[:object_lock_configuration]) unless input[:object_lock_configuration].nil?
        http_req.body = ::StringIO.new(xml.to_str)
        http_req.headers['x-amz-request-payer'] = input[:request_payer] unless input[:request_payer].nil? || input[:request_payer].empty?
        http_req.headers['x-amz-bucket-object-lock-token'] = input[:token] unless input[:token].nil? || input[:token].empty?
        http_req.headers['Content-MD5'] = input[:content_md5] unless input[:content_md5].nil? || input[:content_md5].empty?
        http_req.headers['x-amz-sdk-checksum-algorithm'] = input[:checksum_algorithm] unless input[:checksum_algorithm].nil? || input[:checksum_algorithm].empty?
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Operation Builder for PutObjectRetention
    class PutObjectRetention
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        CGI.parse('retention').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        if input[:key].to_s.empty?
          raise ArgumentError, "HTTP label :key cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s/%<Key>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s),
            Key: (input[:key].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        params['versionId'] = input[:version_id].to_s unless input[:version_id].nil?
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/xml'
        xml = Builders::ObjectLockRetention.build('Retention', input[:retention]) unless input[:retention].nil?
        http_req.body = ::StringIO.new(xml.to_str)
        http_req.headers['x-amz-request-payer'] = input[:request_payer] unless input[:request_payer].nil? || input[:request_payer].empty?
        http_req.headers['x-amz-bypass-governance-retention'] = input[:bypass_governance_retention].to_s unless input[:bypass_governance_retention].nil?
        http_req.headers['Content-MD5'] = input[:content_md5] unless input[:content_md5].nil? || input[:content_md5].empty?
        http_req.headers['x-amz-sdk-checksum-algorithm'] = input[:checksum_algorithm] unless input[:checksum_algorithm].nil? || input[:checksum_algorithm].empty?
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Operation Builder for PutObjectTagging
    class PutObjectTagging
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        CGI.parse('tagging').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        if input[:key].to_s.empty?
          raise ArgumentError, "HTTP label :key cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s/%<Key>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s),
            Key: (input[:key].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        params['versionId'] = input[:version_id].to_s unless input[:version_id].nil?
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/xml'
        xml = Builders::Tagging.build('Tagging', input[:tagging]) unless input[:tagging].nil?
        http_req.body = ::StringIO.new(xml.to_str)
        http_req.headers['Content-MD5'] = input[:content_md5] unless input[:content_md5].nil? || input[:content_md5].empty?
        http_req.headers['x-amz-sdk-checksum-algorithm'] = input[:checksum_algorithm] unless input[:checksum_algorithm].nil? || input[:checksum_algorithm].empty?
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
        http_req.headers['x-amz-request-payer'] = input[:request_payer] unless input[:request_payer].nil? || input[:request_payer].empty?
      end
    end

    # Operation Builder for PutPublicAccessBlock
    class PutPublicAccessBlock
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        CGI.parse('publicAccessBlock').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/xml'
        xml = Builders::PublicAccessBlockConfiguration.build('PublicAccessBlockConfiguration', input[:public_access_block_configuration]) unless input[:public_access_block_configuration].nil?
        http_req.body = ::StringIO.new(xml.to_str)
        http_req.headers['Content-MD5'] = input[:content_md5] unless input[:content_md5].nil? || input[:content_md5].empty?
        http_req.headers['x-amz-sdk-checksum-algorithm'] = input[:checksum_algorithm] unless input[:checksum_algorithm].nil? || input[:checksum_algorithm].empty?
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Structure Builder for QueueConfiguration
    class QueueConfiguration
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Id', input[:id].to_s) unless input[:id].nil?
        xml << Hearth::XML::Node.new('Queue', input[:queue_arn].to_s) unless input[:queue_arn].nil?
        xml << Types::EventList.build('Event', input[:events]) unless input[:events].nil?
        xml << Types::NotificationConfigurationFilter.build('Filter', input[:filter]) unless input[:filter].nil?
        xml
      end
    end

    # List Builder for QueueConfigurationList
    class QueueConfigurationList
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Types::QueueConfiguration.build(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Builder for Redirect
    class Redirect
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('HostName', input[:host_name].to_s) unless input[:host_name].nil?
        xml << Hearth::XML::Node.new('HttpRedirectCode', input[:http_redirect_code].to_s) unless input[:http_redirect_code].nil?
        xml << Hearth::XML::Node.new('Protocol', input[:protocol].to_s) unless input[:protocol].nil?
        xml << Hearth::XML::Node.new('ReplaceKeyPrefixWith', input[:replace_key_prefix_with].to_s) unless input[:replace_key_prefix_with].nil?
        xml << Hearth::XML::Node.new('ReplaceKeyWith', input[:replace_key_with].to_s) unless input[:replace_key_with].nil?
        xml
      end
    end

    # Structure Builder for RedirectAllRequestsTo
    class RedirectAllRequestsTo
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('HostName', input[:host_name].to_s) unless input[:host_name].nil?
        xml << Hearth::XML::Node.new('Protocol', input[:protocol].to_s) unless input[:protocol].nil?
        xml
      end
    end

    # Structure Builder for ReplicaModifications
    class ReplicaModifications
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Status', input[:status].to_s) unless input[:status].nil?
        xml
      end
    end

    # Structure Builder for ReplicationConfiguration
    class ReplicationConfiguration
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Role', input[:role].to_s) unless input[:role].nil?
        xml << Types::ReplicationRules.build('Rule', input[:rules]) unless input[:rules].nil?
        xml
      end
    end

    # Structure Builder for ReplicationRule
    class ReplicationRule
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ID', input[:id].to_s) unless input[:id].nil?
        xml << Hearth::XML::Node.new('Priority', input[:priority].to_s) unless input[:priority].nil?
        xml << Hearth::XML::Node.new('Prefix', input[:prefix].to_s) unless input[:prefix].nil?
        xml << Types::ReplicationRuleFilter.build('Filter', input[:filter]) unless input[:filter].nil?
        xml << Hearth::XML::Node.new('Status', input[:status].to_s) unless input[:status].nil?
        xml << Types::SourceSelectionCriteria.build('SourceSelectionCriteria', input[:source_selection_criteria]) unless input[:source_selection_criteria].nil?
        xml << Types::ExistingObjectReplication.build('ExistingObjectReplication', input[:existing_object_replication]) unless input[:existing_object_replication].nil?
        xml << Types::Destination.build('Destination', input[:destination]) unless input[:destination].nil?
        xml << Types::DeleteMarkerReplication.build('DeleteMarkerReplication', input[:delete_marker_replication]) unless input[:delete_marker_replication].nil?
        xml
      end
    end

    # Structure Builder for ReplicationRuleAndOperator
    class ReplicationRuleAndOperator
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Prefix', input[:prefix].to_s) unless input[:prefix].nil?
        xml << Types::TagSet.build('Tag', input[:tags]) unless input[:tags].nil?
        xml
      end
    end

    # Structure Builder for ReplicationRuleFilter
    class ReplicationRuleFilter
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        case input
        when Types::ReplicationRuleFilter::Prefix
          xml << Hearth::XML::Node.new('Prefix', input.__getobj__.to_s)
        when Types::ReplicationRuleFilter::Tag
          xml << Types::Tag.build('Tag', input.__getobj__) unless input.__getobj__.nil?
        when Types::ReplicationRuleFilter::And
          xml << Types::ReplicationRuleAndOperator.build('And', input.__getobj__) unless input.__getobj__.nil?
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::ReplicationRuleFilter"
        end

        xml
      end
    end

    # List Builder for ReplicationRules
    class ReplicationRules
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Types::ReplicationRule.build(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Builder for ReplicationTime
    class ReplicationTime
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Status', input[:status].to_s) unless input[:status].nil?
        xml << Types::ReplicationTimeValue.build('Time', input[:time]) unless input[:time].nil?
        xml
      end
    end

    # Structure Builder for ReplicationTimeValue
    class ReplicationTimeValue
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Minutes', input[:minutes].to_s) unless input[:minutes].nil?
        xml
      end
    end

    # Structure Builder for RequestPaymentConfiguration
    class RequestPaymentConfiguration
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Payer', input[:payer].to_s) unless input[:payer].nil?
        xml
      end
    end

    # Operation Builder for RestoreObject
    class RestoreObject
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        CGI.parse('restore&x-id=RestoreObject').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        if input[:key].to_s.empty?
          raise ArgumentError, "HTTP label :key cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s/%<Key>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s),
            Key: (input[:key].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        params['versionId'] = input[:version_id].to_s unless input[:version_id].nil?
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/xml'
        xml = Builders::RestoreRequest.build('RestoreRequest', input[:restore_request]) unless input[:restore_request].nil?
        http_req.body = ::StringIO.new(xml.to_str)
        http_req.headers['x-amz-request-payer'] = input[:request_payer] unless input[:request_payer].nil? || input[:request_payer].empty?
        http_req.headers['x-amz-sdk-checksum-algorithm'] = input[:checksum_algorithm] unless input[:checksum_algorithm].nil? || input[:checksum_algorithm].empty?
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Structure Builder for RestoreRequest
    class RestoreRequest
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Days', input[:days].to_s) unless input[:days].nil?
        xml << Types::GlacierJobParameters.build('GlacierJobParameters', input[:glacier_job_parameters]) unless input[:glacier_job_parameters].nil?
        xml << Hearth::XML::Node.new('Type', input[:type].to_s) unless input[:type].nil?
        xml << Hearth::XML::Node.new('Tier', input[:tier].to_s) unless input[:tier].nil?
        xml << Hearth::XML::Node.new('Description', input[:description].to_s) unless input[:description].nil?
        xml << Types::SelectParameters.build('SelectParameters', input[:select_parameters]) unless input[:select_parameters].nil?
        xml << Types::OutputLocation.build('OutputLocation', input[:output_location]) unless input[:output_location].nil?
        xml
      end
    end

    # Structure Builder for RoutingRule
    class RoutingRule
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Types::Condition.build('Condition', input[:condition]) unless input[:condition].nil?
        xml << Types::Redirect.build('Redirect', input[:redirect]) unless input[:redirect].nil?
        xml
      end
    end

    # List Builder for RoutingRules
    class RoutingRules
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Types::RoutingRule.build(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Builder for S3KeyFilter
    class S3KeyFilter
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Types::FilterRuleList.build('FilterRule', input[:filter_rules]) unless input[:filter_rules].nil?
        xml
      end
    end

    # Structure Builder for S3Location
    class S3Location
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('BucketName', input[:bucket_name].to_s) unless input[:bucket_name].nil?
        xml << Hearth::XML::Node.new('Prefix', input[:prefix].to_s) unless input[:prefix].nil?
        xml << Types::Encryption.build('Encryption', input[:encryption]) unless input[:encryption].nil?
        xml << Hearth::XML::Node.new('CannedACL', input[:canned_acl].to_s) unless input[:canned_acl].nil?
        xml << Hearth::XML::Node.new('AccessControlList', Types::Grants.build('Grant', input[:access_control_list])) unless input[:access_control_list].nil?
        xml << Types::Tagging.build('Tagging', input[:tagging]) unless input[:tagging].nil?
        xml << Hearth::XML::Node.new('UserMetadata', Types::UserMetadata.build('MetadataEntry', input[:user_metadata])) unless input[:user_metadata].nil?
        xml << Hearth::XML::Node.new('StorageClass', input[:storage_class].to_s) unless input[:storage_class].nil?
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

    # Structure Builder for SelectParameters
    class SelectParameters
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Types::InputSerialization.build('InputSerialization', input[:input_serialization]) unless input[:input_serialization].nil?
        xml << Hearth::XML::Node.new('ExpressionType', input[:expression_type].to_s) unless input[:expression_type].nil?
        xml << Hearth::XML::Node.new('Expression', input[:expression].to_s) unless input[:expression].nil?
        xml << Types::OutputSerialization.build('OutputSerialization', input[:output_serialization]) unless input[:output_serialization].nil?
        xml
      end
    end

    # Structure Builder for ServerSideEncryptionByDefault
    class ServerSideEncryptionByDefault
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('SSEAlgorithm', input[:sse_algorithm].to_s) unless input[:sse_algorithm].nil?
        xml << Hearth::XML::Node.new('KMSMasterKeyID', input[:kms_master_key_id].to_s) unless input[:kms_master_key_id].nil?
        xml
      end
    end

    # Structure Builder for ServerSideEncryptionConfiguration
    class ServerSideEncryptionConfiguration
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Types::ServerSideEncryptionRules.build('Rule', input[:rules]) unless input[:rules].nil?
        xml
      end
    end

    # Structure Builder for ServerSideEncryptionRule
    class ServerSideEncryptionRule
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Types::ServerSideEncryptionByDefault.build('ApplyServerSideEncryptionByDefault', input[:apply_server_side_encryption_by_default]) unless input[:apply_server_side_encryption_by_default].nil?
        xml << Hearth::XML::Node.new('BucketKeyEnabled', input[:bucket_key_enabled].to_s) unless input[:bucket_key_enabled].nil?
        xml
      end
    end

    # List Builder for ServerSideEncryptionRules
    class ServerSideEncryptionRules
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Types::ServerSideEncryptionRule.build(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Builder for SourceSelectionCriteria
    class SourceSelectionCriteria
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Types::SseKmsEncryptedObjects.build('SseKmsEncryptedObjects', input[:sse_kms_encrypted_objects]) unless input[:sse_kms_encrypted_objects].nil?
        xml << Types::ReplicaModifications.build('ReplicaModifications', input[:replica_modifications]) unless input[:replica_modifications].nil?
        xml
      end
    end

    # Structure Builder for SseKmsEncryptedObjects
    class SseKmsEncryptedObjects
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Status', input[:status].to_s) unless input[:status].nil?
        xml
      end
    end

    # Structure Builder for StorageClassAnalysis
    class StorageClassAnalysis
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Types::StorageClassAnalysisDataExport.build('DataExport', input[:data_export]) unless input[:data_export].nil?
        xml
      end
    end

    # Structure Builder for StorageClassAnalysisDataExport
    class StorageClassAnalysisDataExport
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('OutputSchemaVersion', input[:output_schema_version].to_s) unless input[:output_schema_version].nil?
        xml << Types::AnalyticsExportDestination.build('Destination', input[:destination]) unless input[:destination].nil?
        xml
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Key', input[:key].to_s) unless input[:key].nil?
        xml << Hearth::XML::Node.new('Value', input[:value].to_s) unless input[:value].nil?
        xml
      end
    end

    # List Builder for TagSet
    class TagSet
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Types::Tag.build(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Builder for Tagging
    class Tagging
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('TagSet', Types::TagSet.build('Tag', input[:tag_set])) unless input[:tag_set].nil?
        xml
      end
    end

    # Structure Builder for TargetGrant
    class TargetGrant
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        unless input[:grantee].nil?
          nodes = Types::Grantee.build('Grantee', input[:grantee])
          nodes.each { |n| n.attributes['xmlns:xsi'] = 'http://www.w3.org/2001/XMLSchema-instance' }
          xml << nodes
        end
        xml << Hearth::XML::Node.new('Permission', input[:permission].to_s) unless input[:permission].nil?
        xml
      end
    end

    # List Builder for TargetGrants
    class TargetGrants
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Types::TargetGrant.build(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Builder for Tiering
    class Tiering
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Days', input[:days].to_s) unless input[:days].nil?
        xml << Hearth::XML::Node.new('AccessTier', input[:access_tier].to_s) unless input[:access_tier].nil?
        xml
      end
    end

    # List Builder for TieringList
    class TieringList
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Types::Tiering.build(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Builder for TopicConfiguration
    class TopicConfiguration
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Id', input[:id].to_s) unless input[:id].nil?
        xml << Hearth::XML::Node.new('Topic', input[:topic_arn].to_s) unless input[:topic_arn].nil?
        xml << Types::EventList.build('Event', input[:events]) unless input[:events].nil?
        xml << Types::NotificationConfigurationFilter.build('Filter', input[:filter]) unless input[:filter].nil?
        xml
      end
    end

    # List Builder for TopicConfigurationList
    class TopicConfigurationList
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Types::TopicConfiguration.build(node_name, element) unless element.nil?
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

    # List Builder for TransitionList
    class TransitionList
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Types::Transition.build(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Builder for UploadPart
    class UploadPart
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        CGI.parse('x-id=UploadPart').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        if input[:key].to_s.empty?
          raise ArgumentError, "HTTP label :key cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s/%<Key>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s),
            Key: (input[:key].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        params['partNumber'] = input[:part_number].to_s unless input[:part_number].nil?
        params['uploadId'] = input[:upload_id].to_s unless input[:upload_id].nil?
        http_req.append_query_params(params)
        http_req.body = input[:body]
        http_req.headers['Transfer-Encoding'] = 'chunked'
        http_req.headers['Content-Type'] = 'application/octet-stream'
        http_req.headers['Content-Length'] = input[:content_length].to_s unless input[:content_length].nil?
        http_req.headers['Content-MD5'] = input[:content_md5] unless input[:content_md5].nil? || input[:content_md5].empty?
        http_req.headers['x-amz-sdk-checksum-algorithm'] = input[:checksum_algorithm] unless input[:checksum_algorithm].nil? || input[:checksum_algorithm].empty?
        http_req.headers['x-amz-checksum-crc32'] = input[:checksum_crc32] unless input[:checksum_crc32].nil? || input[:checksum_crc32].empty?
        http_req.headers['x-amz-checksum-crc32c'] = input[:checksum_crc32_c] unless input[:checksum_crc32_c].nil? || input[:checksum_crc32_c].empty?
        http_req.headers['x-amz-checksum-sha1'] = input[:checksum_sha1] unless input[:checksum_sha1].nil? || input[:checksum_sha1].empty?
        http_req.headers['x-amz-checksum-sha256'] = input[:checksum_sha256] unless input[:checksum_sha256].nil? || input[:checksum_sha256].empty?
        http_req.headers['x-amz-server-side-encryption-customer-algorithm'] = input[:sse_customer_algorithm] unless input[:sse_customer_algorithm].nil? || input[:sse_customer_algorithm].empty?
        http_req.headers['x-amz-server-side-encryption-customer-key'] = input[:sse_customer_key] unless input[:sse_customer_key].nil? || input[:sse_customer_key].empty?
        http_req.headers['x-amz-server-side-encryption-customer-key-MD5'] = input[:sse_customer_key_md5] unless input[:sse_customer_key_md5].nil? || input[:sse_customer_key_md5].empty?
        http_req.headers['x-amz-request-payer'] = input[:request_payer] unless input[:request_payer].nil? || input[:request_payer].empty?
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
      end
    end

    # Operation Builder for UploadPartCopy
    class UploadPartCopy
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        CGI.parse('x-id=UploadPartCopy').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:bucket].to_s.empty?
          raise ArgumentError, "HTTP label :bucket cannot be nil or empty."
        end
        if input[:key].to_s.empty?
          raise ArgumentError, "HTTP label :key cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<Bucket>s/%<Key>s',
            Bucket: Hearth::HTTP.uri_escape(input[:bucket].to_s),
            Key: (input[:key].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        params['partNumber'] = input[:part_number].to_s unless input[:part_number].nil?
        params['uploadId'] = input[:upload_id].to_s unless input[:upload_id].nil?
        http_req.append_query_params(params)
        http_req.headers['x-amz-copy-source'] = input[:copy_source] unless input[:copy_source].nil? || input[:copy_source].empty?
        http_req.headers['x-amz-copy-source-if-match'] = input[:copy_source_if_match] unless input[:copy_source_if_match].nil? || input[:copy_source_if_match].empty?
        http_req.headers['x-amz-copy-source-if-modified-since'] = Hearth::TimeHelper.to_http_date(input[:copy_source_if_modified_since]) unless input[:copy_source_if_modified_since].nil?
        http_req.headers['x-amz-copy-source-if-none-match'] = input[:copy_source_if_none_match] unless input[:copy_source_if_none_match].nil? || input[:copy_source_if_none_match].empty?
        http_req.headers['x-amz-copy-source-if-unmodified-since'] = Hearth::TimeHelper.to_http_date(input[:copy_source_if_unmodified_since]) unless input[:copy_source_if_unmodified_since].nil?
        http_req.headers['x-amz-copy-source-range'] = input[:copy_source_range] unless input[:copy_source_range].nil? || input[:copy_source_range].empty?
        http_req.headers['x-amz-server-side-encryption-customer-algorithm'] = input[:sse_customer_algorithm] unless input[:sse_customer_algorithm].nil? || input[:sse_customer_algorithm].empty?
        http_req.headers['x-amz-server-side-encryption-customer-key'] = input[:sse_customer_key] unless input[:sse_customer_key].nil? || input[:sse_customer_key].empty?
        http_req.headers['x-amz-server-side-encryption-customer-key-MD5'] = input[:sse_customer_key_md5] unless input[:sse_customer_key_md5].nil? || input[:sse_customer_key_md5].empty?
        http_req.headers['x-amz-copy-source-server-side-encryption-customer-algorithm'] = input[:copy_source_sse_customer_algorithm] unless input[:copy_source_sse_customer_algorithm].nil? || input[:copy_source_sse_customer_algorithm].empty?
        http_req.headers['x-amz-copy-source-server-side-encryption-customer-key'] = input[:copy_source_sse_customer_key] unless input[:copy_source_sse_customer_key].nil? || input[:copy_source_sse_customer_key].empty?
        http_req.headers['x-amz-copy-source-server-side-encryption-customer-key-MD5'] = input[:copy_source_sse_customer_key_md5] unless input[:copy_source_sse_customer_key_md5].nil? || input[:copy_source_sse_customer_key_md5].empty?
        http_req.headers['x-amz-request-payer'] = input[:request_payer] unless input[:request_payer].nil? || input[:request_payer].empty?
        http_req.headers['x-amz-expected-bucket-owner'] = input[:expected_bucket_owner] unless input[:expected_bucket_owner].nil? || input[:expected_bucket_owner].empty?
        http_req.headers['x-amz-source-expected-bucket-owner'] = input[:expected_source_bucket_owner] unless input[:expected_source_bucket_owner].nil? || input[:expected_source_bucket_owner].empty?
      end
    end

    # List Builder for UserMetadata
    class UserMetadata
      def self.build(node_name, input)
        xml = []
        input.each do |element|
          xml << Types::MetadataEntry.build(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Builder for VersioningConfiguration
    class VersioningConfiguration
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('MfaDelete', input[:mfa_delete].to_s) unless input[:mfa_delete].nil?
        xml << Hearth::XML::Node.new('Status', input[:status].to_s) unless input[:status].nil?
        xml
      end
    end

    # Structure Builder for WebsiteConfiguration
    class WebsiteConfiguration
      def self.build(node_name, input)
        xml = Hearth::XML::Node.new(node_name)
        xml << Types::ErrorDocument.build('ErrorDocument', input[:error_document]) unless input[:error_document].nil?
        xml << Types::IndexDocument.build('IndexDocument', input[:index_document]) unless input[:index_document].nil?
        xml << Types::RedirectAllRequestsTo.build('RedirectAllRequestsTo', input[:redirect_all_requests_to]) unless input[:redirect_all_requests_to].nil?
        xml << Hearth::XML::Node.new('RoutingRules', Types::RoutingRules.build('RoutingRule', input[:routing_rules])) unless input[:routing_rules].nil?
        xml
      end
    end

    # Operation Builder for WriteGetObjectResponse
    class WriteGetObjectResponse
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        CGI.parse('x-id=WriteGetObjectResponse').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        http_req.append_path('/WriteGetObjectResponse')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.body = input[:body]
        http_req.headers['Transfer-Encoding'] = 'chunked'
        http_req.headers['Content-Type'] = 'application/octet-stream'
        http_req.headers['x-amz-request-route'] = input[:request_route] unless input[:request_route].nil? || input[:request_route].empty?
        http_req.headers['x-amz-request-token'] = input[:request_token] unless input[:request_token].nil? || input[:request_token].empty?
        http_req.headers['x-amz-fwd-status'] = input[:status_code].to_s unless input[:status_code].nil?
        http_req.headers['x-amz-fwd-error-code'] = input[:error_code] unless input[:error_code].nil? || input[:error_code].empty?
        http_req.headers['x-amz-fwd-error-message'] = input[:error_message] unless input[:error_message].nil? || input[:error_message].empty?
        http_req.headers['x-amz-fwd-header-accept-ranges'] = input[:accept_ranges] unless input[:accept_ranges].nil? || input[:accept_ranges].empty?
        http_req.headers['x-amz-fwd-header-Cache-Control'] = input[:cache_control] unless input[:cache_control].nil? || input[:cache_control].empty?
        http_req.headers['x-amz-fwd-header-Content-Disposition'] = input[:content_disposition] unless input[:content_disposition].nil? || input[:content_disposition].empty?
        http_req.headers['x-amz-fwd-header-Content-Encoding'] = input[:content_encoding] unless input[:content_encoding].nil? || input[:content_encoding].empty?
        http_req.headers['x-amz-fwd-header-Content-Language'] = input[:content_language] unless input[:content_language].nil? || input[:content_language].empty?
        http_req.headers['Content-Length'] = input[:content_length].to_s unless input[:content_length].nil?
        http_req.headers['x-amz-fwd-header-Content-Range'] = input[:content_range] unless input[:content_range].nil? || input[:content_range].empty?
        http_req.headers['x-amz-fwd-header-Content-Type'] = input[:content_type] unless input[:content_type].nil? || input[:content_type].empty?
        http_req.headers['x-amz-fwd-header-x-amz-checksum-crc32'] = input[:checksum_crc32] unless input[:checksum_crc32].nil? || input[:checksum_crc32].empty?
        http_req.headers['x-amz-fwd-header-x-amz-checksum-crc32c'] = input[:checksum_crc32_c] unless input[:checksum_crc32_c].nil? || input[:checksum_crc32_c].empty?
        http_req.headers['x-amz-fwd-header-x-amz-checksum-sha1'] = input[:checksum_sha1] unless input[:checksum_sha1].nil? || input[:checksum_sha1].empty?
        http_req.headers['x-amz-fwd-header-x-amz-checksum-sha256'] = input[:checksum_sha256] unless input[:checksum_sha256].nil? || input[:checksum_sha256].empty?
        http_req.headers['x-amz-fwd-header-x-amz-delete-marker'] = input[:delete_marker].to_s unless input[:delete_marker].nil?
        http_req.headers['x-amz-fwd-header-ETag'] = input[:e_tag] unless input[:e_tag].nil? || input[:e_tag].empty?
        http_req.headers['x-amz-fwd-header-Expires'] = Hearth::TimeHelper.to_http_date(input[:expires]) unless input[:expires].nil?
        http_req.headers['x-amz-fwd-header-x-amz-expiration'] = input[:expiration] unless input[:expiration].nil? || input[:expiration].empty?
        http_req.headers['x-amz-fwd-header-Last-Modified'] = Hearth::TimeHelper.to_http_date(input[:last_modified]) unless input[:last_modified].nil?
        http_req.headers['x-amz-fwd-header-x-amz-missing-meta'] = input[:missing_meta].to_s unless input[:missing_meta].nil?
        http_req.headers['x-amz-fwd-header-x-amz-object-lock-mode'] = input[:object_lock_mode] unless input[:object_lock_mode].nil? || input[:object_lock_mode].empty?
        http_req.headers['x-amz-fwd-header-x-amz-object-lock-legal-hold'] = input[:object_lock_legal_hold_status] unless input[:object_lock_legal_hold_status].nil? || input[:object_lock_legal_hold_status].empty?
        http_req.headers['x-amz-fwd-header-x-amz-object-lock-retain-until-date'] = Hearth::TimeHelper.to_date_time(input[:object_lock_retain_until_date]) unless input[:object_lock_retain_until_date].nil?
        http_req.headers['x-amz-fwd-header-x-amz-mp-parts-count'] = input[:parts_count].to_s unless input[:parts_count].nil?
        http_req.headers['x-amz-fwd-header-x-amz-replication-status'] = input[:replication_status] unless input[:replication_status].nil? || input[:replication_status].empty?
        http_req.headers['x-amz-fwd-header-x-amz-request-charged'] = input[:request_charged] unless input[:request_charged].nil? || input[:request_charged].empty?
        http_req.headers['x-amz-fwd-header-x-amz-restore'] = input[:restore] unless input[:restore].nil? || input[:restore].empty?
        http_req.headers['x-amz-fwd-header-x-amz-server-side-encryption'] = input[:server_side_encryption] unless input[:server_side_encryption].nil? || input[:server_side_encryption].empty?
        http_req.headers['x-amz-fwd-header-x-amz-server-side-encryption-customer-algorithm'] = input[:sse_customer_algorithm] unless input[:sse_customer_algorithm].nil? || input[:sse_customer_algorithm].empty?
        http_req.headers['x-amz-fwd-header-x-amz-server-side-encryption-aws-kms-key-id'] = input[:ssekms_key_id] unless input[:ssekms_key_id].nil? || input[:ssekms_key_id].empty?
        http_req.headers['x-amz-fwd-header-x-amz-server-side-encryption-customer-key-MD5'] = input[:sse_customer_key_md5] unless input[:sse_customer_key_md5].nil? || input[:sse_customer_key_md5].empty?
        http_req.headers['x-amz-fwd-header-x-amz-storage-class'] = input[:storage_class] unless input[:storage_class].nil? || input[:storage_class].empty?
        http_req.headers['x-amz-fwd-header-x-amz-tagging-count'] = input[:tag_count].to_s unless input[:tag_count].nil?
        http_req.headers['x-amz-fwd-header-x-amz-version-id'] = input[:version_id] unless input[:version_id].nil? || input[:version_id].empty?
        http_req.headers['x-amz-fwd-header-x-amz-server-side-encryption-bucket-key-enabled'] = input[:bucket_key_enabled].to_s unless input[:bucket_key_enabled].nil?
        input[:metadata].each do |key, value|
          http_req.headers["x-amz-meta-#{key}"] = value unless value.nil? || value.empty?
        end
      end
    end
  end
end
