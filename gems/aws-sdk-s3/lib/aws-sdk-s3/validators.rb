# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::S3
  module Validators

    class AbortIncompleteMultipartUpload
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AbortIncompleteMultipartUpload, context: context)
        Hearth::Validator.validate!(input[:days_after_initiation], ::Integer, context: "#{context}[:days_after_initiation]")
      end
    end

    class AbortMultipartUploadInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AbortMultipartUploadInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:upload_id], ::String, context: "#{context}[:upload_id]")
        Hearth::Validator.validate!(input[:request_payer], ::String, context: "#{context}[:request_payer]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class AbortMultipartUploadOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AbortMultipartUploadOutput, context: context)
        Hearth::Validator.validate!(input[:request_charged], ::String, context: "#{context}[:request_charged]")
      end
    end

    class AccelerateConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccelerateConfiguration, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class AccessControlPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessControlPolicy, context: context)
        Grants.validate!(input[:grants], context: "#{context}[:grants]") unless input[:grants].nil?
        Owner.validate!(input[:owner], context: "#{context}[:owner]") unless input[:owner].nil?
      end
    end

    class AccessControlTranslation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessControlTranslation, context: context)
        Hearth::Validator.validate!(input[:owner], ::String, context: "#{context}[:owner]")
      end
    end

    class AllowedHeaders
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AllowedMethods
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AllowedOrigins
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AnalyticsAndOperator
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AnalyticsAndOperator, context: context)
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
        TagSet.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class AnalyticsConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AnalyticsConfiguration, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        AnalyticsFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        StorageClassAnalysis.validate!(input[:storage_class_analysis], context: "#{context}[:storage_class_analysis]") unless input[:storage_class_analysis].nil?
      end
    end

    class AnalyticsConfigurationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AnalyticsConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AnalyticsExportDestination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AnalyticsExportDestination, context: context)
        AnalyticsS3BucketDestination.validate!(input[:s3_bucket_destination], context: "#{context}[:s3_bucket_destination]") unless input[:s3_bucket_destination].nil?
      end
    end

    class AnalyticsFilter
      def self.validate!(input, context:)
        case input
        when Types::AnalyticsFilter::Prefix
          Hearth::Validator.validate!(input.__getobj__, ::String, context: context)
        when Types::AnalyticsFilter::Tag
          Tag.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::AnalyticsFilter::And
          AnalyticsAndOperator.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::AnalyticsFilter, got #{input.class}."
        end
      end

      class Prefix
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::String, context: context)
        end
      end

      class Tag
        def self.validate!(input, context:)
          Validators::Tag.validate!(input, context: context) unless input.nil?
        end
      end

      class And
        def self.validate!(input, context:)
          Validators::AnalyticsAndOperator.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class AnalyticsS3BucketDestination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AnalyticsS3BucketDestination, context: context)
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        Hearth::Validator.validate!(input[:bucket_account_id], ::String, context: "#{context}[:bucket_account_id]")
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
      end
    end

    class Bucket
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Bucket, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
      end
    end

    class BucketAlreadyExists
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BucketAlreadyExists, context: context)
      end
    end

    class BucketAlreadyOwnedByYou
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BucketAlreadyOwnedByYou, context: context)
      end
    end

    class BucketLifecycleConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BucketLifecycleConfiguration, context: context)
        LifecycleRules.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
      end
    end

    class BucketLoggingStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BucketLoggingStatus, context: context)
        LoggingEnabled.validate!(input[:logging_enabled], context: "#{context}[:logging_enabled]") unless input[:logging_enabled].nil?
      end
    end

    class Buckets
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Bucket.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CORSConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CORSConfiguration, context: context)
        CORSRules.validate!(input[:cors_rules], context: "#{context}[:cors_rules]") unless input[:cors_rules].nil?
      end
    end

    class CORSRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CORSRule, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        AllowedHeaders.validate!(input[:allowed_headers], context: "#{context}[:allowed_headers]") unless input[:allowed_headers].nil?
        AllowedMethods.validate!(input[:allowed_methods], context: "#{context}[:allowed_methods]") unless input[:allowed_methods].nil?
        AllowedOrigins.validate!(input[:allowed_origins], context: "#{context}[:allowed_origins]") unless input[:allowed_origins].nil?
        ExposeHeaders.validate!(input[:expose_headers], context: "#{context}[:expose_headers]") unless input[:expose_headers].nil?
        Hearth::Validator.validate!(input[:max_age_seconds], ::Integer, context: "#{context}[:max_age_seconds]")
      end
    end

    class CORSRules
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CORSRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CSVInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CSVInput, context: context)
        Hearth::Validator.validate!(input[:file_header_info], ::String, context: "#{context}[:file_header_info]")
        Hearth::Validator.validate!(input[:comments], ::String, context: "#{context}[:comments]")
        Hearth::Validator.validate!(input[:quote_escape_character], ::String, context: "#{context}[:quote_escape_character]")
        Hearth::Validator.validate!(input[:record_delimiter], ::String, context: "#{context}[:record_delimiter]")
        Hearth::Validator.validate!(input[:field_delimiter], ::String, context: "#{context}[:field_delimiter]")
        Hearth::Validator.validate!(input[:quote_character], ::String, context: "#{context}[:quote_character]")
        Hearth::Validator.validate!(input[:allow_quoted_record_delimiter], ::TrueClass, ::FalseClass, context: "#{context}[:allow_quoted_record_delimiter]")
      end
    end

    class CSVOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CSVOutput, context: context)
        Hearth::Validator.validate!(input[:quote_fields], ::String, context: "#{context}[:quote_fields]")
        Hearth::Validator.validate!(input[:quote_escape_character], ::String, context: "#{context}[:quote_escape_character]")
        Hearth::Validator.validate!(input[:record_delimiter], ::String, context: "#{context}[:record_delimiter]")
        Hearth::Validator.validate!(input[:field_delimiter], ::String, context: "#{context}[:field_delimiter]")
        Hearth::Validator.validate!(input[:quote_character], ::String, context: "#{context}[:quote_character]")
      end
    end

    class Checksum
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Checksum, context: context)
        Hearth::Validator.validate!(input[:checksum_crc32], ::String, context: "#{context}[:checksum_crc32]")
        Hearth::Validator.validate!(input[:checksum_crc32_c], ::String, context: "#{context}[:checksum_crc32_c]")
        Hearth::Validator.validate!(input[:checksum_sha1], ::String, context: "#{context}[:checksum_sha1]")
        Hearth::Validator.validate!(input[:checksum_sha256], ::String, context: "#{context}[:checksum_sha256]")
      end
    end

    class ChecksumAlgorithmList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CommonPrefix
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CommonPrefix, context: context)
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
      end
    end

    class CommonPrefixList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CommonPrefix.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CompleteMultipartUploadInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CompleteMultipartUploadInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        CompletedMultipartUpload.validate!(input[:multipart_upload], context: "#{context}[:multipart_upload]") unless input[:multipart_upload].nil?
        Hearth::Validator.validate!(input[:upload_id], ::String, context: "#{context}[:upload_id]")
        Hearth::Validator.validate!(input[:checksum_crc32], ::String, context: "#{context}[:checksum_crc32]")
        Hearth::Validator.validate!(input[:checksum_crc32_c], ::String, context: "#{context}[:checksum_crc32_c]")
        Hearth::Validator.validate!(input[:checksum_sha1], ::String, context: "#{context}[:checksum_sha1]")
        Hearth::Validator.validate!(input[:checksum_sha256], ::String, context: "#{context}[:checksum_sha256]")
        Hearth::Validator.validate!(input[:request_payer], ::String, context: "#{context}[:request_payer]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
        Hearth::Validator.validate!(input[:sse_customer_algorithm], ::String, context: "#{context}[:sse_customer_algorithm]")
        Hearth::Validator.validate!(input[:sse_customer_key], ::String, context: "#{context}[:sse_customer_key]")
        Hearth::Validator.validate!(input[:sse_customer_key_md5], ::String, context: "#{context}[:sse_customer_key_md5]")
      end
    end

    class CompleteMultipartUploadOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CompleteMultipartUploadOutput, context: context)
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:expiration], ::String, context: "#{context}[:expiration]")
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
        Hearth::Validator.validate!(input[:checksum_crc32], ::String, context: "#{context}[:checksum_crc32]")
        Hearth::Validator.validate!(input[:checksum_crc32_c], ::String, context: "#{context}[:checksum_crc32_c]")
        Hearth::Validator.validate!(input[:checksum_sha1], ::String, context: "#{context}[:checksum_sha1]")
        Hearth::Validator.validate!(input[:checksum_sha256], ::String, context: "#{context}[:checksum_sha256]")
        Hearth::Validator.validate!(input[:server_side_encryption], ::String, context: "#{context}[:server_side_encryption]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate!(input[:ssekms_key_id], ::String, context: "#{context}[:ssekms_key_id]")
        Hearth::Validator.validate!(input[:bucket_key_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:bucket_key_enabled]")
        Hearth::Validator.validate!(input[:request_charged], ::String, context: "#{context}[:request_charged]")
      end
    end

    class CompletedMultipartUpload
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CompletedMultipartUpload, context: context)
        CompletedPartList.validate!(input[:parts], context: "#{context}[:parts]") unless input[:parts].nil?
      end
    end

    class CompletedPart
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CompletedPart, context: context)
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
        Hearth::Validator.validate!(input[:checksum_crc32], ::String, context: "#{context}[:checksum_crc32]")
        Hearth::Validator.validate!(input[:checksum_crc32_c], ::String, context: "#{context}[:checksum_crc32_c]")
        Hearth::Validator.validate!(input[:checksum_sha1], ::String, context: "#{context}[:checksum_sha1]")
        Hearth::Validator.validate!(input[:checksum_sha256], ::String, context: "#{context}[:checksum_sha256]")
        Hearth::Validator.validate!(input[:part_number], ::Integer, context: "#{context}[:part_number]")
      end
    end

    class CompletedPartList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CompletedPart.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Condition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Condition, context: context)
        Hearth::Validator.validate!(input[:http_error_code_returned_equals], ::String, context: "#{context}[:http_error_code_returned_equals]")
        Hearth::Validator.validate!(input[:key_prefix_equals], ::String, context: "#{context}[:key_prefix_equals]")
      end
    end

    class ContinuationEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContinuationEvent, context: context)
      end
    end

    class CopyObjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CopyObjectInput, context: context)
        Hearth::Validator.validate!(input[:acl], ::String, context: "#{context}[:acl]")
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:cache_control], ::String, context: "#{context}[:cache_control]")
        Hearth::Validator.validate!(input[:checksum_algorithm], ::String, context: "#{context}[:checksum_algorithm]")
        Hearth::Validator.validate!(input[:content_disposition], ::String, context: "#{context}[:content_disposition]")
        Hearth::Validator.validate!(input[:content_encoding], ::String, context: "#{context}[:content_encoding]")
        Hearth::Validator.validate!(input[:content_language], ::String, context: "#{context}[:content_language]")
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
        Hearth::Validator.validate!(input[:copy_source], ::String, context: "#{context}[:copy_source]")
        Hearth::Validator.validate!(input[:copy_source_if_match], ::String, context: "#{context}[:copy_source_if_match]")
        Hearth::Validator.validate!(input[:copy_source_if_modified_since], ::Time, context: "#{context}[:copy_source_if_modified_since]")
        Hearth::Validator.validate!(input[:copy_source_if_none_match], ::String, context: "#{context}[:copy_source_if_none_match]")
        Hearth::Validator.validate!(input[:copy_source_if_unmodified_since], ::Time, context: "#{context}[:copy_source_if_unmodified_since]")
        Hearth::Validator.validate!(input[:expires], ::Time, context: "#{context}[:expires]")
        Hearth::Validator.validate!(input[:grant_full_control], ::String, context: "#{context}[:grant_full_control]")
        Hearth::Validator.validate!(input[:grant_read], ::String, context: "#{context}[:grant_read]")
        Hearth::Validator.validate!(input[:grant_read_acp], ::String, context: "#{context}[:grant_read_acp]")
        Hearth::Validator.validate!(input[:grant_write_acp], ::String, context: "#{context}[:grant_write_acp]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Metadata.validate!(input[:metadata], context: "#{context}[:metadata]") unless input[:metadata].nil?
        Hearth::Validator.validate!(input[:metadata_directive], ::String, context: "#{context}[:metadata_directive]")
        Hearth::Validator.validate!(input[:tagging_directive], ::String, context: "#{context}[:tagging_directive]")
        Hearth::Validator.validate!(input[:server_side_encryption], ::String, context: "#{context}[:server_side_encryption]")
        Hearth::Validator.validate!(input[:storage_class], ::String, context: "#{context}[:storage_class]")
        Hearth::Validator.validate!(input[:website_redirect_location], ::String, context: "#{context}[:website_redirect_location]")
        Hearth::Validator.validate!(input[:sse_customer_algorithm], ::String, context: "#{context}[:sse_customer_algorithm]")
        Hearth::Validator.validate!(input[:sse_customer_key], ::String, context: "#{context}[:sse_customer_key]")
        Hearth::Validator.validate!(input[:sse_customer_key_md5], ::String, context: "#{context}[:sse_customer_key_md5]")
        Hearth::Validator.validate!(input[:ssekms_key_id], ::String, context: "#{context}[:ssekms_key_id]")
        Hearth::Validator.validate!(input[:ssekms_encryption_context], ::String, context: "#{context}[:ssekms_encryption_context]")
        Hearth::Validator.validate!(input[:bucket_key_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:bucket_key_enabled]")
        Hearth::Validator.validate!(input[:copy_source_sse_customer_algorithm], ::String, context: "#{context}[:copy_source_sse_customer_algorithm]")
        Hearth::Validator.validate!(input[:copy_source_sse_customer_key], ::String, context: "#{context}[:copy_source_sse_customer_key]")
        Hearth::Validator.validate!(input[:copy_source_sse_customer_key_md5], ::String, context: "#{context}[:copy_source_sse_customer_key_md5]")
        Hearth::Validator.validate!(input[:request_payer], ::String, context: "#{context}[:request_payer]")
        Hearth::Validator.validate!(input[:tagging], ::String, context: "#{context}[:tagging]")
        Hearth::Validator.validate!(input[:object_lock_mode], ::String, context: "#{context}[:object_lock_mode]")
        Hearth::Validator.validate!(input[:object_lock_retain_until_date], ::Time, context: "#{context}[:object_lock_retain_until_date]")
        Hearth::Validator.validate!(input[:object_lock_legal_hold_status], ::String, context: "#{context}[:object_lock_legal_hold_status]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
        Hearth::Validator.validate!(input[:expected_source_bucket_owner], ::String, context: "#{context}[:expected_source_bucket_owner]")
      end
    end

    class CopyObjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CopyObjectOutput, context: context)
        CopyObjectResult.validate!(input[:copy_object_result], context: "#{context}[:copy_object_result]") unless input[:copy_object_result].nil?
        Hearth::Validator.validate!(input[:expiration], ::String, context: "#{context}[:expiration]")
        Hearth::Validator.validate!(input[:copy_source_version_id], ::String, context: "#{context}[:copy_source_version_id]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate!(input[:server_side_encryption], ::String, context: "#{context}[:server_side_encryption]")
        Hearth::Validator.validate!(input[:sse_customer_algorithm], ::String, context: "#{context}[:sse_customer_algorithm]")
        Hearth::Validator.validate!(input[:sse_customer_key_md5], ::String, context: "#{context}[:sse_customer_key_md5]")
        Hearth::Validator.validate!(input[:ssekms_key_id], ::String, context: "#{context}[:ssekms_key_id]")
        Hearth::Validator.validate!(input[:ssekms_encryption_context], ::String, context: "#{context}[:ssekms_encryption_context]")
        Hearth::Validator.validate!(input[:bucket_key_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:bucket_key_enabled]")
        Hearth::Validator.validate!(input[:request_charged], ::String, context: "#{context}[:request_charged]")
      end
    end

    class CopyObjectResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CopyObjectResult, context: context)
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
        Hearth::Validator.validate!(input[:last_modified], ::Time, context: "#{context}[:last_modified]")
        Hearth::Validator.validate!(input[:checksum_crc32], ::String, context: "#{context}[:checksum_crc32]")
        Hearth::Validator.validate!(input[:checksum_crc32_c], ::String, context: "#{context}[:checksum_crc32_c]")
        Hearth::Validator.validate!(input[:checksum_sha1], ::String, context: "#{context}[:checksum_sha1]")
        Hearth::Validator.validate!(input[:checksum_sha256], ::String, context: "#{context}[:checksum_sha256]")
      end
    end

    class CopyPartResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CopyPartResult, context: context)
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
        Hearth::Validator.validate!(input[:last_modified], ::Time, context: "#{context}[:last_modified]")
        Hearth::Validator.validate!(input[:checksum_crc32], ::String, context: "#{context}[:checksum_crc32]")
        Hearth::Validator.validate!(input[:checksum_crc32_c], ::String, context: "#{context}[:checksum_crc32_c]")
        Hearth::Validator.validate!(input[:checksum_sha1], ::String, context: "#{context}[:checksum_sha1]")
        Hearth::Validator.validate!(input[:checksum_sha256], ::String, context: "#{context}[:checksum_sha256]")
      end
    end

    class CreateBucketConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBucketConfiguration, context: context)
        Hearth::Validator.validate!(input[:location_constraint], ::String, context: "#{context}[:location_constraint]")
      end
    end

    class CreateBucketInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBucketInput, context: context)
        Hearth::Validator.validate!(input[:acl], ::String, context: "#{context}[:acl]")
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        CreateBucketConfiguration.validate!(input[:create_bucket_configuration], context: "#{context}[:create_bucket_configuration]") unless input[:create_bucket_configuration].nil?
        Hearth::Validator.validate!(input[:grant_full_control], ::String, context: "#{context}[:grant_full_control]")
        Hearth::Validator.validate!(input[:grant_read], ::String, context: "#{context}[:grant_read]")
        Hearth::Validator.validate!(input[:grant_read_acp], ::String, context: "#{context}[:grant_read_acp]")
        Hearth::Validator.validate!(input[:grant_write], ::String, context: "#{context}[:grant_write]")
        Hearth::Validator.validate!(input[:grant_write_acp], ::String, context: "#{context}[:grant_write_acp]")
        Hearth::Validator.validate!(input[:object_lock_enabled_for_bucket], ::TrueClass, ::FalseClass, context: "#{context}[:object_lock_enabled_for_bucket]")
        Hearth::Validator.validate!(input[:object_ownership], ::String, context: "#{context}[:object_ownership]")
      end
    end

    class CreateBucketOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBucketOutput, context: context)
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
      end
    end

    class CreateMultipartUploadInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMultipartUploadInput, context: context)
        Hearth::Validator.validate!(input[:acl], ::String, context: "#{context}[:acl]")
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:cache_control], ::String, context: "#{context}[:cache_control]")
        Hearth::Validator.validate!(input[:content_disposition], ::String, context: "#{context}[:content_disposition]")
        Hearth::Validator.validate!(input[:content_encoding], ::String, context: "#{context}[:content_encoding]")
        Hearth::Validator.validate!(input[:content_language], ::String, context: "#{context}[:content_language]")
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
        Hearth::Validator.validate!(input[:expires], ::Time, context: "#{context}[:expires]")
        Hearth::Validator.validate!(input[:grant_full_control], ::String, context: "#{context}[:grant_full_control]")
        Hearth::Validator.validate!(input[:grant_read], ::String, context: "#{context}[:grant_read]")
        Hearth::Validator.validate!(input[:grant_read_acp], ::String, context: "#{context}[:grant_read_acp]")
        Hearth::Validator.validate!(input[:grant_write_acp], ::String, context: "#{context}[:grant_write_acp]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Metadata.validate!(input[:metadata], context: "#{context}[:metadata]") unless input[:metadata].nil?
        Hearth::Validator.validate!(input[:server_side_encryption], ::String, context: "#{context}[:server_side_encryption]")
        Hearth::Validator.validate!(input[:storage_class], ::String, context: "#{context}[:storage_class]")
        Hearth::Validator.validate!(input[:website_redirect_location], ::String, context: "#{context}[:website_redirect_location]")
        Hearth::Validator.validate!(input[:sse_customer_algorithm], ::String, context: "#{context}[:sse_customer_algorithm]")
        Hearth::Validator.validate!(input[:sse_customer_key], ::String, context: "#{context}[:sse_customer_key]")
        Hearth::Validator.validate!(input[:sse_customer_key_md5], ::String, context: "#{context}[:sse_customer_key_md5]")
        Hearth::Validator.validate!(input[:ssekms_key_id], ::String, context: "#{context}[:ssekms_key_id]")
        Hearth::Validator.validate!(input[:ssekms_encryption_context], ::String, context: "#{context}[:ssekms_encryption_context]")
        Hearth::Validator.validate!(input[:bucket_key_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:bucket_key_enabled]")
        Hearth::Validator.validate!(input[:request_payer], ::String, context: "#{context}[:request_payer]")
        Hearth::Validator.validate!(input[:tagging], ::String, context: "#{context}[:tagging]")
        Hearth::Validator.validate!(input[:object_lock_mode], ::String, context: "#{context}[:object_lock_mode]")
        Hearth::Validator.validate!(input[:object_lock_retain_until_date], ::Time, context: "#{context}[:object_lock_retain_until_date]")
        Hearth::Validator.validate!(input[:object_lock_legal_hold_status], ::String, context: "#{context}[:object_lock_legal_hold_status]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
        Hearth::Validator.validate!(input[:checksum_algorithm], ::String, context: "#{context}[:checksum_algorithm]")
      end
    end

    class CreateMultipartUploadOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMultipartUploadOutput, context: context)
        Hearth::Validator.validate!(input[:abort_date], ::Time, context: "#{context}[:abort_date]")
        Hearth::Validator.validate!(input[:abort_rule_id], ::String, context: "#{context}[:abort_rule_id]")
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:upload_id], ::String, context: "#{context}[:upload_id]")
        Hearth::Validator.validate!(input[:server_side_encryption], ::String, context: "#{context}[:server_side_encryption]")
        Hearth::Validator.validate!(input[:sse_customer_algorithm], ::String, context: "#{context}[:sse_customer_algorithm]")
        Hearth::Validator.validate!(input[:sse_customer_key_md5], ::String, context: "#{context}[:sse_customer_key_md5]")
        Hearth::Validator.validate!(input[:ssekms_key_id], ::String, context: "#{context}[:ssekms_key_id]")
        Hearth::Validator.validate!(input[:ssekms_encryption_context], ::String, context: "#{context}[:ssekms_encryption_context]")
        Hearth::Validator.validate!(input[:bucket_key_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:bucket_key_enabled]")
        Hearth::Validator.validate!(input[:request_charged], ::String, context: "#{context}[:request_charged]")
        Hearth::Validator.validate!(input[:checksum_algorithm], ::String, context: "#{context}[:checksum_algorithm]")
      end
    end

    class DefaultRetention
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DefaultRetention, context: context)
        Hearth::Validator.validate!(input[:mode], ::String, context: "#{context}[:mode]")
        Hearth::Validator.validate!(input[:days], ::Integer, context: "#{context}[:days]")
        Hearth::Validator.validate!(input[:years], ::Integer, context: "#{context}[:years]")
      end
    end

    class Delete
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Delete, context: context)
        ObjectIdentifierList.validate!(input[:objects], context: "#{context}[:objects]") unless input[:objects].nil?
        Hearth::Validator.validate!(input[:quiet], ::TrueClass, ::FalseClass, context: "#{context}[:quiet]")
      end
    end

    class DeleteBucketAnalyticsConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBucketAnalyticsConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class DeleteBucketAnalyticsConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBucketAnalyticsConfigurationOutput, context: context)
      end
    end

    class DeleteBucketCorsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBucketCorsInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class DeleteBucketCorsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBucketCorsOutput, context: context)
      end
    end

    class DeleteBucketEncryptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBucketEncryptionInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class DeleteBucketEncryptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBucketEncryptionOutput, context: context)
      end
    end

    class DeleteBucketInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBucketInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class DeleteBucketIntelligentTieringConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBucketIntelligentTieringConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DeleteBucketIntelligentTieringConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBucketIntelligentTieringConfigurationOutput, context: context)
      end
    end

    class DeleteBucketInventoryConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBucketInventoryConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class DeleteBucketInventoryConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBucketInventoryConfigurationOutput, context: context)
      end
    end

    class DeleteBucketLifecycleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBucketLifecycleInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class DeleteBucketLifecycleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBucketLifecycleOutput, context: context)
      end
    end

    class DeleteBucketMetricsConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBucketMetricsConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class DeleteBucketMetricsConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBucketMetricsConfigurationOutput, context: context)
      end
    end

    class DeleteBucketOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBucketOutput, context: context)
      end
    end

    class DeleteBucketOwnershipControlsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBucketOwnershipControlsInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class DeleteBucketOwnershipControlsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBucketOwnershipControlsOutput, context: context)
      end
    end

    class DeleteBucketPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBucketPolicyInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class DeleteBucketPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBucketPolicyOutput, context: context)
      end
    end

    class DeleteBucketReplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBucketReplicationInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class DeleteBucketReplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBucketReplicationOutput, context: context)
      end
    end

    class DeleteBucketTaggingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBucketTaggingInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class DeleteBucketTaggingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBucketTaggingOutput, context: context)
      end
    end

    class DeleteBucketWebsiteInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBucketWebsiteInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class DeleteBucketWebsiteOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBucketWebsiteOutput, context: context)
      end
    end

    class DeleteMarkerEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMarkerEntry, context: context)
        Owner.validate!(input[:owner], context: "#{context}[:owner]") unless input[:owner].nil?
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate!(input[:is_latest], ::TrueClass, ::FalseClass, context: "#{context}[:is_latest]")
        Hearth::Validator.validate!(input[:last_modified], ::Time, context: "#{context}[:last_modified]")
      end
    end

    class DeleteMarkerReplication
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMarkerReplication, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class DeleteMarkers
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DeleteMarkerEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeleteObjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteObjectInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:mfa], ::String, context: "#{context}[:mfa]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate!(input[:request_payer], ::String, context: "#{context}[:request_payer]")
        Hearth::Validator.validate!(input[:bypass_governance_retention], ::TrueClass, ::FalseClass, context: "#{context}[:bypass_governance_retention]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class DeleteObjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteObjectOutput, context: context)
        Hearth::Validator.validate!(input[:delete_marker], ::TrueClass, ::FalseClass, context: "#{context}[:delete_marker]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate!(input[:request_charged], ::String, context: "#{context}[:request_charged]")
      end
    end

    class DeleteObjectTaggingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteObjectTaggingInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class DeleteObjectTaggingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteObjectTaggingOutput, context: context)
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
      end
    end

    class DeleteObjectsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteObjectsInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Delete.validate!(input[:delete], context: "#{context}[:delete]") unless input[:delete].nil?
        Hearth::Validator.validate!(input[:mfa], ::String, context: "#{context}[:mfa]")
        Hearth::Validator.validate!(input[:request_payer], ::String, context: "#{context}[:request_payer]")
        Hearth::Validator.validate!(input[:bypass_governance_retention], ::TrueClass, ::FalseClass, context: "#{context}[:bypass_governance_retention]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
        Hearth::Validator.validate!(input[:checksum_algorithm], ::String, context: "#{context}[:checksum_algorithm]")
      end
    end

    class DeleteObjectsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteObjectsOutput, context: context)
        DeletedObjects.validate!(input[:deleted], context: "#{context}[:deleted]") unless input[:deleted].nil?
        Hearth::Validator.validate!(input[:request_charged], ::String, context: "#{context}[:request_charged]")
        Errors.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
      end
    end

    class DeletePublicAccessBlockInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePublicAccessBlockInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class DeletePublicAccessBlockOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePublicAccessBlockOutput, context: context)
      end
    end

    class DeletedObject
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletedObject, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate!(input[:delete_marker], ::TrueClass, ::FalseClass, context: "#{context}[:delete_marker]")
        Hearth::Validator.validate!(input[:delete_marker_version_id], ::String, context: "#{context}[:delete_marker_version_id]")
      end
    end

    class DeletedObjects
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DeletedObject.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Destination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Destination, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:account], ::String, context: "#{context}[:account]")
        Hearth::Validator.validate!(input[:storage_class], ::String, context: "#{context}[:storage_class]")
        AccessControlTranslation.validate!(input[:access_control_translation], context: "#{context}[:access_control_translation]") unless input[:access_control_translation].nil?
        EncryptionConfiguration.validate!(input[:encryption_configuration], context: "#{context}[:encryption_configuration]") unless input[:encryption_configuration].nil?
        ReplicationTime.validate!(input[:replication_time], context: "#{context}[:replication_time]") unless input[:replication_time].nil?
        Metrics.validate!(input[:metrics], context: "#{context}[:metrics]") unless input[:metrics].nil?
      end
    end

    class Encryption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Encryption, context: context)
        Hearth::Validator.validate!(input[:encryption_type], ::String, context: "#{context}[:encryption_type]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:kms_context], ::String, context: "#{context}[:kms_context]")
      end
    end

    class EncryptionConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EncryptionConfiguration, context: context)
        Hearth::Validator.validate!(input[:replica_kms_key_id], ::String, context: "#{context}[:replica_kms_key_id]")
      end
    end

    class EndEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EndEvent, context: context)
      end
    end

    class Error
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Error, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ErrorDocument
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ErrorDocument, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
      end
    end

    class Errors
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Error.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EventBridgeConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventBridgeConfiguration, context: context)
      end
    end

    class EventList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ExistingObjectReplication
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExistingObjectReplication, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class ExposeHeaders
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class FilterRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FilterRule, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class FilterRuleList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          FilterRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GetBucketAccelerateConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBucketAccelerateConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class GetBucketAccelerateConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBucketAccelerateConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class GetBucketAclInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBucketAclInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class GetBucketAclOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBucketAclOutput, context: context)
        Owner.validate!(input[:owner], context: "#{context}[:owner]") unless input[:owner].nil?
        Grants.validate!(input[:grants], context: "#{context}[:grants]") unless input[:grants].nil?
      end
    end

    class GetBucketAnalyticsConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBucketAnalyticsConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class GetBucketAnalyticsConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBucketAnalyticsConfigurationOutput, context: context)
        AnalyticsConfiguration.validate!(input[:analytics_configuration], context: "#{context}[:analytics_configuration]") unless input[:analytics_configuration].nil?
      end
    end

    class GetBucketCorsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBucketCorsInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class GetBucketCorsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBucketCorsOutput, context: context)
        CORSRules.validate!(input[:cors_rules], context: "#{context}[:cors_rules]") unless input[:cors_rules].nil?
      end
    end

    class GetBucketEncryptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBucketEncryptionInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class GetBucketEncryptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBucketEncryptionOutput, context: context)
        ServerSideEncryptionConfiguration.validate!(input[:server_side_encryption_configuration], context: "#{context}[:server_side_encryption_configuration]") unless input[:server_side_encryption_configuration].nil?
      end
    end

    class GetBucketIntelligentTieringConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBucketIntelligentTieringConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetBucketIntelligentTieringConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBucketIntelligentTieringConfigurationOutput, context: context)
        IntelligentTieringConfiguration.validate!(input[:intelligent_tiering_configuration], context: "#{context}[:intelligent_tiering_configuration]") unless input[:intelligent_tiering_configuration].nil?
      end
    end

    class GetBucketInventoryConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBucketInventoryConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class GetBucketInventoryConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBucketInventoryConfigurationOutput, context: context)
        InventoryConfiguration.validate!(input[:inventory_configuration], context: "#{context}[:inventory_configuration]") unless input[:inventory_configuration].nil?
      end
    end

    class GetBucketLifecycleConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBucketLifecycleConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class GetBucketLifecycleConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBucketLifecycleConfigurationOutput, context: context)
        LifecycleRules.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
      end
    end

    class GetBucketLocationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBucketLocationInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class GetBucketLocationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBucketLocationOutput, context: context)
        Hearth::Validator.validate!(input[:location_constraint], ::String, context: "#{context}[:location_constraint]")
      end
    end

    class GetBucketLoggingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBucketLoggingInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class GetBucketLoggingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBucketLoggingOutput, context: context)
        LoggingEnabled.validate!(input[:logging_enabled], context: "#{context}[:logging_enabled]") unless input[:logging_enabled].nil?
      end
    end

    class GetBucketMetricsConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBucketMetricsConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class GetBucketMetricsConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBucketMetricsConfigurationOutput, context: context)
        MetricsConfiguration.validate!(input[:metrics_configuration], context: "#{context}[:metrics_configuration]") unless input[:metrics_configuration].nil?
      end
    end

    class GetBucketNotificationConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBucketNotificationConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class GetBucketNotificationConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBucketNotificationConfigurationOutput, context: context)
        TopicConfigurationList.validate!(input[:topic_configurations], context: "#{context}[:topic_configurations]") unless input[:topic_configurations].nil?
        QueueConfigurationList.validate!(input[:queue_configurations], context: "#{context}[:queue_configurations]") unless input[:queue_configurations].nil?
        LambdaFunctionConfigurationList.validate!(input[:lambda_function_configurations], context: "#{context}[:lambda_function_configurations]") unless input[:lambda_function_configurations].nil?
        EventBridgeConfiguration.validate!(input[:event_bridge_configuration], context: "#{context}[:event_bridge_configuration]") unless input[:event_bridge_configuration].nil?
      end
    end

    class GetBucketOwnershipControlsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBucketOwnershipControlsInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class GetBucketOwnershipControlsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBucketOwnershipControlsOutput, context: context)
        OwnershipControls.validate!(input[:ownership_controls], context: "#{context}[:ownership_controls]") unless input[:ownership_controls].nil?
      end
    end

    class GetBucketPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBucketPolicyInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class GetBucketPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBucketPolicyOutput, context: context)
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
      end
    end

    class GetBucketPolicyStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBucketPolicyStatusInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class GetBucketPolicyStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBucketPolicyStatusOutput, context: context)
        PolicyStatus.validate!(input[:policy_status], context: "#{context}[:policy_status]") unless input[:policy_status].nil?
      end
    end

    class GetBucketReplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBucketReplicationInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class GetBucketReplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBucketReplicationOutput, context: context)
        ReplicationConfiguration.validate!(input[:replication_configuration], context: "#{context}[:replication_configuration]") unless input[:replication_configuration].nil?
      end
    end

    class GetBucketRequestPaymentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBucketRequestPaymentInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class GetBucketRequestPaymentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBucketRequestPaymentOutput, context: context)
        Hearth::Validator.validate!(input[:payer], ::String, context: "#{context}[:payer]")
      end
    end

    class GetBucketTaggingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBucketTaggingInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class GetBucketTaggingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBucketTaggingOutput, context: context)
        TagSet.validate!(input[:tag_set], context: "#{context}[:tag_set]") unless input[:tag_set].nil?
      end
    end

    class GetBucketVersioningInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBucketVersioningInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class GetBucketVersioningOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBucketVersioningOutput, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:mfa_delete], ::String, context: "#{context}[:mfa_delete]")
      end
    end

    class GetBucketWebsiteInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBucketWebsiteInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class GetBucketWebsiteOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBucketWebsiteOutput, context: context)
        RedirectAllRequestsTo.validate!(input[:redirect_all_requests_to], context: "#{context}[:redirect_all_requests_to]") unless input[:redirect_all_requests_to].nil?
        IndexDocument.validate!(input[:index_document], context: "#{context}[:index_document]") unless input[:index_document].nil?
        ErrorDocument.validate!(input[:error_document], context: "#{context}[:error_document]") unless input[:error_document].nil?
        RoutingRules.validate!(input[:routing_rules], context: "#{context}[:routing_rules]") unless input[:routing_rules].nil?
      end
    end

    class GetObjectAclInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetObjectAclInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate!(input[:request_payer], ::String, context: "#{context}[:request_payer]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class GetObjectAclOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetObjectAclOutput, context: context)
        Owner.validate!(input[:owner], context: "#{context}[:owner]") unless input[:owner].nil?
        Grants.validate!(input[:grants], context: "#{context}[:grants]") unless input[:grants].nil?
        Hearth::Validator.validate!(input[:request_charged], ::String, context: "#{context}[:request_charged]")
      end
    end

    class GetObjectAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetObjectAttributesInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate!(input[:max_parts], ::Integer, context: "#{context}[:max_parts]")
        Hearth::Validator.validate!(input[:part_number_marker], ::String, context: "#{context}[:part_number_marker]")
        Hearth::Validator.validate!(input[:sse_customer_algorithm], ::String, context: "#{context}[:sse_customer_algorithm]")
        Hearth::Validator.validate!(input[:sse_customer_key], ::String, context: "#{context}[:sse_customer_key]")
        Hearth::Validator.validate!(input[:sse_customer_key_md5], ::String, context: "#{context}[:sse_customer_key_md5]")
        Hearth::Validator.validate!(input[:request_payer], ::String, context: "#{context}[:request_payer]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
        ObjectAttributesList.validate!(input[:object_attributes], context: "#{context}[:object_attributes]") unless input[:object_attributes].nil?
      end
    end

    class GetObjectAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetObjectAttributesOutput, context: context)
        Hearth::Validator.validate!(input[:delete_marker], ::TrueClass, ::FalseClass, context: "#{context}[:delete_marker]")
        Hearth::Validator.validate!(input[:last_modified], ::Time, context: "#{context}[:last_modified]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate!(input[:request_charged], ::String, context: "#{context}[:request_charged]")
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
        Checksum.validate!(input[:checksum], context: "#{context}[:checksum]") unless input[:checksum].nil?
        GetObjectAttributesParts.validate!(input[:object_parts], context: "#{context}[:object_parts]") unless input[:object_parts].nil?
        Hearth::Validator.validate!(input[:storage_class], ::String, context: "#{context}[:storage_class]")
        Hearth::Validator.validate!(input[:object_size], ::Integer, context: "#{context}[:object_size]")
      end
    end

    class GetObjectAttributesParts
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetObjectAttributesParts, context: context)
        Hearth::Validator.validate!(input[:total_parts_count], ::Integer, context: "#{context}[:total_parts_count]")
        Hearth::Validator.validate!(input[:part_number_marker], ::String, context: "#{context}[:part_number_marker]")
        Hearth::Validator.validate!(input[:next_part_number_marker], ::String, context: "#{context}[:next_part_number_marker]")
        Hearth::Validator.validate!(input[:max_parts], ::Integer, context: "#{context}[:max_parts]")
        Hearth::Validator.validate!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        PartsList.validate!(input[:parts], context: "#{context}[:parts]") unless input[:parts].nil?
      end
    end

    class GetObjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetObjectInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:if_match], ::String, context: "#{context}[:if_match]")
        Hearth::Validator.validate!(input[:if_modified_since], ::Time, context: "#{context}[:if_modified_since]")
        Hearth::Validator.validate!(input[:if_none_match], ::String, context: "#{context}[:if_none_match]")
        Hearth::Validator.validate!(input[:if_unmodified_since], ::Time, context: "#{context}[:if_unmodified_since]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:range], ::String, context: "#{context}[:range]")
        Hearth::Validator.validate!(input[:response_cache_control], ::String, context: "#{context}[:response_cache_control]")
        Hearth::Validator.validate!(input[:response_content_disposition], ::String, context: "#{context}[:response_content_disposition]")
        Hearth::Validator.validate!(input[:response_content_encoding], ::String, context: "#{context}[:response_content_encoding]")
        Hearth::Validator.validate!(input[:response_content_language], ::String, context: "#{context}[:response_content_language]")
        Hearth::Validator.validate!(input[:response_content_type], ::String, context: "#{context}[:response_content_type]")
        Hearth::Validator.validate!(input[:response_expires], ::Time, context: "#{context}[:response_expires]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate!(input[:sse_customer_algorithm], ::String, context: "#{context}[:sse_customer_algorithm]")
        Hearth::Validator.validate!(input[:sse_customer_key], ::String, context: "#{context}[:sse_customer_key]")
        Hearth::Validator.validate!(input[:sse_customer_key_md5], ::String, context: "#{context}[:sse_customer_key_md5]")
        Hearth::Validator.validate!(input[:request_payer], ::String, context: "#{context}[:request_payer]")
        Hearth::Validator.validate!(input[:part_number], ::Integer, context: "#{context}[:part_number]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
        Hearth::Validator.validate!(input[:checksum_mode], ::String, context: "#{context}[:checksum_mode]")
      end
    end

    class GetObjectLegalHoldInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetObjectLegalHoldInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate!(input[:request_payer], ::String, context: "#{context}[:request_payer]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class GetObjectLegalHoldOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetObjectLegalHoldOutput, context: context)
        ObjectLockLegalHold.validate!(input[:legal_hold], context: "#{context}[:legal_hold]") unless input[:legal_hold].nil?
      end
    end

    class GetObjectLockConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetObjectLockConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class GetObjectLockConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetObjectLockConfigurationOutput, context: context)
        ObjectLockConfiguration.validate!(input[:object_lock_configuration], context: "#{context}[:object_lock_configuration]") unless input[:object_lock_configuration].nil?
      end
    end

    class GetObjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetObjectOutput, context: context)
        unless input[:body].respond_to?(:read) || input[:body].respond_to?(:readpartial)
          raise ArgumentError, "Expected #{context} to be an IO like object, got #{input[:body].class}"
        end
        Hearth::Validator.validate!(input[:delete_marker], ::TrueClass, ::FalseClass, context: "#{context}[:delete_marker]")
        Hearth::Validator.validate!(input[:accept_ranges], ::String, context: "#{context}[:accept_ranges]")
        Hearth::Validator.validate!(input[:expiration], ::String, context: "#{context}[:expiration]")
        Hearth::Validator.validate!(input[:restore], ::String, context: "#{context}[:restore]")
        Hearth::Validator.validate!(input[:last_modified], ::Time, context: "#{context}[:last_modified]")
        Hearth::Validator.validate!(input[:content_length], ::Integer, context: "#{context}[:content_length]")
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
        Hearth::Validator.validate!(input[:checksum_crc32], ::String, context: "#{context}[:checksum_crc32]")
        Hearth::Validator.validate!(input[:checksum_crc32_c], ::String, context: "#{context}[:checksum_crc32_c]")
        Hearth::Validator.validate!(input[:checksum_sha1], ::String, context: "#{context}[:checksum_sha1]")
        Hearth::Validator.validate!(input[:checksum_sha256], ::String, context: "#{context}[:checksum_sha256]")
        Hearth::Validator.validate!(input[:missing_meta], ::Integer, context: "#{context}[:missing_meta]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate!(input[:cache_control], ::String, context: "#{context}[:cache_control]")
        Hearth::Validator.validate!(input[:content_disposition], ::String, context: "#{context}[:content_disposition]")
        Hearth::Validator.validate!(input[:content_encoding], ::String, context: "#{context}[:content_encoding]")
        Hearth::Validator.validate!(input[:content_language], ::String, context: "#{context}[:content_language]")
        Hearth::Validator.validate!(input[:content_range], ::String, context: "#{context}[:content_range]")
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
        Hearth::Validator.validate!(input[:expires], ::Time, context: "#{context}[:expires]")
        Hearth::Validator.validate!(input[:website_redirect_location], ::String, context: "#{context}[:website_redirect_location]")
        Hearth::Validator.validate!(input[:server_side_encryption], ::String, context: "#{context}[:server_side_encryption]")
        Metadata.validate!(input[:metadata], context: "#{context}[:metadata]") unless input[:metadata].nil?
        Hearth::Validator.validate!(input[:sse_customer_algorithm], ::String, context: "#{context}[:sse_customer_algorithm]")
        Hearth::Validator.validate!(input[:sse_customer_key_md5], ::String, context: "#{context}[:sse_customer_key_md5]")
        Hearth::Validator.validate!(input[:ssekms_key_id], ::String, context: "#{context}[:ssekms_key_id]")
        Hearth::Validator.validate!(input[:bucket_key_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:bucket_key_enabled]")
        Hearth::Validator.validate!(input[:storage_class], ::String, context: "#{context}[:storage_class]")
        Hearth::Validator.validate!(input[:request_charged], ::String, context: "#{context}[:request_charged]")
        Hearth::Validator.validate!(input[:replication_status], ::String, context: "#{context}[:replication_status]")
        Hearth::Validator.validate!(input[:parts_count], ::Integer, context: "#{context}[:parts_count]")
        Hearth::Validator.validate!(input[:tag_count], ::Integer, context: "#{context}[:tag_count]")
        Hearth::Validator.validate!(input[:object_lock_mode], ::String, context: "#{context}[:object_lock_mode]")
        Hearth::Validator.validate!(input[:object_lock_retain_until_date], ::Time, context: "#{context}[:object_lock_retain_until_date]")
        Hearth::Validator.validate!(input[:object_lock_legal_hold_status], ::String, context: "#{context}[:object_lock_legal_hold_status]")
      end
    end

    class GetObjectRetentionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetObjectRetentionInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate!(input[:request_payer], ::String, context: "#{context}[:request_payer]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class GetObjectRetentionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetObjectRetentionOutput, context: context)
        ObjectLockRetention.validate!(input[:retention], context: "#{context}[:retention]") unless input[:retention].nil?
      end
    end

    class GetObjectTaggingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetObjectTaggingInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
        Hearth::Validator.validate!(input[:request_payer], ::String, context: "#{context}[:request_payer]")
      end
    end

    class GetObjectTaggingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetObjectTaggingOutput, context: context)
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
        TagSet.validate!(input[:tag_set], context: "#{context}[:tag_set]") unless input[:tag_set].nil?
      end
    end

    class GetObjectTorrentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetObjectTorrentInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:request_payer], ::String, context: "#{context}[:request_payer]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class GetObjectTorrentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetObjectTorrentOutput, context: context)
        unless input[:body].respond_to?(:read) || input[:body].respond_to?(:readpartial)
          raise ArgumentError, "Expected #{context} to be an IO like object, got #{input[:body].class}"
        end
        Hearth::Validator.validate!(input[:request_charged], ::String, context: "#{context}[:request_charged]")
      end
    end

    class GetPublicAccessBlockInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPublicAccessBlockInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class GetPublicAccessBlockOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPublicAccessBlockOutput, context: context)
        PublicAccessBlockConfiguration.validate!(input[:public_access_block_configuration], context: "#{context}[:public_access_block_configuration]") unless input[:public_access_block_configuration].nil?
      end
    end

    class GlacierJobParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GlacierJobParameters, context: context)
        Hearth::Validator.validate!(input[:tier], ::String, context: "#{context}[:tier]")
      end
    end

    class Grant
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Grant, context: context)
        Grantee.validate!(input[:grantee], context: "#{context}[:grantee]") unless input[:grantee].nil?
        Hearth::Validator.validate!(input[:permission], ::String, context: "#{context}[:permission]")
      end
    end

    class Grantee
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Grantee, context: context)
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:email_address], ::String, context: "#{context}[:email_address]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:uri], ::String, context: "#{context}[:uri]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class Grants
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Grant.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class HeadBucketInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HeadBucketInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class HeadBucketOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HeadBucketOutput, context: context)
      end
    end

    class HeadObjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HeadObjectInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:if_match], ::String, context: "#{context}[:if_match]")
        Hearth::Validator.validate!(input[:if_modified_since], ::Time, context: "#{context}[:if_modified_since]")
        Hearth::Validator.validate!(input[:if_none_match], ::String, context: "#{context}[:if_none_match]")
        Hearth::Validator.validate!(input[:if_unmodified_since], ::Time, context: "#{context}[:if_unmodified_since]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:range], ::String, context: "#{context}[:range]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate!(input[:sse_customer_algorithm], ::String, context: "#{context}[:sse_customer_algorithm]")
        Hearth::Validator.validate!(input[:sse_customer_key], ::String, context: "#{context}[:sse_customer_key]")
        Hearth::Validator.validate!(input[:sse_customer_key_md5], ::String, context: "#{context}[:sse_customer_key_md5]")
        Hearth::Validator.validate!(input[:request_payer], ::String, context: "#{context}[:request_payer]")
        Hearth::Validator.validate!(input[:part_number], ::Integer, context: "#{context}[:part_number]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
        Hearth::Validator.validate!(input[:checksum_mode], ::String, context: "#{context}[:checksum_mode]")
      end
    end

    class HeadObjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HeadObjectOutput, context: context)
        Hearth::Validator.validate!(input[:delete_marker], ::TrueClass, ::FalseClass, context: "#{context}[:delete_marker]")
        Hearth::Validator.validate!(input[:accept_ranges], ::String, context: "#{context}[:accept_ranges]")
        Hearth::Validator.validate!(input[:expiration], ::String, context: "#{context}[:expiration]")
        Hearth::Validator.validate!(input[:restore], ::String, context: "#{context}[:restore]")
        Hearth::Validator.validate!(input[:archive_status], ::String, context: "#{context}[:archive_status]")
        Hearth::Validator.validate!(input[:last_modified], ::Time, context: "#{context}[:last_modified]")
        Hearth::Validator.validate!(input[:content_length], ::Integer, context: "#{context}[:content_length]")
        Hearth::Validator.validate!(input[:checksum_crc32], ::String, context: "#{context}[:checksum_crc32]")
        Hearth::Validator.validate!(input[:checksum_crc32_c], ::String, context: "#{context}[:checksum_crc32_c]")
        Hearth::Validator.validate!(input[:checksum_sha1], ::String, context: "#{context}[:checksum_sha1]")
        Hearth::Validator.validate!(input[:checksum_sha256], ::String, context: "#{context}[:checksum_sha256]")
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
        Hearth::Validator.validate!(input[:missing_meta], ::Integer, context: "#{context}[:missing_meta]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate!(input[:cache_control], ::String, context: "#{context}[:cache_control]")
        Hearth::Validator.validate!(input[:content_disposition], ::String, context: "#{context}[:content_disposition]")
        Hearth::Validator.validate!(input[:content_encoding], ::String, context: "#{context}[:content_encoding]")
        Hearth::Validator.validate!(input[:content_language], ::String, context: "#{context}[:content_language]")
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
        Hearth::Validator.validate!(input[:expires], ::Time, context: "#{context}[:expires]")
        Hearth::Validator.validate!(input[:website_redirect_location], ::String, context: "#{context}[:website_redirect_location]")
        Hearth::Validator.validate!(input[:server_side_encryption], ::String, context: "#{context}[:server_side_encryption]")
        Metadata.validate!(input[:metadata], context: "#{context}[:metadata]") unless input[:metadata].nil?
        Hearth::Validator.validate!(input[:sse_customer_algorithm], ::String, context: "#{context}[:sse_customer_algorithm]")
        Hearth::Validator.validate!(input[:sse_customer_key_md5], ::String, context: "#{context}[:sse_customer_key_md5]")
        Hearth::Validator.validate!(input[:ssekms_key_id], ::String, context: "#{context}[:ssekms_key_id]")
        Hearth::Validator.validate!(input[:bucket_key_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:bucket_key_enabled]")
        Hearth::Validator.validate!(input[:storage_class], ::String, context: "#{context}[:storage_class]")
        Hearth::Validator.validate!(input[:request_charged], ::String, context: "#{context}[:request_charged]")
        Hearth::Validator.validate!(input[:replication_status], ::String, context: "#{context}[:replication_status]")
        Hearth::Validator.validate!(input[:parts_count], ::Integer, context: "#{context}[:parts_count]")
        Hearth::Validator.validate!(input[:object_lock_mode], ::String, context: "#{context}[:object_lock_mode]")
        Hearth::Validator.validate!(input[:object_lock_retain_until_date], ::Time, context: "#{context}[:object_lock_retain_until_date]")
        Hearth::Validator.validate!(input[:object_lock_legal_hold_status], ::String, context: "#{context}[:object_lock_legal_hold_status]")
      end
    end

    class IndexDocument
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IndexDocument, context: context)
        Hearth::Validator.validate!(input[:suffix], ::String, context: "#{context}[:suffix]")
      end
    end

    class Initiator
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Initiator, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
      end
    end

    class InputSerialization
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputSerialization, context: context)
        CSVInput.validate!(input[:csv], context: "#{context}[:csv]") unless input[:csv].nil?
        Hearth::Validator.validate!(input[:compression_type], ::String, context: "#{context}[:compression_type]")
        JSONInput.validate!(input[:json], context: "#{context}[:json]") unless input[:json].nil?
        ParquetInput.validate!(input[:parquet], context: "#{context}[:parquet]") unless input[:parquet].nil?
      end
    end

    class IntelligentTieringAndOperator
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IntelligentTieringAndOperator, context: context)
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
        TagSet.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class IntelligentTieringConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IntelligentTieringConfiguration, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        IntelligentTieringFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        TieringList.validate!(input[:tierings], context: "#{context}[:tierings]") unless input[:tierings].nil?
      end
    end

    class IntelligentTieringConfigurationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          IntelligentTieringConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class IntelligentTieringFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IntelligentTieringFilter, context: context)
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
        Tag.validate!(input[:tag], context: "#{context}[:tag]") unless input[:tag].nil?
        IntelligentTieringAndOperator.validate!(input[:and], context: "#{context}[:and]") unless input[:and].nil?
      end
    end

    class InvalidObjectState
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidObjectState, context: context)
        Hearth::Validator.validate!(input[:storage_class], ::String, context: "#{context}[:storage_class]")
        Hearth::Validator.validate!(input[:access_tier], ::String, context: "#{context}[:access_tier]")
      end
    end

    class InventoryConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InventoryConfiguration, context: context)
        InventoryDestination.validate!(input[:destination], context: "#{context}[:destination]") unless input[:destination].nil?
        Hearth::Validator.validate!(input[:is_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:is_enabled]")
        InventoryFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:included_object_versions], ::String, context: "#{context}[:included_object_versions]")
        InventoryOptionalFields.validate!(input[:optional_fields], context: "#{context}[:optional_fields]") unless input[:optional_fields].nil?
        InventorySchedule.validate!(input[:schedule], context: "#{context}[:schedule]") unless input[:schedule].nil?
      end
    end

    class InventoryConfigurationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InventoryConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InventoryDestination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InventoryDestination, context: context)
        InventoryS3BucketDestination.validate!(input[:s3_bucket_destination], context: "#{context}[:s3_bucket_destination]") unless input[:s3_bucket_destination].nil?
      end
    end

    class InventoryEncryption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InventoryEncryption, context: context)
        SSES3.validate!(input[:sses3], context: "#{context}[:sses3]") unless input[:sses3].nil?
        SSEKMS.validate!(input[:ssekms], context: "#{context}[:ssekms]") unless input[:ssekms].nil?
      end
    end

    class InventoryFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InventoryFilter, context: context)
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
      end
    end

    class InventoryOptionalFields
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InventoryS3BucketDestination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InventoryS3BucketDestination, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
        InventoryEncryption.validate!(input[:encryption], context: "#{context}[:encryption]") unless input[:encryption].nil?
      end
    end

    class InventorySchedule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InventorySchedule, context: context)
        Hearth::Validator.validate!(input[:frequency], ::String, context: "#{context}[:frequency]")
      end
    end

    class JSONInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JSONInput, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class JSONOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JSONOutput, context: context)
        Hearth::Validator.validate!(input[:record_delimiter], ::String, context: "#{context}[:record_delimiter]")
      end
    end

    class LambdaFunctionConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LambdaFunctionConfiguration, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:lambda_function_arn], ::String, context: "#{context}[:lambda_function_arn]")
        EventList.validate!(input[:events], context: "#{context}[:events]") unless input[:events].nil?
        NotificationConfigurationFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
      end
    end

    class LambdaFunctionConfigurationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LambdaFunctionConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LifecycleExpiration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LifecycleExpiration, context: context)
        Hearth::Validator.validate!(input[:date], ::Time, context: "#{context}[:date]")
        Hearth::Validator.validate!(input[:days], ::Integer, context: "#{context}[:days]")
        Hearth::Validator.validate!(input[:expired_object_delete_marker], ::TrueClass, ::FalseClass, context: "#{context}[:expired_object_delete_marker]")
      end
    end

    class LifecycleRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LifecycleRule, context: context)
        LifecycleExpiration.validate!(input[:expiration], context: "#{context}[:expiration]") unless input[:expiration].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
        LifecycleRuleFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        TransitionList.validate!(input[:transitions], context: "#{context}[:transitions]") unless input[:transitions].nil?
        NoncurrentVersionTransitionList.validate!(input[:noncurrent_version_transitions], context: "#{context}[:noncurrent_version_transitions]") unless input[:noncurrent_version_transitions].nil?
        NoncurrentVersionExpiration.validate!(input[:noncurrent_version_expiration], context: "#{context}[:noncurrent_version_expiration]") unless input[:noncurrent_version_expiration].nil?
        AbortIncompleteMultipartUpload.validate!(input[:abort_incomplete_multipart_upload], context: "#{context}[:abort_incomplete_multipart_upload]") unless input[:abort_incomplete_multipart_upload].nil?
      end
    end

    class LifecycleRuleAndOperator
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LifecycleRuleAndOperator, context: context)
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
        TagSet.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:object_size_greater_than], ::Integer, context: "#{context}[:object_size_greater_than]")
        Hearth::Validator.validate!(input[:object_size_less_than], ::Integer, context: "#{context}[:object_size_less_than]")
      end
    end

    class LifecycleRuleFilter
      def self.validate!(input, context:)
        case input
        when Types::LifecycleRuleFilter::Prefix
          Hearth::Validator.validate!(input.__getobj__, ::String, context: context)
        when Types::LifecycleRuleFilter::Tag
          Tag.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::LifecycleRuleFilter::ObjectSizeGreaterThan
          Hearth::Validator.validate!(input.__getobj__, ::Integer, context: context)
        when Types::LifecycleRuleFilter::ObjectSizeLessThan
          Hearth::Validator.validate!(input.__getobj__, ::Integer, context: context)
        when Types::LifecycleRuleFilter::And
          LifecycleRuleAndOperator.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::LifecycleRuleFilter, got #{input.class}."
        end
      end

      class Prefix
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::String, context: context)
        end
      end

      class Tag
        def self.validate!(input, context:)
          Validators::Tag.validate!(input, context: context) unless input.nil?
        end
      end

      class ObjectSizeGreaterThan
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::Integer, context: context)
        end
      end

      class ObjectSizeLessThan
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::Integer, context: context)
        end
      end

      class And
        def self.validate!(input, context:)
          Validators::LifecycleRuleAndOperator.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class LifecycleRules
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LifecycleRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListBucketAnalyticsConfigurationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBucketAnalyticsConfigurationsInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:continuation_token], ::String, context: "#{context}[:continuation_token]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class ListBucketAnalyticsConfigurationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBucketAnalyticsConfigurationsOutput, context: context)
        Hearth::Validator.validate!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate!(input[:continuation_token], ::String, context: "#{context}[:continuation_token]")
        Hearth::Validator.validate!(input[:next_continuation_token], ::String, context: "#{context}[:next_continuation_token]")
        AnalyticsConfigurationList.validate!(input[:analytics_configuration_list], context: "#{context}[:analytics_configuration_list]") unless input[:analytics_configuration_list].nil?
      end
    end

    class ListBucketIntelligentTieringConfigurationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBucketIntelligentTieringConfigurationsInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:continuation_token], ::String, context: "#{context}[:continuation_token]")
      end
    end

    class ListBucketIntelligentTieringConfigurationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBucketIntelligentTieringConfigurationsOutput, context: context)
        Hearth::Validator.validate!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate!(input[:continuation_token], ::String, context: "#{context}[:continuation_token]")
        Hearth::Validator.validate!(input[:next_continuation_token], ::String, context: "#{context}[:next_continuation_token]")
        IntelligentTieringConfigurationList.validate!(input[:intelligent_tiering_configuration_list], context: "#{context}[:intelligent_tiering_configuration_list]") unless input[:intelligent_tiering_configuration_list].nil?
      end
    end

    class ListBucketInventoryConfigurationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBucketInventoryConfigurationsInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:continuation_token], ::String, context: "#{context}[:continuation_token]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class ListBucketInventoryConfigurationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBucketInventoryConfigurationsOutput, context: context)
        Hearth::Validator.validate!(input[:continuation_token], ::String, context: "#{context}[:continuation_token]")
        InventoryConfigurationList.validate!(input[:inventory_configuration_list], context: "#{context}[:inventory_configuration_list]") unless input[:inventory_configuration_list].nil?
        Hearth::Validator.validate!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate!(input[:next_continuation_token], ::String, context: "#{context}[:next_continuation_token]")
      end
    end

    class ListBucketMetricsConfigurationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBucketMetricsConfigurationsInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:continuation_token], ::String, context: "#{context}[:continuation_token]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class ListBucketMetricsConfigurationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBucketMetricsConfigurationsOutput, context: context)
        Hearth::Validator.validate!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate!(input[:continuation_token], ::String, context: "#{context}[:continuation_token]")
        Hearth::Validator.validate!(input[:next_continuation_token], ::String, context: "#{context}[:next_continuation_token]")
        MetricsConfigurationList.validate!(input[:metrics_configuration_list], context: "#{context}[:metrics_configuration_list]") unless input[:metrics_configuration_list].nil?
      end
    end

    class ListBucketsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBucketsInput, context: context)
      end
    end

    class ListBucketsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBucketsOutput, context: context)
        Buckets.validate!(input[:buckets], context: "#{context}[:buckets]") unless input[:buckets].nil?
        Owner.validate!(input[:owner], context: "#{context}[:owner]") unless input[:owner].nil?
      end
    end

    class ListMultipartUploadsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMultipartUploadsInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:delimiter], ::String, context: "#{context}[:delimiter]")
        Hearth::Validator.validate!(input[:encoding_type], ::String, context: "#{context}[:encoding_type]")
        Hearth::Validator.validate!(input[:key_marker], ::String, context: "#{context}[:key_marker]")
        Hearth::Validator.validate!(input[:max_uploads], ::Integer, context: "#{context}[:max_uploads]")
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
        Hearth::Validator.validate!(input[:upload_id_marker], ::String, context: "#{context}[:upload_id_marker]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class ListMultipartUploadsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMultipartUploadsOutput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:key_marker], ::String, context: "#{context}[:key_marker]")
        Hearth::Validator.validate!(input[:upload_id_marker], ::String, context: "#{context}[:upload_id_marker]")
        Hearth::Validator.validate!(input[:next_key_marker], ::String, context: "#{context}[:next_key_marker]")
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
        Hearth::Validator.validate!(input[:delimiter], ::String, context: "#{context}[:delimiter]")
        Hearth::Validator.validate!(input[:next_upload_id_marker], ::String, context: "#{context}[:next_upload_id_marker]")
        Hearth::Validator.validate!(input[:max_uploads], ::Integer, context: "#{context}[:max_uploads]")
        Hearth::Validator.validate!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        MultipartUploadList.validate!(input[:uploads], context: "#{context}[:uploads]") unless input[:uploads].nil?
        CommonPrefixList.validate!(input[:common_prefixes], context: "#{context}[:common_prefixes]") unless input[:common_prefixes].nil?
        Hearth::Validator.validate!(input[:encoding_type], ::String, context: "#{context}[:encoding_type]")
      end
    end

    class ListObjectVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListObjectVersionsInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:delimiter], ::String, context: "#{context}[:delimiter]")
        Hearth::Validator.validate!(input[:encoding_type], ::String, context: "#{context}[:encoding_type]")
        Hearth::Validator.validate!(input[:key_marker], ::String, context: "#{context}[:key_marker]")
        Hearth::Validator.validate!(input[:max_keys], ::Integer, context: "#{context}[:max_keys]")
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
        Hearth::Validator.validate!(input[:version_id_marker], ::String, context: "#{context}[:version_id_marker]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class ListObjectVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListObjectVersionsOutput, context: context)
        Hearth::Validator.validate!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate!(input[:key_marker], ::String, context: "#{context}[:key_marker]")
        Hearth::Validator.validate!(input[:version_id_marker], ::String, context: "#{context}[:version_id_marker]")
        Hearth::Validator.validate!(input[:next_key_marker], ::String, context: "#{context}[:next_key_marker]")
        Hearth::Validator.validate!(input[:next_version_id_marker], ::String, context: "#{context}[:next_version_id_marker]")
        ObjectVersionList.validate!(input[:versions], context: "#{context}[:versions]") unless input[:versions].nil?
        DeleteMarkers.validate!(input[:delete_markers], context: "#{context}[:delete_markers]") unless input[:delete_markers].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
        Hearth::Validator.validate!(input[:delimiter], ::String, context: "#{context}[:delimiter]")
        Hearth::Validator.validate!(input[:max_keys], ::Integer, context: "#{context}[:max_keys]")
        CommonPrefixList.validate!(input[:common_prefixes], context: "#{context}[:common_prefixes]") unless input[:common_prefixes].nil?
        Hearth::Validator.validate!(input[:encoding_type], ::String, context: "#{context}[:encoding_type]")
      end
    end

    class ListObjectsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListObjectsInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:delimiter], ::String, context: "#{context}[:delimiter]")
        Hearth::Validator.validate!(input[:encoding_type], ::String, context: "#{context}[:encoding_type]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_keys], ::Integer, context: "#{context}[:max_keys]")
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
        Hearth::Validator.validate!(input[:request_payer], ::String, context: "#{context}[:request_payer]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class ListObjectsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListObjectsOutput, context: context)
        Hearth::Validator.validate!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        ObjectList.validate!(input[:contents], context: "#{context}[:contents]") unless input[:contents].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
        Hearth::Validator.validate!(input[:delimiter], ::String, context: "#{context}[:delimiter]")
        Hearth::Validator.validate!(input[:max_keys], ::Integer, context: "#{context}[:max_keys]")
        CommonPrefixList.validate!(input[:common_prefixes], context: "#{context}[:common_prefixes]") unless input[:common_prefixes].nil?
        Hearth::Validator.validate!(input[:encoding_type], ::String, context: "#{context}[:encoding_type]")
      end
    end

    class ListObjectsV2Input
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListObjectsV2Input, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:delimiter], ::String, context: "#{context}[:delimiter]")
        Hearth::Validator.validate!(input[:encoding_type], ::String, context: "#{context}[:encoding_type]")
        Hearth::Validator.validate!(input[:max_keys], ::Integer, context: "#{context}[:max_keys]")
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
        Hearth::Validator.validate!(input[:continuation_token], ::String, context: "#{context}[:continuation_token]")
        Hearth::Validator.validate!(input[:fetch_owner], ::TrueClass, ::FalseClass, context: "#{context}[:fetch_owner]")
        Hearth::Validator.validate!(input[:start_after], ::String, context: "#{context}[:start_after]")
        Hearth::Validator.validate!(input[:request_payer], ::String, context: "#{context}[:request_payer]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class ListObjectsV2Output
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListObjectsV2Output, context: context)
        Hearth::Validator.validate!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        ObjectList.validate!(input[:contents], context: "#{context}[:contents]") unless input[:contents].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
        Hearth::Validator.validate!(input[:delimiter], ::String, context: "#{context}[:delimiter]")
        Hearth::Validator.validate!(input[:max_keys], ::Integer, context: "#{context}[:max_keys]")
        CommonPrefixList.validate!(input[:common_prefixes], context: "#{context}[:common_prefixes]") unless input[:common_prefixes].nil?
        Hearth::Validator.validate!(input[:encoding_type], ::String, context: "#{context}[:encoding_type]")
        Hearth::Validator.validate!(input[:key_count], ::Integer, context: "#{context}[:key_count]")
        Hearth::Validator.validate!(input[:continuation_token], ::String, context: "#{context}[:continuation_token]")
        Hearth::Validator.validate!(input[:next_continuation_token], ::String, context: "#{context}[:next_continuation_token]")
        Hearth::Validator.validate!(input[:start_after], ::String, context: "#{context}[:start_after]")
      end
    end

    class ListPartsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPartsInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:max_parts], ::Integer, context: "#{context}[:max_parts]")
        Hearth::Validator.validate!(input[:part_number_marker], ::String, context: "#{context}[:part_number_marker]")
        Hearth::Validator.validate!(input[:upload_id], ::String, context: "#{context}[:upload_id]")
        Hearth::Validator.validate!(input[:request_payer], ::String, context: "#{context}[:request_payer]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
        Hearth::Validator.validate!(input[:sse_customer_algorithm], ::String, context: "#{context}[:sse_customer_algorithm]")
        Hearth::Validator.validate!(input[:sse_customer_key], ::String, context: "#{context}[:sse_customer_key]")
        Hearth::Validator.validate!(input[:sse_customer_key_md5], ::String, context: "#{context}[:sse_customer_key_md5]")
      end
    end

    class ListPartsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPartsOutput, context: context)
        Hearth::Validator.validate!(input[:abort_date], ::Time, context: "#{context}[:abort_date]")
        Hearth::Validator.validate!(input[:abort_rule_id], ::String, context: "#{context}[:abort_rule_id]")
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:upload_id], ::String, context: "#{context}[:upload_id]")
        Hearth::Validator.validate!(input[:part_number_marker], ::String, context: "#{context}[:part_number_marker]")
        Hearth::Validator.validate!(input[:next_part_number_marker], ::String, context: "#{context}[:next_part_number_marker]")
        Hearth::Validator.validate!(input[:max_parts], ::Integer, context: "#{context}[:max_parts]")
        Hearth::Validator.validate!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Parts.validate!(input[:parts], context: "#{context}[:parts]") unless input[:parts].nil?
        Initiator.validate!(input[:initiator], context: "#{context}[:initiator]") unless input[:initiator].nil?
        Owner.validate!(input[:owner], context: "#{context}[:owner]") unless input[:owner].nil?
        Hearth::Validator.validate!(input[:storage_class], ::String, context: "#{context}[:storage_class]")
        Hearth::Validator.validate!(input[:request_charged], ::String, context: "#{context}[:request_charged]")
        Hearth::Validator.validate!(input[:checksum_algorithm], ::String, context: "#{context}[:checksum_algorithm]")
      end
    end

    class LoggingEnabled
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoggingEnabled, context: context)
        Hearth::Validator.validate!(input[:target_bucket], ::String, context: "#{context}[:target_bucket]")
        TargetGrants.validate!(input[:target_grants], context: "#{context}[:target_grants]") unless input[:target_grants].nil?
        Hearth::Validator.validate!(input[:target_prefix], ::String, context: "#{context}[:target_prefix]")
      end
    end

    class Metadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class MetadataEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MetadataEntry, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class Metrics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Metrics, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        ReplicationTimeValue.validate!(input[:event_threshold], context: "#{context}[:event_threshold]") unless input[:event_threshold].nil?
      end
    end

    class MetricsAndOperator
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MetricsAndOperator, context: context)
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
        TagSet.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:access_point_arn], ::String, context: "#{context}[:access_point_arn]")
      end
    end

    class MetricsConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MetricsConfiguration, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        MetricsFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
      end
    end

    class MetricsConfigurationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MetricsConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MetricsFilter
      def self.validate!(input, context:)
        case input
        when Types::MetricsFilter::Prefix
          Hearth::Validator.validate!(input.__getobj__, ::String, context: context)
        when Types::MetricsFilter::Tag
          Tag.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::MetricsFilter::AccessPointArn
          Hearth::Validator.validate!(input.__getobj__, ::String, context: context)
        when Types::MetricsFilter::And
          MetricsAndOperator.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::MetricsFilter, got #{input.class}."
        end
      end

      class Prefix
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::String, context: context)
        end
      end

      class Tag
        def self.validate!(input, context:)
          Validators::Tag.validate!(input, context: context) unless input.nil?
        end
      end

      class AccessPointArn
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::String, context: context)
        end
      end

      class And
        def self.validate!(input, context:)
          Validators::MetricsAndOperator.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class MultipartUpload
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MultipartUpload, context: context)
        Hearth::Validator.validate!(input[:upload_id], ::String, context: "#{context}[:upload_id]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:initiated], ::Time, context: "#{context}[:initiated]")
        Hearth::Validator.validate!(input[:storage_class], ::String, context: "#{context}[:storage_class]")
        Owner.validate!(input[:owner], context: "#{context}[:owner]") unless input[:owner].nil?
        Initiator.validate!(input[:initiator], context: "#{context}[:initiator]") unless input[:initiator].nil?
        Hearth::Validator.validate!(input[:checksum_algorithm], ::String, context: "#{context}[:checksum_algorithm]")
      end
    end

    class MultipartUploadList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MultipartUpload.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NoSuchBucket
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoSuchBucket, context: context)
      end
    end

    class NoSuchKey
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoSuchKey, context: context)
      end
    end

    class NoSuchUpload
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoSuchUpload, context: context)
      end
    end

    class NoncurrentVersionExpiration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoncurrentVersionExpiration, context: context)
        Hearth::Validator.validate!(input[:noncurrent_days], ::Integer, context: "#{context}[:noncurrent_days]")
        Hearth::Validator.validate!(input[:newer_noncurrent_versions], ::Integer, context: "#{context}[:newer_noncurrent_versions]")
      end
    end

    class NoncurrentVersionTransition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoncurrentVersionTransition, context: context)
        Hearth::Validator.validate!(input[:noncurrent_days], ::Integer, context: "#{context}[:noncurrent_days]")
        Hearth::Validator.validate!(input[:storage_class], ::String, context: "#{context}[:storage_class]")
        Hearth::Validator.validate!(input[:newer_noncurrent_versions], ::Integer, context: "#{context}[:newer_noncurrent_versions]")
      end
    end

    class NoncurrentVersionTransitionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          NoncurrentVersionTransition.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NotFound
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotFound, context: context)
      end
    end

    class NotificationConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotificationConfiguration, context: context)
        TopicConfigurationList.validate!(input[:topic_configurations], context: "#{context}[:topic_configurations]") unless input[:topic_configurations].nil?
        QueueConfigurationList.validate!(input[:queue_configurations], context: "#{context}[:queue_configurations]") unless input[:queue_configurations].nil?
        LambdaFunctionConfigurationList.validate!(input[:lambda_function_configurations], context: "#{context}[:lambda_function_configurations]") unless input[:lambda_function_configurations].nil?
        EventBridgeConfiguration.validate!(input[:event_bridge_configuration], context: "#{context}[:event_bridge_configuration]") unless input[:event_bridge_configuration].nil?
      end
    end

    class NotificationConfigurationFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotificationConfigurationFilter, context: context)
        S3KeyFilter.validate!(input[:key], context: "#{context}[:key]") unless input[:key].nil?
      end
    end

    class Object
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Object, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:last_modified], ::Time, context: "#{context}[:last_modified]")
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
        ChecksumAlgorithmList.validate!(input[:checksum_algorithm], context: "#{context}[:checksum_algorithm]") unless input[:checksum_algorithm].nil?
        Hearth::Validator.validate!(input[:size], ::Integer, context: "#{context}[:size]")
        Hearth::Validator.validate!(input[:storage_class], ::String, context: "#{context}[:storage_class]")
        Owner.validate!(input[:owner], context: "#{context}[:owner]") unless input[:owner].nil?
      end
    end

    class ObjectAlreadyInActiveTierError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ObjectAlreadyInActiveTierError, context: context)
      end
    end

    class ObjectAttributesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ObjectIdentifier
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ObjectIdentifier, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
      end
    end

    class ObjectIdentifierList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ObjectIdentifier.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ObjectList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Object.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ObjectLockConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ObjectLockConfiguration, context: context)
        Hearth::Validator.validate!(input[:object_lock_enabled], ::String, context: "#{context}[:object_lock_enabled]")
        ObjectLockRule.validate!(input[:rule], context: "#{context}[:rule]") unless input[:rule].nil?
      end
    end

    class ObjectLockLegalHold
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ObjectLockLegalHold, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class ObjectLockRetention
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ObjectLockRetention, context: context)
        Hearth::Validator.validate!(input[:mode], ::String, context: "#{context}[:mode]")
        Hearth::Validator.validate!(input[:retain_until_date], ::Time, context: "#{context}[:retain_until_date]")
      end
    end

    class ObjectLockRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ObjectLockRule, context: context)
        DefaultRetention.validate!(input[:default_retention], context: "#{context}[:default_retention]") unless input[:default_retention].nil?
      end
    end

    class ObjectNotInActiveTierError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ObjectNotInActiveTierError, context: context)
      end
    end

    class ObjectPart
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ObjectPart, context: context)
        Hearth::Validator.validate!(input[:part_number], ::Integer, context: "#{context}[:part_number]")
        Hearth::Validator.validate!(input[:size], ::Integer, context: "#{context}[:size]")
        Hearth::Validator.validate!(input[:checksum_crc32], ::String, context: "#{context}[:checksum_crc32]")
        Hearth::Validator.validate!(input[:checksum_crc32_c], ::String, context: "#{context}[:checksum_crc32_c]")
        Hearth::Validator.validate!(input[:checksum_sha1], ::String, context: "#{context}[:checksum_sha1]")
        Hearth::Validator.validate!(input[:checksum_sha256], ::String, context: "#{context}[:checksum_sha256]")
      end
    end

    class ObjectVersion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ObjectVersion, context: context)
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
        ChecksumAlgorithmList.validate!(input[:checksum_algorithm], context: "#{context}[:checksum_algorithm]") unless input[:checksum_algorithm].nil?
        Hearth::Validator.validate!(input[:size], ::Integer, context: "#{context}[:size]")
        Hearth::Validator.validate!(input[:storage_class], ::String, context: "#{context}[:storage_class]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate!(input[:is_latest], ::TrueClass, ::FalseClass, context: "#{context}[:is_latest]")
        Hearth::Validator.validate!(input[:last_modified], ::Time, context: "#{context}[:last_modified]")
        Owner.validate!(input[:owner], context: "#{context}[:owner]") unless input[:owner].nil?
      end
    end

    class ObjectVersionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ObjectVersion.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OutputLocation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OutputLocation, context: context)
        S3Location.validate!(input[:s3], context: "#{context}[:s3]") unless input[:s3].nil?
      end
    end

    class OutputSerialization
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OutputSerialization, context: context)
        CSVOutput.validate!(input[:csv], context: "#{context}[:csv]") unless input[:csv].nil?
        JSONOutput.validate!(input[:json], context: "#{context}[:json]") unless input[:json].nil?
      end
    end

    class Owner
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Owner, context: context)
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class OwnershipControls
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OwnershipControls, context: context)
        OwnershipControlsRules.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
      end
    end

    class OwnershipControlsRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OwnershipControlsRule, context: context)
        Hearth::Validator.validate!(input[:object_ownership], ::String, context: "#{context}[:object_ownership]")
      end
    end

    class OwnershipControlsRules
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          OwnershipControlsRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ParquetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ParquetInput, context: context)
      end
    end

    class Part
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Part, context: context)
        Hearth::Validator.validate!(input[:part_number], ::Integer, context: "#{context}[:part_number]")
        Hearth::Validator.validate!(input[:last_modified], ::Time, context: "#{context}[:last_modified]")
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
        Hearth::Validator.validate!(input[:size], ::Integer, context: "#{context}[:size]")
        Hearth::Validator.validate!(input[:checksum_crc32], ::String, context: "#{context}[:checksum_crc32]")
        Hearth::Validator.validate!(input[:checksum_crc32_c], ::String, context: "#{context}[:checksum_crc32_c]")
        Hearth::Validator.validate!(input[:checksum_sha1], ::String, context: "#{context}[:checksum_sha1]")
        Hearth::Validator.validate!(input[:checksum_sha256], ::String, context: "#{context}[:checksum_sha256]")
      end
    end

    class Parts
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Part.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PartsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ObjectPart.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PolicyStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PolicyStatus, context: context)
        Hearth::Validator.validate!(input[:is_public], ::TrueClass, ::FalseClass, context: "#{context}[:is_public]")
      end
    end

    class Progress
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Progress, context: context)
        Hearth::Validator.validate!(input[:bytes_scanned], ::Integer, context: "#{context}[:bytes_scanned]")
        Hearth::Validator.validate!(input[:bytes_processed], ::Integer, context: "#{context}[:bytes_processed]")
        Hearth::Validator.validate!(input[:bytes_returned], ::Integer, context: "#{context}[:bytes_returned]")
      end
    end

    class ProgressEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProgressEvent, context: context)
        Progress.validate!(input[:details], context: "#{context}[:details]") unless input[:details].nil?
      end
    end

    class PublicAccessBlockConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PublicAccessBlockConfiguration, context: context)
        Hearth::Validator.validate!(input[:block_public_acls], ::TrueClass, ::FalseClass, context: "#{context}[:block_public_acls]")
        Hearth::Validator.validate!(input[:ignore_public_acls], ::TrueClass, ::FalseClass, context: "#{context}[:ignore_public_acls]")
        Hearth::Validator.validate!(input[:block_public_policy], ::TrueClass, ::FalseClass, context: "#{context}[:block_public_policy]")
        Hearth::Validator.validate!(input[:restrict_public_buckets], ::TrueClass, ::FalseClass, context: "#{context}[:restrict_public_buckets]")
      end
    end

    class PutBucketAccelerateConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutBucketAccelerateConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        AccelerateConfiguration.validate!(input[:accelerate_configuration], context: "#{context}[:accelerate_configuration]") unless input[:accelerate_configuration].nil?
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
        Hearth::Validator.validate!(input[:checksum_algorithm], ::String, context: "#{context}[:checksum_algorithm]")
      end
    end

    class PutBucketAccelerateConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutBucketAccelerateConfigurationOutput, context: context)
      end
    end

    class PutBucketAclInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutBucketAclInput, context: context)
        Hearth::Validator.validate!(input[:acl], ::String, context: "#{context}[:acl]")
        AccessControlPolicy.validate!(input[:access_control_policy], context: "#{context}[:access_control_policy]") unless input[:access_control_policy].nil?
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:content_md5], ::String, context: "#{context}[:content_md5]")
        Hearth::Validator.validate!(input[:checksum_algorithm], ::String, context: "#{context}[:checksum_algorithm]")
        Hearth::Validator.validate!(input[:grant_full_control], ::String, context: "#{context}[:grant_full_control]")
        Hearth::Validator.validate!(input[:grant_read], ::String, context: "#{context}[:grant_read]")
        Hearth::Validator.validate!(input[:grant_read_acp], ::String, context: "#{context}[:grant_read_acp]")
        Hearth::Validator.validate!(input[:grant_write], ::String, context: "#{context}[:grant_write]")
        Hearth::Validator.validate!(input[:grant_write_acp], ::String, context: "#{context}[:grant_write_acp]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class PutBucketAclOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutBucketAclOutput, context: context)
      end
    end

    class PutBucketAnalyticsConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutBucketAnalyticsConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        AnalyticsConfiguration.validate!(input[:analytics_configuration], context: "#{context}[:analytics_configuration]") unless input[:analytics_configuration].nil?
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class PutBucketAnalyticsConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutBucketAnalyticsConfigurationOutput, context: context)
      end
    end

    class PutBucketCorsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutBucketCorsInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        CORSConfiguration.validate!(input[:cors_configuration], context: "#{context}[:cors_configuration]") unless input[:cors_configuration].nil?
        Hearth::Validator.validate!(input[:content_md5], ::String, context: "#{context}[:content_md5]")
        Hearth::Validator.validate!(input[:checksum_algorithm], ::String, context: "#{context}[:checksum_algorithm]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class PutBucketCorsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutBucketCorsOutput, context: context)
      end
    end

    class PutBucketEncryptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutBucketEncryptionInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:content_md5], ::String, context: "#{context}[:content_md5]")
        Hearth::Validator.validate!(input[:checksum_algorithm], ::String, context: "#{context}[:checksum_algorithm]")
        ServerSideEncryptionConfiguration.validate!(input[:server_side_encryption_configuration], context: "#{context}[:server_side_encryption_configuration]") unless input[:server_side_encryption_configuration].nil?
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class PutBucketEncryptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutBucketEncryptionOutput, context: context)
      end
    end

    class PutBucketIntelligentTieringConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutBucketIntelligentTieringConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        IntelligentTieringConfiguration.validate!(input[:intelligent_tiering_configuration], context: "#{context}[:intelligent_tiering_configuration]") unless input[:intelligent_tiering_configuration].nil?
      end
    end

    class PutBucketIntelligentTieringConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutBucketIntelligentTieringConfigurationOutput, context: context)
      end
    end

    class PutBucketInventoryConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutBucketInventoryConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        InventoryConfiguration.validate!(input[:inventory_configuration], context: "#{context}[:inventory_configuration]") unless input[:inventory_configuration].nil?
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class PutBucketInventoryConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutBucketInventoryConfigurationOutput, context: context)
      end
    end

    class PutBucketLifecycleConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutBucketLifecycleConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:checksum_algorithm], ::String, context: "#{context}[:checksum_algorithm]")
        BucketLifecycleConfiguration.validate!(input[:lifecycle_configuration], context: "#{context}[:lifecycle_configuration]") unless input[:lifecycle_configuration].nil?
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class PutBucketLifecycleConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutBucketLifecycleConfigurationOutput, context: context)
      end
    end

    class PutBucketLoggingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutBucketLoggingInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        BucketLoggingStatus.validate!(input[:bucket_logging_status], context: "#{context}[:bucket_logging_status]") unless input[:bucket_logging_status].nil?
        Hearth::Validator.validate!(input[:content_md5], ::String, context: "#{context}[:content_md5]")
        Hearth::Validator.validate!(input[:checksum_algorithm], ::String, context: "#{context}[:checksum_algorithm]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class PutBucketLoggingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutBucketLoggingOutput, context: context)
      end
    end

    class PutBucketMetricsConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutBucketMetricsConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        MetricsConfiguration.validate!(input[:metrics_configuration], context: "#{context}[:metrics_configuration]") unless input[:metrics_configuration].nil?
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class PutBucketMetricsConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutBucketMetricsConfigurationOutput, context: context)
      end
    end

    class PutBucketNotificationConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutBucketNotificationConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        NotificationConfiguration.validate!(input[:notification_configuration], context: "#{context}[:notification_configuration]") unless input[:notification_configuration].nil?
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
        Hearth::Validator.validate!(input[:skip_destination_validation], ::TrueClass, ::FalseClass, context: "#{context}[:skip_destination_validation]")
      end
    end

    class PutBucketNotificationConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutBucketNotificationConfigurationOutput, context: context)
      end
    end

    class PutBucketOwnershipControlsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutBucketOwnershipControlsInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:content_md5], ::String, context: "#{context}[:content_md5]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
        OwnershipControls.validate!(input[:ownership_controls], context: "#{context}[:ownership_controls]") unless input[:ownership_controls].nil?
      end
    end

    class PutBucketOwnershipControlsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutBucketOwnershipControlsOutput, context: context)
      end
    end

    class PutBucketPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutBucketPolicyInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:content_md5], ::String, context: "#{context}[:content_md5]")
        Hearth::Validator.validate!(input[:checksum_algorithm], ::String, context: "#{context}[:checksum_algorithm]")
        Hearth::Validator.validate!(input[:confirm_remove_self_bucket_access], ::TrueClass, ::FalseClass, context: "#{context}[:confirm_remove_self_bucket_access]")
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class PutBucketPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutBucketPolicyOutput, context: context)
      end
    end

    class PutBucketReplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutBucketReplicationInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:content_md5], ::String, context: "#{context}[:content_md5]")
        Hearth::Validator.validate!(input[:checksum_algorithm], ::String, context: "#{context}[:checksum_algorithm]")
        ReplicationConfiguration.validate!(input[:replication_configuration], context: "#{context}[:replication_configuration]") unless input[:replication_configuration].nil?
        Hearth::Validator.validate!(input[:token], ::String, context: "#{context}[:token]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class PutBucketReplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutBucketReplicationOutput, context: context)
      end
    end

    class PutBucketRequestPaymentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutBucketRequestPaymentInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:content_md5], ::String, context: "#{context}[:content_md5]")
        Hearth::Validator.validate!(input[:checksum_algorithm], ::String, context: "#{context}[:checksum_algorithm]")
        RequestPaymentConfiguration.validate!(input[:request_payment_configuration], context: "#{context}[:request_payment_configuration]") unless input[:request_payment_configuration].nil?
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class PutBucketRequestPaymentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutBucketRequestPaymentOutput, context: context)
      end
    end

    class PutBucketTaggingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutBucketTaggingInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:content_md5], ::String, context: "#{context}[:content_md5]")
        Hearth::Validator.validate!(input[:checksum_algorithm], ::String, context: "#{context}[:checksum_algorithm]")
        Tagging.validate!(input[:tagging], context: "#{context}[:tagging]") unless input[:tagging].nil?
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class PutBucketTaggingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutBucketTaggingOutput, context: context)
      end
    end

    class PutBucketVersioningInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutBucketVersioningInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:content_md5], ::String, context: "#{context}[:content_md5]")
        Hearth::Validator.validate!(input[:checksum_algorithm], ::String, context: "#{context}[:checksum_algorithm]")
        Hearth::Validator.validate!(input[:mfa], ::String, context: "#{context}[:mfa]")
        VersioningConfiguration.validate!(input[:versioning_configuration], context: "#{context}[:versioning_configuration]") unless input[:versioning_configuration].nil?
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class PutBucketVersioningOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutBucketVersioningOutput, context: context)
      end
    end

    class PutBucketWebsiteInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutBucketWebsiteInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:content_md5], ::String, context: "#{context}[:content_md5]")
        Hearth::Validator.validate!(input[:checksum_algorithm], ::String, context: "#{context}[:checksum_algorithm]")
        WebsiteConfiguration.validate!(input[:website_configuration], context: "#{context}[:website_configuration]") unless input[:website_configuration].nil?
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class PutBucketWebsiteOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutBucketWebsiteOutput, context: context)
      end
    end

    class PutObjectAclInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutObjectAclInput, context: context)
        Hearth::Validator.validate!(input[:acl], ::String, context: "#{context}[:acl]")
        AccessControlPolicy.validate!(input[:access_control_policy], context: "#{context}[:access_control_policy]") unless input[:access_control_policy].nil?
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:content_md5], ::String, context: "#{context}[:content_md5]")
        Hearth::Validator.validate!(input[:checksum_algorithm], ::String, context: "#{context}[:checksum_algorithm]")
        Hearth::Validator.validate!(input[:grant_full_control], ::String, context: "#{context}[:grant_full_control]")
        Hearth::Validator.validate!(input[:grant_read], ::String, context: "#{context}[:grant_read]")
        Hearth::Validator.validate!(input[:grant_read_acp], ::String, context: "#{context}[:grant_read_acp]")
        Hearth::Validator.validate!(input[:grant_write], ::String, context: "#{context}[:grant_write]")
        Hearth::Validator.validate!(input[:grant_write_acp], ::String, context: "#{context}[:grant_write_acp]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:request_payer], ::String, context: "#{context}[:request_payer]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class PutObjectAclOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutObjectAclOutput, context: context)
        Hearth::Validator.validate!(input[:request_charged], ::String, context: "#{context}[:request_charged]")
      end
    end

    class PutObjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutObjectInput, context: context)
        Hearth::Validator.validate!(input[:acl], ::String, context: "#{context}[:acl]")
        unless input[:body].respond_to?(:read) || input[:body].respond_to?(:readpartial)
          raise ArgumentError, "Expected #{context} to be an IO like object, got #{input[:body].class}"
        end
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:cache_control], ::String, context: "#{context}[:cache_control]")
        Hearth::Validator.validate!(input[:content_disposition], ::String, context: "#{context}[:content_disposition]")
        Hearth::Validator.validate!(input[:content_encoding], ::String, context: "#{context}[:content_encoding]")
        Hearth::Validator.validate!(input[:content_language], ::String, context: "#{context}[:content_language]")
        Hearth::Validator.validate!(input[:content_length], ::Integer, context: "#{context}[:content_length]")
        Hearth::Validator.validate!(input[:content_md5], ::String, context: "#{context}[:content_md5]")
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
        Hearth::Validator.validate!(input[:checksum_algorithm], ::String, context: "#{context}[:checksum_algorithm]")
        Hearth::Validator.validate!(input[:checksum_crc32], ::String, context: "#{context}[:checksum_crc32]")
        Hearth::Validator.validate!(input[:checksum_crc32_c], ::String, context: "#{context}[:checksum_crc32_c]")
        Hearth::Validator.validate!(input[:checksum_sha1], ::String, context: "#{context}[:checksum_sha1]")
        Hearth::Validator.validate!(input[:checksum_sha256], ::String, context: "#{context}[:checksum_sha256]")
        Hearth::Validator.validate!(input[:expires], ::Time, context: "#{context}[:expires]")
        Hearth::Validator.validate!(input[:grant_full_control], ::String, context: "#{context}[:grant_full_control]")
        Hearth::Validator.validate!(input[:grant_read], ::String, context: "#{context}[:grant_read]")
        Hearth::Validator.validate!(input[:grant_read_acp], ::String, context: "#{context}[:grant_read_acp]")
        Hearth::Validator.validate!(input[:grant_write_acp], ::String, context: "#{context}[:grant_write_acp]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Metadata.validate!(input[:metadata], context: "#{context}[:metadata]") unless input[:metadata].nil?
        Hearth::Validator.validate!(input[:server_side_encryption], ::String, context: "#{context}[:server_side_encryption]")
        Hearth::Validator.validate!(input[:storage_class], ::String, context: "#{context}[:storage_class]")
        Hearth::Validator.validate!(input[:website_redirect_location], ::String, context: "#{context}[:website_redirect_location]")
        Hearth::Validator.validate!(input[:sse_customer_algorithm], ::String, context: "#{context}[:sse_customer_algorithm]")
        Hearth::Validator.validate!(input[:sse_customer_key], ::String, context: "#{context}[:sse_customer_key]")
        Hearth::Validator.validate!(input[:sse_customer_key_md5], ::String, context: "#{context}[:sse_customer_key_md5]")
        Hearth::Validator.validate!(input[:ssekms_key_id], ::String, context: "#{context}[:ssekms_key_id]")
        Hearth::Validator.validate!(input[:ssekms_encryption_context], ::String, context: "#{context}[:ssekms_encryption_context]")
        Hearth::Validator.validate!(input[:bucket_key_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:bucket_key_enabled]")
        Hearth::Validator.validate!(input[:request_payer], ::String, context: "#{context}[:request_payer]")
        Hearth::Validator.validate!(input[:tagging], ::String, context: "#{context}[:tagging]")
        Hearth::Validator.validate!(input[:object_lock_mode], ::String, context: "#{context}[:object_lock_mode]")
        Hearth::Validator.validate!(input[:object_lock_retain_until_date], ::Time, context: "#{context}[:object_lock_retain_until_date]")
        Hearth::Validator.validate!(input[:object_lock_legal_hold_status], ::String, context: "#{context}[:object_lock_legal_hold_status]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class PutObjectLegalHoldInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutObjectLegalHoldInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        ObjectLockLegalHold.validate!(input[:legal_hold], context: "#{context}[:legal_hold]") unless input[:legal_hold].nil?
        Hearth::Validator.validate!(input[:request_payer], ::String, context: "#{context}[:request_payer]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate!(input[:content_md5], ::String, context: "#{context}[:content_md5]")
        Hearth::Validator.validate!(input[:checksum_algorithm], ::String, context: "#{context}[:checksum_algorithm]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class PutObjectLegalHoldOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutObjectLegalHoldOutput, context: context)
        Hearth::Validator.validate!(input[:request_charged], ::String, context: "#{context}[:request_charged]")
      end
    end

    class PutObjectLockConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutObjectLockConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        ObjectLockConfiguration.validate!(input[:object_lock_configuration], context: "#{context}[:object_lock_configuration]") unless input[:object_lock_configuration].nil?
        Hearth::Validator.validate!(input[:request_payer], ::String, context: "#{context}[:request_payer]")
        Hearth::Validator.validate!(input[:token], ::String, context: "#{context}[:token]")
        Hearth::Validator.validate!(input[:content_md5], ::String, context: "#{context}[:content_md5]")
        Hearth::Validator.validate!(input[:checksum_algorithm], ::String, context: "#{context}[:checksum_algorithm]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class PutObjectLockConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutObjectLockConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:request_charged], ::String, context: "#{context}[:request_charged]")
      end
    end

    class PutObjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutObjectOutput, context: context)
        Hearth::Validator.validate!(input[:expiration], ::String, context: "#{context}[:expiration]")
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
        Hearth::Validator.validate!(input[:checksum_crc32], ::String, context: "#{context}[:checksum_crc32]")
        Hearth::Validator.validate!(input[:checksum_crc32_c], ::String, context: "#{context}[:checksum_crc32_c]")
        Hearth::Validator.validate!(input[:checksum_sha1], ::String, context: "#{context}[:checksum_sha1]")
        Hearth::Validator.validate!(input[:checksum_sha256], ::String, context: "#{context}[:checksum_sha256]")
        Hearth::Validator.validate!(input[:server_side_encryption], ::String, context: "#{context}[:server_side_encryption]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate!(input[:sse_customer_algorithm], ::String, context: "#{context}[:sse_customer_algorithm]")
        Hearth::Validator.validate!(input[:sse_customer_key_md5], ::String, context: "#{context}[:sse_customer_key_md5]")
        Hearth::Validator.validate!(input[:ssekms_key_id], ::String, context: "#{context}[:ssekms_key_id]")
        Hearth::Validator.validate!(input[:ssekms_encryption_context], ::String, context: "#{context}[:ssekms_encryption_context]")
        Hearth::Validator.validate!(input[:bucket_key_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:bucket_key_enabled]")
        Hearth::Validator.validate!(input[:request_charged], ::String, context: "#{context}[:request_charged]")
      end
    end

    class PutObjectRetentionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutObjectRetentionInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        ObjectLockRetention.validate!(input[:retention], context: "#{context}[:retention]") unless input[:retention].nil?
        Hearth::Validator.validate!(input[:request_payer], ::String, context: "#{context}[:request_payer]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate!(input[:bypass_governance_retention], ::TrueClass, ::FalseClass, context: "#{context}[:bypass_governance_retention]")
        Hearth::Validator.validate!(input[:content_md5], ::String, context: "#{context}[:content_md5]")
        Hearth::Validator.validate!(input[:checksum_algorithm], ::String, context: "#{context}[:checksum_algorithm]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class PutObjectRetentionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutObjectRetentionOutput, context: context)
        Hearth::Validator.validate!(input[:request_charged], ::String, context: "#{context}[:request_charged]")
      end
    end

    class PutObjectTaggingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutObjectTaggingInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate!(input[:content_md5], ::String, context: "#{context}[:content_md5]")
        Hearth::Validator.validate!(input[:checksum_algorithm], ::String, context: "#{context}[:checksum_algorithm]")
        Tagging.validate!(input[:tagging], context: "#{context}[:tagging]") unless input[:tagging].nil?
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
        Hearth::Validator.validate!(input[:request_payer], ::String, context: "#{context}[:request_payer]")
      end
    end

    class PutObjectTaggingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutObjectTaggingOutput, context: context)
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
      end
    end

    class PutPublicAccessBlockInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutPublicAccessBlockInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:content_md5], ::String, context: "#{context}[:content_md5]")
        Hearth::Validator.validate!(input[:checksum_algorithm], ::String, context: "#{context}[:checksum_algorithm]")
        PublicAccessBlockConfiguration.validate!(input[:public_access_block_configuration], context: "#{context}[:public_access_block_configuration]") unless input[:public_access_block_configuration].nil?
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class PutPublicAccessBlockOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutPublicAccessBlockOutput, context: context)
      end
    end

    class QueueConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QueueConfiguration, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:queue_arn], ::String, context: "#{context}[:queue_arn]")
        EventList.validate!(input[:events], context: "#{context}[:events]") unless input[:events].nil?
        NotificationConfigurationFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
      end
    end

    class QueueConfigurationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          QueueConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RecordsEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecordsEvent, context: context)
        Hearth::Validator.validate!(input[:payload], ::String, context: "#{context}[:payload]")
      end
    end

    class Redirect
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Redirect, context: context)
        Hearth::Validator.validate!(input[:host_name], ::String, context: "#{context}[:host_name]")
        Hearth::Validator.validate!(input[:http_redirect_code], ::String, context: "#{context}[:http_redirect_code]")
        Hearth::Validator.validate!(input[:protocol], ::String, context: "#{context}[:protocol]")
        Hearth::Validator.validate!(input[:replace_key_prefix_with], ::String, context: "#{context}[:replace_key_prefix_with]")
        Hearth::Validator.validate!(input[:replace_key_with], ::String, context: "#{context}[:replace_key_with]")
      end
    end

    class RedirectAllRequestsTo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RedirectAllRequestsTo, context: context)
        Hearth::Validator.validate!(input[:host_name], ::String, context: "#{context}[:host_name]")
        Hearth::Validator.validate!(input[:protocol], ::String, context: "#{context}[:protocol]")
      end
    end

    class ReplicaModifications
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplicaModifications, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class ReplicationConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplicationConfiguration, context: context)
        Hearth::Validator.validate!(input[:role], ::String, context: "#{context}[:role]")
        ReplicationRules.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
      end
    end

    class ReplicationRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplicationRule, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:priority], ::Integer, context: "#{context}[:priority]")
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
        ReplicationRuleFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        SourceSelectionCriteria.validate!(input[:source_selection_criteria], context: "#{context}[:source_selection_criteria]") unless input[:source_selection_criteria].nil?
        ExistingObjectReplication.validate!(input[:existing_object_replication], context: "#{context}[:existing_object_replication]") unless input[:existing_object_replication].nil?
        Destination.validate!(input[:destination], context: "#{context}[:destination]") unless input[:destination].nil?
        DeleteMarkerReplication.validate!(input[:delete_marker_replication], context: "#{context}[:delete_marker_replication]") unless input[:delete_marker_replication].nil?
      end
    end

    class ReplicationRuleAndOperator
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplicationRuleAndOperator, context: context)
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
        TagSet.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ReplicationRuleFilter
      def self.validate!(input, context:)
        case input
        when Types::ReplicationRuleFilter::Prefix
          Hearth::Validator.validate!(input.__getobj__, ::String, context: context)
        when Types::ReplicationRuleFilter::Tag
          Tag.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::ReplicationRuleFilter::And
          ReplicationRuleAndOperator.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::ReplicationRuleFilter, got #{input.class}."
        end
      end

      class Prefix
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::String, context: context)
        end
      end

      class Tag
        def self.validate!(input, context:)
          Validators::Tag.validate!(input, context: context) unless input.nil?
        end
      end

      class And
        def self.validate!(input, context:)
          Validators::ReplicationRuleAndOperator.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class ReplicationRules
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ReplicationRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReplicationTime
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplicationTime, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        ReplicationTimeValue.validate!(input[:time], context: "#{context}[:time]") unless input[:time].nil?
      end
    end

    class ReplicationTimeValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplicationTimeValue, context: context)
        Hearth::Validator.validate!(input[:minutes], ::Integer, context: "#{context}[:minutes]")
      end
    end

    class RequestPaymentConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RequestPaymentConfiguration, context: context)
        Hearth::Validator.validate!(input[:payer], ::String, context: "#{context}[:payer]")
      end
    end

    class RequestProgress
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RequestProgress, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class RestoreObjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestoreObjectInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
        RestoreRequest.validate!(input[:restore_request], context: "#{context}[:restore_request]") unless input[:restore_request].nil?
        Hearth::Validator.validate!(input[:request_payer], ::String, context: "#{context}[:request_payer]")
        Hearth::Validator.validate!(input[:checksum_algorithm], ::String, context: "#{context}[:checksum_algorithm]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class RestoreObjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestoreObjectOutput, context: context)
        Hearth::Validator.validate!(input[:request_charged], ::String, context: "#{context}[:request_charged]")
        Hearth::Validator.validate!(input[:restore_output_path], ::String, context: "#{context}[:restore_output_path]")
      end
    end

    class RestoreRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestoreRequest, context: context)
        Hearth::Validator.validate!(input[:days], ::Integer, context: "#{context}[:days]")
        GlacierJobParameters.validate!(input[:glacier_job_parameters], context: "#{context}[:glacier_job_parameters]") unless input[:glacier_job_parameters].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:tier], ::String, context: "#{context}[:tier]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        SelectParameters.validate!(input[:select_parameters], context: "#{context}[:select_parameters]") unless input[:select_parameters].nil?
        OutputLocation.validate!(input[:output_location], context: "#{context}[:output_location]") unless input[:output_location].nil?
      end
    end

    class RoutingRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RoutingRule, context: context)
        Condition.validate!(input[:condition], context: "#{context}[:condition]") unless input[:condition].nil?
        Redirect.validate!(input[:redirect], context: "#{context}[:redirect]") unless input[:redirect].nil?
      end
    end

    class RoutingRules
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RoutingRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class S3KeyFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3KeyFilter, context: context)
        FilterRuleList.validate!(input[:filter_rules], context: "#{context}[:filter_rules]") unless input[:filter_rules].nil?
      end
    end

    class S3Location
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3Location, context: context)
        Hearth::Validator.validate!(input[:bucket_name], ::String, context: "#{context}[:bucket_name]")
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
        Encryption.validate!(input[:encryption], context: "#{context}[:encryption]") unless input[:encryption].nil?
        Hearth::Validator.validate!(input[:canned_acl], ::String, context: "#{context}[:canned_acl]")
        Grants.validate!(input[:access_control_list], context: "#{context}[:access_control_list]") unless input[:access_control_list].nil?
        Tagging.validate!(input[:tagging], context: "#{context}[:tagging]") unless input[:tagging].nil?
        UserMetadata.validate!(input[:user_metadata], context: "#{context}[:user_metadata]") unless input[:user_metadata].nil?
        Hearth::Validator.validate!(input[:storage_class], ::String, context: "#{context}[:storage_class]")
      end
    end

    class SSEKMS
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SSEKMS, context: context)
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
      end
    end

    class SSES3
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SSES3, context: context)
      end
    end

    class ScanRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScanRange, context: context)
        Hearth::Validator.validate!(input[:start], ::Integer, context: "#{context}[:start]")
        Hearth::Validator.validate!(input[:end], ::Integer, context: "#{context}[:end]")
      end
    end

    class SelectObjectContentEventStream
      def self.validate!(input, context:)
        case input
        when Types::SelectObjectContentEventStream::Records
          RecordsEvent.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::SelectObjectContentEventStream::Stats
          StatsEvent.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::SelectObjectContentEventStream::Progress
          ProgressEvent.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::SelectObjectContentEventStream::Cont
          ContinuationEvent.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::SelectObjectContentEventStream::End
          EndEvent.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::SelectObjectContentEventStream, got #{input.class}."
        end
      end

      class Records
        def self.validate!(input, context:)
          Validators::RecordsEvent.validate!(input, context: context) unless input.nil?
        end
      end

      class Stats
        def self.validate!(input, context:)
          Validators::StatsEvent.validate!(input, context: context) unless input.nil?
        end
      end

      class Progress
        def self.validate!(input, context:)
          Validators::ProgressEvent.validate!(input, context: context) unless input.nil?
        end
      end

      class Cont
        def self.validate!(input, context:)
          Validators::ContinuationEvent.validate!(input, context: context) unless input.nil?
        end
      end

      class End
        def self.validate!(input, context:)
          Validators::EndEvent.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class SelectObjectContentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SelectObjectContentInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:sse_customer_algorithm], ::String, context: "#{context}[:sse_customer_algorithm]")
        Hearth::Validator.validate!(input[:sse_customer_key], ::String, context: "#{context}[:sse_customer_key]")
        Hearth::Validator.validate!(input[:sse_customer_key_md5], ::String, context: "#{context}[:sse_customer_key_md5]")
        Hearth::Validator.validate!(input[:expression], ::String, context: "#{context}[:expression]")
        Hearth::Validator.validate!(input[:expression_type], ::String, context: "#{context}[:expression_type]")
        RequestProgress.validate!(input[:request_progress], context: "#{context}[:request_progress]") unless input[:request_progress].nil?
        InputSerialization.validate!(input[:input_serialization], context: "#{context}[:input_serialization]") unless input[:input_serialization].nil?
        OutputSerialization.validate!(input[:output_serialization], context: "#{context}[:output_serialization]") unless input[:output_serialization].nil?
        ScanRange.validate!(input[:scan_range], context: "#{context}[:scan_range]") unless input[:scan_range].nil?
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class SelectObjectContentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SelectObjectContentOutput, context: context)
        SelectObjectContentEventStream.validate!(input[:payload], context: "#{context}[:payload]") unless input[:payload].nil?
      end
    end

    class SelectParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SelectParameters, context: context)
        InputSerialization.validate!(input[:input_serialization], context: "#{context}[:input_serialization]") unless input[:input_serialization].nil?
        Hearth::Validator.validate!(input[:expression_type], ::String, context: "#{context}[:expression_type]")
        Hearth::Validator.validate!(input[:expression], ::String, context: "#{context}[:expression]")
        OutputSerialization.validate!(input[:output_serialization], context: "#{context}[:output_serialization]") unless input[:output_serialization].nil?
      end
    end

    class ServerSideEncryptionByDefault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServerSideEncryptionByDefault, context: context)
        Hearth::Validator.validate!(input[:sse_algorithm], ::String, context: "#{context}[:sse_algorithm]")
        Hearth::Validator.validate!(input[:kms_master_key_id], ::String, context: "#{context}[:kms_master_key_id]")
      end
    end

    class ServerSideEncryptionConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServerSideEncryptionConfiguration, context: context)
        ServerSideEncryptionRules.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
      end
    end

    class ServerSideEncryptionRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServerSideEncryptionRule, context: context)
        ServerSideEncryptionByDefault.validate!(input[:apply_server_side_encryption_by_default], context: "#{context}[:apply_server_side_encryption_by_default]") unless input[:apply_server_side_encryption_by_default].nil?
        Hearth::Validator.validate!(input[:bucket_key_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:bucket_key_enabled]")
      end
    end

    class ServerSideEncryptionRules
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ServerSideEncryptionRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SourceSelectionCriteria
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SourceSelectionCriteria, context: context)
        SseKmsEncryptedObjects.validate!(input[:sse_kms_encrypted_objects], context: "#{context}[:sse_kms_encrypted_objects]") unless input[:sse_kms_encrypted_objects].nil?
        ReplicaModifications.validate!(input[:replica_modifications], context: "#{context}[:replica_modifications]") unless input[:replica_modifications].nil?
      end
    end

    class SseKmsEncryptedObjects
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SseKmsEncryptedObjects, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class Stats
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Stats, context: context)
        Hearth::Validator.validate!(input[:bytes_scanned], ::Integer, context: "#{context}[:bytes_scanned]")
        Hearth::Validator.validate!(input[:bytes_processed], ::Integer, context: "#{context}[:bytes_processed]")
        Hearth::Validator.validate!(input[:bytes_returned], ::Integer, context: "#{context}[:bytes_returned]")
      end
    end

    class StatsEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StatsEvent, context: context)
        Stats.validate!(input[:details], context: "#{context}[:details]") unless input[:details].nil?
      end
    end

    class StorageClassAnalysis
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StorageClassAnalysis, context: context)
        StorageClassAnalysisDataExport.validate!(input[:data_export], context: "#{context}[:data_export]") unless input[:data_export].nil?
      end
    end

    class StorageClassAnalysisDataExport
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StorageClassAnalysisDataExport, context: context)
        Hearth::Validator.validate!(input[:output_schema_version], ::String, context: "#{context}[:output_schema_version]")
        AnalyticsExportDestination.validate!(input[:destination], context: "#{context}[:destination]") unless input[:destination].nil?
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Tagging
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tagging, context: context)
        TagSet.validate!(input[:tag_set], context: "#{context}[:tag_set]") unless input[:tag_set].nil?
      end
    end

    class TargetGrant
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TargetGrant, context: context)
        Grantee.validate!(input[:grantee], context: "#{context}[:grantee]") unless input[:grantee].nil?
        Hearth::Validator.validate!(input[:permission], ::String, context: "#{context}[:permission]")
      end
    end

    class TargetGrants
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TargetGrant.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Tiering
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tiering, context: context)
        Hearth::Validator.validate!(input[:days], ::Integer, context: "#{context}[:days]")
        Hearth::Validator.validate!(input[:access_tier], ::String, context: "#{context}[:access_tier]")
      end
    end

    class TieringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Tiering.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TopicConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TopicConfiguration, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:topic_arn], ::String, context: "#{context}[:topic_arn]")
        EventList.validate!(input[:events], context: "#{context}[:events]") unless input[:events].nil?
        NotificationConfigurationFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
      end
    end

    class TopicConfigurationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TopicConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Transition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Transition, context: context)
        Hearth::Validator.validate!(input[:date], ::Time, context: "#{context}[:date]")
        Hearth::Validator.validate!(input[:days], ::Integer, context: "#{context}[:days]")
        Hearth::Validator.validate!(input[:storage_class], ::String, context: "#{context}[:storage_class]")
      end
    end

    class TransitionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Transition.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UploadPartCopyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UploadPartCopyInput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:copy_source], ::String, context: "#{context}[:copy_source]")
        Hearth::Validator.validate!(input[:copy_source_if_match], ::String, context: "#{context}[:copy_source_if_match]")
        Hearth::Validator.validate!(input[:copy_source_if_modified_since], ::Time, context: "#{context}[:copy_source_if_modified_since]")
        Hearth::Validator.validate!(input[:copy_source_if_none_match], ::String, context: "#{context}[:copy_source_if_none_match]")
        Hearth::Validator.validate!(input[:copy_source_if_unmodified_since], ::Time, context: "#{context}[:copy_source_if_unmodified_since]")
        Hearth::Validator.validate!(input[:copy_source_range], ::String, context: "#{context}[:copy_source_range]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:part_number], ::Integer, context: "#{context}[:part_number]")
        Hearth::Validator.validate!(input[:upload_id], ::String, context: "#{context}[:upload_id]")
        Hearth::Validator.validate!(input[:sse_customer_algorithm], ::String, context: "#{context}[:sse_customer_algorithm]")
        Hearth::Validator.validate!(input[:sse_customer_key], ::String, context: "#{context}[:sse_customer_key]")
        Hearth::Validator.validate!(input[:sse_customer_key_md5], ::String, context: "#{context}[:sse_customer_key_md5]")
        Hearth::Validator.validate!(input[:copy_source_sse_customer_algorithm], ::String, context: "#{context}[:copy_source_sse_customer_algorithm]")
        Hearth::Validator.validate!(input[:copy_source_sse_customer_key], ::String, context: "#{context}[:copy_source_sse_customer_key]")
        Hearth::Validator.validate!(input[:copy_source_sse_customer_key_md5], ::String, context: "#{context}[:copy_source_sse_customer_key_md5]")
        Hearth::Validator.validate!(input[:request_payer], ::String, context: "#{context}[:request_payer]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
        Hearth::Validator.validate!(input[:expected_source_bucket_owner], ::String, context: "#{context}[:expected_source_bucket_owner]")
      end
    end

    class UploadPartCopyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UploadPartCopyOutput, context: context)
        Hearth::Validator.validate!(input[:copy_source_version_id], ::String, context: "#{context}[:copy_source_version_id]")
        CopyPartResult.validate!(input[:copy_part_result], context: "#{context}[:copy_part_result]") unless input[:copy_part_result].nil?
        Hearth::Validator.validate!(input[:server_side_encryption], ::String, context: "#{context}[:server_side_encryption]")
        Hearth::Validator.validate!(input[:sse_customer_algorithm], ::String, context: "#{context}[:sse_customer_algorithm]")
        Hearth::Validator.validate!(input[:sse_customer_key_md5], ::String, context: "#{context}[:sse_customer_key_md5]")
        Hearth::Validator.validate!(input[:ssekms_key_id], ::String, context: "#{context}[:ssekms_key_id]")
        Hearth::Validator.validate!(input[:bucket_key_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:bucket_key_enabled]")
        Hearth::Validator.validate!(input[:request_charged], ::String, context: "#{context}[:request_charged]")
      end
    end

    class UploadPartInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UploadPartInput, context: context)
        unless input[:body].respond_to?(:read) || input[:body].respond_to?(:readpartial)
          raise ArgumentError, "Expected #{context} to be an IO like object, got #{input[:body].class}"
        end
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:content_length], ::Integer, context: "#{context}[:content_length]")
        Hearth::Validator.validate!(input[:content_md5], ::String, context: "#{context}[:content_md5]")
        Hearth::Validator.validate!(input[:checksum_algorithm], ::String, context: "#{context}[:checksum_algorithm]")
        Hearth::Validator.validate!(input[:checksum_crc32], ::String, context: "#{context}[:checksum_crc32]")
        Hearth::Validator.validate!(input[:checksum_crc32_c], ::String, context: "#{context}[:checksum_crc32_c]")
        Hearth::Validator.validate!(input[:checksum_sha1], ::String, context: "#{context}[:checksum_sha1]")
        Hearth::Validator.validate!(input[:checksum_sha256], ::String, context: "#{context}[:checksum_sha256]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:part_number], ::Integer, context: "#{context}[:part_number]")
        Hearth::Validator.validate!(input[:upload_id], ::String, context: "#{context}[:upload_id]")
        Hearth::Validator.validate!(input[:sse_customer_algorithm], ::String, context: "#{context}[:sse_customer_algorithm]")
        Hearth::Validator.validate!(input[:sse_customer_key], ::String, context: "#{context}[:sse_customer_key]")
        Hearth::Validator.validate!(input[:sse_customer_key_md5], ::String, context: "#{context}[:sse_customer_key_md5]")
        Hearth::Validator.validate!(input[:request_payer], ::String, context: "#{context}[:request_payer]")
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class UploadPartOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UploadPartOutput, context: context)
        Hearth::Validator.validate!(input[:server_side_encryption], ::String, context: "#{context}[:server_side_encryption]")
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
        Hearth::Validator.validate!(input[:checksum_crc32], ::String, context: "#{context}[:checksum_crc32]")
        Hearth::Validator.validate!(input[:checksum_crc32_c], ::String, context: "#{context}[:checksum_crc32_c]")
        Hearth::Validator.validate!(input[:checksum_sha1], ::String, context: "#{context}[:checksum_sha1]")
        Hearth::Validator.validate!(input[:checksum_sha256], ::String, context: "#{context}[:checksum_sha256]")
        Hearth::Validator.validate!(input[:sse_customer_algorithm], ::String, context: "#{context}[:sse_customer_algorithm]")
        Hearth::Validator.validate!(input[:sse_customer_key_md5], ::String, context: "#{context}[:sse_customer_key_md5]")
        Hearth::Validator.validate!(input[:ssekms_key_id], ::String, context: "#{context}[:ssekms_key_id]")
        Hearth::Validator.validate!(input[:bucket_key_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:bucket_key_enabled]")
        Hearth::Validator.validate!(input[:request_charged], ::String, context: "#{context}[:request_charged]")
      end
    end

    class UserMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MetadataEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class VersioningConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VersioningConfiguration, context: context)
        Hearth::Validator.validate!(input[:mfa_delete], ::String, context: "#{context}[:mfa_delete]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class WebsiteConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WebsiteConfiguration, context: context)
        ErrorDocument.validate!(input[:error_document], context: "#{context}[:error_document]") unless input[:error_document].nil?
        IndexDocument.validate!(input[:index_document], context: "#{context}[:index_document]") unless input[:index_document].nil?
        RedirectAllRequestsTo.validate!(input[:redirect_all_requests_to], context: "#{context}[:redirect_all_requests_to]") unless input[:redirect_all_requests_to].nil?
        RoutingRules.validate!(input[:routing_rules], context: "#{context}[:routing_rules]") unless input[:routing_rules].nil?
      end
    end

    class WriteGetObjectResponseInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WriteGetObjectResponseInput, context: context)
        Hearth::Validator.validate!(input[:request_route], ::String, context: "#{context}[:request_route]")
        Hearth::Validator.validate!(input[:request_token], ::String, context: "#{context}[:request_token]")
        unless input[:body].respond_to?(:read) || input[:body].respond_to?(:readpartial)
          raise ArgumentError, "Expected #{context} to be an IO like object, got #{input[:body].class}"
        end
        Hearth::Validator.validate!(input[:status_code], ::Integer, context: "#{context}[:status_code]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
        Hearth::Validator.validate!(input[:accept_ranges], ::String, context: "#{context}[:accept_ranges]")
        Hearth::Validator.validate!(input[:cache_control], ::String, context: "#{context}[:cache_control]")
        Hearth::Validator.validate!(input[:content_disposition], ::String, context: "#{context}[:content_disposition]")
        Hearth::Validator.validate!(input[:content_encoding], ::String, context: "#{context}[:content_encoding]")
        Hearth::Validator.validate!(input[:content_language], ::String, context: "#{context}[:content_language]")
        Hearth::Validator.validate!(input[:content_length], ::Integer, context: "#{context}[:content_length]")
        Hearth::Validator.validate!(input[:content_range], ::String, context: "#{context}[:content_range]")
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
        Hearth::Validator.validate!(input[:checksum_crc32], ::String, context: "#{context}[:checksum_crc32]")
        Hearth::Validator.validate!(input[:checksum_crc32_c], ::String, context: "#{context}[:checksum_crc32_c]")
        Hearth::Validator.validate!(input[:checksum_sha1], ::String, context: "#{context}[:checksum_sha1]")
        Hearth::Validator.validate!(input[:checksum_sha256], ::String, context: "#{context}[:checksum_sha256]")
        Hearth::Validator.validate!(input[:delete_marker], ::TrueClass, ::FalseClass, context: "#{context}[:delete_marker]")
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
        Hearth::Validator.validate!(input[:expires], ::Time, context: "#{context}[:expires]")
        Hearth::Validator.validate!(input[:expiration], ::String, context: "#{context}[:expiration]")
        Hearth::Validator.validate!(input[:last_modified], ::Time, context: "#{context}[:last_modified]")
        Hearth::Validator.validate!(input[:missing_meta], ::Integer, context: "#{context}[:missing_meta]")
        Metadata.validate!(input[:metadata], context: "#{context}[:metadata]") unless input[:metadata].nil?
        Hearth::Validator.validate!(input[:object_lock_mode], ::String, context: "#{context}[:object_lock_mode]")
        Hearth::Validator.validate!(input[:object_lock_legal_hold_status], ::String, context: "#{context}[:object_lock_legal_hold_status]")
        Hearth::Validator.validate!(input[:object_lock_retain_until_date], ::Time, context: "#{context}[:object_lock_retain_until_date]")
        Hearth::Validator.validate!(input[:parts_count], ::Integer, context: "#{context}[:parts_count]")
        Hearth::Validator.validate!(input[:replication_status], ::String, context: "#{context}[:replication_status]")
        Hearth::Validator.validate!(input[:request_charged], ::String, context: "#{context}[:request_charged]")
        Hearth::Validator.validate!(input[:restore], ::String, context: "#{context}[:restore]")
        Hearth::Validator.validate!(input[:server_side_encryption], ::String, context: "#{context}[:server_side_encryption]")
        Hearth::Validator.validate!(input[:sse_customer_algorithm], ::String, context: "#{context}[:sse_customer_algorithm]")
        Hearth::Validator.validate!(input[:ssekms_key_id], ::String, context: "#{context}[:ssekms_key_id]")
        Hearth::Validator.validate!(input[:sse_customer_key_md5], ::String, context: "#{context}[:sse_customer_key_md5]")
        Hearth::Validator.validate!(input[:storage_class], ::String, context: "#{context}[:storage_class]")
        Hearth::Validator.validate!(input[:tag_count], ::Integer, context: "#{context}[:tag_count]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate!(input[:bucket_key_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:bucket_key_enabled]")
      end
    end

    class WriteGetObjectResponseOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WriteGetObjectResponseOutput, context: context)
      end
    end

  end
end
