# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::S3
  # @api private
  module Params

    class AbortIncompleteMultipartUpload
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::AbortIncompleteMultipartUpload, context: context)
        type = Types::AbortIncompleteMultipartUpload.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.days_after_initiation = params[:days_after_initiation] unless params[:days_after_initiation].nil?
        type
      end
    end

    class AbortMultipartUploadInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::AbortMultipartUploadInput, context: context)
        type = Types::AbortMultipartUploadInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.key = params[:key] unless params[:key].nil?
        type.upload_id = params[:upload_id] unless params[:upload_id].nil?
        type.request_payer = params[:request_payer] unless params[:request_payer].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class AbortMultipartUploadOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::AbortMultipartUploadOutput, context: context)
        type = Types::AbortMultipartUploadOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.request_charged = params[:request_charged] unless params[:request_charged].nil?
        type
      end
    end

    class AccelerateConfiguration
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::AccelerateConfiguration, context: context)
        type = Types::AccelerateConfiguration.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.status = params[:status] unless params[:status].nil?
        type
      end
    end

    class AccessControlPolicy
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::AccessControlPolicy, context: context)
        type = Types::AccessControlPolicy.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.grants = Grants.build(params[:grants], context: "#{context}[:grants]") unless params[:grants].nil?
        type.owner = Owner.build(params[:owner], context: "#{context}[:owner]") unless params[:owner].nil?
        type
      end
    end

    class AccessControlTranslation
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::AccessControlTranslation, context: context)
        type = Types::AccessControlTranslation.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.owner = params[:owner] unless params[:owner].nil?
        type
      end
    end

    class AllowedHeaders
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class AllowedMethods
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class AllowedOrigins
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class AnalyticsAndOperator
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::AnalyticsAndOperator, context: context)
        type = Types::AnalyticsAndOperator.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.prefix = params[:prefix] unless params[:prefix].nil?
        type.tags = TagSet.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    class AnalyticsConfiguration
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::AnalyticsConfiguration, context: context)
        type = Types::AnalyticsConfiguration.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.id = params[:id] unless params[:id].nil?
        type.filter = AnalyticsFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.storage_class_analysis = StorageClassAnalysis.build(params[:storage_class_analysis], context: "#{context}[:storage_class_analysis]") unless params[:storage_class_analysis].nil?
        type
      end
    end

    class AnalyticsConfigurationList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AnalyticsConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class AnalyticsExportDestination
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::AnalyticsExportDestination, context: context)
        type = Types::AnalyticsExportDestination.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.s3_bucket_destination = AnalyticsS3BucketDestination.build(params[:s3_bucket_destination], context: "#{context}[:s3_bucket_destination]") unless params[:s3_bucket_destination].nil?
        type
      end
    end

    class AnalyticsFilter
      def self.build(params, context:)
        return params if params.is_a?(Types::AnalyticsFilter)
        Hearth::Validator.validate_types!(params, ::Hash, Types::AnalyticsFilter, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :prefix
          Types::AnalyticsFilter::Prefix.new(
            params[:prefix]
          )
        when :tag
          Types::AnalyticsFilter::Tag.new(
            (Tag.build(params[:tag], context: "#{context}[:tag]") unless params[:tag].nil?)
          )
        when :and
          Types::AnalyticsFilter::And.new(
            (AnalyticsAndOperator.build(params[:and], context: "#{context}[:and]") unless params[:and].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :prefix, :tag, :and set"
        end
      end
    end

    class AnalyticsS3BucketDestination
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::AnalyticsS3BucketDestination, context: context)
        type = Types::AnalyticsS3BucketDestination.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.format = params[:format] unless params[:format].nil?
        type.bucket_account_id = params[:bucket_account_id] unless params[:bucket_account_id].nil?
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.prefix = params[:prefix] unless params[:prefix].nil?
        type
      end
    end

    class Bucket
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Bucket, context: context)
        type = Types::Bucket.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.name = params[:name] unless params[:name].nil?
        type.creation_date = params[:creation_date] unless params[:creation_date].nil?
        type
      end
    end

    class BucketAlreadyExists
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::BucketAlreadyExists, context: context)
        type = Types::BucketAlreadyExists.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class BucketAlreadyOwnedByYou
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::BucketAlreadyOwnedByYou, context: context)
        type = Types::BucketAlreadyOwnedByYou.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class BucketInfo
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::BucketInfo, context: context)
        type = Types::BucketInfo.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.data_redundancy = params[:data_redundancy] unless params[:data_redundancy].nil?
        type.type = params[:type] unless params[:type].nil?
        type
      end
    end

    class BucketLifecycleConfiguration
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::BucketLifecycleConfiguration, context: context)
        type = Types::BucketLifecycleConfiguration.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.rules = LifecycleRules.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type
      end
    end

    class BucketLoggingStatus
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::BucketLoggingStatus, context: context)
        type = Types::BucketLoggingStatus.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.logging_enabled = LoggingEnabled.build(params[:logging_enabled], context: "#{context}[:logging_enabled]") unless params[:logging_enabled].nil?
        type
      end
    end

    class Buckets
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Bucket.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class CORSConfiguration
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CORSConfiguration, context: context)
        type = Types::CORSConfiguration.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.cors_rules = CORSRules.build(params[:cors_rules], context: "#{context}[:cors_rules]") unless params[:cors_rules].nil?
        type
      end
    end

    class CORSRule
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CORSRule, context: context)
        type = Types::CORSRule.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.id = params[:id] unless params[:id].nil?
        type.allowed_headers = AllowedHeaders.build(params[:allowed_headers], context: "#{context}[:allowed_headers]") unless params[:allowed_headers].nil?
        type.allowed_methods = AllowedMethods.build(params[:allowed_methods], context: "#{context}[:allowed_methods]") unless params[:allowed_methods].nil?
        type.allowed_origins = AllowedOrigins.build(params[:allowed_origins], context: "#{context}[:allowed_origins]") unless params[:allowed_origins].nil?
        type.expose_headers = ExposeHeaders.build(params[:expose_headers], context: "#{context}[:expose_headers]") unless params[:expose_headers].nil?
        type.max_age_seconds = params[:max_age_seconds] unless params[:max_age_seconds].nil?
        type
      end
    end

    class CORSRules
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CORSRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class CSVInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CSVInput, context: context)
        type = Types::CSVInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.file_header_info = params[:file_header_info] unless params[:file_header_info].nil?
        type.comments = params[:comments] unless params[:comments].nil?
        type.quote_escape_character = params[:quote_escape_character] unless params[:quote_escape_character].nil?
        type.record_delimiter = params[:record_delimiter] unless params[:record_delimiter].nil?
        type.field_delimiter = params[:field_delimiter] unless params[:field_delimiter].nil?
        type.quote_character = params[:quote_character] unless params[:quote_character].nil?
        type.allow_quoted_record_delimiter = params[:allow_quoted_record_delimiter] unless params[:allow_quoted_record_delimiter].nil?
        type
      end
    end

    class CSVOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CSVOutput, context: context)
        type = Types::CSVOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.quote_fields = params[:quote_fields] unless params[:quote_fields].nil?
        type.quote_escape_character = params[:quote_escape_character] unless params[:quote_escape_character].nil?
        type.record_delimiter = params[:record_delimiter] unless params[:record_delimiter].nil?
        type.field_delimiter = params[:field_delimiter] unless params[:field_delimiter].nil?
        type.quote_character = params[:quote_character] unless params[:quote_character].nil?
        type
      end
    end

    class Checksum
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Checksum, context: context)
        type = Types::Checksum.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.checksum_crc32 = params[:checksum_crc32] unless params[:checksum_crc32].nil?
        type.checksum_crc32_c = params[:checksum_crc32_c] unless params[:checksum_crc32_c].nil?
        type.checksum_sha1 = params[:checksum_sha1] unless params[:checksum_sha1].nil?
        type.checksum_sha256 = params[:checksum_sha256] unless params[:checksum_sha256].nil?
        type
      end
    end

    class ChecksumAlgorithmList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class CommonPrefix
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CommonPrefix, context: context)
        type = Types::CommonPrefix.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.prefix = params[:prefix] unless params[:prefix].nil?
        type
      end
    end

    class CommonPrefixList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CommonPrefix.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class CompleteMultipartUploadInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CompleteMultipartUploadInput, context: context)
        type = Types::CompleteMultipartUploadInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.key = params[:key] unless params[:key].nil?
        type.multipart_upload = CompletedMultipartUpload.build(params[:multipart_upload], context: "#{context}[:multipart_upload]") unless params[:multipart_upload].nil?
        type.upload_id = params[:upload_id] unless params[:upload_id].nil?
        type.checksum_crc32 = params[:checksum_crc32] unless params[:checksum_crc32].nil?
        type.checksum_crc32_c = params[:checksum_crc32_c] unless params[:checksum_crc32_c].nil?
        type.checksum_sha1 = params[:checksum_sha1] unless params[:checksum_sha1].nil?
        type.checksum_sha256 = params[:checksum_sha256] unless params[:checksum_sha256].nil?
        type.request_payer = params[:request_payer] unless params[:request_payer].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type.sse_customer_algorithm = params[:sse_customer_algorithm] unless params[:sse_customer_algorithm].nil?
        type.sse_customer_key = params[:sse_customer_key] unless params[:sse_customer_key].nil?
        type.sse_customer_key_md5 = params[:sse_customer_key_md5] unless params[:sse_customer_key_md5].nil?
        type
      end
    end

    class CompleteMultipartUploadOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CompleteMultipartUploadOutput, context: context)
        type = Types::CompleteMultipartUploadOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.location = params[:location] unless params[:location].nil?
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.key = params[:key] unless params[:key].nil?
        type.expiration = params[:expiration] unless params[:expiration].nil?
        type.e_tag = params[:e_tag] unless params[:e_tag].nil?
        type.checksum_crc32 = params[:checksum_crc32] unless params[:checksum_crc32].nil?
        type.checksum_crc32_c = params[:checksum_crc32_c] unless params[:checksum_crc32_c].nil?
        type.checksum_sha1 = params[:checksum_sha1] unless params[:checksum_sha1].nil?
        type.checksum_sha256 = params[:checksum_sha256] unless params[:checksum_sha256].nil?
        type.server_side_encryption = params[:server_side_encryption] unless params[:server_side_encryption].nil?
        type.version_id = params[:version_id] unless params[:version_id].nil?
        type.ssekms_key_id = params[:ssekms_key_id] unless params[:ssekms_key_id].nil?
        type.bucket_key_enabled = params[:bucket_key_enabled] unless params[:bucket_key_enabled].nil?
        type.request_charged = params[:request_charged] unless params[:request_charged].nil?
        type
      end
    end

    class CompletedMultipartUpload
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CompletedMultipartUpload, context: context)
        type = Types::CompletedMultipartUpload.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.parts = CompletedPartList.build(params[:parts], context: "#{context}[:parts]") unless params[:parts].nil?
        type
      end
    end

    class CompletedPart
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CompletedPart, context: context)
        type = Types::CompletedPart.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.e_tag = params[:e_tag] unless params[:e_tag].nil?
        type.checksum_crc32 = params[:checksum_crc32] unless params[:checksum_crc32].nil?
        type.checksum_crc32_c = params[:checksum_crc32_c] unless params[:checksum_crc32_c].nil?
        type.checksum_sha1 = params[:checksum_sha1] unless params[:checksum_sha1].nil?
        type.checksum_sha256 = params[:checksum_sha256] unless params[:checksum_sha256].nil?
        type.part_number = params[:part_number] unless params[:part_number].nil?
        type
      end
    end

    class CompletedPartList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CompletedPart.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class Condition
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Condition, context: context)
        type = Types::Condition.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.http_error_code_returned_equals = params[:http_error_code_returned_equals] unless params[:http_error_code_returned_equals].nil?
        type.key_prefix_equals = params[:key_prefix_equals] unless params[:key_prefix_equals].nil?
        type
      end
    end

    class ContinuationEvent
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ContinuationEvent, context: context)
        type = Types::ContinuationEvent.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class CopyObjectInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CopyObjectInput, context: context)
        type = Types::CopyObjectInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.acl = params[:acl] unless params[:acl].nil?
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.cache_control = params[:cache_control] unless params[:cache_control].nil?
        type.checksum_algorithm = params[:checksum_algorithm] unless params[:checksum_algorithm].nil?
        type.content_disposition = params[:content_disposition] unless params[:content_disposition].nil?
        type.content_encoding = params[:content_encoding] unless params[:content_encoding].nil?
        type.content_language = params[:content_language] unless params[:content_language].nil?
        type.content_type = params[:content_type] unless params[:content_type].nil?
        type.copy_source = params[:copy_source] unless params[:copy_source].nil?
        type.copy_source_if_match = params[:copy_source_if_match] unless params[:copy_source_if_match].nil?
        type.copy_source_if_modified_since = params[:copy_source_if_modified_since] unless params[:copy_source_if_modified_since].nil?
        type.copy_source_if_none_match = params[:copy_source_if_none_match] unless params[:copy_source_if_none_match].nil?
        type.copy_source_if_unmodified_since = params[:copy_source_if_unmodified_since] unless params[:copy_source_if_unmodified_since].nil?
        type.expires = params[:expires] unless params[:expires].nil?
        type.grant_full_control = params[:grant_full_control] unless params[:grant_full_control].nil?
        type.grant_read = params[:grant_read] unless params[:grant_read].nil?
        type.grant_read_acp = params[:grant_read_acp] unless params[:grant_read_acp].nil?
        type.grant_write_acp = params[:grant_write_acp] unless params[:grant_write_acp].nil?
        type.key = params[:key] unless params[:key].nil?
        type.metadata = Metadata.build(params[:metadata], context: "#{context}[:metadata]") unless params[:metadata].nil?
        type.metadata_directive = params[:metadata_directive] unless params[:metadata_directive].nil?
        type.tagging_directive = params[:tagging_directive] unless params[:tagging_directive].nil?
        type.server_side_encryption = params[:server_side_encryption] unless params[:server_side_encryption].nil?
        type.storage_class = params[:storage_class] unless params[:storage_class].nil?
        type.website_redirect_location = params[:website_redirect_location] unless params[:website_redirect_location].nil?
        type.sse_customer_algorithm = params[:sse_customer_algorithm] unless params[:sse_customer_algorithm].nil?
        type.sse_customer_key = params[:sse_customer_key] unless params[:sse_customer_key].nil?
        type.sse_customer_key_md5 = params[:sse_customer_key_md5] unless params[:sse_customer_key_md5].nil?
        type.ssekms_key_id = params[:ssekms_key_id] unless params[:ssekms_key_id].nil?
        type.ssekms_encryption_context = params[:ssekms_encryption_context] unless params[:ssekms_encryption_context].nil?
        type.bucket_key_enabled = params[:bucket_key_enabled] unless params[:bucket_key_enabled].nil?
        type.copy_source_sse_customer_algorithm = params[:copy_source_sse_customer_algorithm] unless params[:copy_source_sse_customer_algorithm].nil?
        type.copy_source_sse_customer_key = params[:copy_source_sse_customer_key] unless params[:copy_source_sse_customer_key].nil?
        type.copy_source_sse_customer_key_md5 = params[:copy_source_sse_customer_key_md5] unless params[:copy_source_sse_customer_key_md5].nil?
        type.request_payer = params[:request_payer] unless params[:request_payer].nil?
        type.tagging = params[:tagging] unless params[:tagging].nil?
        type.object_lock_mode = params[:object_lock_mode] unless params[:object_lock_mode].nil?
        type.object_lock_retain_until_date = params[:object_lock_retain_until_date] unless params[:object_lock_retain_until_date].nil?
        type.object_lock_legal_hold_status = params[:object_lock_legal_hold_status] unless params[:object_lock_legal_hold_status].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type.expected_source_bucket_owner = params[:expected_source_bucket_owner] unless params[:expected_source_bucket_owner].nil?
        type
      end
    end

    class CopyObjectOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CopyObjectOutput, context: context)
        type = Types::CopyObjectOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.copy_object_result = CopyObjectResult.build(params[:copy_object_result], context: "#{context}[:copy_object_result]") unless params[:copy_object_result].nil?
        type.expiration = params[:expiration] unless params[:expiration].nil?
        type.copy_source_version_id = params[:copy_source_version_id] unless params[:copy_source_version_id].nil?
        type.version_id = params[:version_id] unless params[:version_id].nil?
        type.server_side_encryption = params[:server_side_encryption] unless params[:server_side_encryption].nil?
        type.sse_customer_algorithm = params[:sse_customer_algorithm] unless params[:sse_customer_algorithm].nil?
        type.sse_customer_key_md5 = params[:sse_customer_key_md5] unless params[:sse_customer_key_md5].nil?
        type.ssekms_key_id = params[:ssekms_key_id] unless params[:ssekms_key_id].nil?
        type.ssekms_encryption_context = params[:ssekms_encryption_context] unless params[:ssekms_encryption_context].nil?
        type.bucket_key_enabled = params[:bucket_key_enabled] unless params[:bucket_key_enabled].nil?
        type.request_charged = params[:request_charged] unless params[:request_charged].nil?
        type
      end
    end

    class CopyObjectResult
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CopyObjectResult, context: context)
        type = Types::CopyObjectResult.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.e_tag = params[:e_tag] unless params[:e_tag].nil?
        type.last_modified = params[:last_modified] unless params[:last_modified].nil?
        type.checksum_crc32 = params[:checksum_crc32] unless params[:checksum_crc32].nil?
        type.checksum_crc32_c = params[:checksum_crc32_c] unless params[:checksum_crc32_c].nil?
        type.checksum_sha1 = params[:checksum_sha1] unless params[:checksum_sha1].nil?
        type.checksum_sha256 = params[:checksum_sha256] unless params[:checksum_sha256].nil?
        type
      end
    end

    class CopyPartResult
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CopyPartResult, context: context)
        type = Types::CopyPartResult.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.e_tag = params[:e_tag] unless params[:e_tag].nil?
        type.last_modified = params[:last_modified] unless params[:last_modified].nil?
        type.checksum_crc32 = params[:checksum_crc32] unless params[:checksum_crc32].nil?
        type.checksum_crc32_c = params[:checksum_crc32_c] unless params[:checksum_crc32_c].nil?
        type.checksum_sha1 = params[:checksum_sha1] unless params[:checksum_sha1].nil?
        type.checksum_sha256 = params[:checksum_sha256] unless params[:checksum_sha256].nil?
        type
      end
    end

    class CreateBucketConfiguration
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CreateBucketConfiguration, context: context)
        type = Types::CreateBucketConfiguration.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.location_constraint = params[:location_constraint] unless params[:location_constraint].nil?
        type.location = LocationInfo.build(params[:location], context: "#{context}[:location]") unless params[:location].nil?
        type.bucket = BucketInfo.build(params[:bucket], context: "#{context}[:bucket]") unless params[:bucket].nil?
        type
      end
    end

    class CreateBucketInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CreateBucketInput, context: context)
        type = Types::CreateBucketInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.acl = params[:acl] unless params[:acl].nil?
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.create_bucket_configuration = CreateBucketConfiguration.build(params[:create_bucket_configuration], context: "#{context}[:create_bucket_configuration]") unless params[:create_bucket_configuration].nil?
        type.grant_full_control = params[:grant_full_control] unless params[:grant_full_control].nil?
        type.grant_read = params[:grant_read] unless params[:grant_read].nil?
        type.grant_read_acp = params[:grant_read_acp] unless params[:grant_read_acp].nil?
        type.grant_write = params[:grant_write] unless params[:grant_write].nil?
        type.grant_write_acp = params[:grant_write_acp] unless params[:grant_write_acp].nil?
        type.object_lock_enabled_for_bucket = params[:object_lock_enabled_for_bucket] unless params[:object_lock_enabled_for_bucket].nil?
        type.object_ownership = params[:object_ownership] unless params[:object_ownership].nil?
        type
      end
    end

    class CreateBucketOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CreateBucketOutput, context: context)
        type = Types::CreateBucketOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.location = params[:location] unless params[:location].nil?
        type
      end
    end

    class CreateMultipartUploadInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CreateMultipartUploadInput, context: context)
        type = Types::CreateMultipartUploadInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.acl = params[:acl] unless params[:acl].nil?
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.cache_control = params[:cache_control] unless params[:cache_control].nil?
        type.content_disposition = params[:content_disposition] unless params[:content_disposition].nil?
        type.content_encoding = params[:content_encoding] unless params[:content_encoding].nil?
        type.content_language = params[:content_language] unless params[:content_language].nil?
        type.content_type = params[:content_type] unless params[:content_type].nil?
        type.expires = params[:expires] unless params[:expires].nil?
        type.grant_full_control = params[:grant_full_control] unless params[:grant_full_control].nil?
        type.grant_read = params[:grant_read] unless params[:grant_read].nil?
        type.grant_read_acp = params[:grant_read_acp] unless params[:grant_read_acp].nil?
        type.grant_write_acp = params[:grant_write_acp] unless params[:grant_write_acp].nil?
        type.key = params[:key] unless params[:key].nil?
        type.metadata = Metadata.build(params[:metadata], context: "#{context}[:metadata]") unless params[:metadata].nil?
        type.server_side_encryption = params[:server_side_encryption] unless params[:server_side_encryption].nil?
        type.storage_class = params[:storage_class] unless params[:storage_class].nil?
        type.website_redirect_location = params[:website_redirect_location] unless params[:website_redirect_location].nil?
        type.sse_customer_algorithm = params[:sse_customer_algorithm] unless params[:sse_customer_algorithm].nil?
        type.sse_customer_key = params[:sse_customer_key] unless params[:sse_customer_key].nil?
        type.sse_customer_key_md5 = params[:sse_customer_key_md5] unless params[:sse_customer_key_md5].nil?
        type.ssekms_key_id = params[:ssekms_key_id] unless params[:ssekms_key_id].nil?
        type.ssekms_encryption_context = params[:ssekms_encryption_context] unless params[:ssekms_encryption_context].nil?
        type.bucket_key_enabled = params[:bucket_key_enabled] unless params[:bucket_key_enabled].nil?
        type.request_payer = params[:request_payer] unless params[:request_payer].nil?
        type.tagging = params[:tagging] unless params[:tagging].nil?
        type.object_lock_mode = params[:object_lock_mode] unless params[:object_lock_mode].nil?
        type.object_lock_retain_until_date = params[:object_lock_retain_until_date] unless params[:object_lock_retain_until_date].nil?
        type.object_lock_legal_hold_status = params[:object_lock_legal_hold_status] unless params[:object_lock_legal_hold_status].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type.checksum_algorithm = params[:checksum_algorithm] unless params[:checksum_algorithm].nil?
        type
      end
    end

    class CreateMultipartUploadOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CreateMultipartUploadOutput, context: context)
        type = Types::CreateMultipartUploadOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.abort_date = params[:abort_date] unless params[:abort_date].nil?
        type.abort_rule_id = params[:abort_rule_id] unless params[:abort_rule_id].nil?
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.key = params[:key] unless params[:key].nil?
        type.upload_id = params[:upload_id] unless params[:upload_id].nil?
        type.server_side_encryption = params[:server_side_encryption] unless params[:server_side_encryption].nil?
        type.sse_customer_algorithm = params[:sse_customer_algorithm] unless params[:sse_customer_algorithm].nil?
        type.sse_customer_key_md5 = params[:sse_customer_key_md5] unless params[:sse_customer_key_md5].nil?
        type.ssekms_key_id = params[:ssekms_key_id] unless params[:ssekms_key_id].nil?
        type.ssekms_encryption_context = params[:ssekms_encryption_context] unless params[:ssekms_encryption_context].nil?
        type.bucket_key_enabled = params[:bucket_key_enabled] unless params[:bucket_key_enabled].nil?
        type.request_charged = params[:request_charged] unless params[:request_charged].nil?
        type.checksum_algorithm = params[:checksum_algorithm] unless params[:checksum_algorithm].nil?
        type
      end
    end

    class CreateSessionInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CreateSessionInput, context: context)
        type = Types::CreateSessionInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.session_mode = params[:session_mode] unless params[:session_mode].nil?
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type
      end
    end

    class CreateSessionOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CreateSessionOutput, context: context)
        type = Types::CreateSessionOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.credentials = SessionCredentials.build(params[:credentials], context: "#{context}[:credentials]") unless params[:credentials].nil?
        type
      end
    end

    class DefaultRetention
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DefaultRetention, context: context)
        type = Types::DefaultRetention.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.mode = params[:mode] unless params[:mode].nil?
        type.days = params[:days] unless params[:days].nil?
        type.years = params[:years] unless params[:years].nil?
        type
      end
    end

    class Delete
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Delete, context: context)
        type = Types::Delete.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.objects = ObjectIdentifierList.build(params[:objects], context: "#{context}[:objects]") unless params[:objects].nil?
        type.quiet = params[:quiet] unless params[:quiet].nil?
        type
      end
    end

    class DeleteBucketAnalyticsConfigurationInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteBucketAnalyticsConfigurationInput, context: context)
        type = Types::DeleteBucketAnalyticsConfigurationInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.id = params[:id] unless params[:id].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class DeleteBucketAnalyticsConfigurationOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteBucketAnalyticsConfigurationOutput, context: context)
        type = Types::DeleteBucketAnalyticsConfigurationOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class DeleteBucketCorsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteBucketCorsInput, context: context)
        type = Types::DeleteBucketCorsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class DeleteBucketCorsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteBucketCorsOutput, context: context)
        type = Types::DeleteBucketCorsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class DeleteBucketEncryptionInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteBucketEncryptionInput, context: context)
        type = Types::DeleteBucketEncryptionInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class DeleteBucketEncryptionOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteBucketEncryptionOutput, context: context)
        type = Types::DeleteBucketEncryptionOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class DeleteBucketInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteBucketInput, context: context)
        type = Types::DeleteBucketInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class DeleteBucketIntelligentTieringConfigurationInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteBucketIntelligentTieringConfigurationInput, context: context)
        type = Types::DeleteBucketIntelligentTieringConfigurationInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.id = params[:id] unless params[:id].nil?
        type
      end
    end

    class DeleteBucketIntelligentTieringConfigurationOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteBucketIntelligentTieringConfigurationOutput, context: context)
        type = Types::DeleteBucketIntelligentTieringConfigurationOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class DeleteBucketInventoryConfigurationInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteBucketInventoryConfigurationInput, context: context)
        type = Types::DeleteBucketInventoryConfigurationInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.id = params[:id] unless params[:id].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class DeleteBucketInventoryConfigurationOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteBucketInventoryConfigurationOutput, context: context)
        type = Types::DeleteBucketInventoryConfigurationOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class DeleteBucketLifecycleInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteBucketLifecycleInput, context: context)
        type = Types::DeleteBucketLifecycleInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class DeleteBucketLifecycleOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteBucketLifecycleOutput, context: context)
        type = Types::DeleteBucketLifecycleOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class DeleteBucketMetricsConfigurationInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteBucketMetricsConfigurationInput, context: context)
        type = Types::DeleteBucketMetricsConfigurationInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.id = params[:id] unless params[:id].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class DeleteBucketMetricsConfigurationOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteBucketMetricsConfigurationOutput, context: context)
        type = Types::DeleteBucketMetricsConfigurationOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class DeleteBucketOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteBucketOutput, context: context)
        type = Types::DeleteBucketOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class DeleteBucketOwnershipControlsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteBucketOwnershipControlsInput, context: context)
        type = Types::DeleteBucketOwnershipControlsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class DeleteBucketOwnershipControlsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteBucketOwnershipControlsOutput, context: context)
        type = Types::DeleteBucketOwnershipControlsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class DeleteBucketPolicyInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteBucketPolicyInput, context: context)
        type = Types::DeleteBucketPolicyInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class DeleteBucketPolicyOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteBucketPolicyOutput, context: context)
        type = Types::DeleteBucketPolicyOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class DeleteBucketReplicationInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteBucketReplicationInput, context: context)
        type = Types::DeleteBucketReplicationInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class DeleteBucketReplicationOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteBucketReplicationOutput, context: context)
        type = Types::DeleteBucketReplicationOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class DeleteBucketTaggingInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteBucketTaggingInput, context: context)
        type = Types::DeleteBucketTaggingInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class DeleteBucketTaggingOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteBucketTaggingOutput, context: context)
        type = Types::DeleteBucketTaggingOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class DeleteBucketWebsiteInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteBucketWebsiteInput, context: context)
        type = Types::DeleteBucketWebsiteInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class DeleteBucketWebsiteOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteBucketWebsiteOutput, context: context)
        type = Types::DeleteBucketWebsiteOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class DeleteMarkerEntry
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteMarkerEntry, context: context)
        type = Types::DeleteMarkerEntry.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.owner = Owner.build(params[:owner], context: "#{context}[:owner]") unless params[:owner].nil?
        type.key = params[:key] unless params[:key].nil?
        type.version_id = params[:version_id] unless params[:version_id].nil?
        type.is_latest = params[:is_latest] unless params[:is_latest].nil?
        type.last_modified = params[:last_modified] unless params[:last_modified].nil?
        type
      end
    end

    class DeleteMarkerReplication
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteMarkerReplication, context: context)
        type = Types::DeleteMarkerReplication.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.status = params[:status] unless params[:status].nil?
        type
      end
    end

    class DeleteMarkers
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DeleteMarkerEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class DeleteObjectInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteObjectInput, context: context)
        type = Types::DeleteObjectInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.key = params[:key] unless params[:key].nil?
        type.mfa = params[:mfa] unless params[:mfa].nil?
        type.version_id = params[:version_id] unless params[:version_id].nil?
        type.request_payer = params[:request_payer] unless params[:request_payer].nil?
        type.bypass_governance_retention = params[:bypass_governance_retention] unless params[:bypass_governance_retention].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class DeleteObjectOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteObjectOutput, context: context)
        type = Types::DeleteObjectOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.delete_marker = params[:delete_marker] unless params[:delete_marker].nil?
        type.version_id = params[:version_id] unless params[:version_id].nil?
        type.request_charged = params[:request_charged] unless params[:request_charged].nil?
        type
      end
    end

    class DeleteObjectTaggingInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteObjectTaggingInput, context: context)
        type = Types::DeleteObjectTaggingInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.key = params[:key] unless params[:key].nil?
        type.version_id = params[:version_id] unless params[:version_id].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class DeleteObjectTaggingOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteObjectTaggingOutput, context: context)
        type = Types::DeleteObjectTaggingOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.version_id = params[:version_id] unless params[:version_id].nil?
        type
      end
    end

    class DeleteObjectsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteObjectsInput, context: context)
        type = Types::DeleteObjectsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.delete = Delete.build(params[:delete], context: "#{context}[:delete]") unless params[:delete].nil?
        type.mfa = params[:mfa] unless params[:mfa].nil?
        type.request_payer = params[:request_payer] unless params[:request_payer].nil?
        type.bypass_governance_retention = params[:bypass_governance_retention] unless params[:bypass_governance_retention].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type.checksum_algorithm = params[:checksum_algorithm] unless params[:checksum_algorithm].nil?
        type
      end
    end

    class DeleteObjectsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteObjectsOutput, context: context)
        type = Types::DeleteObjectsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.deleted = DeletedObjects.build(params[:deleted], context: "#{context}[:deleted]") unless params[:deleted].nil?
        type.request_charged = params[:request_charged] unless params[:request_charged].nil?
        type.errors = Errors.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type
      end
    end

    class DeletePublicAccessBlockInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeletePublicAccessBlockInput, context: context)
        type = Types::DeletePublicAccessBlockInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class DeletePublicAccessBlockOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeletePublicAccessBlockOutput, context: context)
        type = Types::DeletePublicAccessBlockOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class DeletedObject
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeletedObject, context: context)
        type = Types::DeletedObject.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key = params[:key] unless params[:key].nil?
        type.version_id = params[:version_id] unless params[:version_id].nil?
        type.delete_marker = params[:delete_marker] unless params[:delete_marker].nil?
        type.delete_marker_version_id = params[:delete_marker_version_id] unless params[:delete_marker_version_id].nil?
        type
      end
    end

    class DeletedObjects
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DeletedObject.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class Destination
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Destination, context: context)
        type = Types::Destination.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.account = params[:account] unless params[:account].nil?
        type.storage_class = params[:storage_class] unless params[:storage_class].nil?
        type.access_control_translation = AccessControlTranslation.build(params[:access_control_translation], context: "#{context}[:access_control_translation]") unless params[:access_control_translation].nil?
        type.encryption_configuration = EncryptionConfiguration.build(params[:encryption_configuration], context: "#{context}[:encryption_configuration]") unless params[:encryption_configuration].nil?
        type.replication_time = ReplicationTime.build(params[:replication_time], context: "#{context}[:replication_time]") unless params[:replication_time].nil?
        type.metrics = Metrics.build(params[:metrics], context: "#{context}[:metrics]") unless params[:metrics].nil?
        type
      end
    end

    class Encryption
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Encryption, context: context)
        type = Types::Encryption.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.encryption_type = params[:encryption_type] unless params[:encryption_type].nil?
        type.kms_key_id = params[:kms_key_id] unless params[:kms_key_id].nil?
        type.kms_context = params[:kms_context] unless params[:kms_context].nil?
        type
      end
    end

    class EncryptionConfiguration
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::EncryptionConfiguration, context: context)
        type = Types::EncryptionConfiguration.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.replica_kms_key_id = params[:replica_kms_key_id] unless params[:replica_kms_key_id].nil?
        type
      end
    end

    class EndEvent
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::EndEvent, context: context)
        type = Types::EndEvent.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class Error
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Error, context: context)
        type = Types::Error.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key = params[:key] unless params[:key].nil?
        type.version_id = params[:version_id] unless params[:version_id].nil?
        type.code = params[:code] unless params[:code].nil?
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class ErrorDocument
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ErrorDocument, context: context)
        type = Types::ErrorDocument.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key = params[:key] unless params[:key].nil?
        type
      end
    end

    class Errors
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Error.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class EventBridgeConfiguration
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::EventBridgeConfiguration, context: context)
        type = Types::EventBridgeConfiguration.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class EventList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class ExistingObjectReplication
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ExistingObjectReplication, context: context)
        type = Types::ExistingObjectReplication.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.status = params[:status] unless params[:status].nil?
        type
      end
    end

    class ExposeHeaders
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class FilterRule
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::FilterRule, context: context)
        type = Types::FilterRule.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.name = params[:name] unless params[:name].nil?
        type.value = params[:value] unless params[:value].nil?
        type
      end
    end

    class FilterRuleList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FilterRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class GetBucketAccelerateConfigurationInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketAccelerateConfigurationInput, context: context)
        type = Types::GetBucketAccelerateConfigurationInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type.request_payer = params[:request_payer] unless params[:request_payer].nil?
        type
      end
    end

    class GetBucketAccelerateConfigurationOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketAccelerateConfigurationOutput, context: context)
        type = Types::GetBucketAccelerateConfigurationOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.status = params[:status] unless params[:status].nil?
        type.request_charged = params[:request_charged] unless params[:request_charged].nil?
        type
      end
    end

    class GetBucketAclInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketAclInput, context: context)
        type = Types::GetBucketAclInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class GetBucketAclOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketAclOutput, context: context)
        type = Types::GetBucketAclOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.owner = Owner.build(params[:owner], context: "#{context}[:owner]") unless params[:owner].nil?
        type.grants = Grants.build(params[:grants], context: "#{context}[:grants]") unless params[:grants].nil?
        type
      end
    end

    class GetBucketAnalyticsConfigurationInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketAnalyticsConfigurationInput, context: context)
        type = Types::GetBucketAnalyticsConfigurationInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.id = params[:id] unless params[:id].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class GetBucketAnalyticsConfigurationOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketAnalyticsConfigurationOutput, context: context)
        type = Types::GetBucketAnalyticsConfigurationOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.analytics_configuration = AnalyticsConfiguration.build(params[:analytics_configuration], context: "#{context}[:analytics_configuration]") unless params[:analytics_configuration].nil?
        type
      end
    end

    class GetBucketCorsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketCorsInput, context: context)
        type = Types::GetBucketCorsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class GetBucketCorsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketCorsOutput, context: context)
        type = Types::GetBucketCorsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.cors_rules = CORSRules.build(params[:cors_rules], context: "#{context}[:cors_rules]") unless params[:cors_rules].nil?
        type
      end
    end

    class GetBucketEncryptionInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketEncryptionInput, context: context)
        type = Types::GetBucketEncryptionInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class GetBucketEncryptionOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketEncryptionOutput, context: context)
        type = Types::GetBucketEncryptionOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.server_side_encryption_configuration = ServerSideEncryptionConfiguration.build(params[:server_side_encryption_configuration], context: "#{context}[:server_side_encryption_configuration]") unless params[:server_side_encryption_configuration].nil?
        type
      end
    end

    class GetBucketIntelligentTieringConfigurationInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketIntelligentTieringConfigurationInput, context: context)
        type = Types::GetBucketIntelligentTieringConfigurationInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.id = params[:id] unless params[:id].nil?
        type
      end
    end

    class GetBucketIntelligentTieringConfigurationOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketIntelligentTieringConfigurationOutput, context: context)
        type = Types::GetBucketIntelligentTieringConfigurationOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.intelligent_tiering_configuration = IntelligentTieringConfiguration.build(params[:intelligent_tiering_configuration], context: "#{context}[:intelligent_tiering_configuration]") unless params[:intelligent_tiering_configuration].nil?
        type
      end
    end

    class GetBucketInventoryConfigurationInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketInventoryConfigurationInput, context: context)
        type = Types::GetBucketInventoryConfigurationInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.id = params[:id] unless params[:id].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class GetBucketInventoryConfigurationOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketInventoryConfigurationOutput, context: context)
        type = Types::GetBucketInventoryConfigurationOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.inventory_configuration = InventoryConfiguration.build(params[:inventory_configuration], context: "#{context}[:inventory_configuration]") unless params[:inventory_configuration].nil?
        type
      end
    end

    class GetBucketLifecycleConfigurationInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketLifecycleConfigurationInput, context: context)
        type = Types::GetBucketLifecycleConfigurationInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class GetBucketLifecycleConfigurationOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketLifecycleConfigurationOutput, context: context)
        type = Types::GetBucketLifecycleConfigurationOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.rules = LifecycleRules.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type
      end
    end

    class GetBucketLocationInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketLocationInput, context: context)
        type = Types::GetBucketLocationInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class GetBucketLocationOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketLocationOutput, context: context)
        type = Types::GetBucketLocationOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.location_constraint = params[:location_constraint] unless params[:location_constraint].nil?
        type
      end
    end

    class GetBucketLoggingInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketLoggingInput, context: context)
        type = Types::GetBucketLoggingInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class GetBucketLoggingOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketLoggingOutput, context: context)
        type = Types::GetBucketLoggingOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.logging_enabled = LoggingEnabled.build(params[:logging_enabled], context: "#{context}[:logging_enabled]") unless params[:logging_enabled].nil?
        type
      end
    end

    class GetBucketMetricsConfigurationInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketMetricsConfigurationInput, context: context)
        type = Types::GetBucketMetricsConfigurationInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.id = params[:id] unless params[:id].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class GetBucketMetricsConfigurationOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketMetricsConfigurationOutput, context: context)
        type = Types::GetBucketMetricsConfigurationOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.metrics_configuration = MetricsConfiguration.build(params[:metrics_configuration], context: "#{context}[:metrics_configuration]") unless params[:metrics_configuration].nil?
        type
      end
    end

    class GetBucketNotificationConfigurationInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketNotificationConfigurationInput, context: context)
        type = Types::GetBucketNotificationConfigurationInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class GetBucketNotificationConfigurationOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketNotificationConfigurationOutput, context: context)
        type = Types::GetBucketNotificationConfigurationOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.topic_configurations = TopicConfigurationList.build(params[:topic_configurations], context: "#{context}[:topic_configurations]") unless params[:topic_configurations].nil?
        type.queue_configurations = QueueConfigurationList.build(params[:queue_configurations], context: "#{context}[:queue_configurations]") unless params[:queue_configurations].nil?
        type.lambda_function_configurations = LambdaFunctionConfigurationList.build(params[:lambda_function_configurations], context: "#{context}[:lambda_function_configurations]") unless params[:lambda_function_configurations].nil?
        type.event_bridge_configuration = EventBridgeConfiguration.build(params[:event_bridge_configuration], context: "#{context}[:event_bridge_configuration]") unless params[:event_bridge_configuration].nil?
        type
      end
    end

    class GetBucketOwnershipControlsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketOwnershipControlsInput, context: context)
        type = Types::GetBucketOwnershipControlsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class GetBucketOwnershipControlsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketOwnershipControlsOutput, context: context)
        type = Types::GetBucketOwnershipControlsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.ownership_controls = OwnershipControls.build(params[:ownership_controls], context: "#{context}[:ownership_controls]") unless params[:ownership_controls].nil?
        type
      end
    end

    class GetBucketPolicyInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketPolicyInput, context: context)
        type = Types::GetBucketPolicyInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class GetBucketPolicyOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketPolicyOutput, context: context)
        type = Types::GetBucketPolicyOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.policy = params[:policy] unless params[:policy].nil?
        type
      end
    end

    class GetBucketPolicyStatusInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketPolicyStatusInput, context: context)
        type = Types::GetBucketPolicyStatusInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class GetBucketPolicyStatusOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketPolicyStatusOutput, context: context)
        type = Types::GetBucketPolicyStatusOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.policy_status = PolicyStatus.build(params[:policy_status], context: "#{context}[:policy_status]") unless params[:policy_status].nil?
        type
      end
    end

    class GetBucketReplicationInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketReplicationInput, context: context)
        type = Types::GetBucketReplicationInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class GetBucketReplicationOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketReplicationOutput, context: context)
        type = Types::GetBucketReplicationOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.replication_configuration = ReplicationConfiguration.build(params[:replication_configuration], context: "#{context}[:replication_configuration]") unless params[:replication_configuration].nil?
        type
      end
    end

    class GetBucketRequestPaymentInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketRequestPaymentInput, context: context)
        type = Types::GetBucketRequestPaymentInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class GetBucketRequestPaymentOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketRequestPaymentOutput, context: context)
        type = Types::GetBucketRequestPaymentOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.payer = params[:payer] unless params[:payer].nil?
        type
      end
    end

    class GetBucketTaggingInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketTaggingInput, context: context)
        type = Types::GetBucketTaggingInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class GetBucketTaggingOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketTaggingOutput, context: context)
        type = Types::GetBucketTaggingOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.tag_set = TagSet.build(params[:tag_set], context: "#{context}[:tag_set]") unless params[:tag_set].nil?
        type
      end
    end

    class GetBucketVersioningInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketVersioningInput, context: context)
        type = Types::GetBucketVersioningInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class GetBucketVersioningOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketVersioningOutput, context: context)
        type = Types::GetBucketVersioningOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.status = params[:status] unless params[:status].nil?
        type.mfa_delete = params[:mfa_delete] unless params[:mfa_delete].nil?
        type
      end
    end

    class GetBucketWebsiteInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketWebsiteInput, context: context)
        type = Types::GetBucketWebsiteInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class GetBucketWebsiteOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketWebsiteOutput, context: context)
        type = Types::GetBucketWebsiteOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.redirect_all_requests_to = RedirectAllRequestsTo.build(params[:redirect_all_requests_to], context: "#{context}[:redirect_all_requests_to]") unless params[:redirect_all_requests_to].nil?
        type.index_document = IndexDocument.build(params[:index_document], context: "#{context}[:index_document]") unless params[:index_document].nil?
        type.error_document = ErrorDocument.build(params[:error_document], context: "#{context}[:error_document]") unless params[:error_document].nil?
        type.routing_rules = RoutingRules.build(params[:routing_rules], context: "#{context}[:routing_rules]") unless params[:routing_rules].nil?
        type
      end
    end

    class GetObjectAclInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetObjectAclInput, context: context)
        type = Types::GetObjectAclInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.key = params[:key] unless params[:key].nil?
        type.version_id = params[:version_id] unless params[:version_id].nil?
        type.request_payer = params[:request_payer] unless params[:request_payer].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class GetObjectAclOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetObjectAclOutput, context: context)
        type = Types::GetObjectAclOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.owner = Owner.build(params[:owner], context: "#{context}[:owner]") unless params[:owner].nil?
        type.grants = Grants.build(params[:grants], context: "#{context}[:grants]") unless params[:grants].nil?
        type.request_charged = params[:request_charged] unless params[:request_charged].nil?
        type
      end
    end

    class GetObjectAttributesInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetObjectAttributesInput, context: context)
        type = Types::GetObjectAttributesInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.key = params[:key] unless params[:key].nil?
        type.version_id = params[:version_id] unless params[:version_id].nil?
        type.max_parts = params[:max_parts] unless params[:max_parts].nil?
        type.part_number_marker = params[:part_number_marker] unless params[:part_number_marker].nil?
        type.sse_customer_algorithm = params[:sse_customer_algorithm] unless params[:sse_customer_algorithm].nil?
        type.sse_customer_key = params[:sse_customer_key] unless params[:sse_customer_key].nil?
        type.sse_customer_key_md5 = params[:sse_customer_key_md5] unless params[:sse_customer_key_md5].nil?
        type.request_payer = params[:request_payer] unless params[:request_payer].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type.object_attributes = ObjectAttributesList.build(params[:object_attributes], context: "#{context}[:object_attributes]") unless params[:object_attributes].nil?
        type
      end
    end

    class GetObjectAttributesOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetObjectAttributesOutput, context: context)
        type = Types::GetObjectAttributesOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.delete_marker = params[:delete_marker] unless params[:delete_marker].nil?
        type.last_modified = params[:last_modified] unless params[:last_modified].nil?
        type.version_id = params[:version_id] unless params[:version_id].nil?
        type.request_charged = params[:request_charged] unless params[:request_charged].nil?
        type.e_tag = params[:e_tag] unless params[:e_tag].nil?
        type.checksum = Checksum.build(params[:checksum], context: "#{context}[:checksum]") unless params[:checksum].nil?
        type.object_parts = GetObjectAttributesParts.build(params[:object_parts], context: "#{context}[:object_parts]") unless params[:object_parts].nil?
        type.storage_class = params[:storage_class] unless params[:storage_class].nil?
        type.object_size = params[:object_size] unless params[:object_size].nil?
        type
      end
    end

    class GetObjectAttributesParts
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetObjectAttributesParts, context: context)
        type = Types::GetObjectAttributesParts.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.total_parts_count = params[:total_parts_count] unless params[:total_parts_count].nil?
        type.part_number_marker = params[:part_number_marker] unless params[:part_number_marker].nil?
        type.next_part_number_marker = params[:next_part_number_marker] unless params[:next_part_number_marker].nil?
        type.max_parts = params[:max_parts] unless params[:max_parts].nil?
        type.is_truncated = params[:is_truncated] unless params[:is_truncated].nil?
        type.parts = PartsList.build(params[:parts], context: "#{context}[:parts]") unless params[:parts].nil?
        type
      end
    end

    class GetObjectInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetObjectInput, context: context)
        type = Types::GetObjectInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.if_match = params[:if_match] unless params[:if_match].nil?
        type.if_modified_since = params[:if_modified_since] unless params[:if_modified_since].nil?
        type.if_none_match = params[:if_none_match] unless params[:if_none_match].nil?
        type.if_unmodified_since = params[:if_unmodified_since] unless params[:if_unmodified_since].nil?
        type.key = params[:key] unless params[:key].nil?
        type.range = params[:range] unless params[:range].nil?
        type.response_cache_control = params[:response_cache_control] unless params[:response_cache_control].nil?
        type.response_content_disposition = params[:response_content_disposition] unless params[:response_content_disposition].nil?
        type.response_content_encoding = params[:response_content_encoding] unless params[:response_content_encoding].nil?
        type.response_content_language = params[:response_content_language] unless params[:response_content_language].nil?
        type.response_content_type = params[:response_content_type] unless params[:response_content_type].nil?
        type.response_expires = params[:response_expires] unless params[:response_expires].nil?
        type.version_id = params[:version_id] unless params[:version_id].nil?
        type.sse_customer_algorithm = params[:sse_customer_algorithm] unless params[:sse_customer_algorithm].nil?
        type.sse_customer_key = params[:sse_customer_key] unless params[:sse_customer_key].nil?
        type.sse_customer_key_md5 = params[:sse_customer_key_md5] unless params[:sse_customer_key_md5].nil?
        type.request_payer = params[:request_payer] unless params[:request_payer].nil?
        type.part_number = params[:part_number] unless params[:part_number].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type.checksum_mode = params[:checksum_mode] unless params[:checksum_mode].nil?
        type
      end
    end

    class GetObjectLegalHoldInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetObjectLegalHoldInput, context: context)
        type = Types::GetObjectLegalHoldInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.key = params[:key] unless params[:key].nil?
        type.version_id = params[:version_id] unless params[:version_id].nil?
        type.request_payer = params[:request_payer] unless params[:request_payer].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class GetObjectLegalHoldOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetObjectLegalHoldOutput, context: context)
        type = Types::GetObjectLegalHoldOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.legal_hold = ObjectLockLegalHold.build(params[:legal_hold], context: "#{context}[:legal_hold]") unless params[:legal_hold].nil?
        type
      end
    end

    class GetObjectLockConfigurationInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetObjectLockConfigurationInput, context: context)
        type = Types::GetObjectLockConfigurationInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class GetObjectLockConfigurationOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetObjectLockConfigurationOutput, context: context)
        type = Types::GetObjectLockConfigurationOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.object_lock_configuration = ObjectLockConfiguration.build(params[:object_lock_configuration], context: "#{context}[:object_lock_configuration]") unless params[:object_lock_configuration].nil?
        type
      end
    end

    class GetObjectOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetObjectOutput, context: context)
        type = Types::GetObjectOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        io = params[:body] || StringIO.new
        unless io.respond_to?(:read) || io.respond_to?(:readpartial)
          io = StringIO.new(io)
        end
        type.body = io
        type.delete_marker = params[:delete_marker] unless params[:delete_marker].nil?
        type.accept_ranges = params[:accept_ranges] unless params[:accept_ranges].nil?
        type.expiration = params[:expiration] unless params[:expiration].nil?
        type.restore = params[:restore] unless params[:restore].nil?
        type.last_modified = params[:last_modified] unless params[:last_modified].nil?
        type.content_length = params[:content_length] unless params[:content_length].nil?
        type.e_tag = params[:e_tag] unless params[:e_tag].nil?
        type.checksum_crc32 = params[:checksum_crc32] unless params[:checksum_crc32].nil?
        type.checksum_crc32_c = params[:checksum_crc32_c] unless params[:checksum_crc32_c].nil?
        type.checksum_sha1 = params[:checksum_sha1] unless params[:checksum_sha1].nil?
        type.checksum_sha256 = params[:checksum_sha256] unless params[:checksum_sha256].nil?
        type.missing_meta = params[:missing_meta] unless params[:missing_meta].nil?
        type.version_id = params[:version_id] unless params[:version_id].nil?
        type.cache_control = params[:cache_control] unless params[:cache_control].nil?
        type.content_disposition = params[:content_disposition] unless params[:content_disposition].nil?
        type.content_encoding = params[:content_encoding] unless params[:content_encoding].nil?
        type.content_language = params[:content_language] unless params[:content_language].nil?
        type.content_range = params[:content_range] unless params[:content_range].nil?
        type.content_type = params[:content_type] unless params[:content_type].nil?
        type.expires = params[:expires] unless params[:expires].nil?
        type.website_redirect_location = params[:website_redirect_location] unless params[:website_redirect_location].nil?
        type.server_side_encryption = params[:server_side_encryption] unless params[:server_side_encryption].nil?
        type.metadata = Metadata.build(params[:metadata], context: "#{context}[:metadata]") unless params[:metadata].nil?
        type.sse_customer_algorithm = params[:sse_customer_algorithm] unless params[:sse_customer_algorithm].nil?
        type.sse_customer_key_md5 = params[:sse_customer_key_md5] unless params[:sse_customer_key_md5].nil?
        type.ssekms_key_id = params[:ssekms_key_id] unless params[:ssekms_key_id].nil?
        type.bucket_key_enabled = params[:bucket_key_enabled] unless params[:bucket_key_enabled].nil?
        type.storage_class = params[:storage_class] unless params[:storage_class].nil?
        type.request_charged = params[:request_charged] unless params[:request_charged].nil?
        type.replication_status = params[:replication_status] unless params[:replication_status].nil?
        type.parts_count = params[:parts_count] unless params[:parts_count].nil?
        type.tag_count = params[:tag_count] unless params[:tag_count].nil?
        type.object_lock_mode = params[:object_lock_mode] unless params[:object_lock_mode].nil?
        type.object_lock_retain_until_date = params[:object_lock_retain_until_date] unless params[:object_lock_retain_until_date].nil?
        type.object_lock_legal_hold_status = params[:object_lock_legal_hold_status] unless params[:object_lock_legal_hold_status].nil?
        type
      end
    end

    class GetObjectRetentionInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetObjectRetentionInput, context: context)
        type = Types::GetObjectRetentionInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.key = params[:key] unless params[:key].nil?
        type.version_id = params[:version_id] unless params[:version_id].nil?
        type.request_payer = params[:request_payer] unless params[:request_payer].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class GetObjectRetentionOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetObjectRetentionOutput, context: context)
        type = Types::GetObjectRetentionOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.retention = ObjectLockRetention.build(params[:retention], context: "#{context}[:retention]") unless params[:retention].nil?
        type
      end
    end

    class GetObjectTaggingInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetObjectTaggingInput, context: context)
        type = Types::GetObjectTaggingInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.key = params[:key] unless params[:key].nil?
        type.version_id = params[:version_id] unless params[:version_id].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type.request_payer = params[:request_payer] unless params[:request_payer].nil?
        type
      end
    end

    class GetObjectTaggingOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetObjectTaggingOutput, context: context)
        type = Types::GetObjectTaggingOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.version_id = params[:version_id] unless params[:version_id].nil?
        type.tag_set = TagSet.build(params[:tag_set], context: "#{context}[:tag_set]") unless params[:tag_set].nil?
        type
      end
    end

    class GetObjectTorrentInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetObjectTorrentInput, context: context)
        type = Types::GetObjectTorrentInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.key = params[:key] unless params[:key].nil?
        type.request_payer = params[:request_payer] unless params[:request_payer].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class GetObjectTorrentOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetObjectTorrentOutput, context: context)
        type = Types::GetObjectTorrentOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        io = params[:body] || StringIO.new
        unless io.respond_to?(:read) || io.respond_to?(:readpartial)
          io = StringIO.new(io)
        end
        type.body = io
        type.request_charged = params[:request_charged] unless params[:request_charged].nil?
        type
      end
    end

    class GetPublicAccessBlockInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetPublicAccessBlockInput, context: context)
        type = Types::GetPublicAccessBlockInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class GetPublicAccessBlockOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetPublicAccessBlockOutput, context: context)
        type = Types::GetPublicAccessBlockOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.public_access_block_configuration = PublicAccessBlockConfiguration.build(params[:public_access_block_configuration], context: "#{context}[:public_access_block_configuration]") unless params[:public_access_block_configuration].nil?
        type
      end
    end

    class GlacierJobParameters
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GlacierJobParameters, context: context)
        type = Types::GlacierJobParameters.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.tier = params[:tier] unless params[:tier].nil?
        type
      end
    end

    class Grant
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Grant, context: context)
        type = Types::Grant.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.grantee = Grantee.build(params[:grantee], context: "#{context}[:grantee]") unless params[:grantee].nil?
        type.permission = params[:permission] unless params[:permission].nil?
        type
      end
    end

    class Grantee
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Grantee, context: context)
        type = Types::Grantee.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.display_name = params[:display_name] unless params[:display_name].nil?
        type.email_address = params[:email_address] unless params[:email_address].nil?
        type.id = params[:id] unless params[:id].nil?
        type.uri = params[:uri] unless params[:uri].nil?
        type.type = params[:type] unless params[:type].nil?
        type
      end
    end

    class Grants
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Grant.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class HeadBucketInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::HeadBucketInput, context: context)
        type = Types::HeadBucketInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class HeadBucketOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::HeadBucketOutput, context: context)
        type = Types::HeadBucketOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket_location_type = params[:bucket_location_type] unless params[:bucket_location_type].nil?
        type.bucket_location_name = params[:bucket_location_name] unless params[:bucket_location_name].nil?
        type.bucket_region = params[:bucket_region] unless params[:bucket_region].nil?
        type.access_point_alias = params[:access_point_alias] unless params[:access_point_alias].nil?
        type
      end
    end

    class HeadObjectInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::HeadObjectInput, context: context)
        type = Types::HeadObjectInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.if_match = params[:if_match] unless params[:if_match].nil?
        type.if_modified_since = params[:if_modified_since] unless params[:if_modified_since].nil?
        type.if_none_match = params[:if_none_match] unless params[:if_none_match].nil?
        type.if_unmodified_since = params[:if_unmodified_since] unless params[:if_unmodified_since].nil?
        type.key = params[:key] unless params[:key].nil?
        type.range = params[:range] unless params[:range].nil?
        type.version_id = params[:version_id] unless params[:version_id].nil?
        type.sse_customer_algorithm = params[:sse_customer_algorithm] unless params[:sse_customer_algorithm].nil?
        type.sse_customer_key = params[:sse_customer_key] unless params[:sse_customer_key].nil?
        type.sse_customer_key_md5 = params[:sse_customer_key_md5] unless params[:sse_customer_key_md5].nil?
        type.request_payer = params[:request_payer] unless params[:request_payer].nil?
        type.part_number = params[:part_number] unless params[:part_number].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type.checksum_mode = params[:checksum_mode] unless params[:checksum_mode].nil?
        type
      end
    end

    class HeadObjectOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::HeadObjectOutput, context: context)
        type = Types::HeadObjectOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.delete_marker = params[:delete_marker] unless params[:delete_marker].nil?
        type.accept_ranges = params[:accept_ranges] unless params[:accept_ranges].nil?
        type.expiration = params[:expiration] unless params[:expiration].nil?
        type.restore = params[:restore] unless params[:restore].nil?
        type.archive_status = params[:archive_status] unless params[:archive_status].nil?
        type.last_modified = params[:last_modified] unless params[:last_modified].nil?
        type.content_length = params[:content_length] unless params[:content_length].nil?
        type.checksum_crc32 = params[:checksum_crc32] unless params[:checksum_crc32].nil?
        type.checksum_crc32_c = params[:checksum_crc32_c] unless params[:checksum_crc32_c].nil?
        type.checksum_sha1 = params[:checksum_sha1] unless params[:checksum_sha1].nil?
        type.checksum_sha256 = params[:checksum_sha256] unless params[:checksum_sha256].nil?
        type.e_tag = params[:e_tag] unless params[:e_tag].nil?
        type.missing_meta = params[:missing_meta] unless params[:missing_meta].nil?
        type.version_id = params[:version_id] unless params[:version_id].nil?
        type.cache_control = params[:cache_control] unless params[:cache_control].nil?
        type.content_disposition = params[:content_disposition] unless params[:content_disposition].nil?
        type.content_encoding = params[:content_encoding] unless params[:content_encoding].nil?
        type.content_language = params[:content_language] unless params[:content_language].nil?
        type.content_type = params[:content_type] unless params[:content_type].nil?
        type.expires = params[:expires] unless params[:expires].nil?
        type.website_redirect_location = params[:website_redirect_location] unless params[:website_redirect_location].nil?
        type.server_side_encryption = params[:server_side_encryption] unless params[:server_side_encryption].nil?
        type.metadata = Metadata.build(params[:metadata], context: "#{context}[:metadata]") unless params[:metadata].nil?
        type.sse_customer_algorithm = params[:sse_customer_algorithm] unless params[:sse_customer_algorithm].nil?
        type.sse_customer_key_md5 = params[:sse_customer_key_md5] unless params[:sse_customer_key_md5].nil?
        type.ssekms_key_id = params[:ssekms_key_id] unless params[:ssekms_key_id].nil?
        type.bucket_key_enabled = params[:bucket_key_enabled] unless params[:bucket_key_enabled].nil?
        type.storage_class = params[:storage_class] unless params[:storage_class].nil?
        type.request_charged = params[:request_charged] unless params[:request_charged].nil?
        type.replication_status = params[:replication_status] unless params[:replication_status].nil?
        type.parts_count = params[:parts_count] unless params[:parts_count].nil?
        type.object_lock_mode = params[:object_lock_mode] unless params[:object_lock_mode].nil?
        type.object_lock_retain_until_date = params[:object_lock_retain_until_date] unless params[:object_lock_retain_until_date].nil?
        type.object_lock_legal_hold_status = params[:object_lock_legal_hold_status] unless params[:object_lock_legal_hold_status].nil?
        type
      end
    end

    class IndexDocument
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::IndexDocument, context: context)
        type = Types::IndexDocument.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.suffix = params[:suffix] unless params[:suffix].nil?
        type
      end
    end

    class Initiator
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Initiator, context: context)
        type = Types::Initiator.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.id = params[:id] unless params[:id].nil?
        type.display_name = params[:display_name] unless params[:display_name].nil?
        type
      end
    end

    class InputSerialization
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::InputSerialization, context: context)
        type = Types::InputSerialization.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.csv = CSVInput.build(params[:csv], context: "#{context}[:csv]") unless params[:csv].nil?
        type.compression_type = params[:compression_type] unless params[:compression_type].nil?
        type.json = JSONInput.build(params[:json], context: "#{context}[:json]") unless params[:json].nil?
        type.parquet = ParquetInput.build(params[:parquet], context: "#{context}[:parquet]") unless params[:parquet].nil?
        type
      end
    end

    class IntelligentTieringAndOperator
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::IntelligentTieringAndOperator, context: context)
        type = Types::IntelligentTieringAndOperator.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.prefix = params[:prefix] unless params[:prefix].nil?
        type.tags = TagSet.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    class IntelligentTieringConfiguration
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::IntelligentTieringConfiguration, context: context)
        type = Types::IntelligentTieringConfiguration.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.id = params[:id] unless params[:id].nil?
        type.filter = IntelligentTieringFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.status = params[:status] unless params[:status].nil?
        type.tierings = TieringList.build(params[:tierings], context: "#{context}[:tierings]") unless params[:tierings].nil?
        type
      end
    end

    class IntelligentTieringConfigurationList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << IntelligentTieringConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class IntelligentTieringFilter
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::IntelligentTieringFilter, context: context)
        type = Types::IntelligentTieringFilter.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.prefix = params[:prefix] unless params[:prefix].nil?
        type.tag = Tag.build(params[:tag], context: "#{context}[:tag]") unless params[:tag].nil?
        type.and = IntelligentTieringAndOperator.build(params[:and], context: "#{context}[:and]") unless params[:and].nil?
        type
      end
    end

    class InvalidObjectState
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::InvalidObjectState, context: context)
        type = Types::InvalidObjectState.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.storage_class = params[:storage_class] unless params[:storage_class].nil?
        type.access_tier = params[:access_tier] unless params[:access_tier].nil?
        type
      end
    end

    class InventoryConfiguration
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::InventoryConfiguration, context: context)
        type = Types::InventoryConfiguration.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.destination = InventoryDestination.build(params[:destination], context: "#{context}[:destination]") unless params[:destination].nil?
        type.is_enabled = params[:is_enabled] unless params[:is_enabled].nil?
        type.filter = InventoryFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.id = params[:id] unless params[:id].nil?
        type.included_object_versions = params[:included_object_versions] unless params[:included_object_versions].nil?
        type.optional_fields = InventoryOptionalFields.build(params[:optional_fields], context: "#{context}[:optional_fields]") unless params[:optional_fields].nil?
        type.schedule = InventorySchedule.build(params[:schedule], context: "#{context}[:schedule]") unless params[:schedule].nil?
        type
      end
    end

    class InventoryConfigurationList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InventoryConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class InventoryDestination
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::InventoryDestination, context: context)
        type = Types::InventoryDestination.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.s3_bucket_destination = InventoryS3BucketDestination.build(params[:s3_bucket_destination], context: "#{context}[:s3_bucket_destination]") unless params[:s3_bucket_destination].nil?
        type
      end
    end

    class InventoryEncryption
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::InventoryEncryption, context: context)
        type = Types::InventoryEncryption.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.sses3 = SSES3.build(params[:sses3], context: "#{context}[:sses3]") unless params[:sses3].nil?
        type.ssekms = SSEKMS.build(params[:ssekms], context: "#{context}[:ssekms]") unless params[:ssekms].nil?
        type
      end
    end

    class InventoryFilter
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::InventoryFilter, context: context)
        type = Types::InventoryFilter.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.prefix = params[:prefix] unless params[:prefix].nil?
        type
      end
    end

    class InventoryOptionalFields
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class InventoryS3BucketDestination
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::InventoryS3BucketDestination, context: context)
        type = Types::InventoryS3BucketDestination.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.account_id = params[:account_id] unless params[:account_id].nil?
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.format = params[:format] unless params[:format].nil?
        type.prefix = params[:prefix] unless params[:prefix].nil?
        type.encryption = InventoryEncryption.build(params[:encryption], context: "#{context}[:encryption]") unless params[:encryption].nil?
        type
      end
    end

    class InventorySchedule
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::InventorySchedule, context: context)
        type = Types::InventorySchedule.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.frequency = params[:frequency] unless params[:frequency].nil?
        type
      end
    end

    class JSONInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::JSONInput, context: context)
        type = Types::JSONInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.type = params[:type] unless params[:type].nil?
        type
      end
    end

    class JSONOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::JSONOutput, context: context)
        type = Types::JSONOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.record_delimiter = params[:record_delimiter] unless params[:record_delimiter].nil?
        type
      end
    end

    class LambdaFunctionConfiguration
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::LambdaFunctionConfiguration, context: context)
        type = Types::LambdaFunctionConfiguration.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.id = params[:id] unless params[:id].nil?
        type.lambda_function_arn = params[:lambda_function_arn] unless params[:lambda_function_arn].nil?
        type.events = EventList.build(params[:events], context: "#{context}[:events]") unless params[:events].nil?
        type.filter = NotificationConfigurationFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type
      end
    end

    class LambdaFunctionConfigurationList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LambdaFunctionConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class LifecycleExpiration
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::LifecycleExpiration, context: context)
        type = Types::LifecycleExpiration.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.date = params[:date] unless params[:date].nil?
        type.days = params[:days] unless params[:days].nil?
        type.expired_object_delete_marker = params[:expired_object_delete_marker] unless params[:expired_object_delete_marker].nil?
        type
      end
    end

    class LifecycleRule
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::LifecycleRule, context: context)
        type = Types::LifecycleRule.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.expiration = LifecycleExpiration.build(params[:expiration], context: "#{context}[:expiration]") unless params[:expiration].nil?
        type.id = params[:id] unless params[:id].nil?
        type.prefix = params[:prefix] unless params[:prefix].nil?
        type.filter = LifecycleRuleFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.status = params[:status] unless params[:status].nil?
        type.transitions = TransitionList.build(params[:transitions], context: "#{context}[:transitions]") unless params[:transitions].nil?
        type.noncurrent_version_transitions = NoncurrentVersionTransitionList.build(params[:noncurrent_version_transitions], context: "#{context}[:noncurrent_version_transitions]") unless params[:noncurrent_version_transitions].nil?
        type.noncurrent_version_expiration = NoncurrentVersionExpiration.build(params[:noncurrent_version_expiration], context: "#{context}[:noncurrent_version_expiration]") unless params[:noncurrent_version_expiration].nil?
        type.abort_incomplete_multipart_upload = AbortIncompleteMultipartUpload.build(params[:abort_incomplete_multipart_upload], context: "#{context}[:abort_incomplete_multipart_upload]") unless params[:abort_incomplete_multipart_upload].nil?
        type
      end
    end

    class LifecycleRuleAndOperator
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::LifecycleRuleAndOperator, context: context)
        type = Types::LifecycleRuleAndOperator.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.prefix = params[:prefix] unless params[:prefix].nil?
        type.tags = TagSet.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.object_size_greater_than = params[:object_size_greater_than] unless params[:object_size_greater_than].nil?
        type.object_size_less_than = params[:object_size_less_than] unless params[:object_size_less_than].nil?
        type
      end
    end

    class LifecycleRuleFilter
      def self.build(params, context:)
        return params if params.is_a?(Types::LifecycleRuleFilter)
        Hearth::Validator.validate_types!(params, ::Hash, Types::LifecycleRuleFilter, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :prefix
          Types::LifecycleRuleFilter::Prefix.new(
            params[:prefix]
          )
        when :tag
          Types::LifecycleRuleFilter::Tag.new(
            (Tag.build(params[:tag], context: "#{context}[:tag]") unless params[:tag].nil?)
          )
        when :object_size_greater_than
          Types::LifecycleRuleFilter::ObjectSizeGreaterThan.new(
            params[:object_size_greater_than]
          )
        when :object_size_less_than
          Types::LifecycleRuleFilter::ObjectSizeLessThan.new(
            params[:object_size_less_than]
          )
        when :and
          Types::LifecycleRuleFilter::And.new(
            (LifecycleRuleAndOperator.build(params[:and], context: "#{context}[:and]") unless params[:and].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :prefix, :tag, :object_size_greater_than, :object_size_less_than, :and set"
        end
      end
    end

    class LifecycleRules
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LifecycleRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class ListBucketAnalyticsConfigurationsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListBucketAnalyticsConfigurationsInput, context: context)
        type = Types::ListBucketAnalyticsConfigurationsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.continuation_token = params[:continuation_token] unless params[:continuation_token].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class ListBucketAnalyticsConfigurationsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListBucketAnalyticsConfigurationsOutput, context: context)
        type = Types::ListBucketAnalyticsConfigurationsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.is_truncated = params[:is_truncated] unless params[:is_truncated].nil?
        type.continuation_token = params[:continuation_token] unless params[:continuation_token].nil?
        type.next_continuation_token = params[:next_continuation_token] unless params[:next_continuation_token].nil?
        type.analytics_configuration_list = AnalyticsConfigurationList.build(params[:analytics_configuration_list], context: "#{context}[:analytics_configuration_list]") unless params[:analytics_configuration_list].nil?
        type
      end
    end

    class ListBucketIntelligentTieringConfigurationsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListBucketIntelligentTieringConfigurationsInput, context: context)
        type = Types::ListBucketIntelligentTieringConfigurationsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.continuation_token = params[:continuation_token] unless params[:continuation_token].nil?
        type
      end
    end

    class ListBucketIntelligentTieringConfigurationsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListBucketIntelligentTieringConfigurationsOutput, context: context)
        type = Types::ListBucketIntelligentTieringConfigurationsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.is_truncated = params[:is_truncated] unless params[:is_truncated].nil?
        type.continuation_token = params[:continuation_token] unless params[:continuation_token].nil?
        type.next_continuation_token = params[:next_continuation_token] unless params[:next_continuation_token].nil?
        type.intelligent_tiering_configuration_list = IntelligentTieringConfigurationList.build(params[:intelligent_tiering_configuration_list], context: "#{context}[:intelligent_tiering_configuration_list]") unless params[:intelligent_tiering_configuration_list].nil?
        type
      end
    end

    class ListBucketInventoryConfigurationsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListBucketInventoryConfigurationsInput, context: context)
        type = Types::ListBucketInventoryConfigurationsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.continuation_token = params[:continuation_token] unless params[:continuation_token].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class ListBucketInventoryConfigurationsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListBucketInventoryConfigurationsOutput, context: context)
        type = Types::ListBucketInventoryConfigurationsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.continuation_token = params[:continuation_token] unless params[:continuation_token].nil?
        type.inventory_configuration_list = InventoryConfigurationList.build(params[:inventory_configuration_list], context: "#{context}[:inventory_configuration_list]") unless params[:inventory_configuration_list].nil?
        type.is_truncated = params[:is_truncated] unless params[:is_truncated].nil?
        type.next_continuation_token = params[:next_continuation_token] unless params[:next_continuation_token].nil?
        type
      end
    end

    class ListBucketMetricsConfigurationsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListBucketMetricsConfigurationsInput, context: context)
        type = Types::ListBucketMetricsConfigurationsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.continuation_token = params[:continuation_token] unless params[:continuation_token].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class ListBucketMetricsConfigurationsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListBucketMetricsConfigurationsOutput, context: context)
        type = Types::ListBucketMetricsConfigurationsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.is_truncated = params[:is_truncated] unless params[:is_truncated].nil?
        type.continuation_token = params[:continuation_token] unless params[:continuation_token].nil?
        type.next_continuation_token = params[:next_continuation_token] unless params[:next_continuation_token].nil?
        type.metrics_configuration_list = MetricsConfigurationList.build(params[:metrics_configuration_list], context: "#{context}[:metrics_configuration_list]") unless params[:metrics_configuration_list].nil?
        type
      end
    end

    class ListBucketsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListBucketsInput, context: context)
        type = Types::ListBucketsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class ListBucketsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListBucketsOutput, context: context)
        type = Types::ListBucketsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.buckets = Buckets.build(params[:buckets], context: "#{context}[:buckets]") unless params[:buckets].nil?
        type.owner = Owner.build(params[:owner], context: "#{context}[:owner]") unless params[:owner].nil?
        type
      end
    end

    class ListDirectoryBucketsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListDirectoryBucketsInput, context: context)
        type = Types::ListDirectoryBucketsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.continuation_token = params[:continuation_token] unless params[:continuation_token].nil?
        type.max_directory_buckets = params[:max_directory_buckets] unless params[:max_directory_buckets].nil?
        type
      end
    end

    class ListDirectoryBucketsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListDirectoryBucketsOutput, context: context)
        type = Types::ListDirectoryBucketsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.buckets = Buckets.build(params[:buckets], context: "#{context}[:buckets]") unless params[:buckets].nil?
        type.continuation_token = params[:continuation_token] unless params[:continuation_token].nil?
        type
      end
    end

    class ListMultipartUploadsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListMultipartUploadsInput, context: context)
        type = Types::ListMultipartUploadsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.delimiter = params[:delimiter] unless params[:delimiter].nil?
        type.encoding_type = params[:encoding_type] unless params[:encoding_type].nil?
        type.key_marker = params[:key_marker] unless params[:key_marker].nil?
        type.max_uploads = params[:max_uploads] unless params[:max_uploads].nil?
        type.prefix = params[:prefix] unless params[:prefix].nil?
        type.upload_id_marker = params[:upload_id_marker] unless params[:upload_id_marker].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type.request_payer = params[:request_payer] unless params[:request_payer].nil?
        type
      end
    end

    class ListMultipartUploadsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListMultipartUploadsOutput, context: context)
        type = Types::ListMultipartUploadsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.key_marker = params[:key_marker] unless params[:key_marker].nil?
        type.upload_id_marker = params[:upload_id_marker] unless params[:upload_id_marker].nil?
        type.next_key_marker = params[:next_key_marker] unless params[:next_key_marker].nil?
        type.prefix = params[:prefix] unless params[:prefix].nil?
        type.delimiter = params[:delimiter] unless params[:delimiter].nil?
        type.next_upload_id_marker = params[:next_upload_id_marker] unless params[:next_upload_id_marker].nil?
        type.max_uploads = params[:max_uploads] unless params[:max_uploads].nil?
        type.is_truncated = params[:is_truncated] unless params[:is_truncated].nil?
        type.uploads = MultipartUploadList.build(params[:uploads], context: "#{context}[:uploads]") unless params[:uploads].nil?
        type.common_prefixes = CommonPrefixList.build(params[:common_prefixes], context: "#{context}[:common_prefixes]") unless params[:common_prefixes].nil?
        type.encoding_type = params[:encoding_type] unless params[:encoding_type].nil?
        type.request_charged = params[:request_charged] unless params[:request_charged].nil?
        type
      end
    end

    class ListObjectVersionsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListObjectVersionsInput, context: context)
        type = Types::ListObjectVersionsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.delimiter = params[:delimiter] unless params[:delimiter].nil?
        type.encoding_type = params[:encoding_type] unless params[:encoding_type].nil?
        type.key_marker = params[:key_marker] unless params[:key_marker].nil?
        type.max_keys = params[:max_keys] unless params[:max_keys].nil?
        type.prefix = params[:prefix] unless params[:prefix].nil?
        type.version_id_marker = params[:version_id_marker] unless params[:version_id_marker].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type.request_payer = params[:request_payer] unless params[:request_payer].nil?
        type.optional_object_attributes = OptionalObjectAttributesList.build(params[:optional_object_attributes], context: "#{context}[:optional_object_attributes]") unless params[:optional_object_attributes].nil?
        type
      end
    end

    class ListObjectVersionsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListObjectVersionsOutput, context: context)
        type = Types::ListObjectVersionsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.is_truncated = params[:is_truncated] unless params[:is_truncated].nil?
        type.key_marker = params[:key_marker] unless params[:key_marker].nil?
        type.version_id_marker = params[:version_id_marker] unless params[:version_id_marker].nil?
        type.next_key_marker = params[:next_key_marker] unless params[:next_key_marker].nil?
        type.next_version_id_marker = params[:next_version_id_marker] unless params[:next_version_id_marker].nil?
        type.versions = ObjectVersionList.build(params[:versions], context: "#{context}[:versions]") unless params[:versions].nil?
        type.delete_markers = DeleteMarkers.build(params[:delete_markers], context: "#{context}[:delete_markers]") unless params[:delete_markers].nil?
        type.name = params[:name] unless params[:name].nil?
        type.prefix = params[:prefix] unless params[:prefix].nil?
        type.delimiter = params[:delimiter] unless params[:delimiter].nil?
        type.max_keys = params[:max_keys] unless params[:max_keys].nil?
        type.common_prefixes = CommonPrefixList.build(params[:common_prefixes], context: "#{context}[:common_prefixes]") unless params[:common_prefixes].nil?
        type.encoding_type = params[:encoding_type] unless params[:encoding_type].nil?
        type.request_charged = params[:request_charged] unless params[:request_charged].nil?
        type
      end
    end

    class ListObjectsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListObjectsInput, context: context)
        type = Types::ListObjectsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.delimiter = params[:delimiter] unless params[:delimiter].nil?
        type.encoding_type = params[:encoding_type] unless params[:encoding_type].nil?
        type.marker = params[:marker] unless params[:marker].nil?
        type.max_keys = params[:max_keys] unless params[:max_keys].nil?
        type.prefix = params[:prefix] unless params[:prefix].nil?
        type.request_payer = params[:request_payer] unless params[:request_payer].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type.optional_object_attributes = OptionalObjectAttributesList.build(params[:optional_object_attributes], context: "#{context}[:optional_object_attributes]") unless params[:optional_object_attributes].nil?
        type
      end
    end

    class ListObjectsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListObjectsOutput, context: context)
        type = Types::ListObjectsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.is_truncated = params[:is_truncated] unless params[:is_truncated].nil?
        type.marker = params[:marker] unless params[:marker].nil?
        type.next_marker = params[:next_marker] unless params[:next_marker].nil?
        type.contents = ObjectList.build(params[:contents], context: "#{context}[:contents]") unless params[:contents].nil?
        type.name = params[:name] unless params[:name].nil?
        type.prefix = params[:prefix] unless params[:prefix].nil?
        type.delimiter = params[:delimiter] unless params[:delimiter].nil?
        type.max_keys = params[:max_keys] unless params[:max_keys].nil?
        type.common_prefixes = CommonPrefixList.build(params[:common_prefixes], context: "#{context}[:common_prefixes]") unless params[:common_prefixes].nil?
        type.encoding_type = params[:encoding_type] unless params[:encoding_type].nil?
        type.request_charged = params[:request_charged] unless params[:request_charged].nil?
        type
      end
    end

    class ListObjectsV2Input
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListObjectsV2Input, context: context)
        type = Types::ListObjectsV2Input.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.delimiter = params[:delimiter] unless params[:delimiter].nil?
        type.encoding_type = params[:encoding_type] unless params[:encoding_type].nil?
        type.max_keys = params[:max_keys] unless params[:max_keys].nil?
        type.prefix = params[:prefix] unless params[:prefix].nil?
        type.continuation_token = params[:continuation_token] unless params[:continuation_token].nil?
        type.fetch_owner = params[:fetch_owner] unless params[:fetch_owner].nil?
        type.start_after = params[:start_after] unless params[:start_after].nil?
        type.request_payer = params[:request_payer] unless params[:request_payer].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type.optional_object_attributes = OptionalObjectAttributesList.build(params[:optional_object_attributes], context: "#{context}[:optional_object_attributes]") unless params[:optional_object_attributes].nil?
        type
      end
    end

    class ListObjectsV2Output
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListObjectsV2Output, context: context)
        type = Types::ListObjectsV2Output.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.is_truncated = params[:is_truncated] unless params[:is_truncated].nil?
        type.contents = ObjectList.build(params[:contents], context: "#{context}[:contents]") unless params[:contents].nil?
        type.name = params[:name] unless params[:name].nil?
        type.prefix = params[:prefix] unless params[:prefix].nil?
        type.delimiter = params[:delimiter] unless params[:delimiter].nil?
        type.max_keys = params[:max_keys] unless params[:max_keys].nil?
        type.common_prefixes = CommonPrefixList.build(params[:common_prefixes], context: "#{context}[:common_prefixes]") unless params[:common_prefixes].nil?
        type.encoding_type = params[:encoding_type] unless params[:encoding_type].nil?
        type.key_count = params[:key_count] unless params[:key_count].nil?
        type.continuation_token = params[:continuation_token] unless params[:continuation_token].nil?
        type.next_continuation_token = params[:next_continuation_token] unless params[:next_continuation_token].nil?
        type.start_after = params[:start_after] unless params[:start_after].nil?
        type.request_charged = params[:request_charged] unless params[:request_charged].nil?
        type
      end
    end

    class ListPartsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListPartsInput, context: context)
        type = Types::ListPartsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.key = params[:key] unless params[:key].nil?
        type.max_parts = params[:max_parts] unless params[:max_parts].nil?
        type.part_number_marker = params[:part_number_marker] unless params[:part_number_marker].nil?
        type.upload_id = params[:upload_id] unless params[:upload_id].nil?
        type.request_payer = params[:request_payer] unless params[:request_payer].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type.sse_customer_algorithm = params[:sse_customer_algorithm] unless params[:sse_customer_algorithm].nil?
        type.sse_customer_key = params[:sse_customer_key] unless params[:sse_customer_key].nil?
        type.sse_customer_key_md5 = params[:sse_customer_key_md5] unless params[:sse_customer_key_md5].nil?
        type
      end
    end

    class ListPartsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListPartsOutput, context: context)
        type = Types::ListPartsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.abort_date = params[:abort_date] unless params[:abort_date].nil?
        type.abort_rule_id = params[:abort_rule_id] unless params[:abort_rule_id].nil?
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.key = params[:key] unless params[:key].nil?
        type.upload_id = params[:upload_id] unless params[:upload_id].nil?
        type.part_number_marker = params[:part_number_marker] unless params[:part_number_marker].nil?
        type.next_part_number_marker = params[:next_part_number_marker] unless params[:next_part_number_marker].nil?
        type.max_parts = params[:max_parts] unless params[:max_parts].nil?
        type.is_truncated = params[:is_truncated] unless params[:is_truncated].nil?
        type.parts = Parts.build(params[:parts], context: "#{context}[:parts]") unless params[:parts].nil?
        type.initiator = Initiator.build(params[:initiator], context: "#{context}[:initiator]") unless params[:initiator].nil?
        type.owner = Owner.build(params[:owner], context: "#{context}[:owner]") unless params[:owner].nil?
        type.storage_class = params[:storage_class] unless params[:storage_class].nil?
        type.request_charged = params[:request_charged] unless params[:request_charged].nil?
        type.checksum_algorithm = params[:checksum_algorithm] unless params[:checksum_algorithm].nil?
        type
      end
    end

    class LocationInfo
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::LocationInfo, context: context)
        type = Types::LocationInfo.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.type = params[:type] unless params[:type].nil?
        type.name = params[:name] unless params[:name].nil?
        type
      end
    end

    class LoggingEnabled
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::LoggingEnabled, context: context)
        type = Types::LoggingEnabled.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.target_bucket = params[:target_bucket] unless params[:target_bucket].nil?
        type.target_grants = TargetGrants.build(params[:target_grants], context: "#{context}[:target_grants]") unless params[:target_grants].nil?
        type.target_prefix = params[:target_prefix] unless params[:target_prefix].nil?
        type.target_object_key_format = TargetObjectKeyFormat.build(params[:target_object_key_format], context: "#{context}[:target_object_key_format]") unless params[:target_object_key_format].nil?
        type
      end
    end

    class Metadata
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class MetadataEntry
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::MetadataEntry, context: context)
        type = Types::MetadataEntry.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.name = params[:name] unless params[:name].nil?
        type.value = params[:value] unless params[:value].nil?
        type
      end
    end

    class Metrics
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Metrics, context: context)
        type = Types::Metrics.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.status = params[:status] unless params[:status].nil?
        type.event_threshold = ReplicationTimeValue.build(params[:event_threshold], context: "#{context}[:event_threshold]") unless params[:event_threshold].nil?
        type
      end
    end

    class MetricsAndOperator
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::MetricsAndOperator, context: context)
        type = Types::MetricsAndOperator.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.prefix = params[:prefix] unless params[:prefix].nil?
        type.tags = TagSet.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.access_point_arn = params[:access_point_arn] unless params[:access_point_arn].nil?
        type
      end
    end

    class MetricsConfiguration
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::MetricsConfiguration, context: context)
        type = Types::MetricsConfiguration.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.id = params[:id] unless params[:id].nil?
        type.filter = MetricsFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type
      end
    end

    class MetricsConfigurationList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MetricsConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class MetricsFilter
      def self.build(params, context:)
        return params if params.is_a?(Types::MetricsFilter)
        Hearth::Validator.validate_types!(params, ::Hash, Types::MetricsFilter, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :prefix
          Types::MetricsFilter::Prefix.new(
            params[:prefix]
          )
        when :tag
          Types::MetricsFilter::Tag.new(
            (Tag.build(params[:tag], context: "#{context}[:tag]") unless params[:tag].nil?)
          )
        when :access_point_arn
          Types::MetricsFilter::AccessPointArn.new(
            params[:access_point_arn]
          )
        when :and
          Types::MetricsFilter::And.new(
            (MetricsAndOperator.build(params[:and], context: "#{context}[:and]") unless params[:and].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :prefix, :tag, :access_point_arn, :and set"
        end
      end
    end

    class MultipartUpload
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::MultipartUpload, context: context)
        type = Types::MultipartUpload.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.upload_id = params[:upload_id] unless params[:upload_id].nil?
        type.key = params[:key] unless params[:key].nil?
        type.initiated = params[:initiated] unless params[:initiated].nil?
        type.storage_class = params[:storage_class] unless params[:storage_class].nil?
        type.owner = Owner.build(params[:owner], context: "#{context}[:owner]") unless params[:owner].nil?
        type.initiator = Initiator.build(params[:initiator], context: "#{context}[:initiator]") unless params[:initiator].nil?
        type.checksum_algorithm = params[:checksum_algorithm] unless params[:checksum_algorithm].nil?
        type
      end
    end

    class MultipartUploadList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MultipartUpload.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class NoSuchBucket
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::NoSuchBucket, context: context)
        type = Types::NoSuchBucket.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class NoSuchKey
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::NoSuchKey, context: context)
        type = Types::NoSuchKey.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class NoSuchUpload
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::NoSuchUpload, context: context)
        type = Types::NoSuchUpload.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class NoncurrentVersionExpiration
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::NoncurrentVersionExpiration, context: context)
        type = Types::NoncurrentVersionExpiration.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.noncurrent_days = params[:noncurrent_days] unless params[:noncurrent_days].nil?
        type.newer_noncurrent_versions = params[:newer_noncurrent_versions] unless params[:newer_noncurrent_versions].nil?
        type
      end
    end

    class NoncurrentVersionTransition
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::NoncurrentVersionTransition, context: context)
        type = Types::NoncurrentVersionTransition.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.noncurrent_days = params[:noncurrent_days] unless params[:noncurrent_days].nil?
        type.storage_class = params[:storage_class] unless params[:storage_class].nil?
        type.newer_noncurrent_versions = params[:newer_noncurrent_versions] unless params[:newer_noncurrent_versions].nil?
        type
      end
    end

    class NoncurrentVersionTransitionList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NoncurrentVersionTransition.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class NotFound
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::NotFound, context: context)
        type = Types::NotFound.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class NotificationConfiguration
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::NotificationConfiguration, context: context)
        type = Types::NotificationConfiguration.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.topic_configurations = TopicConfigurationList.build(params[:topic_configurations], context: "#{context}[:topic_configurations]") unless params[:topic_configurations].nil?
        type.queue_configurations = QueueConfigurationList.build(params[:queue_configurations], context: "#{context}[:queue_configurations]") unless params[:queue_configurations].nil?
        type.lambda_function_configurations = LambdaFunctionConfigurationList.build(params[:lambda_function_configurations], context: "#{context}[:lambda_function_configurations]") unless params[:lambda_function_configurations].nil?
        type.event_bridge_configuration = EventBridgeConfiguration.build(params[:event_bridge_configuration], context: "#{context}[:event_bridge_configuration]") unless params[:event_bridge_configuration].nil?
        type
      end
    end

    class NotificationConfigurationFilter
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::NotificationConfigurationFilter, context: context)
        type = Types::NotificationConfigurationFilter.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key = S3KeyFilter.build(params[:key], context: "#{context}[:key]") unless params[:key].nil?
        type
      end
    end

    class Object
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Object, context: context)
        type = Types::Object.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key = params[:key] unless params[:key].nil?
        type.last_modified = params[:last_modified] unless params[:last_modified].nil?
        type.e_tag = params[:e_tag] unless params[:e_tag].nil?
        type.checksum_algorithm = ChecksumAlgorithmList.build(params[:checksum_algorithm], context: "#{context}[:checksum_algorithm]") unless params[:checksum_algorithm].nil?
        type.size = params[:size] unless params[:size].nil?
        type.storage_class = params[:storage_class] unless params[:storage_class].nil?
        type.owner = Owner.build(params[:owner], context: "#{context}[:owner]") unless params[:owner].nil?
        type.restore_status = RestoreStatus.build(params[:restore_status], context: "#{context}[:restore_status]") unless params[:restore_status].nil?
        type
      end
    end

    class ObjectAlreadyInActiveTierError
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ObjectAlreadyInActiveTierError, context: context)
        type = Types::ObjectAlreadyInActiveTierError.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class ObjectAttributesList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class ObjectIdentifier
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ObjectIdentifier, context: context)
        type = Types::ObjectIdentifier.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key = params[:key] unless params[:key].nil?
        type.version_id = params[:version_id] unless params[:version_id].nil?
        type
      end
    end

    class ObjectIdentifierList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ObjectIdentifier.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class ObjectList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Object.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class ObjectLockConfiguration
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ObjectLockConfiguration, context: context)
        type = Types::ObjectLockConfiguration.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.object_lock_enabled = params[:object_lock_enabled] unless params[:object_lock_enabled].nil?
        type.rule = ObjectLockRule.build(params[:rule], context: "#{context}[:rule]") unless params[:rule].nil?
        type
      end
    end

    class ObjectLockLegalHold
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ObjectLockLegalHold, context: context)
        type = Types::ObjectLockLegalHold.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.status = params[:status] unless params[:status].nil?
        type
      end
    end

    class ObjectLockRetention
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ObjectLockRetention, context: context)
        type = Types::ObjectLockRetention.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.mode = params[:mode] unless params[:mode].nil?
        type.retain_until_date = params[:retain_until_date] unless params[:retain_until_date].nil?
        type
      end
    end

    class ObjectLockRule
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ObjectLockRule, context: context)
        type = Types::ObjectLockRule.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.default_retention = DefaultRetention.build(params[:default_retention], context: "#{context}[:default_retention]") unless params[:default_retention].nil?
        type
      end
    end

    class ObjectNotInActiveTierError
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ObjectNotInActiveTierError, context: context)
        type = Types::ObjectNotInActiveTierError.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class ObjectPart
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ObjectPart, context: context)
        type = Types::ObjectPart.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.part_number = params[:part_number] unless params[:part_number].nil?
        type.size = params[:size] unless params[:size].nil?
        type.checksum_crc32 = params[:checksum_crc32] unless params[:checksum_crc32].nil?
        type.checksum_crc32_c = params[:checksum_crc32_c] unless params[:checksum_crc32_c].nil?
        type.checksum_sha1 = params[:checksum_sha1] unless params[:checksum_sha1].nil?
        type.checksum_sha256 = params[:checksum_sha256] unless params[:checksum_sha256].nil?
        type
      end
    end

    class ObjectVersion
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ObjectVersion, context: context)
        type = Types::ObjectVersion.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.e_tag = params[:e_tag] unless params[:e_tag].nil?
        type.checksum_algorithm = ChecksumAlgorithmList.build(params[:checksum_algorithm], context: "#{context}[:checksum_algorithm]") unless params[:checksum_algorithm].nil?
        type.size = params[:size] unless params[:size].nil?
        type.storage_class = params[:storage_class] unless params[:storage_class].nil?
        type.key = params[:key] unless params[:key].nil?
        type.version_id = params[:version_id] unless params[:version_id].nil?
        type.is_latest = params[:is_latest] unless params[:is_latest].nil?
        type.last_modified = params[:last_modified] unless params[:last_modified].nil?
        type.owner = Owner.build(params[:owner], context: "#{context}[:owner]") unless params[:owner].nil?
        type.restore_status = RestoreStatus.build(params[:restore_status], context: "#{context}[:restore_status]") unless params[:restore_status].nil?
        type
      end
    end

    class ObjectVersionList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ObjectVersion.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class OptionalObjectAttributesList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class OutputLocation
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::OutputLocation, context: context)
        type = Types::OutputLocation.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.s3 = S3Location.build(params[:s3], context: "#{context}[:s3]") unless params[:s3].nil?
        type
      end
    end

    class OutputSerialization
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::OutputSerialization, context: context)
        type = Types::OutputSerialization.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.csv = CSVOutput.build(params[:csv], context: "#{context}[:csv]") unless params[:csv].nil?
        type.json = JSONOutput.build(params[:json], context: "#{context}[:json]") unless params[:json].nil?
        type
      end
    end

    class Owner
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Owner, context: context)
        type = Types::Owner.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.display_name = params[:display_name] unless params[:display_name].nil?
        type.id = params[:id] unless params[:id].nil?
        type
      end
    end

    class OwnershipControls
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::OwnershipControls, context: context)
        type = Types::OwnershipControls.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.rules = OwnershipControlsRules.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type
      end
    end

    class OwnershipControlsRule
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::OwnershipControlsRule, context: context)
        type = Types::OwnershipControlsRule.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.object_ownership = params[:object_ownership] unless params[:object_ownership].nil?
        type
      end
    end

    class OwnershipControlsRules
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OwnershipControlsRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class ParquetInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ParquetInput, context: context)
        type = Types::ParquetInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class Part
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Part, context: context)
        type = Types::Part.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.part_number = params[:part_number] unless params[:part_number].nil?
        type.last_modified = params[:last_modified] unless params[:last_modified].nil?
        type.e_tag = params[:e_tag] unless params[:e_tag].nil?
        type.size = params[:size] unless params[:size].nil?
        type.checksum_crc32 = params[:checksum_crc32] unless params[:checksum_crc32].nil?
        type.checksum_crc32_c = params[:checksum_crc32_c] unless params[:checksum_crc32_c].nil?
        type.checksum_sha1 = params[:checksum_sha1] unless params[:checksum_sha1].nil?
        type.checksum_sha256 = params[:checksum_sha256] unless params[:checksum_sha256].nil?
        type
      end
    end

    class PartitionedPrefix
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PartitionedPrefix, context: context)
        type = Types::PartitionedPrefix.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.partition_date_source = params[:partition_date_source] unless params[:partition_date_source].nil?
        type
      end
    end

    class Parts
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Part.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class PartsList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ObjectPart.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class PolicyStatus
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PolicyStatus, context: context)
        type = Types::PolicyStatus.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.is_public = params[:is_public] unless params[:is_public].nil?
        type
      end
    end

    class Progress
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Progress, context: context)
        type = Types::Progress.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bytes_scanned = params[:bytes_scanned] unless params[:bytes_scanned].nil?
        type.bytes_processed = params[:bytes_processed] unless params[:bytes_processed].nil?
        type.bytes_returned = params[:bytes_returned] unless params[:bytes_returned].nil?
        type
      end
    end

    class ProgressEvent
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ProgressEvent, context: context)
        type = Types::ProgressEvent.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.details = Progress.build(params[:details], context: "#{context}[:details]") unless params[:details].nil?
        type
      end
    end

    class PublicAccessBlockConfiguration
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PublicAccessBlockConfiguration, context: context)
        type = Types::PublicAccessBlockConfiguration.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.block_public_acls = params[:block_public_acls] unless params[:block_public_acls].nil?
        type.ignore_public_acls = params[:ignore_public_acls] unless params[:ignore_public_acls].nil?
        type.block_public_policy = params[:block_public_policy] unless params[:block_public_policy].nil?
        type.restrict_public_buckets = params[:restrict_public_buckets] unless params[:restrict_public_buckets].nil?
        type
      end
    end

    class PutBucketAccelerateConfigurationInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketAccelerateConfigurationInput, context: context)
        type = Types::PutBucketAccelerateConfigurationInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.accelerate_configuration = AccelerateConfiguration.build(params[:accelerate_configuration], context: "#{context}[:accelerate_configuration]") unless params[:accelerate_configuration].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type.checksum_algorithm = params[:checksum_algorithm] unless params[:checksum_algorithm].nil?
        type
      end
    end

    class PutBucketAccelerateConfigurationOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketAccelerateConfigurationOutput, context: context)
        type = Types::PutBucketAccelerateConfigurationOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class PutBucketAclInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketAclInput, context: context)
        type = Types::PutBucketAclInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.acl = params[:acl] unless params[:acl].nil?
        type.access_control_policy = AccessControlPolicy.build(params[:access_control_policy], context: "#{context}[:access_control_policy]") unless params[:access_control_policy].nil?
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.content_md5 = params[:content_md5] unless params[:content_md5].nil?
        type.checksum_algorithm = params[:checksum_algorithm] unless params[:checksum_algorithm].nil?
        type.grant_full_control = params[:grant_full_control] unless params[:grant_full_control].nil?
        type.grant_read = params[:grant_read] unless params[:grant_read].nil?
        type.grant_read_acp = params[:grant_read_acp] unless params[:grant_read_acp].nil?
        type.grant_write = params[:grant_write] unless params[:grant_write].nil?
        type.grant_write_acp = params[:grant_write_acp] unless params[:grant_write_acp].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class PutBucketAclOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketAclOutput, context: context)
        type = Types::PutBucketAclOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class PutBucketAnalyticsConfigurationInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketAnalyticsConfigurationInput, context: context)
        type = Types::PutBucketAnalyticsConfigurationInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.id = params[:id] unless params[:id].nil?
        type.analytics_configuration = AnalyticsConfiguration.build(params[:analytics_configuration], context: "#{context}[:analytics_configuration]") unless params[:analytics_configuration].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class PutBucketAnalyticsConfigurationOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketAnalyticsConfigurationOutput, context: context)
        type = Types::PutBucketAnalyticsConfigurationOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class PutBucketCorsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketCorsInput, context: context)
        type = Types::PutBucketCorsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.cors_configuration = CORSConfiguration.build(params[:cors_configuration], context: "#{context}[:cors_configuration]") unless params[:cors_configuration].nil?
        type.content_md5 = params[:content_md5] unless params[:content_md5].nil?
        type.checksum_algorithm = params[:checksum_algorithm] unless params[:checksum_algorithm].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class PutBucketCorsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketCorsOutput, context: context)
        type = Types::PutBucketCorsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class PutBucketEncryptionInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketEncryptionInput, context: context)
        type = Types::PutBucketEncryptionInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.content_md5 = params[:content_md5] unless params[:content_md5].nil?
        type.checksum_algorithm = params[:checksum_algorithm] unless params[:checksum_algorithm].nil?
        type.server_side_encryption_configuration = ServerSideEncryptionConfiguration.build(params[:server_side_encryption_configuration], context: "#{context}[:server_side_encryption_configuration]") unless params[:server_side_encryption_configuration].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class PutBucketEncryptionOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketEncryptionOutput, context: context)
        type = Types::PutBucketEncryptionOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class PutBucketIntelligentTieringConfigurationInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketIntelligentTieringConfigurationInput, context: context)
        type = Types::PutBucketIntelligentTieringConfigurationInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.id = params[:id] unless params[:id].nil?
        type.intelligent_tiering_configuration = IntelligentTieringConfiguration.build(params[:intelligent_tiering_configuration], context: "#{context}[:intelligent_tiering_configuration]") unless params[:intelligent_tiering_configuration].nil?
        type
      end
    end

    class PutBucketIntelligentTieringConfigurationOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketIntelligentTieringConfigurationOutput, context: context)
        type = Types::PutBucketIntelligentTieringConfigurationOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class PutBucketInventoryConfigurationInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketInventoryConfigurationInput, context: context)
        type = Types::PutBucketInventoryConfigurationInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.id = params[:id] unless params[:id].nil?
        type.inventory_configuration = InventoryConfiguration.build(params[:inventory_configuration], context: "#{context}[:inventory_configuration]") unless params[:inventory_configuration].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class PutBucketInventoryConfigurationOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketInventoryConfigurationOutput, context: context)
        type = Types::PutBucketInventoryConfigurationOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class PutBucketLifecycleConfigurationInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketLifecycleConfigurationInput, context: context)
        type = Types::PutBucketLifecycleConfigurationInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.checksum_algorithm = params[:checksum_algorithm] unless params[:checksum_algorithm].nil?
        type.lifecycle_configuration = BucketLifecycleConfiguration.build(params[:lifecycle_configuration], context: "#{context}[:lifecycle_configuration]") unless params[:lifecycle_configuration].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class PutBucketLifecycleConfigurationOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketLifecycleConfigurationOutput, context: context)
        type = Types::PutBucketLifecycleConfigurationOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class PutBucketLoggingInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketLoggingInput, context: context)
        type = Types::PutBucketLoggingInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.bucket_logging_status = BucketLoggingStatus.build(params[:bucket_logging_status], context: "#{context}[:bucket_logging_status]") unless params[:bucket_logging_status].nil?
        type.content_md5 = params[:content_md5] unless params[:content_md5].nil?
        type.checksum_algorithm = params[:checksum_algorithm] unless params[:checksum_algorithm].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class PutBucketLoggingOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketLoggingOutput, context: context)
        type = Types::PutBucketLoggingOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class PutBucketMetricsConfigurationInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketMetricsConfigurationInput, context: context)
        type = Types::PutBucketMetricsConfigurationInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.id = params[:id] unless params[:id].nil?
        type.metrics_configuration = MetricsConfiguration.build(params[:metrics_configuration], context: "#{context}[:metrics_configuration]") unless params[:metrics_configuration].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class PutBucketMetricsConfigurationOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketMetricsConfigurationOutput, context: context)
        type = Types::PutBucketMetricsConfigurationOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class PutBucketNotificationConfigurationInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketNotificationConfigurationInput, context: context)
        type = Types::PutBucketNotificationConfigurationInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.notification_configuration = NotificationConfiguration.build(params[:notification_configuration], context: "#{context}[:notification_configuration]") unless params[:notification_configuration].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type.skip_destination_validation = params[:skip_destination_validation] unless params[:skip_destination_validation].nil?
        type
      end
    end

    class PutBucketNotificationConfigurationOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketNotificationConfigurationOutput, context: context)
        type = Types::PutBucketNotificationConfigurationOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class PutBucketOwnershipControlsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketOwnershipControlsInput, context: context)
        type = Types::PutBucketOwnershipControlsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.content_md5 = params[:content_md5] unless params[:content_md5].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type.ownership_controls = OwnershipControls.build(params[:ownership_controls], context: "#{context}[:ownership_controls]") unless params[:ownership_controls].nil?
        type
      end
    end

    class PutBucketOwnershipControlsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketOwnershipControlsOutput, context: context)
        type = Types::PutBucketOwnershipControlsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class PutBucketPolicyInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketPolicyInput, context: context)
        type = Types::PutBucketPolicyInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.content_md5 = params[:content_md5] unless params[:content_md5].nil?
        type.checksum_algorithm = params[:checksum_algorithm] unless params[:checksum_algorithm].nil?
        type.confirm_remove_self_bucket_access = params[:confirm_remove_self_bucket_access] unless params[:confirm_remove_self_bucket_access].nil?
        type.policy = params[:policy] unless params[:policy].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class PutBucketPolicyOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketPolicyOutput, context: context)
        type = Types::PutBucketPolicyOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class PutBucketReplicationInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketReplicationInput, context: context)
        type = Types::PutBucketReplicationInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.content_md5 = params[:content_md5] unless params[:content_md5].nil?
        type.checksum_algorithm = params[:checksum_algorithm] unless params[:checksum_algorithm].nil?
        type.replication_configuration = ReplicationConfiguration.build(params[:replication_configuration], context: "#{context}[:replication_configuration]") unless params[:replication_configuration].nil?
        type.token = params[:token] unless params[:token].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class PutBucketReplicationOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketReplicationOutput, context: context)
        type = Types::PutBucketReplicationOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class PutBucketRequestPaymentInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketRequestPaymentInput, context: context)
        type = Types::PutBucketRequestPaymentInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.content_md5 = params[:content_md5] unless params[:content_md5].nil?
        type.checksum_algorithm = params[:checksum_algorithm] unless params[:checksum_algorithm].nil?
        type.request_payment_configuration = RequestPaymentConfiguration.build(params[:request_payment_configuration], context: "#{context}[:request_payment_configuration]") unless params[:request_payment_configuration].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class PutBucketRequestPaymentOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketRequestPaymentOutput, context: context)
        type = Types::PutBucketRequestPaymentOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class PutBucketTaggingInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketTaggingInput, context: context)
        type = Types::PutBucketTaggingInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.content_md5 = params[:content_md5] unless params[:content_md5].nil?
        type.checksum_algorithm = params[:checksum_algorithm] unless params[:checksum_algorithm].nil?
        type.tagging = Tagging.build(params[:tagging], context: "#{context}[:tagging]") unless params[:tagging].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class PutBucketTaggingOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketTaggingOutput, context: context)
        type = Types::PutBucketTaggingOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class PutBucketVersioningInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketVersioningInput, context: context)
        type = Types::PutBucketVersioningInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.content_md5 = params[:content_md5] unless params[:content_md5].nil?
        type.checksum_algorithm = params[:checksum_algorithm] unless params[:checksum_algorithm].nil?
        type.mfa = params[:mfa] unless params[:mfa].nil?
        type.versioning_configuration = VersioningConfiguration.build(params[:versioning_configuration], context: "#{context}[:versioning_configuration]") unless params[:versioning_configuration].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class PutBucketVersioningOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketVersioningOutput, context: context)
        type = Types::PutBucketVersioningOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class PutBucketWebsiteInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketWebsiteInput, context: context)
        type = Types::PutBucketWebsiteInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.content_md5 = params[:content_md5] unless params[:content_md5].nil?
        type.checksum_algorithm = params[:checksum_algorithm] unless params[:checksum_algorithm].nil?
        type.website_configuration = WebsiteConfiguration.build(params[:website_configuration], context: "#{context}[:website_configuration]") unless params[:website_configuration].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class PutBucketWebsiteOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketWebsiteOutput, context: context)
        type = Types::PutBucketWebsiteOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class PutObjectAclInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutObjectAclInput, context: context)
        type = Types::PutObjectAclInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.acl = params[:acl] unless params[:acl].nil?
        type.access_control_policy = AccessControlPolicy.build(params[:access_control_policy], context: "#{context}[:access_control_policy]") unless params[:access_control_policy].nil?
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.content_md5 = params[:content_md5] unless params[:content_md5].nil?
        type.checksum_algorithm = params[:checksum_algorithm] unless params[:checksum_algorithm].nil?
        type.grant_full_control = params[:grant_full_control] unless params[:grant_full_control].nil?
        type.grant_read = params[:grant_read] unless params[:grant_read].nil?
        type.grant_read_acp = params[:grant_read_acp] unless params[:grant_read_acp].nil?
        type.grant_write = params[:grant_write] unless params[:grant_write].nil?
        type.grant_write_acp = params[:grant_write_acp] unless params[:grant_write_acp].nil?
        type.key = params[:key] unless params[:key].nil?
        type.request_payer = params[:request_payer] unless params[:request_payer].nil?
        type.version_id = params[:version_id] unless params[:version_id].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class PutObjectAclOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutObjectAclOutput, context: context)
        type = Types::PutObjectAclOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.request_charged = params[:request_charged] unless params[:request_charged].nil?
        type
      end
    end

    class PutObjectInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutObjectInput, context: context)
        type = Types::PutObjectInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.acl = params[:acl] unless params[:acl].nil?
        io = params[:body] || StringIO.new
        unless io.respond_to?(:read) || io.respond_to?(:readpartial)
          io = StringIO.new(io)
        end
        type.body = io
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.cache_control = params[:cache_control] unless params[:cache_control].nil?
        type.content_disposition = params[:content_disposition] unless params[:content_disposition].nil?
        type.content_encoding = params[:content_encoding] unless params[:content_encoding].nil?
        type.content_language = params[:content_language] unless params[:content_language].nil?
        type.content_length = params[:content_length] unless params[:content_length].nil?
        type.content_md5 = params[:content_md5] unless params[:content_md5].nil?
        type.content_type = params[:content_type] unless params[:content_type].nil?
        type.checksum_algorithm = params[:checksum_algorithm] unless params[:checksum_algorithm].nil?
        type.checksum_crc32 = params[:checksum_crc32] unless params[:checksum_crc32].nil?
        type.checksum_crc32_c = params[:checksum_crc32_c] unless params[:checksum_crc32_c].nil?
        type.checksum_sha1 = params[:checksum_sha1] unless params[:checksum_sha1].nil?
        type.checksum_sha256 = params[:checksum_sha256] unless params[:checksum_sha256].nil?
        type.expires = params[:expires] unless params[:expires].nil?
        type.grant_full_control = params[:grant_full_control] unless params[:grant_full_control].nil?
        type.grant_read = params[:grant_read] unless params[:grant_read].nil?
        type.grant_read_acp = params[:grant_read_acp] unless params[:grant_read_acp].nil?
        type.grant_write_acp = params[:grant_write_acp] unless params[:grant_write_acp].nil?
        type.key = params[:key] unless params[:key].nil?
        type.metadata = Metadata.build(params[:metadata], context: "#{context}[:metadata]") unless params[:metadata].nil?
        type.server_side_encryption = params[:server_side_encryption] unless params[:server_side_encryption].nil?
        type.storage_class = params[:storage_class] unless params[:storage_class].nil?
        type.website_redirect_location = params[:website_redirect_location] unless params[:website_redirect_location].nil?
        type.sse_customer_algorithm = params[:sse_customer_algorithm] unless params[:sse_customer_algorithm].nil?
        type.sse_customer_key = params[:sse_customer_key] unless params[:sse_customer_key].nil?
        type.sse_customer_key_md5 = params[:sse_customer_key_md5] unless params[:sse_customer_key_md5].nil?
        type.ssekms_key_id = params[:ssekms_key_id] unless params[:ssekms_key_id].nil?
        type.ssekms_encryption_context = params[:ssekms_encryption_context] unless params[:ssekms_encryption_context].nil?
        type.bucket_key_enabled = params[:bucket_key_enabled] unless params[:bucket_key_enabled].nil?
        type.request_payer = params[:request_payer] unless params[:request_payer].nil?
        type.tagging = params[:tagging] unless params[:tagging].nil?
        type.object_lock_mode = params[:object_lock_mode] unless params[:object_lock_mode].nil?
        type.object_lock_retain_until_date = params[:object_lock_retain_until_date] unless params[:object_lock_retain_until_date].nil?
        type.object_lock_legal_hold_status = params[:object_lock_legal_hold_status] unless params[:object_lock_legal_hold_status].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class PutObjectLegalHoldInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutObjectLegalHoldInput, context: context)
        type = Types::PutObjectLegalHoldInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.key = params[:key] unless params[:key].nil?
        type.legal_hold = ObjectLockLegalHold.build(params[:legal_hold], context: "#{context}[:legal_hold]") unless params[:legal_hold].nil?
        type.request_payer = params[:request_payer] unless params[:request_payer].nil?
        type.version_id = params[:version_id] unless params[:version_id].nil?
        type.content_md5 = params[:content_md5] unless params[:content_md5].nil?
        type.checksum_algorithm = params[:checksum_algorithm] unless params[:checksum_algorithm].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class PutObjectLegalHoldOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutObjectLegalHoldOutput, context: context)
        type = Types::PutObjectLegalHoldOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.request_charged = params[:request_charged] unless params[:request_charged].nil?
        type
      end
    end

    class PutObjectLockConfigurationInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutObjectLockConfigurationInput, context: context)
        type = Types::PutObjectLockConfigurationInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.object_lock_configuration = ObjectLockConfiguration.build(params[:object_lock_configuration], context: "#{context}[:object_lock_configuration]") unless params[:object_lock_configuration].nil?
        type.request_payer = params[:request_payer] unless params[:request_payer].nil?
        type.token = params[:token] unless params[:token].nil?
        type.content_md5 = params[:content_md5] unless params[:content_md5].nil?
        type.checksum_algorithm = params[:checksum_algorithm] unless params[:checksum_algorithm].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class PutObjectLockConfigurationOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutObjectLockConfigurationOutput, context: context)
        type = Types::PutObjectLockConfigurationOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.request_charged = params[:request_charged] unless params[:request_charged].nil?
        type
      end
    end

    class PutObjectOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutObjectOutput, context: context)
        type = Types::PutObjectOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.expiration = params[:expiration] unless params[:expiration].nil?
        type.e_tag = params[:e_tag] unless params[:e_tag].nil?
        type.checksum_crc32 = params[:checksum_crc32] unless params[:checksum_crc32].nil?
        type.checksum_crc32_c = params[:checksum_crc32_c] unless params[:checksum_crc32_c].nil?
        type.checksum_sha1 = params[:checksum_sha1] unless params[:checksum_sha1].nil?
        type.checksum_sha256 = params[:checksum_sha256] unless params[:checksum_sha256].nil?
        type.server_side_encryption = params[:server_side_encryption] unless params[:server_side_encryption].nil?
        type.version_id = params[:version_id] unless params[:version_id].nil?
        type.sse_customer_algorithm = params[:sse_customer_algorithm] unless params[:sse_customer_algorithm].nil?
        type.sse_customer_key_md5 = params[:sse_customer_key_md5] unless params[:sse_customer_key_md5].nil?
        type.ssekms_key_id = params[:ssekms_key_id] unless params[:ssekms_key_id].nil?
        type.ssekms_encryption_context = params[:ssekms_encryption_context] unless params[:ssekms_encryption_context].nil?
        type.bucket_key_enabled = params[:bucket_key_enabled] unless params[:bucket_key_enabled].nil?
        type.request_charged = params[:request_charged] unless params[:request_charged].nil?
        type
      end
    end

    class PutObjectRetentionInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutObjectRetentionInput, context: context)
        type = Types::PutObjectRetentionInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.key = params[:key] unless params[:key].nil?
        type.retention = ObjectLockRetention.build(params[:retention], context: "#{context}[:retention]") unless params[:retention].nil?
        type.request_payer = params[:request_payer] unless params[:request_payer].nil?
        type.version_id = params[:version_id] unless params[:version_id].nil?
        type.bypass_governance_retention = params[:bypass_governance_retention] unless params[:bypass_governance_retention].nil?
        type.content_md5 = params[:content_md5] unless params[:content_md5].nil?
        type.checksum_algorithm = params[:checksum_algorithm] unless params[:checksum_algorithm].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class PutObjectRetentionOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutObjectRetentionOutput, context: context)
        type = Types::PutObjectRetentionOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.request_charged = params[:request_charged] unless params[:request_charged].nil?
        type
      end
    end

    class PutObjectTaggingInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutObjectTaggingInput, context: context)
        type = Types::PutObjectTaggingInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.key = params[:key] unless params[:key].nil?
        type.version_id = params[:version_id] unless params[:version_id].nil?
        type.content_md5 = params[:content_md5] unless params[:content_md5].nil?
        type.checksum_algorithm = params[:checksum_algorithm] unless params[:checksum_algorithm].nil?
        type.tagging = Tagging.build(params[:tagging], context: "#{context}[:tagging]") unless params[:tagging].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type.request_payer = params[:request_payer] unless params[:request_payer].nil?
        type
      end
    end

    class PutObjectTaggingOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutObjectTaggingOutput, context: context)
        type = Types::PutObjectTaggingOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.version_id = params[:version_id] unless params[:version_id].nil?
        type
      end
    end

    class PutPublicAccessBlockInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutPublicAccessBlockInput, context: context)
        type = Types::PutPublicAccessBlockInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.content_md5 = params[:content_md5] unless params[:content_md5].nil?
        type.checksum_algorithm = params[:checksum_algorithm] unless params[:checksum_algorithm].nil?
        type.public_access_block_configuration = PublicAccessBlockConfiguration.build(params[:public_access_block_configuration], context: "#{context}[:public_access_block_configuration]") unless params[:public_access_block_configuration].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class PutPublicAccessBlockOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutPublicAccessBlockOutput, context: context)
        type = Types::PutPublicAccessBlockOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class QueueConfiguration
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::QueueConfiguration, context: context)
        type = Types::QueueConfiguration.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.id = params[:id] unless params[:id].nil?
        type.queue_arn = params[:queue_arn] unless params[:queue_arn].nil?
        type.events = EventList.build(params[:events], context: "#{context}[:events]") unless params[:events].nil?
        type.filter = NotificationConfigurationFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type
      end
    end

    class QueueConfigurationList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << QueueConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class RecordsEvent
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::RecordsEvent, context: context)
        type = Types::RecordsEvent.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.payload = params[:payload] unless params[:payload].nil?
        type
      end
    end

    class Redirect
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Redirect, context: context)
        type = Types::Redirect.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.host_name = params[:host_name] unless params[:host_name].nil?
        type.http_redirect_code = params[:http_redirect_code] unless params[:http_redirect_code].nil?
        type.protocol = params[:protocol] unless params[:protocol].nil?
        type.replace_key_prefix_with = params[:replace_key_prefix_with] unless params[:replace_key_prefix_with].nil?
        type.replace_key_with = params[:replace_key_with] unless params[:replace_key_with].nil?
        type
      end
    end

    class RedirectAllRequestsTo
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::RedirectAllRequestsTo, context: context)
        type = Types::RedirectAllRequestsTo.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.host_name = params[:host_name] unless params[:host_name].nil?
        type.protocol = params[:protocol] unless params[:protocol].nil?
        type
      end
    end

    class ReplicaModifications
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ReplicaModifications, context: context)
        type = Types::ReplicaModifications.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.status = params[:status] unless params[:status].nil?
        type
      end
    end

    class ReplicationConfiguration
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ReplicationConfiguration, context: context)
        type = Types::ReplicationConfiguration.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.role = params[:role] unless params[:role].nil?
        type.rules = ReplicationRules.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type
      end
    end

    class ReplicationRule
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ReplicationRule, context: context)
        type = Types::ReplicationRule.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.id = params[:id] unless params[:id].nil?
        type.priority = params[:priority] unless params[:priority].nil?
        type.prefix = params[:prefix] unless params[:prefix].nil?
        type.filter = ReplicationRuleFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.status = params[:status] unless params[:status].nil?
        type.source_selection_criteria = SourceSelectionCriteria.build(params[:source_selection_criteria], context: "#{context}[:source_selection_criteria]") unless params[:source_selection_criteria].nil?
        type.existing_object_replication = ExistingObjectReplication.build(params[:existing_object_replication], context: "#{context}[:existing_object_replication]") unless params[:existing_object_replication].nil?
        type.destination = Destination.build(params[:destination], context: "#{context}[:destination]") unless params[:destination].nil?
        type.delete_marker_replication = DeleteMarkerReplication.build(params[:delete_marker_replication], context: "#{context}[:delete_marker_replication]") unless params[:delete_marker_replication].nil?
        type
      end
    end

    class ReplicationRuleAndOperator
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ReplicationRuleAndOperator, context: context)
        type = Types::ReplicationRuleAndOperator.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.prefix = params[:prefix] unless params[:prefix].nil?
        type.tags = TagSet.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    class ReplicationRuleFilter
      def self.build(params, context:)
        return params if params.is_a?(Types::ReplicationRuleFilter)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ReplicationRuleFilter, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :prefix
          Types::ReplicationRuleFilter::Prefix.new(
            params[:prefix]
          )
        when :tag
          Types::ReplicationRuleFilter::Tag.new(
            (Tag.build(params[:tag], context: "#{context}[:tag]") unless params[:tag].nil?)
          )
        when :and
          Types::ReplicationRuleFilter::And.new(
            (ReplicationRuleAndOperator.build(params[:and], context: "#{context}[:and]") unless params[:and].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :prefix, :tag, :and set"
        end
      end
    end

    class ReplicationRules
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReplicationRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class ReplicationTime
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ReplicationTime, context: context)
        type = Types::ReplicationTime.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.status = params[:status] unless params[:status].nil?
        type.time = ReplicationTimeValue.build(params[:time], context: "#{context}[:time]") unless params[:time].nil?
        type
      end
    end

    class ReplicationTimeValue
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ReplicationTimeValue, context: context)
        type = Types::ReplicationTimeValue.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.minutes = params[:minutes] unless params[:minutes].nil?
        type
      end
    end

    class RequestPaymentConfiguration
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::RequestPaymentConfiguration, context: context)
        type = Types::RequestPaymentConfiguration.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.payer = params[:payer] unless params[:payer].nil?
        type
      end
    end

    class RequestProgress
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::RequestProgress, context: context)
        type = Types::RequestProgress.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.enabled = params[:enabled] unless params[:enabled].nil?
        type
      end
    end

    class RestoreObjectInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::RestoreObjectInput, context: context)
        type = Types::RestoreObjectInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.key = params[:key] unless params[:key].nil?
        type.version_id = params[:version_id] unless params[:version_id].nil?
        type.restore_request = RestoreRequest.build(params[:restore_request], context: "#{context}[:restore_request]") unless params[:restore_request].nil?
        type.request_payer = params[:request_payer] unless params[:request_payer].nil?
        type.checksum_algorithm = params[:checksum_algorithm] unless params[:checksum_algorithm].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class RestoreObjectOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::RestoreObjectOutput, context: context)
        type = Types::RestoreObjectOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.request_charged = params[:request_charged] unless params[:request_charged].nil?
        type.restore_output_path = params[:restore_output_path] unless params[:restore_output_path].nil?
        type
      end
    end

    class RestoreRequest
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::RestoreRequest, context: context)
        type = Types::RestoreRequest.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.days = params[:days] unless params[:days].nil?
        type.glacier_job_parameters = GlacierJobParameters.build(params[:glacier_job_parameters], context: "#{context}[:glacier_job_parameters]") unless params[:glacier_job_parameters].nil?
        type.type = params[:type] unless params[:type].nil?
        type.tier = params[:tier] unless params[:tier].nil?
        type.description = params[:description] unless params[:description].nil?
        type.select_parameters = SelectParameters.build(params[:select_parameters], context: "#{context}[:select_parameters]") unless params[:select_parameters].nil?
        type.output_location = OutputLocation.build(params[:output_location], context: "#{context}[:output_location]") unless params[:output_location].nil?
        type
      end
    end

    class RestoreStatus
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::RestoreStatus, context: context)
        type = Types::RestoreStatus.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.is_restore_in_progress = params[:is_restore_in_progress] unless params[:is_restore_in_progress].nil?
        type.restore_expiry_date = params[:restore_expiry_date] unless params[:restore_expiry_date].nil?
        type
      end
    end

    class RoutingRule
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::RoutingRule, context: context)
        type = Types::RoutingRule.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.condition = Condition.build(params[:condition], context: "#{context}[:condition]") unless params[:condition].nil?
        type.redirect = Redirect.build(params[:redirect], context: "#{context}[:redirect]") unless params[:redirect].nil?
        type
      end
    end

    class RoutingRules
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RoutingRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class S3KeyFilter
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::S3KeyFilter, context: context)
        type = Types::S3KeyFilter.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.filter_rules = FilterRuleList.build(params[:filter_rules], context: "#{context}[:filter_rules]") unless params[:filter_rules].nil?
        type
      end
    end

    class S3Location
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::S3Location, context: context)
        type = Types::S3Location.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket_name = params[:bucket_name] unless params[:bucket_name].nil?
        type.prefix = params[:prefix] unless params[:prefix].nil?
        type.encryption = Encryption.build(params[:encryption], context: "#{context}[:encryption]") unless params[:encryption].nil?
        type.canned_acl = params[:canned_acl] unless params[:canned_acl].nil?
        type.access_control_list = Grants.build(params[:access_control_list], context: "#{context}[:access_control_list]") unless params[:access_control_list].nil?
        type.tagging = Tagging.build(params[:tagging], context: "#{context}[:tagging]") unless params[:tagging].nil?
        type.user_metadata = UserMetadata.build(params[:user_metadata], context: "#{context}[:user_metadata]") unless params[:user_metadata].nil?
        type.storage_class = params[:storage_class] unless params[:storage_class].nil?
        type
      end
    end

    class SSEKMS
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::SSEKMS, context: context)
        type = Types::SSEKMS.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key_id = params[:key_id] unless params[:key_id].nil?
        type
      end
    end

    class SSES3
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::SSES3, context: context)
        type = Types::SSES3.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class ScanRange
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ScanRange, context: context)
        type = Types::ScanRange.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.start = params[:start] unless params[:start].nil?
        type.end = params[:end] unless params[:end].nil?
        type
      end
    end

    class SelectObjectContentEventStream
      def self.build(params, context:)
        return params if params.is_a?(Types::SelectObjectContentEventStream)
        Hearth::Validator.validate_types!(params, ::Hash, Types::SelectObjectContentEventStream, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :records
          Types::SelectObjectContentEventStream::Records.new(
            (RecordsEvent.build(params[:records], context: "#{context}[:records]") unless params[:records].nil?)
          )
        when :stats
          Types::SelectObjectContentEventStream::Stats.new(
            (StatsEvent.build(params[:stats], context: "#{context}[:stats]") unless params[:stats].nil?)
          )
        when :progress
          Types::SelectObjectContentEventStream::Progress.new(
            (ProgressEvent.build(params[:progress], context: "#{context}[:progress]") unless params[:progress].nil?)
          )
        when :cont
          Types::SelectObjectContentEventStream::Cont.new(
            (ContinuationEvent.build(params[:cont], context: "#{context}[:cont]") unless params[:cont].nil?)
          )
        when :end
          Types::SelectObjectContentEventStream::End.new(
            (EndEvent.build(params[:end], context: "#{context}[:end]") unless params[:end].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :records, :stats, :progress, :cont, :end set"
        end
      end
    end

    class SelectObjectContentInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::SelectObjectContentInput, context: context)
        type = Types::SelectObjectContentInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.key = params[:key] unless params[:key].nil?
        type.sse_customer_algorithm = params[:sse_customer_algorithm] unless params[:sse_customer_algorithm].nil?
        type.sse_customer_key = params[:sse_customer_key] unless params[:sse_customer_key].nil?
        type.sse_customer_key_md5 = params[:sse_customer_key_md5] unless params[:sse_customer_key_md5].nil?
        type.expression = params[:expression] unless params[:expression].nil?
        type.expression_type = params[:expression_type] unless params[:expression_type].nil?
        type.request_progress = RequestProgress.build(params[:request_progress], context: "#{context}[:request_progress]") unless params[:request_progress].nil?
        type.input_serialization = InputSerialization.build(params[:input_serialization], context: "#{context}[:input_serialization]") unless params[:input_serialization].nil?
        type.output_serialization = OutputSerialization.build(params[:output_serialization], context: "#{context}[:output_serialization]") unless params[:output_serialization].nil?
        type.scan_range = ScanRange.build(params[:scan_range], context: "#{context}[:scan_range]") unless params[:scan_range].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class SelectObjectContentOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::SelectObjectContentOutput, context: context)
        type = Types::SelectObjectContentOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.payload = SelectObjectContentEventStream.build(params[:payload], context: "#{context}[:payload]") unless params[:payload].nil?
        type
      end
    end

    class SelectParameters
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::SelectParameters, context: context)
        type = Types::SelectParameters.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.input_serialization = InputSerialization.build(params[:input_serialization], context: "#{context}[:input_serialization]") unless params[:input_serialization].nil?
        type.expression_type = params[:expression_type] unless params[:expression_type].nil?
        type.expression = params[:expression] unless params[:expression].nil?
        type.output_serialization = OutputSerialization.build(params[:output_serialization], context: "#{context}[:output_serialization]") unless params[:output_serialization].nil?
        type
      end
    end

    class ServerSideEncryptionByDefault
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ServerSideEncryptionByDefault, context: context)
        type = Types::ServerSideEncryptionByDefault.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.sse_algorithm = params[:sse_algorithm] unless params[:sse_algorithm].nil?
        type.kms_master_key_id = params[:kms_master_key_id] unless params[:kms_master_key_id].nil?
        type
      end
    end

    class ServerSideEncryptionConfiguration
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ServerSideEncryptionConfiguration, context: context)
        type = Types::ServerSideEncryptionConfiguration.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.rules = ServerSideEncryptionRules.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type
      end
    end

    class ServerSideEncryptionRule
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ServerSideEncryptionRule, context: context)
        type = Types::ServerSideEncryptionRule.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.apply_server_side_encryption_by_default = ServerSideEncryptionByDefault.build(params[:apply_server_side_encryption_by_default], context: "#{context}[:apply_server_side_encryption_by_default]") unless params[:apply_server_side_encryption_by_default].nil?
        type.bucket_key_enabled = params[:bucket_key_enabled] unless params[:bucket_key_enabled].nil?
        type
      end
    end

    class ServerSideEncryptionRules
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ServerSideEncryptionRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class SessionCredentials
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::SessionCredentials, context: context)
        type = Types::SessionCredentials.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.access_key_id = params[:access_key_id] unless params[:access_key_id].nil?
        type.secret_access_key = params[:secret_access_key] unless params[:secret_access_key].nil?
        type.session_token = params[:session_token] unless params[:session_token].nil?
        type.expiration = params[:expiration] unless params[:expiration].nil?
        type
      end
    end

    class SimplePrefix
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::SimplePrefix, context: context)
        type = Types::SimplePrefix.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class SourceSelectionCriteria
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::SourceSelectionCriteria, context: context)
        type = Types::SourceSelectionCriteria.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.sse_kms_encrypted_objects = SseKmsEncryptedObjects.build(params[:sse_kms_encrypted_objects], context: "#{context}[:sse_kms_encrypted_objects]") unless params[:sse_kms_encrypted_objects].nil?
        type.replica_modifications = ReplicaModifications.build(params[:replica_modifications], context: "#{context}[:replica_modifications]") unless params[:replica_modifications].nil?
        type
      end
    end

    class SseKmsEncryptedObjects
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::SseKmsEncryptedObjects, context: context)
        type = Types::SseKmsEncryptedObjects.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.status = params[:status] unless params[:status].nil?
        type
      end
    end

    class Stats
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Stats, context: context)
        type = Types::Stats.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bytes_scanned = params[:bytes_scanned] unless params[:bytes_scanned].nil?
        type.bytes_processed = params[:bytes_processed] unless params[:bytes_processed].nil?
        type.bytes_returned = params[:bytes_returned] unless params[:bytes_returned].nil?
        type
      end
    end

    class StatsEvent
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::StatsEvent, context: context)
        type = Types::StatsEvent.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.details = Stats.build(params[:details], context: "#{context}[:details]") unless params[:details].nil?
        type
      end
    end

    class StorageClassAnalysis
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::StorageClassAnalysis, context: context)
        type = Types::StorageClassAnalysis.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.data_export = StorageClassAnalysisDataExport.build(params[:data_export], context: "#{context}[:data_export]") unless params[:data_export].nil?
        type
      end
    end

    class StorageClassAnalysisDataExport
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::StorageClassAnalysisDataExport, context: context)
        type = Types::StorageClassAnalysisDataExport.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.output_schema_version = params[:output_schema_version] unless params[:output_schema_version].nil?
        type.destination = AnalyticsExportDestination.build(params[:destination], context: "#{context}[:destination]") unless params[:destination].nil?
        type
      end
    end

    class Tag
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key = params[:key] unless params[:key].nil?
        type.value = params[:value] unless params[:value].nil?
        type
      end
    end

    class TagSet
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class Tagging
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Tagging, context: context)
        type = Types::Tagging.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.tag_set = TagSet.build(params[:tag_set], context: "#{context}[:tag_set]") unless params[:tag_set].nil?
        type
      end
    end

    class TargetGrant
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::TargetGrant, context: context)
        type = Types::TargetGrant.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.grantee = Grantee.build(params[:grantee], context: "#{context}[:grantee]") unless params[:grantee].nil?
        type.permission = params[:permission] unless params[:permission].nil?
        type
      end
    end

    class TargetGrants
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TargetGrant.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class TargetObjectKeyFormat
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::TargetObjectKeyFormat, context: context)
        type = Types::TargetObjectKeyFormat.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.simple_prefix = SimplePrefix.build(params[:simple_prefix], context: "#{context}[:simple_prefix]") unless params[:simple_prefix].nil?
        type.partitioned_prefix = PartitionedPrefix.build(params[:partitioned_prefix], context: "#{context}[:partitioned_prefix]") unless params[:partitioned_prefix].nil?
        type
      end
    end

    class Tiering
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Tiering, context: context)
        type = Types::Tiering.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.days = params[:days] unless params[:days].nil?
        type.access_tier = params[:access_tier] unless params[:access_tier].nil?
        type
      end
    end

    class TieringList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tiering.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class TopicConfiguration
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::TopicConfiguration, context: context)
        type = Types::TopicConfiguration.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.id = params[:id] unless params[:id].nil?
        type.topic_arn = params[:topic_arn] unless params[:topic_arn].nil?
        type.events = EventList.build(params[:events], context: "#{context}[:events]") unless params[:events].nil?
        type.filter = NotificationConfigurationFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type
      end
    end

    class TopicConfigurationList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TopicConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class Transition
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Transition, context: context)
        type = Types::Transition.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.date = params[:date] unless params[:date].nil?
        type.days = params[:days] unless params[:days].nil?
        type.storage_class = params[:storage_class] unless params[:storage_class].nil?
        type
      end
    end

    class TransitionList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Transition.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class UploadPartCopyInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::UploadPartCopyInput, context: context)
        type = Types::UploadPartCopyInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.copy_source = params[:copy_source] unless params[:copy_source].nil?
        type.copy_source_if_match = params[:copy_source_if_match] unless params[:copy_source_if_match].nil?
        type.copy_source_if_modified_since = params[:copy_source_if_modified_since] unless params[:copy_source_if_modified_since].nil?
        type.copy_source_if_none_match = params[:copy_source_if_none_match] unless params[:copy_source_if_none_match].nil?
        type.copy_source_if_unmodified_since = params[:copy_source_if_unmodified_since] unless params[:copy_source_if_unmodified_since].nil?
        type.copy_source_range = params[:copy_source_range] unless params[:copy_source_range].nil?
        type.key = params[:key] unless params[:key].nil?
        type.part_number = params[:part_number] unless params[:part_number].nil?
        type.upload_id = params[:upload_id] unless params[:upload_id].nil?
        type.sse_customer_algorithm = params[:sse_customer_algorithm] unless params[:sse_customer_algorithm].nil?
        type.sse_customer_key = params[:sse_customer_key] unless params[:sse_customer_key].nil?
        type.sse_customer_key_md5 = params[:sse_customer_key_md5] unless params[:sse_customer_key_md5].nil?
        type.copy_source_sse_customer_algorithm = params[:copy_source_sse_customer_algorithm] unless params[:copy_source_sse_customer_algorithm].nil?
        type.copy_source_sse_customer_key = params[:copy_source_sse_customer_key] unless params[:copy_source_sse_customer_key].nil?
        type.copy_source_sse_customer_key_md5 = params[:copy_source_sse_customer_key_md5] unless params[:copy_source_sse_customer_key_md5].nil?
        type.request_payer = params[:request_payer] unless params[:request_payer].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type.expected_source_bucket_owner = params[:expected_source_bucket_owner] unless params[:expected_source_bucket_owner].nil?
        type
      end
    end

    class UploadPartCopyOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::UploadPartCopyOutput, context: context)
        type = Types::UploadPartCopyOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.copy_source_version_id = params[:copy_source_version_id] unless params[:copy_source_version_id].nil?
        type.copy_part_result = CopyPartResult.build(params[:copy_part_result], context: "#{context}[:copy_part_result]") unless params[:copy_part_result].nil?
        type.server_side_encryption = params[:server_side_encryption] unless params[:server_side_encryption].nil?
        type.sse_customer_algorithm = params[:sse_customer_algorithm] unless params[:sse_customer_algorithm].nil?
        type.sse_customer_key_md5 = params[:sse_customer_key_md5] unless params[:sse_customer_key_md5].nil?
        type.ssekms_key_id = params[:ssekms_key_id] unless params[:ssekms_key_id].nil?
        type.bucket_key_enabled = params[:bucket_key_enabled] unless params[:bucket_key_enabled].nil?
        type.request_charged = params[:request_charged] unless params[:request_charged].nil?
        type
      end
    end

    class UploadPartInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::UploadPartInput, context: context)
        type = Types::UploadPartInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        io = params[:body] || StringIO.new
        unless io.respond_to?(:read) || io.respond_to?(:readpartial)
          io = StringIO.new(io)
        end
        type.body = io
        type.bucket = params[:bucket] unless params[:bucket].nil?
        type.content_length = params[:content_length] unless params[:content_length].nil?
        type.content_md5 = params[:content_md5] unless params[:content_md5].nil?
        type.checksum_algorithm = params[:checksum_algorithm] unless params[:checksum_algorithm].nil?
        type.checksum_crc32 = params[:checksum_crc32] unless params[:checksum_crc32].nil?
        type.checksum_crc32_c = params[:checksum_crc32_c] unless params[:checksum_crc32_c].nil?
        type.checksum_sha1 = params[:checksum_sha1] unless params[:checksum_sha1].nil?
        type.checksum_sha256 = params[:checksum_sha256] unless params[:checksum_sha256].nil?
        type.key = params[:key] unless params[:key].nil?
        type.part_number = params[:part_number] unless params[:part_number].nil?
        type.upload_id = params[:upload_id] unless params[:upload_id].nil?
        type.sse_customer_algorithm = params[:sse_customer_algorithm] unless params[:sse_customer_algorithm].nil?
        type.sse_customer_key = params[:sse_customer_key] unless params[:sse_customer_key].nil?
        type.sse_customer_key_md5 = params[:sse_customer_key_md5] unless params[:sse_customer_key_md5].nil?
        type.request_payer = params[:request_payer] unless params[:request_payer].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner] unless params[:expected_bucket_owner].nil?
        type
      end
    end

    class UploadPartOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::UploadPartOutput, context: context)
        type = Types::UploadPartOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.server_side_encryption = params[:server_side_encryption] unless params[:server_side_encryption].nil?
        type.e_tag = params[:e_tag] unless params[:e_tag].nil?
        type.checksum_crc32 = params[:checksum_crc32] unless params[:checksum_crc32].nil?
        type.checksum_crc32_c = params[:checksum_crc32_c] unless params[:checksum_crc32_c].nil?
        type.checksum_sha1 = params[:checksum_sha1] unless params[:checksum_sha1].nil?
        type.checksum_sha256 = params[:checksum_sha256] unless params[:checksum_sha256].nil?
        type.sse_customer_algorithm = params[:sse_customer_algorithm] unless params[:sse_customer_algorithm].nil?
        type.sse_customer_key_md5 = params[:sse_customer_key_md5] unless params[:sse_customer_key_md5].nil?
        type.ssekms_key_id = params[:ssekms_key_id] unless params[:ssekms_key_id].nil?
        type.bucket_key_enabled = params[:bucket_key_enabled] unless params[:bucket_key_enabled].nil?
        type.request_charged = params[:request_charged] unless params[:request_charged].nil?
        type
      end
    end

    class UserMetadata
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MetadataEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class VersioningConfiguration
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::VersioningConfiguration, context: context)
        type = Types::VersioningConfiguration.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.mfa_delete = params[:mfa_delete] unless params[:mfa_delete].nil?
        type.status = params[:status] unless params[:status].nil?
        type
      end
    end

    class WebsiteConfiguration
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::WebsiteConfiguration, context: context)
        type = Types::WebsiteConfiguration.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.error_document = ErrorDocument.build(params[:error_document], context: "#{context}[:error_document]") unless params[:error_document].nil?
        type.index_document = IndexDocument.build(params[:index_document], context: "#{context}[:index_document]") unless params[:index_document].nil?
        type.redirect_all_requests_to = RedirectAllRequestsTo.build(params[:redirect_all_requests_to], context: "#{context}[:redirect_all_requests_to]") unless params[:redirect_all_requests_to].nil?
        type.routing_rules = RoutingRules.build(params[:routing_rules], context: "#{context}[:routing_rules]") unless params[:routing_rules].nil?
        type
      end
    end

    class WriteGetObjectResponseInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::WriteGetObjectResponseInput, context: context)
        type = Types::WriteGetObjectResponseInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.request_route = params[:request_route] unless params[:request_route].nil?
        type.request_token = params[:request_token] unless params[:request_token].nil?
        io = params[:body] || StringIO.new
        unless io.respond_to?(:read) || io.respond_to?(:readpartial)
          io = StringIO.new(io)
        end
        type.body = io
        type.status_code = params[:status_code] unless params[:status_code].nil?
        type.error_code = params[:error_code] unless params[:error_code].nil?
        type.error_message = params[:error_message] unless params[:error_message].nil?
        type.accept_ranges = params[:accept_ranges] unless params[:accept_ranges].nil?
        type.cache_control = params[:cache_control] unless params[:cache_control].nil?
        type.content_disposition = params[:content_disposition] unless params[:content_disposition].nil?
        type.content_encoding = params[:content_encoding] unless params[:content_encoding].nil?
        type.content_language = params[:content_language] unless params[:content_language].nil?
        type.content_length = params[:content_length] unless params[:content_length].nil?
        type.content_range = params[:content_range] unless params[:content_range].nil?
        type.content_type = params[:content_type] unless params[:content_type].nil?
        type.checksum_crc32 = params[:checksum_crc32] unless params[:checksum_crc32].nil?
        type.checksum_crc32_c = params[:checksum_crc32_c] unless params[:checksum_crc32_c].nil?
        type.checksum_sha1 = params[:checksum_sha1] unless params[:checksum_sha1].nil?
        type.checksum_sha256 = params[:checksum_sha256] unless params[:checksum_sha256].nil?
        type.delete_marker = params[:delete_marker] unless params[:delete_marker].nil?
        type.e_tag = params[:e_tag] unless params[:e_tag].nil?
        type.expires = params[:expires] unless params[:expires].nil?
        type.expiration = params[:expiration] unless params[:expiration].nil?
        type.last_modified = params[:last_modified] unless params[:last_modified].nil?
        type.missing_meta = params[:missing_meta] unless params[:missing_meta].nil?
        type.metadata = Metadata.build(params[:metadata], context: "#{context}[:metadata]") unless params[:metadata].nil?
        type.object_lock_mode = params[:object_lock_mode] unless params[:object_lock_mode].nil?
        type.object_lock_legal_hold_status = params[:object_lock_legal_hold_status] unless params[:object_lock_legal_hold_status].nil?
        type.object_lock_retain_until_date = params[:object_lock_retain_until_date] unless params[:object_lock_retain_until_date].nil?
        type.parts_count = params[:parts_count] unless params[:parts_count].nil?
        type.replication_status = params[:replication_status] unless params[:replication_status].nil?
        type.request_charged = params[:request_charged] unless params[:request_charged].nil?
        type.restore = params[:restore] unless params[:restore].nil?
        type.server_side_encryption = params[:server_side_encryption] unless params[:server_side_encryption].nil?
        type.sse_customer_algorithm = params[:sse_customer_algorithm] unless params[:sse_customer_algorithm].nil?
        type.ssekms_key_id = params[:ssekms_key_id] unless params[:ssekms_key_id].nil?
        type.sse_customer_key_md5 = params[:sse_customer_key_md5] unless params[:sse_customer_key_md5].nil?
        type.storage_class = params[:storage_class] unless params[:storage_class].nil?
        type.tag_count = params[:tag_count] unless params[:tag_count].nil?
        type.version_id = params[:version_id] unless params[:version_id].nil?
        type.bucket_key_enabled = params[:bucket_key_enabled] unless params[:bucket_key_enabled].nil?
        type
      end
    end

    class WriteGetObjectResponseOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::WriteGetObjectResponseOutput, context: context)
        type = Types::WriteGetObjectResponseOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

  end
end
