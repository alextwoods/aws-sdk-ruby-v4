# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::S3
  # @api private
  module Validators

    class AbortIncompleteMultipartUpload
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::AbortIncompleteMultipartUpload, context: context)
        Hearth::Validator.validate_types!(input[:days_after_initiation], ::Integer, context: "#{context}[:days_after_initiation]")
      end
    end

    class AbortMultipartUploadInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::AbortMultipartUploadInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_required!(input[:key], context: "#{context}[:key]")
        Hearth::Validator.validate_types!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate_required!(input[:upload_id], context: "#{context}[:upload_id]")
        Hearth::Validator.validate_types!(input[:upload_id], ::String, context: "#{context}[:upload_id]")
        Hearth::Validator.validate_types!(input[:request_payer], ::String, context: "#{context}[:request_payer]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class AbortMultipartUploadOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::AbortMultipartUploadOutput, context: context)
        Hearth::Validator.validate_types!(input[:request_charged], ::String, context: "#{context}[:request_charged]")
      end
    end

    class AccelerateConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::AccelerateConfiguration, context: context)
        Hearth::Validator.validate_types!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class AccessControlPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::AccessControlPolicy, context: context)
        Grants.validate!(input[:grants], context: "#{context}[:grants]") unless input[:grants].nil?
        Owner.validate!(input[:owner], context: "#{context}[:owner]") unless input[:owner].nil?
      end
    end

    class AccessControlTranslation
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::AccessControlTranslation, context: context)
        Hearth::Validator.validate_required!(input[:owner], context: "#{context}[:owner]")
        Hearth::Validator.validate_types!(input[:owner], ::String, context: "#{context}[:owner]")
      end
    end

    class AllowedHeaders
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AllowedMethods
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AllowedOrigins
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AnalyticsAndOperator
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::AnalyticsAndOperator, context: context)
        Hearth::Validator.validate_types!(input[:prefix], ::String, context: "#{context}[:prefix]")
        TagSet.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class AnalyticsConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::AnalyticsConfiguration, context: context)
        Hearth::Validator.validate_required!(input[:id], context: "#{context}[:id]")
        Hearth::Validator.validate_types!(input[:id], ::String, context: "#{context}[:id]")
        AnalyticsFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        Hearth::Validator.validate_required!(input[:storage_class_analysis], context: "#{context}[:storage_class_analysis]")
        StorageClassAnalysis.validate!(input[:storage_class_analysis], context: "#{context}[:storage_class_analysis]") unless input[:storage_class_analysis].nil?
      end
    end

    class AnalyticsConfigurationList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AnalyticsConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AnalyticsExportDestination
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::AnalyticsExportDestination, context: context)
        Hearth::Validator.validate_required!(input[:s3_bucket_destination], context: "#{context}[:s3_bucket_destination]")
        AnalyticsS3BucketDestination.validate!(input[:s3_bucket_destination], context: "#{context}[:s3_bucket_destination]") unless input[:s3_bucket_destination].nil?
      end
    end

    class AnalyticsFilter
      def self.validate!(input, context:)
        case input
        when Types::AnalyticsFilter::Prefix
          Hearth::Validator.validate_types!(input.__getobj__, ::String, context: context)
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
          Hearth::Validator.validate_types!(input, ::String, context: context)
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
        Hearth::Validator.validate_types!(input, Types::AnalyticsS3BucketDestination, context: context)
        Hearth::Validator.validate_required!(input[:format], context: "#{context}[:format]")
        Hearth::Validator.validate_types!(input[:format], ::String, context: "#{context}[:format]")
        Hearth::Validator.validate_types!(input[:bucket_account_id], ::String, context: "#{context}[:bucket_account_id]")
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:prefix], ::String, context: "#{context}[:prefix]")
      end
    end

    class Bucket
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::Bucket, context: context)
        Hearth::Validator.validate_types!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
      end
    end

    class BucketAlreadyExists
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::BucketAlreadyExists, context: context)
      end
    end

    class BucketAlreadyOwnedByYou
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::BucketAlreadyOwnedByYou, context: context)
      end
    end

    class BucketInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::BucketInfo, context: context)
        Hearth::Validator.validate_types!(input[:data_redundancy], ::String, context: "#{context}[:data_redundancy]")
        Hearth::Validator.validate_types!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class BucketLifecycleConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::BucketLifecycleConfiguration, context: context)
        Hearth::Validator.validate_required!(input[:rules], context: "#{context}[:rules]")
        LifecycleRules.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
      end
    end

    class BucketLoggingStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::BucketLoggingStatus, context: context)
        LoggingEnabled.validate!(input[:logging_enabled], context: "#{context}[:logging_enabled]") unless input[:logging_enabled].nil?
      end
    end

    class Buckets
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Bucket.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CORSConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CORSConfiguration, context: context)
        Hearth::Validator.validate_required!(input[:cors_rules], context: "#{context}[:cors_rules]")
        CORSRules.validate!(input[:cors_rules], context: "#{context}[:cors_rules]") unless input[:cors_rules].nil?
      end
    end

    class CORSRule
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CORSRule, context: context)
        Hearth::Validator.validate_types!(input[:id], ::String, context: "#{context}[:id]")
        AllowedHeaders.validate!(input[:allowed_headers], context: "#{context}[:allowed_headers]") unless input[:allowed_headers].nil?
        Hearth::Validator.validate_required!(input[:allowed_methods], context: "#{context}[:allowed_methods]")
        AllowedMethods.validate!(input[:allowed_methods], context: "#{context}[:allowed_methods]") unless input[:allowed_methods].nil?
        Hearth::Validator.validate_required!(input[:allowed_origins], context: "#{context}[:allowed_origins]")
        AllowedOrigins.validate!(input[:allowed_origins], context: "#{context}[:allowed_origins]") unless input[:allowed_origins].nil?
        ExposeHeaders.validate!(input[:expose_headers], context: "#{context}[:expose_headers]") unless input[:expose_headers].nil?
        Hearth::Validator.validate_types!(input[:max_age_seconds], ::Integer, context: "#{context}[:max_age_seconds]")
      end
    end

    class CORSRules
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CORSRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CSVInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CSVInput, context: context)
        Hearth::Validator.validate_types!(input[:file_header_info], ::String, context: "#{context}[:file_header_info]")
        Hearth::Validator.validate_types!(input[:comments], ::String, context: "#{context}[:comments]")
        Hearth::Validator.validate_types!(input[:quote_escape_character], ::String, context: "#{context}[:quote_escape_character]")
        Hearth::Validator.validate_types!(input[:record_delimiter], ::String, context: "#{context}[:record_delimiter]")
        Hearth::Validator.validate_types!(input[:field_delimiter], ::String, context: "#{context}[:field_delimiter]")
        Hearth::Validator.validate_types!(input[:quote_character], ::String, context: "#{context}[:quote_character]")
        Hearth::Validator.validate_types!(input[:allow_quoted_record_delimiter], ::TrueClass, ::FalseClass, context: "#{context}[:allow_quoted_record_delimiter]")
      end
    end

    class CSVOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CSVOutput, context: context)
        Hearth::Validator.validate_types!(input[:quote_fields], ::String, context: "#{context}[:quote_fields]")
        Hearth::Validator.validate_types!(input[:quote_escape_character], ::String, context: "#{context}[:quote_escape_character]")
        Hearth::Validator.validate_types!(input[:record_delimiter], ::String, context: "#{context}[:record_delimiter]")
        Hearth::Validator.validate_types!(input[:field_delimiter], ::String, context: "#{context}[:field_delimiter]")
        Hearth::Validator.validate_types!(input[:quote_character], ::String, context: "#{context}[:quote_character]")
      end
    end

    class Checksum
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::Checksum, context: context)
        Hearth::Validator.validate_types!(input[:checksum_crc32], ::String, context: "#{context}[:checksum_crc32]")
        Hearth::Validator.validate_types!(input[:checksum_crc32_c], ::String, context: "#{context}[:checksum_crc32_c]")
        Hearth::Validator.validate_types!(input[:checksum_sha1], ::String, context: "#{context}[:checksum_sha1]")
        Hearth::Validator.validate_types!(input[:checksum_sha256], ::String, context: "#{context}[:checksum_sha256]")
      end
    end

    class ChecksumAlgorithmList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CommonPrefix
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CommonPrefix, context: context)
        Hearth::Validator.validate_types!(input[:prefix], ::String, context: "#{context}[:prefix]")
      end
    end

    class CommonPrefixList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CommonPrefix.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CompleteMultipartUploadInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CompleteMultipartUploadInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_required!(input[:key], context: "#{context}[:key]")
        Hearth::Validator.validate_types!(input[:key], ::String, context: "#{context}[:key]")
        CompletedMultipartUpload.validate!(input[:multipart_upload], context: "#{context}[:multipart_upload]") unless input[:multipart_upload].nil?
        Hearth::Validator.validate_required!(input[:upload_id], context: "#{context}[:upload_id]")
        Hearth::Validator.validate_types!(input[:upload_id], ::String, context: "#{context}[:upload_id]")
        Hearth::Validator.validate_types!(input[:checksum_crc32], ::String, context: "#{context}[:checksum_crc32]")
        Hearth::Validator.validate_types!(input[:checksum_crc32_c], ::String, context: "#{context}[:checksum_crc32_c]")
        Hearth::Validator.validate_types!(input[:checksum_sha1], ::String, context: "#{context}[:checksum_sha1]")
        Hearth::Validator.validate_types!(input[:checksum_sha256], ::String, context: "#{context}[:checksum_sha256]")
        Hearth::Validator.validate_types!(input[:request_payer], ::String, context: "#{context}[:request_payer]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
        Hearth::Validator.validate_types!(input[:sse_customer_algorithm], ::String, context: "#{context}[:sse_customer_algorithm]")
        Hearth::Validator.validate_types!(input[:sse_customer_key], ::String, context: "#{context}[:sse_customer_key]")
        Hearth::Validator.validate_types!(input[:sse_customer_key_md5], ::String, context: "#{context}[:sse_customer_key_md5]")
      end
    end

    class CompleteMultipartUploadOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CompleteMultipartUploadOutput, context: context)
        Hearth::Validator.validate_types!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate_types!(input[:expiration], ::String, context: "#{context}[:expiration]")
        Hearth::Validator.validate_types!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
        Hearth::Validator.validate_types!(input[:checksum_crc32], ::String, context: "#{context}[:checksum_crc32]")
        Hearth::Validator.validate_types!(input[:checksum_crc32_c], ::String, context: "#{context}[:checksum_crc32_c]")
        Hearth::Validator.validate_types!(input[:checksum_sha1], ::String, context: "#{context}[:checksum_sha1]")
        Hearth::Validator.validate_types!(input[:checksum_sha256], ::String, context: "#{context}[:checksum_sha256]")
        Hearth::Validator.validate_types!(input[:server_side_encryption], ::String, context: "#{context}[:server_side_encryption]")
        Hearth::Validator.validate_types!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate_types!(input[:ssekms_key_id], ::String, context: "#{context}[:ssekms_key_id]")
        Hearth::Validator.validate_types!(input[:bucket_key_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:bucket_key_enabled]")
        Hearth::Validator.validate_types!(input[:request_charged], ::String, context: "#{context}[:request_charged]")
      end
    end

    class CompletedMultipartUpload
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CompletedMultipartUpload, context: context)
        CompletedPartList.validate!(input[:parts], context: "#{context}[:parts]") unless input[:parts].nil?
      end
    end

    class CompletedPart
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CompletedPart, context: context)
        Hearth::Validator.validate_types!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
        Hearth::Validator.validate_types!(input[:checksum_crc32], ::String, context: "#{context}[:checksum_crc32]")
        Hearth::Validator.validate_types!(input[:checksum_crc32_c], ::String, context: "#{context}[:checksum_crc32_c]")
        Hearth::Validator.validate_types!(input[:checksum_sha1], ::String, context: "#{context}[:checksum_sha1]")
        Hearth::Validator.validate_types!(input[:checksum_sha256], ::String, context: "#{context}[:checksum_sha256]")
        Hearth::Validator.validate_types!(input[:part_number], ::Integer, context: "#{context}[:part_number]")
      end
    end

    class CompletedPartList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CompletedPart.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Condition
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::Condition, context: context)
        Hearth::Validator.validate_types!(input[:http_error_code_returned_equals], ::String, context: "#{context}[:http_error_code_returned_equals]")
        Hearth::Validator.validate_types!(input[:key_prefix_equals], ::String, context: "#{context}[:key_prefix_equals]")
      end
    end

    class ContinuationEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ContinuationEvent, context: context)
      end
    end

    class CopyObjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CopyObjectInput, context: context)
        Hearth::Validator.validate_types!(input[:acl], ::String, context: "#{context}[:acl]")
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:cache_control], ::String, context: "#{context}[:cache_control]")
        Hearth::Validator.validate_types!(input[:checksum_algorithm], ::String, context: "#{context}[:checksum_algorithm]")
        Hearth::Validator.validate_types!(input[:content_disposition], ::String, context: "#{context}[:content_disposition]")
        Hearth::Validator.validate_types!(input[:content_encoding], ::String, context: "#{context}[:content_encoding]")
        Hearth::Validator.validate_types!(input[:content_language], ::String, context: "#{context}[:content_language]")
        Hearth::Validator.validate_types!(input[:content_type], ::String, context: "#{context}[:content_type]")
        Hearth::Validator.validate_required!(input[:copy_source], context: "#{context}[:copy_source]")
        Hearth::Validator.validate_types!(input[:copy_source], ::String, context: "#{context}[:copy_source]")
        Hearth::Validator.validate_types!(input[:copy_source_if_match], ::String, context: "#{context}[:copy_source_if_match]")
        Hearth::Validator.validate_types!(input[:copy_source_if_modified_since], ::Time, context: "#{context}[:copy_source_if_modified_since]")
        Hearth::Validator.validate_types!(input[:copy_source_if_none_match], ::String, context: "#{context}[:copy_source_if_none_match]")
        Hearth::Validator.validate_types!(input[:copy_source_if_unmodified_since], ::Time, context: "#{context}[:copy_source_if_unmodified_since]")
        Hearth::Validator.validate_types!(input[:expires], ::Time, context: "#{context}[:expires]")
        Hearth::Validator.validate_types!(input[:grant_full_control], ::String, context: "#{context}[:grant_full_control]")
        Hearth::Validator.validate_types!(input[:grant_read], ::String, context: "#{context}[:grant_read]")
        Hearth::Validator.validate_types!(input[:grant_read_acp], ::String, context: "#{context}[:grant_read_acp]")
        Hearth::Validator.validate_types!(input[:grant_write_acp], ::String, context: "#{context}[:grant_write_acp]")
        Hearth::Validator.validate_required!(input[:key], context: "#{context}[:key]")
        Hearth::Validator.validate_types!(input[:key], ::String, context: "#{context}[:key]")
        Metadata.validate!(input[:metadata], context: "#{context}[:metadata]") unless input[:metadata].nil?
        Hearth::Validator.validate_types!(input[:metadata_directive], ::String, context: "#{context}[:metadata_directive]")
        Hearth::Validator.validate_types!(input[:tagging_directive], ::String, context: "#{context}[:tagging_directive]")
        Hearth::Validator.validate_types!(input[:server_side_encryption], ::String, context: "#{context}[:server_side_encryption]")
        Hearth::Validator.validate_types!(input[:storage_class], ::String, context: "#{context}[:storage_class]")
        Hearth::Validator.validate_types!(input[:website_redirect_location], ::String, context: "#{context}[:website_redirect_location]")
        Hearth::Validator.validate_types!(input[:sse_customer_algorithm], ::String, context: "#{context}[:sse_customer_algorithm]")
        Hearth::Validator.validate_types!(input[:sse_customer_key], ::String, context: "#{context}[:sse_customer_key]")
        Hearth::Validator.validate_types!(input[:sse_customer_key_md5], ::String, context: "#{context}[:sse_customer_key_md5]")
        Hearth::Validator.validate_types!(input[:ssekms_key_id], ::String, context: "#{context}[:ssekms_key_id]")
        Hearth::Validator.validate_types!(input[:ssekms_encryption_context], ::String, context: "#{context}[:ssekms_encryption_context]")
        Hearth::Validator.validate_types!(input[:bucket_key_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:bucket_key_enabled]")
        Hearth::Validator.validate_types!(input[:copy_source_sse_customer_algorithm], ::String, context: "#{context}[:copy_source_sse_customer_algorithm]")
        Hearth::Validator.validate_types!(input[:copy_source_sse_customer_key], ::String, context: "#{context}[:copy_source_sse_customer_key]")
        Hearth::Validator.validate_types!(input[:copy_source_sse_customer_key_md5], ::String, context: "#{context}[:copy_source_sse_customer_key_md5]")
        Hearth::Validator.validate_types!(input[:request_payer], ::String, context: "#{context}[:request_payer]")
        Hearth::Validator.validate_types!(input[:tagging], ::String, context: "#{context}[:tagging]")
        Hearth::Validator.validate_types!(input[:object_lock_mode], ::String, context: "#{context}[:object_lock_mode]")
        Hearth::Validator.validate_types!(input[:object_lock_retain_until_date], ::Time, context: "#{context}[:object_lock_retain_until_date]")
        Hearth::Validator.validate_types!(input[:object_lock_legal_hold_status], ::String, context: "#{context}[:object_lock_legal_hold_status]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
        Hearth::Validator.validate_types!(input[:expected_source_bucket_owner], ::String, context: "#{context}[:expected_source_bucket_owner]")
      end
    end

    class CopyObjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CopyObjectOutput, context: context)
        CopyObjectResult.validate!(input[:copy_object_result], context: "#{context}[:copy_object_result]") unless input[:copy_object_result].nil?
        Hearth::Validator.validate_types!(input[:expiration], ::String, context: "#{context}[:expiration]")
        Hearth::Validator.validate_types!(input[:copy_source_version_id], ::String, context: "#{context}[:copy_source_version_id]")
        Hearth::Validator.validate_types!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate_types!(input[:server_side_encryption], ::String, context: "#{context}[:server_side_encryption]")
        Hearth::Validator.validate_types!(input[:sse_customer_algorithm], ::String, context: "#{context}[:sse_customer_algorithm]")
        Hearth::Validator.validate_types!(input[:sse_customer_key_md5], ::String, context: "#{context}[:sse_customer_key_md5]")
        Hearth::Validator.validate_types!(input[:ssekms_key_id], ::String, context: "#{context}[:ssekms_key_id]")
        Hearth::Validator.validate_types!(input[:ssekms_encryption_context], ::String, context: "#{context}[:ssekms_encryption_context]")
        Hearth::Validator.validate_types!(input[:bucket_key_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:bucket_key_enabled]")
        Hearth::Validator.validate_types!(input[:request_charged], ::String, context: "#{context}[:request_charged]")
      end
    end

    class CopyObjectResult
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CopyObjectResult, context: context)
        Hearth::Validator.validate_types!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
        Hearth::Validator.validate_types!(input[:last_modified], ::Time, context: "#{context}[:last_modified]")
        Hearth::Validator.validate_types!(input[:checksum_crc32], ::String, context: "#{context}[:checksum_crc32]")
        Hearth::Validator.validate_types!(input[:checksum_crc32_c], ::String, context: "#{context}[:checksum_crc32_c]")
        Hearth::Validator.validate_types!(input[:checksum_sha1], ::String, context: "#{context}[:checksum_sha1]")
        Hearth::Validator.validate_types!(input[:checksum_sha256], ::String, context: "#{context}[:checksum_sha256]")
      end
    end

    class CopyPartResult
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CopyPartResult, context: context)
        Hearth::Validator.validate_types!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
        Hearth::Validator.validate_types!(input[:last_modified], ::Time, context: "#{context}[:last_modified]")
        Hearth::Validator.validate_types!(input[:checksum_crc32], ::String, context: "#{context}[:checksum_crc32]")
        Hearth::Validator.validate_types!(input[:checksum_crc32_c], ::String, context: "#{context}[:checksum_crc32_c]")
        Hearth::Validator.validate_types!(input[:checksum_sha1], ::String, context: "#{context}[:checksum_sha1]")
        Hearth::Validator.validate_types!(input[:checksum_sha256], ::String, context: "#{context}[:checksum_sha256]")
      end
    end

    class CreateBucketConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CreateBucketConfiguration, context: context)
        Hearth::Validator.validate_types!(input[:location_constraint], ::String, context: "#{context}[:location_constraint]")
        LocationInfo.validate!(input[:location], context: "#{context}[:location]") unless input[:location].nil?
        BucketInfo.validate!(input[:bucket], context: "#{context}[:bucket]") unless input[:bucket].nil?
      end
    end

    class CreateBucketInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CreateBucketInput, context: context)
        Hearth::Validator.validate_types!(input[:acl], ::String, context: "#{context}[:acl]")
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        CreateBucketConfiguration.validate!(input[:create_bucket_configuration], context: "#{context}[:create_bucket_configuration]") unless input[:create_bucket_configuration].nil?
        Hearth::Validator.validate_types!(input[:grant_full_control], ::String, context: "#{context}[:grant_full_control]")
        Hearth::Validator.validate_types!(input[:grant_read], ::String, context: "#{context}[:grant_read]")
        Hearth::Validator.validate_types!(input[:grant_read_acp], ::String, context: "#{context}[:grant_read_acp]")
        Hearth::Validator.validate_types!(input[:grant_write], ::String, context: "#{context}[:grant_write]")
        Hearth::Validator.validate_types!(input[:grant_write_acp], ::String, context: "#{context}[:grant_write_acp]")
        Hearth::Validator.validate_types!(input[:object_lock_enabled_for_bucket], ::TrueClass, ::FalseClass, context: "#{context}[:object_lock_enabled_for_bucket]")
        Hearth::Validator.validate_types!(input[:object_ownership], ::String, context: "#{context}[:object_ownership]")
      end
    end

    class CreateBucketOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CreateBucketOutput, context: context)
        Hearth::Validator.validate_types!(input[:location], ::String, context: "#{context}[:location]")
      end
    end

    class CreateMultipartUploadInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CreateMultipartUploadInput, context: context)
        Hearth::Validator.validate_types!(input[:acl], ::String, context: "#{context}[:acl]")
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:cache_control], ::String, context: "#{context}[:cache_control]")
        Hearth::Validator.validate_types!(input[:content_disposition], ::String, context: "#{context}[:content_disposition]")
        Hearth::Validator.validate_types!(input[:content_encoding], ::String, context: "#{context}[:content_encoding]")
        Hearth::Validator.validate_types!(input[:content_language], ::String, context: "#{context}[:content_language]")
        Hearth::Validator.validate_types!(input[:content_type], ::String, context: "#{context}[:content_type]")
        Hearth::Validator.validate_types!(input[:expires], ::Time, context: "#{context}[:expires]")
        Hearth::Validator.validate_types!(input[:grant_full_control], ::String, context: "#{context}[:grant_full_control]")
        Hearth::Validator.validate_types!(input[:grant_read], ::String, context: "#{context}[:grant_read]")
        Hearth::Validator.validate_types!(input[:grant_read_acp], ::String, context: "#{context}[:grant_read_acp]")
        Hearth::Validator.validate_types!(input[:grant_write_acp], ::String, context: "#{context}[:grant_write_acp]")
        Hearth::Validator.validate_required!(input[:key], context: "#{context}[:key]")
        Hearth::Validator.validate_types!(input[:key], ::String, context: "#{context}[:key]")
        Metadata.validate!(input[:metadata], context: "#{context}[:metadata]") unless input[:metadata].nil?
        Hearth::Validator.validate_types!(input[:server_side_encryption], ::String, context: "#{context}[:server_side_encryption]")
        Hearth::Validator.validate_types!(input[:storage_class], ::String, context: "#{context}[:storage_class]")
        Hearth::Validator.validate_types!(input[:website_redirect_location], ::String, context: "#{context}[:website_redirect_location]")
        Hearth::Validator.validate_types!(input[:sse_customer_algorithm], ::String, context: "#{context}[:sse_customer_algorithm]")
        Hearth::Validator.validate_types!(input[:sse_customer_key], ::String, context: "#{context}[:sse_customer_key]")
        Hearth::Validator.validate_types!(input[:sse_customer_key_md5], ::String, context: "#{context}[:sse_customer_key_md5]")
        Hearth::Validator.validate_types!(input[:ssekms_key_id], ::String, context: "#{context}[:ssekms_key_id]")
        Hearth::Validator.validate_types!(input[:ssekms_encryption_context], ::String, context: "#{context}[:ssekms_encryption_context]")
        Hearth::Validator.validate_types!(input[:bucket_key_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:bucket_key_enabled]")
        Hearth::Validator.validate_types!(input[:request_payer], ::String, context: "#{context}[:request_payer]")
        Hearth::Validator.validate_types!(input[:tagging], ::String, context: "#{context}[:tagging]")
        Hearth::Validator.validate_types!(input[:object_lock_mode], ::String, context: "#{context}[:object_lock_mode]")
        Hearth::Validator.validate_types!(input[:object_lock_retain_until_date], ::Time, context: "#{context}[:object_lock_retain_until_date]")
        Hearth::Validator.validate_types!(input[:object_lock_legal_hold_status], ::String, context: "#{context}[:object_lock_legal_hold_status]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
        Hearth::Validator.validate_types!(input[:checksum_algorithm], ::String, context: "#{context}[:checksum_algorithm]")
      end
    end

    class CreateMultipartUploadOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CreateMultipartUploadOutput, context: context)
        Hearth::Validator.validate_types!(input[:abort_date], ::Time, context: "#{context}[:abort_date]")
        Hearth::Validator.validate_types!(input[:abort_rule_id], ::String, context: "#{context}[:abort_rule_id]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate_types!(input[:upload_id], ::String, context: "#{context}[:upload_id]")
        Hearth::Validator.validate_types!(input[:server_side_encryption], ::String, context: "#{context}[:server_side_encryption]")
        Hearth::Validator.validate_types!(input[:sse_customer_algorithm], ::String, context: "#{context}[:sse_customer_algorithm]")
        Hearth::Validator.validate_types!(input[:sse_customer_key_md5], ::String, context: "#{context}[:sse_customer_key_md5]")
        Hearth::Validator.validate_types!(input[:ssekms_key_id], ::String, context: "#{context}[:ssekms_key_id]")
        Hearth::Validator.validate_types!(input[:ssekms_encryption_context], ::String, context: "#{context}[:ssekms_encryption_context]")
        Hearth::Validator.validate_types!(input[:bucket_key_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:bucket_key_enabled]")
        Hearth::Validator.validate_types!(input[:request_charged], ::String, context: "#{context}[:request_charged]")
        Hearth::Validator.validate_types!(input[:checksum_algorithm], ::String, context: "#{context}[:checksum_algorithm]")
      end
    end

    class CreateSessionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CreateSessionInput, context: context)
        Hearth::Validator.validate_types!(input[:session_mode], ::String, context: "#{context}[:session_mode]")
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
      end
    end

    class CreateSessionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CreateSessionOutput, context: context)
        Hearth::Validator.validate_required!(input[:credentials], context: "#{context}[:credentials]")
        SessionCredentials.validate!(input[:credentials], context: "#{context}[:credentials]") unless input[:credentials].nil?
      end
    end

    class DefaultRetention
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DefaultRetention, context: context)
        Hearth::Validator.validate_types!(input[:mode], ::String, context: "#{context}[:mode]")
        Hearth::Validator.validate_types!(input[:days], ::Integer, context: "#{context}[:days]")
        Hearth::Validator.validate_types!(input[:years], ::Integer, context: "#{context}[:years]")
      end
    end

    class Delete
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::Delete, context: context)
        Hearth::Validator.validate_required!(input[:objects], context: "#{context}[:objects]")
        ObjectIdentifierList.validate!(input[:objects], context: "#{context}[:objects]") unless input[:objects].nil?
        Hearth::Validator.validate_types!(input[:quiet], ::TrueClass, ::FalseClass, context: "#{context}[:quiet]")
      end
    end

    class DeleteBucketAnalyticsConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteBucketAnalyticsConfigurationInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_required!(input[:id], context: "#{context}[:id]")
        Hearth::Validator.validate_types!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class DeleteBucketAnalyticsConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteBucketAnalyticsConfigurationOutput, context: context)
      end
    end

    class DeleteBucketCorsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteBucketCorsInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class DeleteBucketCorsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteBucketCorsOutput, context: context)
      end
    end

    class DeleteBucketEncryptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteBucketEncryptionInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class DeleteBucketEncryptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteBucketEncryptionOutput, context: context)
      end
    end

    class DeleteBucketInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteBucketInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class DeleteBucketIntelligentTieringConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteBucketIntelligentTieringConfigurationInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_required!(input[:id], context: "#{context}[:id]")
        Hearth::Validator.validate_types!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DeleteBucketIntelligentTieringConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteBucketIntelligentTieringConfigurationOutput, context: context)
      end
    end

    class DeleteBucketInventoryConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteBucketInventoryConfigurationInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_required!(input[:id], context: "#{context}[:id]")
        Hearth::Validator.validate_types!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class DeleteBucketInventoryConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteBucketInventoryConfigurationOutput, context: context)
      end
    end

    class DeleteBucketLifecycleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteBucketLifecycleInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class DeleteBucketLifecycleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteBucketLifecycleOutput, context: context)
      end
    end

    class DeleteBucketMetricsConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteBucketMetricsConfigurationInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_required!(input[:id], context: "#{context}[:id]")
        Hearth::Validator.validate_types!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class DeleteBucketMetricsConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteBucketMetricsConfigurationOutput, context: context)
      end
    end

    class DeleteBucketOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteBucketOutput, context: context)
      end
    end

    class DeleteBucketOwnershipControlsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteBucketOwnershipControlsInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class DeleteBucketOwnershipControlsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteBucketOwnershipControlsOutput, context: context)
      end
    end

    class DeleteBucketPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteBucketPolicyInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class DeleteBucketPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteBucketPolicyOutput, context: context)
      end
    end

    class DeleteBucketReplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteBucketReplicationInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class DeleteBucketReplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteBucketReplicationOutput, context: context)
      end
    end

    class DeleteBucketTaggingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteBucketTaggingInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class DeleteBucketTaggingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteBucketTaggingOutput, context: context)
      end
    end

    class DeleteBucketWebsiteInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteBucketWebsiteInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class DeleteBucketWebsiteOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteBucketWebsiteOutput, context: context)
      end
    end

    class DeleteMarkerEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteMarkerEntry, context: context)
        Owner.validate!(input[:owner], context: "#{context}[:owner]") unless input[:owner].nil?
        Hearth::Validator.validate_types!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate_types!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate_types!(input[:is_latest], ::TrueClass, ::FalseClass, context: "#{context}[:is_latest]")
        Hearth::Validator.validate_types!(input[:last_modified], ::Time, context: "#{context}[:last_modified]")
      end
    end

    class DeleteMarkerReplication
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteMarkerReplication, context: context)
        Hearth::Validator.validate_types!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class DeleteMarkers
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DeleteMarkerEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeleteObjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteObjectInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_required!(input[:key], context: "#{context}[:key]")
        Hearth::Validator.validate_types!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate_types!(input[:mfa], ::String, context: "#{context}[:mfa]")
        Hearth::Validator.validate_types!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate_types!(input[:request_payer], ::String, context: "#{context}[:request_payer]")
        Hearth::Validator.validate_types!(input[:bypass_governance_retention], ::TrueClass, ::FalseClass, context: "#{context}[:bypass_governance_retention]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class DeleteObjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteObjectOutput, context: context)
        Hearth::Validator.validate_types!(input[:delete_marker], ::TrueClass, ::FalseClass, context: "#{context}[:delete_marker]")
        Hearth::Validator.validate_types!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate_types!(input[:request_charged], ::String, context: "#{context}[:request_charged]")
      end
    end

    class DeleteObjectTaggingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteObjectTaggingInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_required!(input[:key], context: "#{context}[:key]")
        Hearth::Validator.validate_types!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate_types!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class DeleteObjectTaggingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteObjectTaggingOutput, context: context)
        Hearth::Validator.validate_types!(input[:version_id], ::String, context: "#{context}[:version_id]")
      end
    end

    class DeleteObjectsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteObjectsInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_required!(input[:delete], context: "#{context}[:delete]")
        Delete.validate!(input[:delete], context: "#{context}[:delete]") unless input[:delete].nil?
        Hearth::Validator.validate_types!(input[:mfa], ::String, context: "#{context}[:mfa]")
        Hearth::Validator.validate_types!(input[:request_payer], ::String, context: "#{context}[:request_payer]")
        Hearth::Validator.validate_types!(input[:bypass_governance_retention], ::TrueClass, ::FalseClass, context: "#{context}[:bypass_governance_retention]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
        Hearth::Validator.validate_types!(input[:checksum_algorithm], ::String, context: "#{context}[:checksum_algorithm]")
      end
    end

    class DeleteObjectsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteObjectsOutput, context: context)
        DeletedObjects.validate!(input[:deleted], context: "#{context}[:deleted]") unless input[:deleted].nil?
        Hearth::Validator.validate_types!(input[:request_charged], ::String, context: "#{context}[:request_charged]")
        Errors.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
      end
    end

    class DeletePublicAccessBlockInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeletePublicAccessBlockInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class DeletePublicAccessBlockOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeletePublicAccessBlockOutput, context: context)
      end
    end

    class DeletedObject
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeletedObject, context: context)
        Hearth::Validator.validate_types!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate_types!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate_types!(input[:delete_marker], ::TrueClass, ::FalseClass, context: "#{context}[:delete_marker]")
        Hearth::Validator.validate_types!(input[:delete_marker_version_id], ::String, context: "#{context}[:delete_marker_version_id]")
      end
    end

    class DeletedObjects
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DeletedObject.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Destination
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::Destination, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:account], ::String, context: "#{context}[:account]")
        Hearth::Validator.validate_types!(input[:storage_class], ::String, context: "#{context}[:storage_class]")
        AccessControlTranslation.validate!(input[:access_control_translation], context: "#{context}[:access_control_translation]") unless input[:access_control_translation].nil?
        EncryptionConfiguration.validate!(input[:encryption_configuration], context: "#{context}[:encryption_configuration]") unless input[:encryption_configuration].nil?
        ReplicationTime.validate!(input[:replication_time], context: "#{context}[:replication_time]") unless input[:replication_time].nil?
        Metrics.validate!(input[:metrics], context: "#{context}[:metrics]") unless input[:metrics].nil?
      end
    end

    class Encryption
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::Encryption, context: context)
        Hearth::Validator.validate_required!(input[:encryption_type], context: "#{context}[:encryption_type]")
        Hearth::Validator.validate_types!(input[:encryption_type], ::String, context: "#{context}[:encryption_type]")
        Hearth::Validator.validate_types!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate_types!(input[:kms_context], ::String, context: "#{context}[:kms_context]")
      end
    end

    class EncryptionConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::EncryptionConfiguration, context: context)
        Hearth::Validator.validate_types!(input[:replica_kms_key_id], ::String, context: "#{context}[:replica_kms_key_id]")
      end
    end

    class EndEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::EndEvent, context: context)
      end
    end

    class Error
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::Error, context: context)
        Hearth::Validator.validate_types!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate_types!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate_types!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ErrorDocument
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ErrorDocument, context: context)
        Hearth::Validator.validate_required!(input[:key], context: "#{context}[:key]")
        Hearth::Validator.validate_types!(input[:key], ::String, context: "#{context}[:key]")
      end
    end

    class Errors
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Error.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EventBridgeConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::EventBridgeConfiguration, context: context)
      end
    end

    class EventList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ExistingObjectReplication
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ExistingObjectReplication, context: context)
        Hearth::Validator.validate_required!(input[:status], context: "#{context}[:status]")
        Hearth::Validator.validate_types!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class ExposeHeaders
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class FilterRule
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::FilterRule, context: context)
        Hearth::Validator.validate_types!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class FilterRuleList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          FilterRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GetBucketAccelerateConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetBucketAccelerateConfigurationInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
        Hearth::Validator.validate_types!(input[:request_payer], ::String, context: "#{context}[:request_payer]")
      end
    end

    class GetBucketAccelerateConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetBucketAccelerateConfigurationOutput, context: context)
        Hearth::Validator.validate_types!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate_types!(input[:request_charged], ::String, context: "#{context}[:request_charged]")
      end
    end

    class GetBucketAclInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetBucketAclInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class GetBucketAclOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetBucketAclOutput, context: context)
        Owner.validate!(input[:owner], context: "#{context}[:owner]") unless input[:owner].nil?
        Grants.validate!(input[:grants], context: "#{context}[:grants]") unless input[:grants].nil?
      end
    end

    class GetBucketAnalyticsConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetBucketAnalyticsConfigurationInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_required!(input[:id], context: "#{context}[:id]")
        Hearth::Validator.validate_types!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class GetBucketAnalyticsConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetBucketAnalyticsConfigurationOutput, context: context)
        AnalyticsConfiguration.validate!(input[:analytics_configuration], context: "#{context}[:analytics_configuration]") unless input[:analytics_configuration].nil?
      end
    end

    class GetBucketCorsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetBucketCorsInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class GetBucketCorsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetBucketCorsOutput, context: context)
        CORSRules.validate!(input[:cors_rules], context: "#{context}[:cors_rules]") unless input[:cors_rules].nil?
      end
    end

    class GetBucketEncryptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetBucketEncryptionInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class GetBucketEncryptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetBucketEncryptionOutput, context: context)
        ServerSideEncryptionConfiguration.validate!(input[:server_side_encryption_configuration], context: "#{context}[:server_side_encryption_configuration]") unless input[:server_side_encryption_configuration].nil?
      end
    end

    class GetBucketIntelligentTieringConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetBucketIntelligentTieringConfigurationInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_required!(input[:id], context: "#{context}[:id]")
        Hearth::Validator.validate_types!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetBucketIntelligentTieringConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetBucketIntelligentTieringConfigurationOutput, context: context)
        IntelligentTieringConfiguration.validate!(input[:intelligent_tiering_configuration], context: "#{context}[:intelligent_tiering_configuration]") unless input[:intelligent_tiering_configuration].nil?
      end
    end

    class GetBucketInventoryConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetBucketInventoryConfigurationInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_required!(input[:id], context: "#{context}[:id]")
        Hearth::Validator.validate_types!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class GetBucketInventoryConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetBucketInventoryConfigurationOutput, context: context)
        InventoryConfiguration.validate!(input[:inventory_configuration], context: "#{context}[:inventory_configuration]") unless input[:inventory_configuration].nil?
      end
    end

    class GetBucketLifecycleConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetBucketLifecycleConfigurationInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class GetBucketLifecycleConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetBucketLifecycleConfigurationOutput, context: context)
        LifecycleRules.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
      end
    end

    class GetBucketLocationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetBucketLocationInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class GetBucketLocationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetBucketLocationOutput, context: context)
        Hearth::Validator.validate_types!(input[:location_constraint], ::String, context: "#{context}[:location_constraint]")
      end
    end

    class GetBucketLoggingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetBucketLoggingInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class GetBucketLoggingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetBucketLoggingOutput, context: context)
        LoggingEnabled.validate!(input[:logging_enabled], context: "#{context}[:logging_enabled]") unless input[:logging_enabled].nil?
      end
    end

    class GetBucketMetricsConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetBucketMetricsConfigurationInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_required!(input[:id], context: "#{context}[:id]")
        Hearth::Validator.validate_types!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class GetBucketMetricsConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetBucketMetricsConfigurationOutput, context: context)
        MetricsConfiguration.validate!(input[:metrics_configuration], context: "#{context}[:metrics_configuration]") unless input[:metrics_configuration].nil?
      end
    end

    class GetBucketNotificationConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetBucketNotificationConfigurationInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class GetBucketNotificationConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetBucketNotificationConfigurationOutput, context: context)
        TopicConfigurationList.validate!(input[:topic_configurations], context: "#{context}[:topic_configurations]") unless input[:topic_configurations].nil?
        QueueConfigurationList.validate!(input[:queue_configurations], context: "#{context}[:queue_configurations]") unless input[:queue_configurations].nil?
        LambdaFunctionConfigurationList.validate!(input[:lambda_function_configurations], context: "#{context}[:lambda_function_configurations]") unless input[:lambda_function_configurations].nil?
        EventBridgeConfiguration.validate!(input[:event_bridge_configuration], context: "#{context}[:event_bridge_configuration]") unless input[:event_bridge_configuration].nil?
      end
    end

    class GetBucketOwnershipControlsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetBucketOwnershipControlsInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class GetBucketOwnershipControlsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetBucketOwnershipControlsOutput, context: context)
        OwnershipControls.validate!(input[:ownership_controls], context: "#{context}[:ownership_controls]") unless input[:ownership_controls].nil?
      end
    end

    class GetBucketPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetBucketPolicyInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class GetBucketPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetBucketPolicyOutput, context: context)
        Hearth::Validator.validate_types!(input[:policy], ::String, context: "#{context}[:policy]")
      end
    end

    class GetBucketPolicyStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetBucketPolicyStatusInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class GetBucketPolicyStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetBucketPolicyStatusOutput, context: context)
        PolicyStatus.validate!(input[:policy_status], context: "#{context}[:policy_status]") unless input[:policy_status].nil?
      end
    end

    class GetBucketReplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetBucketReplicationInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class GetBucketReplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetBucketReplicationOutput, context: context)
        ReplicationConfiguration.validate!(input[:replication_configuration], context: "#{context}[:replication_configuration]") unless input[:replication_configuration].nil?
      end
    end

    class GetBucketRequestPaymentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetBucketRequestPaymentInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class GetBucketRequestPaymentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetBucketRequestPaymentOutput, context: context)
        Hearth::Validator.validate_types!(input[:payer], ::String, context: "#{context}[:payer]")
      end
    end

    class GetBucketTaggingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetBucketTaggingInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class GetBucketTaggingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetBucketTaggingOutput, context: context)
        Hearth::Validator.validate_required!(input[:tag_set], context: "#{context}[:tag_set]")
        TagSet.validate!(input[:tag_set], context: "#{context}[:tag_set]") unless input[:tag_set].nil?
      end
    end

    class GetBucketVersioningInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetBucketVersioningInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class GetBucketVersioningOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetBucketVersioningOutput, context: context)
        Hearth::Validator.validate_types!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate_types!(input[:mfa_delete], ::String, context: "#{context}[:mfa_delete]")
      end
    end

    class GetBucketWebsiteInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetBucketWebsiteInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class GetBucketWebsiteOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetBucketWebsiteOutput, context: context)
        RedirectAllRequestsTo.validate!(input[:redirect_all_requests_to], context: "#{context}[:redirect_all_requests_to]") unless input[:redirect_all_requests_to].nil?
        IndexDocument.validate!(input[:index_document], context: "#{context}[:index_document]") unless input[:index_document].nil?
        ErrorDocument.validate!(input[:error_document], context: "#{context}[:error_document]") unless input[:error_document].nil?
        RoutingRules.validate!(input[:routing_rules], context: "#{context}[:routing_rules]") unless input[:routing_rules].nil?
      end
    end

    class GetObjectAclInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetObjectAclInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_required!(input[:key], context: "#{context}[:key]")
        Hearth::Validator.validate_types!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate_types!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate_types!(input[:request_payer], ::String, context: "#{context}[:request_payer]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class GetObjectAclOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetObjectAclOutput, context: context)
        Owner.validate!(input[:owner], context: "#{context}[:owner]") unless input[:owner].nil?
        Grants.validate!(input[:grants], context: "#{context}[:grants]") unless input[:grants].nil?
        Hearth::Validator.validate_types!(input[:request_charged], ::String, context: "#{context}[:request_charged]")
      end
    end

    class GetObjectAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetObjectAttributesInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_required!(input[:key], context: "#{context}[:key]")
        Hearth::Validator.validate_types!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate_types!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate_types!(input[:max_parts], ::Integer, context: "#{context}[:max_parts]")
        Hearth::Validator.validate_types!(input[:part_number_marker], ::String, context: "#{context}[:part_number_marker]")
        Hearth::Validator.validate_types!(input[:sse_customer_algorithm], ::String, context: "#{context}[:sse_customer_algorithm]")
        Hearth::Validator.validate_types!(input[:sse_customer_key], ::String, context: "#{context}[:sse_customer_key]")
        Hearth::Validator.validate_types!(input[:sse_customer_key_md5], ::String, context: "#{context}[:sse_customer_key_md5]")
        Hearth::Validator.validate_types!(input[:request_payer], ::String, context: "#{context}[:request_payer]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
        Hearth::Validator.validate_required!(input[:object_attributes], context: "#{context}[:object_attributes]")
        ObjectAttributesList.validate!(input[:object_attributes], context: "#{context}[:object_attributes]") unless input[:object_attributes].nil?
      end
    end

    class GetObjectAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetObjectAttributesOutput, context: context)
        Hearth::Validator.validate_types!(input[:delete_marker], ::TrueClass, ::FalseClass, context: "#{context}[:delete_marker]")
        Hearth::Validator.validate_types!(input[:last_modified], ::Time, context: "#{context}[:last_modified]")
        Hearth::Validator.validate_types!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate_types!(input[:request_charged], ::String, context: "#{context}[:request_charged]")
        Hearth::Validator.validate_types!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
        Checksum.validate!(input[:checksum], context: "#{context}[:checksum]") unless input[:checksum].nil?
        GetObjectAttributesParts.validate!(input[:object_parts], context: "#{context}[:object_parts]") unless input[:object_parts].nil?
        Hearth::Validator.validate_types!(input[:storage_class], ::String, context: "#{context}[:storage_class]")
        Hearth::Validator.validate_types!(input[:object_size], ::Integer, context: "#{context}[:object_size]")
      end
    end

    class GetObjectAttributesParts
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetObjectAttributesParts, context: context)
        Hearth::Validator.validate_types!(input[:total_parts_count], ::Integer, context: "#{context}[:total_parts_count]")
        Hearth::Validator.validate_types!(input[:part_number_marker], ::String, context: "#{context}[:part_number_marker]")
        Hearth::Validator.validate_types!(input[:next_part_number_marker], ::String, context: "#{context}[:next_part_number_marker]")
        Hearth::Validator.validate_types!(input[:max_parts], ::Integer, context: "#{context}[:max_parts]")
        Hearth::Validator.validate_types!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        PartsList.validate!(input[:parts], context: "#{context}[:parts]") unless input[:parts].nil?
      end
    end

    class GetObjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetObjectInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:if_match], ::String, context: "#{context}[:if_match]")
        Hearth::Validator.validate_types!(input[:if_modified_since], ::Time, context: "#{context}[:if_modified_since]")
        Hearth::Validator.validate_types!(input[:if_none_match], ::String, context: "#{context}[:if_none_match]")
        Hearth::Validator.validate_types!(input[:if_unmodified_since], ::Time, context: "#{context}[:if_unmodified_since]")
        Hearth::Validator.validate_required!(input[:key], context: "#{context}[:key]")
        Hearth::Validator.validate_types!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate_types!(input[:range], ::String, context: "#{context}[:range]")
        Hearth::Validator.validate_types!(input[:response_cache_control], ::String, context: "#{context}[:response_cache_control]")
        Hearth::Validator.validate_types!(input[:response_content_disposition], ::String, context: "#{context}[:response_content_disposition]")
        Hearth::Validator.validate_types!(input[:response_content_encoding], ::String, context: "#{context}[:response_content_encoding]")
        Hearth::Validator.validate_types!(input[:response_content_language], ::String, context: "#{context}[:response_content_language]")
        Hearth::Validator.validate_types!(input[:response_content_type], ::String, context: "#{context}[:response_content_type]")
        Hearth::Validator.validate_types!(input[:response_expires], ::Time, context: "#{context}[:response_expires]")
        Hearth::Validator.validate_types!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate_types!(input[:sse_customer_algorithm], ::String, context: "#{context}[:sse_customer_algorithm]")
        Hearth::Validator.validate_types!(input[:sse_customer_key], ::String, context: "#{context}[:sse_customer_key]")
        Hearth::Validator.validate_types!(input[:sse_customer_key_md5], ::String, context: "#{context}[:sse_customer_key_md5]")
        Hearth::Validator.validate_types!(input[:request_payer], ::String, context: "#{context}[:request_payer]")
        Hearth::Validator.validate_types!(input[:part_number], ::Integer, context: "#{context}[:part_number]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
        Hearth::Validator.validate_types!(input[:checksum_mode], ::String, context: "#{context}[:checksum_mode]")
      end
    end

    class GetObjectLegalHoldInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetObjectLegalHoldInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_required!(input[:key], context: "#{context}[:key]")
        Hearth::Validator.validate_types!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate_types!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate_types!(input[:request_payer], ::String, context: "#{context}[:request_payer]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class GetObjectLegalHoldOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetObjectLegalHoldOutput, context: context)
        ObjectLockLegalHold.validate!(input[:legal_hold], context: "#{context}[:legal_hold]") unless input[:legal_hold].nil?
      end
    end

    class GetObjectLockConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetObjectLockConfigurationInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class GetObjectLockConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetObjectLockConfigurationOutput, context: context)
        ObjectLockConfiguration.validate!(input[:object_lock_configuration], context: "#{context}[:object_lock_configuration]") unless input[:object_lock_configuration].nil?
      end
    end

    class GetObjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetObjectOutput, context: context)
        unless input[:body].respond_to?(:read) || input[:body].respond_to?(:readpartial)
          raise ArgumentError, "Expected #{context} to be an IO like object, got #{input[:body].class}"
        end
        Hearth::Validator.validate_types!(input[:delete_marker], ::TrueClass, ::FalseClass, context: "#{context}[:delete_marker]")
        Hearth::Validator.validate_types!(input[:accept_ranges], ::String, context: "#{context}[:accept_ranges]")
        Hearth::Validator.validate_types!(input[:expiration], ::String, context: "#{context}[:expiration]")
        Hearth::Validator.validate_types!(input[:restore], ::String, context: "#{context}[:restore]")
        Hearth::Validator.validate_types!(input[:last_modified], ::Time, context: "#{context}[:last_modified]")
        Hearth::Validator.validate_types!(input[:content_length], ::Integer, context: "#{context}[:content_length]")
        Hearth::Validator.validate_types!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
        Hearth::Validator.validate_types!(input[:checksum_crc32], ::String, context: "#{context}[:checksum_crc32]")
        Hearth::Validator.validate_types!(input[:checksum_crc32_c], ::String, context: "#{context}[:checksum_crc32_c]")
        Hearth::Validator.validate_types!(input[:checksum_sha1], ::String, context: "#{context}[:checksum_sha1]")
        Hearth::Validator.validate_types!(input[:checksum_sha256], ::String, context: "#{context}[:checksum_sha256]")
        Hearth::Validator.validate_types!(input[:missing_meta], ::Integer, context: "#{context}[:missing_meta]")
        Hearth::Validator.validate_types!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate_types!(input[:cache_control], ::String, context: "#{context}[:cache_control]")
        Hearth::Validator.validate_types!(input[:content_disposition], ::String, context: "#{context}[:content_disposition]")
        Hearth::Validator.validate_types!(input[:content_encoding], ::String, context: "#{context}[:content_encoding]")
        Hearth::Validator.validate_types!(input[:content_language], ::String, context: "#{context}[:content_language]")
        Hearth::Validator.validate_types!(input[:content_range], ::String, context: "#{context}[:content_range]")
        Hearth::Validator.validate_types!(input[:content_type], ::String, context: "#{context}[:content_type]")
        Hearth::Validator.validate_types!(input[:expires], ::Time, context: "#{context}[:expires]")
        Hearth::Validator.validate_types!(input[:website_redirect_location], ::String, context: "#{context}[:website_redirect_location]")
        Hearth::Validator.validate_types!(input[:server_side_encryption], ::String, context: "#{context}[:server_side_encryption]")
        Metadata.validate!(input[:metadata], context: "#{context}[:metadata]") unless input[:metadata].nil?
        Hearth::Validator.validate_types!(input[:sse_customer_algorithm], ::String, context: "#{context}[:sse_customer_algorithm]")
        Hearth::Validator.validate_types!(input[:sse_customer_key_md5], ::String, context: "#{context}[:sse_customer_key_md5]")
        Hearth::Validator.validate_types!(input[:ssekms_key_id], ::String, context: "#{context}[:ssekms_key_id]")
        Hearth::Validator.validate_types!(input[:bucket_key_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:bucket_key_enabled]")
        Hearth::Validator.validate_types!(input[:storage_class], ::String, context: "#{context}[:storage_class]")
        Hearth::Validator.validate_types!(input[:request_charged], ::String, context: "#{context}[:request_charged]")
        Hearth::Validator.validate_types!(input[:replication_status], ::String, context: "#{context}[:replication_status]")
        Hearth::Validator.validate_types!(input[:parts_count], ::Integer, context: "#{context}[:parts_count]")
        Hearth::Validator.validate_types!(input[:tag_count], ::Integer, context: "#{context}[:tag_count]")
        Hearth::Validator.validate_types!(input[:object_lock_mode], ::String, context: "#{context}[:object_lock_mode]")
        Hearth::Validator.validate_types!(input[:object_lock_retain_until_date], ::Time, context: "#{context}[:object_lock_retain_until_date]")
        Hearth::Validator.validate_types!(input[:object_lock_legal_hold_status], ::String, context: "#{context}[:object_lock_legal_hold_status]")
      end
    end

    class GetObjectRetentionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetObjectRetentionInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_required!(input[:key], context: "#{context}[:key]")
        Hearth::Validator.validate_types!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate_types!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate_types!(input[:request_payer], ::String, context: "#{context}[:request_payer]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class GetObjectRetentionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetObjectRetentionOutput, context: context)
        ObjectLockRetention.validate!(input[:retention], context: "#{context}[:retention]") unless input[:retention].nil?
      end
    end

    class GetObjectTaggingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetObjectTaggingInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_required!(input[:key], context: "#{context}[:key]")
        Hearth::Validator.validate_types!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate_types!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
        Hearth::Validator.validate_types!(input[:request_payer], ::String, context: "#{context}[:request_payer]")
      end
    end

    class GetObjectTaggingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetObjectTaggingOutput, context: context)
        Hearth::Validator.validate_types!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate_required!(input[:tag_set], context: "#{context}[:tag_set]")
        TagSet.validate!(input[:tag_set], context: "#{context}[:tag_set]") unless input[:tag_set].nil?
      end
    end

    class GetObjectTorrentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetObjectTorrentInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_required!(input[:key], context: "#{context}[:key]")
        Hearth::Validator.validate_types!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate_types!(input[:request_payer], ::String, context: "#{context}[:request_payer]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class GetObjectTorrentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetObjectTorrentOutput, context: context)
        unless input[:body].respond_to?(:read) || input[:body].respond_to?(:readpartial)
          raise ArgumentError, "Expected #{context} to be an IO like object, got #{input[:body].class}"
        end
        Hearth::Validator.validate_types!(input[:request_charged], ::String, context: "#{context}[:request_charged]")
      end
    end

    class GetPublicAccessBlockInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetPublicAccessBlockInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class GetPublicAccessBlockOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetPublicAccessBlockOutput, context: context)
        PublicAccessBlockConfiguration.validate!(input[:public_access_block_configuration], context: "#{context}[:public_access_block_configuration]") unless input[:public_access_block_configuration].nil?
      end
    end

    class GlacierJobParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GlacierJobParameters, context: context)
        Hearth::Validator.validate_required!(input[:tier], context: "#{context}[:tier]")
        Hearth::Validator.validate_types!(input[:tier], ::String, context: "#{context}[:tier]")
      end
    end

    class Grant
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::Grant, context: context)
        Grantee.validate!(input[:grantee], context: "#{context}[:grantee]") unless input[:grantee].nil?
        Hearth::Validator.validate_types!(input[:permission], ::String, context: "#{context}[:permission]")
      end
    end

    class Grantee
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::Grantee, context: context)
        Hearth::Validator.validate_types!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate_types!(input[:email_address], ::String, context: "#{context}[:email_address]")
        Hearth::Validator.validate_types!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate_types!(input[:uri], ::String, context: "#{context}[:uri]")
        Hearth::Validator.validate_required!(input[:type], context: "#{context}[:type]")
        Hearth::Validator.validate_types!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class Grants
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Grant.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class HeadBucketInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::HeadBucketInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class HeadBucketOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::HeadBucketOutput, context: context)
        Hearth::Validator.validate_types!(input[:bucket_location_type], ::String, context: "#{context}[:bucket_location_type]")
        Hearth::Validator.validate_types!(input[:bucket_location_name], ::String, context: "#{context}[:bucket_location_name]")
        Hearth::Validator.validate_types!(input[:bucket_region], ::String, context: "#{context}[:bucket_region]")
        Hearth::Validator.validate_types!(input[:access_point_alias], ::TrueClass, ::FalseClass, context: "#{context}[:access_point_alias]")
      end
    end

    class HeadObjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::HeadObjectInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:if_match], ::String, context: "#{context}[:if_match]")
        Hearth::Validator.validate_types!(input[:if_modified_since], ::Time, context: "#{context}[:if_modified_since]")
        Hearth::Validator.validate_types!(input[:if_none_match], ::String, context: "#{context}[:if_none_match]")
        Hearth::Validator.validate_types!(input[:if_unmodified_since], ::Time, context: "#{context}[:if_unmodified_since]")
        Hearth::Validator.validate_required!(input[:key], context: "#{context}[:key]")
        Hearth::Validator.validate_types!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate_types!(input[:range], ::String, context: "#{context}[:range]")
        Hearth::Validator.validate_types!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate_types!(input[:sse_customer_algorithm], ::String, context: "#{context}[:sse_customer_algorithm]")
        Hearth::Validator.validate_types!(input[:sse_customer_key], ::String, context: "#{context}[:sse_customer_key]")
        Hearth::Validator.validate_types!(input[:sse_customer_key_md5], ::String, context: "#{context}[:sse_customer_key_md5]")
        Hearth::Validator.validate_types!(input[:request_payer], ::String, context: "#{context}[:request_payer]")
        Hearth::Validator.validate_types!(input[:part_number], ::Integer, context: "#{context}[:part_number]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
        Hearth::Validator.validate_types!(input[:checksum_mode], ::String, context: "#{context}[:checksum_mode]")
      end
    end

    class HeadObjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::HeadObjectOutput, context: context)
        Hearth::Validator.validate_types!(input[:delete_marker], ::TrueClass, ::FalseClass, context: "#{context}[:delete_marker]")
        Hearth::Validator.validate_types!(input[:accept_ranges], ::String, context: "#{context}[:accept_ranges]")
        Hearth::Validator.validate_types!(input[:expiration], ::String, context: "#{context}[:expiration]")
        Hearth::Validator.validate_types!(input[:restore], ::String, context: "#{context}[:restore]")
        Hearth::Validator.validate_types!(input[:archive_status], ::String, context: "#{context}[:archive_status]")
        Hearth::Validator.validate_types!(input[:last_modified], ::Time, context: "#{context}[:last_modified]")
        Hearth::Validator.validate_types!(input[:content_length], ::Integer, context: "#{context}[:content_length]")
        Hearth::Validator.validate_types!(input[:checksum_crc32], ::String, context: "#{context}[:checksum_crc32]")
        Hearth::Validator.validate_types!(input[:checksum_crc32_c], ::String, context: "#{context}[:checksum_crc32_c]")
        Hearth::Validator.validate_types!(input[:checksum_sha1], ::String, context: "#{context}[:checksum_sha1]")
        Hearth::Validator.validate_types!(input[:checksum_sha256], ::String, context: "#{context}[:checksum_sha256]")
        Hearth::Validator.validate_types!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
        Hearth::Validator.validate_types!(input[:missing_meta], ::Integer, context: "#{context}[:missing_meta]")
        Hearth::Validator.validate_types!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate_types!(input[:cache_control], ::String, context: "#{context}[:cache_control]")
        Hearth::Validator.validate_types!(input[:content_disposition], ::String, context: "#{context}[:content_disposition]")
        Hearth::Validator.validate_types!(input[:content_encoding], ::String, context: "#{context}[:content_encoding]")
        Hearth::Validator.validate_types!(input[:content_language], ::String, context: "#{context}[:content_language]")
        Hearth::Validator.validate_types!(input[:content_type], ::String, context: "#{context}[:content_type]")
        Hearth::Validator.validate_types!(input[:expires], ::Time, context: "#{context}[:expires]")
        Hearth::Validator.validate_types!(input[:website_redirect_location], ::String, context: "#{context}[:website_redirect_location]")
        Hearth::Validator.validate_types!(input[:server_side_encryption], ::String, context: "#{context}[:server_side_encryption]")
        Metadata.validate!(input[:metadata], context: "#{context}[:metadata]") unless input[:metadata].nil?
        Hearth::Validator.validate_types!(input[:sse_customer_algorithm], ::String, context: "#{context}[:sse_customer_algorithm]")
        Hearth::Validator.validate_types!(input[:sse_customer_key_md5], ::String, context: "#{context}[:sse_customer_key_md5]")
        Hearth::Validator.validate_types!(input[:ssekms_key_id], ::String, context: "#{context}[:ssekms_key_id]")
        Hearth::Validator.validate_types!(input[:bucket_key_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:bucket_key_enabled]")
        Hearth::Validator.validate_types!(input[:storage_class], ::String, context: "#{context}[:storage_class]")
        Hearth::Validator.validate_types!(input[:request_charged], ::String, context: "#{context}[:request_charged]")
        Hearth::Validator.validate_types!(input[:replication_status], ::String, context: "#{context}[:replication_status]")
        Hearth::Validator.validate_types!(input[:parts_count], ::Integer, context: "#{context}[:parts_count]")
        Hearth::Validator.validate_types!(input[:object_lock_mode], ::String, context: "#{context}[:object_lock_mode]")
        Hearth::Validator.validate_types!(input[:object_lock_retain_until_date], ::Time, context: "#{context}[:object_lock_retain_until_date]")
        Hearth::Validator.validate_types!(input[:object_lock_legal_hold_status], ::String, context: "#{context}[:object_lock_legal_hold_status]")
      end
    end

    class IndexDocument
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::IndexDocument, context: context)
        Hearth::Validator.validate_required!(input[:suffix], context: "#{context}[:suffix]")
        Hearth::Validator.validate_types!(input[:suffix], ::String, context: "#{context}[:suffix]")
      end
    end

    class Initiator
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::Initiator, context: context)
        Hearth::Validator.validate_types!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate_types!(input[:display_name], ::String, context: "#{context}[:display_name]")
      end
    end

    class InputSerialization
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::InputSerialization, context: context)
        CSVInput.validate!(input[:csv], context: "#{context}[:csv]") unless input[:csv].nil?
        Hearth::Validator.validate_types!(input[:compression_type], ::String, context: "#{context}[:compression_type]")
        JSONInput.validate!(input[:json], context: "#{context}[:json]") unless input[:json].nil?
        ParquetInput.validate!(input[:parquet], context: "#{context}[:parquet]") unless input[:parquet].nil?
      end
    end

    class IntelligentTieringAndOperator
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::IntelligentTieringAndOperator, context: context)
        Hearth::Validator.validate_types!(input[:prefix], ::String, context: "#{context}[:prefix]")
        TagSet.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class IntelligentTieringConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::IntelligentTieringConfiguration, context: context)
        Hearth::Validator.validate_required!(input[:id], context: "#{context}[:id]")
        Hearth::Validator.validate_types!(input[:id], ::String, context: "#{context}[:id]")
        IntelligentTieringFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        Hearth::Validator.validate_required!(input[:status], context: "#{context}[:status]")
        Hearth::Validator.validate_types!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate_required!(input[:tierings], context: "#{context}[:tierings]")
        TieringList.validate!(input[:tierings], context: "#{context}[:tierings]") unless input[:tierings].nil?
      end
    end

    class IntelligentTieringConfigurationList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          IntelligentTieringConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class IntelligentTieringFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::IntelligentTieringFilter, context: context)
        Hearth::Validator.validate_types!(input[:prefix], ::String, context: "#{context}[:prefix]")
        Tag.validate!(input[:tag], context: "#{context}[:tag]") unless input[:tag].nil?
        IntelligentTieringAndOperator.validate!(input[:and], context: "#{context}[:and]") unless input[:and].nil?
      end
    end

    class InvalidObjectState
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::InvalidObjectState, context: context)
        Hearth::Validator.validate_types!(input[:storage_class], ::String, context: "#{context}[:storage_class]")
        Hearth::Validator.validate_types!(input[:access_tier], ::String, context: "#{context}[:access_tier]")
      end
    end

    class InventoryConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::InventoryConfiguration, context: context)
        Hearth::Validator.validate_required!(input[:destination], context: "#{context}[:destination]")
        InventoryDestination.validate!(input[:destination], context: "#{context}[:destination]") unless input[:destination].nil?
        Hearth::Validator.validate_required!(input[:is_enabled], context: "#{context}[:is_enabled]")
        Hearth::Validator.validate_types!(input[:is_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:is_enabled]")
        InventoryFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        Hearth::Validator.validate_required!(input[:id], context: "#{context}[:id]")
        Hearth::Validator.validate_types!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate_required!(input[:included_object_versions], context: "#{context}[:included_object_versions]")
        Hearth::Validator.validate_types!(input[:included_object_versions], ::String, context: "#{context}[:included_object_versions]")
        InventoryOptionalFields.validate!(input[:optional_fields], context: "#{context}[:optional_fields]") unless input[:optional_fields].nil?
        Hearth::Validator.validate_required!(input[:schedule], context: "#{context}[:schedule]")
        InventorySchedule.validate!(input[:schedule], context: "#{context}[:schedule]") unless input[:schedule].nil?
      end
    end

    class InventoryConfigurationList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InventoryConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InventoryDestination
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::InventoryDestination, context: context)
        Hearth::Validator.validate_required!(input[:s3_bucket_destination], context: "#{context}[:s3_bucket_destination]")
        InventoryS3BucketDestination.validate!(input[:s3_bucket_destination], context: "#{context}[:s3_bucket_destination]") unless input[:s3_bucket_destination].nil?
      end
    end

    class InventoryEncryption
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::InventoryEncryption, context: context)
        SSES3.validate!(input[:sses3], context: "#{context}[:sses3]") unless input[:sses3].nil?
        SSEKMS.validate!(input[:ssekms], context: "#{context}[:ssekms]") unless input[:ssekms].nil?
      end
    end

    class InventoryFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::InventoryFilter, context: context)
        Hearth::Validator.validate_required!(input[:prefix], context: "#{context}[:prefix]")
        Hearth::Validator.validate_types!(input[:prefix], ::String, context: "#{context}[:prefix]")
      end
    end

    class InventoryOptionalFields
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InventoryS3BucketDestination
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::InventoryS3BucketDestination, context: context)
        Hearth::Validator.validate_types!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_required!(input[:format], context: "#{context}[:format]")
        Hearth::Validator.validate_types!(input[:format], ::String, context: "#{context}[:format]")
        Hearth::Validator.validate_types!(input[:prefix], ::String, context: "#{context}[:prefix]")
        InventoryEncryption.validate!(input[:encryption], context: "#{context}[:encryption]") unless input[:encryption].nil?
      end
    end

    class InventorySchedule
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::InventorySchedule, context: context)
        Hearth::Validator.validate_required!(input[:frequency], context: "#{context}[:frequency]")
        Hearth::Validator.validate_types!(input[:frequency], ::String, context: "#{context}[:frequency]")
      end
    end

    class JSONInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::JSONInput, context: context)
        Hearth::Validator.validate_types!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class JSONOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::JSONOutput, context: context)
        Hearth::Validator.validate_types!(input[:record_delimiter], ::String, context: "#{context}[:record_delimiter]")
      end
    end

    class LambdaFunctionConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::LambdaFunctionConfiguration, context: context)
        Hearth::Validator.validate_types!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate_required!(input[:lambda_function_arn], context: "#{context}[:lambda_function_arn]")
        Hearth::Validator.validate_types!(input[:lambda_function_arn], ::String, context: "#{context}[:lambda_function_arn]")
        Hearth::Validator.validate_required!(input[:events], context: "#{context}[:events]")
        EventList.validate!(input[:events], context: "#{context}[:events]") unless input[:events].nil?
        NotificationConfigurationFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
      end
    end

    class LambdaFunctionConfigurationList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LambdaFunctionConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LifecycleExpiration
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::LifecycleExpiration, context: context)
        Hearth::Validator.validate_types!(input[:date], ::Time, context: "#{context}[:date]")
        Hearth::Validator.validate_types!(input[:days], ::Integer, context: "#{context}[:days]")
        Hearth::Validator.validate_types!(input[:expired_object_delete_marker], ::TrueClass, ::FalseClass, context: "#{context}[:expired_object_delete_marker]")
      end
    end

    class LifecycleRule
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::LifecycleRule, context: context)
        LifecycleExpiration.validate!(input[:expiration], context: "#{context}[:expiration]") unless input[:expiration].nil?
        Hearth::Validator.validate_types!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate_types!(input[:prefix], ::String, context: "#{context}[:prefix]")
        LifecycleRuleFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        Hearth::Validator.validate_required!(input[:status], context: "#{context}[:status]")
        Hearth::Validator.validate_types!(input[:status], ::String, context: "#{context}[:status]")
        TransitionList.validate!(input[:transitions], context: "#{context}[:transitions]") unless input[:transitions].nil?
        NoncurrentVersionTransitionList.validate!(input[:noncurrent_version_transitions], context: "#{context}[:noncurrent_version_transitions]") unless input[:noncurrent_version_transitions].nil?
        NoncurrentVersionExpiration.validate!(input[:noncurrent_version_expiration], context: "#{context}[:noncurrent_version_expiration]") unless input[:noncurrent_version_expiration].nil?
        AbortIncompleteMultipartUpload.validate!(input[:abort_incomplete_multipart_upload], context: "#{context}[:abort_incomplete_multipart_upload]") unless input[:abort_incomplete_multipart_upload].nil?
      end
    end

    class LifecycleRuleAndOperator
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::LifecycleRuleAndOperator, context: context)
        Hearth::Validator.validate_types!(input[:prefix], ::String, context: "#{context}[:prefix]")
        TagSet.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate_types!(input[:object_size_greater_than], ::Integer, context: "#{context}[:object_size_greater_than]")
        Hearth::Validator.validate_types!(input[:object_size_less_than], ::Integer, context: "#{context}[:object_size_less_than]")
      end
    end

    class LifecycleRuleFilter
      def self.validate!(input, context:)
        case input
        when Types::LifecycleRuleFilter::Prefix
          Hearth::Validator.validate_types!(input.__getobj__, ::String, context: context)
        when Types::LifecycleRuleFilter::Tag
          Tag.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::LifecycleRuleFilter::ObjectSizeGreaterThan
          Hearth::Validator.validate_types!(input.__getobj__, ::Integer, context: context)
        when Types::LifecycleRuleFilter::ObjectSizeLessThan
          Hearth::Validator.validate_types!(input.__getobj__, ::Integer, context: context)
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
          Hearth::Validator.validate_types!(input, ::String, context: context)
        end
      end

      class Tag
        def self.validate!(input, context:)
          Validators::Tag.validate!(input, context: context) unless input.nil?
        end
      end

      class ObjectSizeGreaterThan
        def self.validate!(input, context:)
          Hearth::Validator.validate_types!(input, ::Integer, context: context)
        end
      end

      class ObjectSizeLessThan
        def self.validate!(input, context:)
          Hearth::Validator.validate_types!(input, ::Integer, context: context)
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
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LifecycleRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListBucketAnalyticsConfigurationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListBucketAnalyticsConfigurationsInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:continuation_token], ::String, context: "#{context}[:continuation_token]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class ListBucketAnalyticsConfigurationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListBucketAnalyticsConfigurationsOutput, context: context)
        Hearth::Validator.validate_types!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate_types!(input[:continuation_token], ::String, context: "#{context}[:continuation_token]")
        Hearth::Validator.validate_types!(input[:next_continuation_token], ::String, context: "#{context}[:next_continuation_token]")
        AnalyticsConfigurationList.validate!(input[:analytics_configuration_list], context: "#{context}[:analytics_configuration_list]") unless input[:analytics_configuration_list].nil?
      end
    end

    class ListBucketIntelligentTieringConfigurationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListBucketIntelligentTieringConfigurationsInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:continuation_token], ::String, context: "#{context}[:continuation_token]")
      end
    end

    class ListBucketIntelligentTieringConfigurationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListBucketIntelligentTieringConfigurationsOutput, context: context)
        Hearth::Validator.validate_types!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate_types!(input[:continuation_token], ::String, context: "#{context}[:continuation_token]")
        Hearth::Validator.validate_types!(input[:next_continuation_token], ::String, context: "#{context}[:next_continuation_token]")
        IntelligentTieringConfigurationList.validate!(input[:intelligent_tiering_configuration_list], context: "#{context}[:intelligent_tiering_configuration_list]") unless input[:intelligent_tiering_configuration_list].nil?
      end
    end

    class ListBucketInventoryConfigurationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListBucketInventoryConfigurationsInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:continuation_token], ::String, context: "#{context}[:continuation_token]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class ListBucketInventoryConfigurationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListBucketInventoryConfigurationsOutput, context: context)
        Hearth::Validator.validate_types!(input[:continuation_token], ::String, context: "#{context}[:continuation_token]")
        InventoryConfigurationList.validate!(input[:inventory_configuration_list], context: "#{context}[:inventory_configuration_list]") unless input[:inventory_configuration_list].nil?
        Hearth::Validator.validate_types!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate_types!(input[:next_continuation_token], ::String, context: "#{context}[:next_continuation_token]")
      end
    end

    class ListBucketMetricsConfigurationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListBucketMetricsConfigurationsInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:continuation_token], ::String, context: "#{context}[:continuation_token]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class ListBucketMetricsConfigurationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListBucketMetricsConfigurationsOutput, context: context)
        Hearth::Validator.validate_types!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate_types!(input[:continuation_token], ::String, context: "#{context}[:continuation_token]")
        Hearth::Validator.validate_types!(input[:next_continuation_token], ::String, context: "#{context}[:next_continuation_token]")
        MetricsConfigurationList.validate!(input[:metrics_configuration_list], context: "#{context}[:metrics_configuration_list]") unless input[:metrics_configuration_list].nil?
      end
    end

    class ListBucketsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListBucketsInput, context: context)
      end
    end

    class ListBucketsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListBucketsOutput, context: context)
        Buckets.validate!(input[:buckets], context: "#{context}[:buckets]") unless input[:buckets].nil?
        Owner.validate!(input[:owner], context: "#{context}[:owner]") unless input[:owner].nil?
      end
    end

    class ListDirectoryBucketsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListDirectoryBucketsInput, context: context)
        Hearth::Validator.validate_types!(input[:continuation_token], ::String, context: "#{context}[:continuation_token]")
        Hearth::Validator.validate_types!(input[:max_directory_buckets], ::Integer, context: "#{context}[:max_directory_buckets]")
      end
    end

    class ListDirectoryBucketsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListDirectoryBucketsOutput, context: context)
        Buckets.validate!(input[:buckets], context: "#{context}[:buckets]") unless input[:buckets].nil?
        Hearth::Validator.validate_types!(input[:continuation_token], ::String, context: "#{context}[:continuation_token]")
      end
    end

    class ListMultipartUploadsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListMultipartUploadsInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:delimiter], ::String, context: "#{context}[:delimiter]")
        Hearth::Validator.validate_types!(input[:encoding_type], ::String, context: "#{context}[:encoding_type]")
        Hearth::Validator.validate_types!(input[:key_marker], ::String, context: "#{context}[:key_marker]")
        Hearth::Validator.validate_types!(input[:max_uploads], ::Integer, context: "#{context}[:max_uploads]")
        Hearth::Validator.validate_types!(input[:prefix], ::String, context: "#{context}[:prefix]")
        Hearth::Validator.validate_types!(input[:upload_id_marker], ::String, context: "#{context}[:upload_id_marker]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
        Hearth::Validator.validate_types!(input[:request_payer], ::String, context: "#{context}[:request_payer]")
      end
    end

    class ListMultipartUploadsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListMultipartUploadsOutput, context: context)
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:key_marker], ::String, context: "#{context}[:key_marker]")
        Hearth::Validator.validate_types!(input[:upload_id_marker], ::String, context: "#{context}[:upload_id_marker]")
        Hearth::Validator.validate_types!(input[:next_key_marker], ::String, context: "#{context}[:next_key_marker]")
        Hearth::Validator.validate_types!(input[:prefix], ::String, context: "#{context}[:prefix]")
        Hearth::Validator.validate_types!(input[:delimiter], ::String, context: "#{context}[:delimiter]")
        Hearth::Validator.validate_types!(input[:next_upload_id_marker], ::String, context: "#{context}[:next_upload_id_marker]")
        Hearth::Validator.validate_types!(input[:max_uploads], ::Integer, context: "#{context}[:max_uploads]")
        Hearth::Validator.validate_types!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        MultipartUploadList.validate!(input[:uploads], context: "#{context}[:uploads]") unless input[:uploads].nil?
        CommonPrefixList.validate!(input[:common_prefixes], context: "#{context}[:common_prefixes]") unless input[:common_prefixes].nil?
        Hearth::Validator.validate_types!(input[:encoding_type], ::String, context: "#{context}[:encoding_type]")
        Hearth::Validator.validate_types!(input[:request_charged], ::String, context: "#{context}[:request_charged]")
      end
    end

    class ListObjectVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListObjectVersionsInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:delimiter], ::String, context: "#{context}[:delimiter]")
        Hearth::Validator.validate_types!(input[:encoding_type], ::String, context: "#{context}[:encoding_type]")
        Hearth::Validator.validate_types!(input[:key_marker], ::String, context: "#{context}[:key_marker]")
        Hearth::Validator.validate_types!(input[:max_keys], ::Integer, context: "#{context}[:max_keys]")
        Hearth::Validator.validate_types!(input[:prefix], ::String, context: "#{context}[:prefix]")
        Hearth::Validator.validate_types!(input[:version_id_marker], ::String, context: "#{context}[:version_id_marker]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
        Hearth::Validator.validate_types!(input[:request_payer], ::String, context: "#{context}[:request_payer]")
        OptionalObjectAttributesList.validate!(input[:optional_object_attributes], context: "#{context}[:optional_object_attributes]") unless input[:optional_object_attributes].nil?
      end
    end

    class ListObjectVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListObjectVersionsOutput, context: context)
        Hearth::Validator.validate_types!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate_types!(input[:key_marker], ::String, context: "#{context}[:key_marker]")
        Hearth::Validator.validate_types!(input[:version_id_marker], ::String, context: "#{context}[:version_id_marker]")
        Hearth::Validator.validate_types!(input[:next_key_marker], ::String, context: "#{context}[:next_key_marker]")
        Hearth::Validator.validate_types!(input[:next_version_id_marker], ::String, context: "#{context}[:next_version_id_marker]")
        ObjectVersionList.validate!(input[:versions], context: "#{context}[:versions]") unless input[:versions].nil?
        DeleteMarkers.validate!(input[:delete_markers], context: "#{context}[:delete_markers]") unless input[:delete_markers].nil?
        Hearth::Validator.validate_types!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input[:prefix], ::String, context: "#{context}[:prefix]")
        Hearth::Validator.validate_types!(input[:delimiter], ::String, context: "#{context}[:delimiter]")
        Hearth::Validator.validate_types!(input[:max_keys], ::Integer, context: "#{context}[:max_keys]")
        CommonPrefixList.validate!(input[:common_prefixes], context: "#{context}[:common_prefixes]") unless input[:common_prefixes].nil?
        Hearth::Validator.validate_types!(input[:encoding_type], ::String, context: "#{context}[:encoding_type]")
        Hearth::Validator.validate_types!(input[:request_charged], ::String, context: "#{context}[:request_charged]")
      end
    end

    class ListObjectsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListObjectsInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:delimiter], ::String, context: "#{context}[:delimiter]")
        Hearth::Validator.validate_types!(input[:encoding_type], ::String, context: "#{context}[:encoding_type]")
        Hearth::Validator.validate_types!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate_types!(input[:max_keys], ::Integer, context: "#{context}[:max_keys]")
        Hearth::Validator.validate_types!(input[:prefix], ::String, context: "#{context}[:prefix]")
        Hearth::Validator.validate_types!(input[:request_payer], ::String, context: "#{context}[:request_payer]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
        OptionalObjectAttributesList.validate!(input[:optional_object_attributes], context: "#{context}[:optional_object_attributes]") unless input[:optional_object_attributes].nil?
      end
    end

    class ListObjectsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListObjectsOutput, context: context)
        Hearth::Validator.validate_types!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate_types!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate_types!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        ObjectList.validate!(input[:contents], context: "#{context}[:contents]") unless input[:contents].nil?
        Hearth::Validator.validate_types!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input[:prefix], ::String, context: "#{context}[:prefix]")
        Hearth::Validator.validate_types!(input[:delimiter], ::String, context: "#{context}[:delimiter]")
        Hearth::Validator.validate_types!(input[:max_keys], ::Integer, context: "#{context}[:max_keys]")
        CommonPrefixList.validate!(input[:common_prefixes], context: "#{context}[:common_prefixes]") unless input[:common_prefixes].nil?
        Hearth::Validator.validate_types!(input[:encoding_type], ::String, context: "#{context}[:encoding_type]")
        Hearth::Validator.validate_types!(input[:request_charged], ::String, context: "#{context}[:request_charged]")
      end
    end

    class ListObjectsV2Input
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListObjectsV2Input, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:delimiter], ::String, context: "#{context}[:delimiter]")
        Hearth::Validator.validate_types!(input[:encoding_type], ::String, context: "#{context}[:encoding_type]")
        Hearth::Validator.validate_types!(input[:max_keys], ::Integer, context: "#{context}[:max_keys]")
        Hearth::Validator.validate_types!(input[:prefix], ::String, context: "#{context}[:prefix]")
        Hearth::Validator.validate_types!(input[:continuation_token], ::String, context: "#{context}[:continuation_token]")
        Hearth::Validator.validate_types!(input[:fetch_owner], ::TrueClass, ::FalseClass, context: "#{context}[:fetch_owner]")
        Hearth::Validator.validate_types!(input[:start_after], ::String, context: "#{context}[:start_after]")
        Hearth::Validator.validate_types!(input[:request_payer], ::String, context: "#{context}[:request_payer]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
        OptionalObjectAttributesList.validate!(input[:optional_object_attributes], context: "#{context}[:optional_object_attributes]") unless input[:optional_object_attributes].nil?
      end
    end

    class ListObjectsV2Output
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListObjectsV2Output, context: context)
        Hearth::Validator.validate_types!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        ObjectList.validate!(input[:contents], context: "#{context}[:contents]") unless input[:contents].nil?
        Hearth::Validator.validate_types!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input[:prefix], ::String, context: "#{context}[:prefix]")
        Hearth::Validator.validate_types!(input[:delimiter], ::String, context: "#{context}[:delimiter]")
        Hearth::Validator.validate_types!(input[:max_keys], ::Integer, context: "#{context}[:max_keys]")
        CommonPrefixList.validate!(input[:common_prefixes], context: "#{context}[:common_prefixes]") unless input[:common_prefixes].nil?
        Hearth::Validator.validate_types!(input[:encoding_type], ::String, context: "#{context}[:encoding_type]")
        Hearth::Validator.validate_types!(input[:key_count], ::Integer, context: "#{context}[:key_count]")
        Hearth::Validator.validate_types!(input[:continuation_token], ::String, context: "#{context}[:continuation_token]")
        Hearth::Validator.validate_types!(input[:next_continuation_token], ::String, context: "#{context}[:next_continuation_token]")
        Hearth::Validator.validate_types!(input[:start_after], ::String, context: "#{context}[:start_after]")
        Hearth::Validator.validate_types!(input[:request_charged], ::String, context: "#{context}[:request_charged]")
      end
    end

    class ListPartsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListPartsInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_required!(input[:key], context: "#{context}[:key]")
        Hearth::Validator.validate_types!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate_types!(input[:max_parts], ::Integer, context: "#{context}[:max_parts]")
        Hearth::Validator.validate_types!(input[:part_number_marker], ::String, context: "#{context}[:part_number_marker]")
        Hearth::Validator.validate_required!(input[:upload_id], context: "#{context}[:upload_id]")
        Hearth::Validator.validate_types!(input[:upload_id], ::String, context: "#{context}[:upload_id]")
        Hearth::Validator.validate_types!(input[:request_payer], ::String, context: "#{context}[:request_payer]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
        Hearth::Validator.validate_types!(input[:sse_customer_algorithm], ::String, context: "#{context}[:sse_customer_algorithm]")
        Hearth::Validator.validate_types!(input[:sse_customer_key], ::String, context: "#{context}[:sse_customer_key]")
        Hearth::Validator.validate_types!(input[:sse_customer_key_md5], ::String, context: "#{context}[:sse_customer_key_md5]")
      end
    end

    class ListPartsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListPartsOutput, context: context)
        Hearth::Validator.validate_types!(input[:abort_date], ::Time, context: "#{context}[:abort_date]")
        Hearth::Validator.validate_types!(input[:abort_rule_id], ::String, context: "#{context}[:abort_rule_id]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate_types!(input[:upload_id], ::String, context: "#{context}[:upload_id]")
        Hearth::Validator.validate_types!(input[:part_number_marker], ::String, context: "#{context}[:part_number_marker]")
        Hearth::Validator.validate_types!(input[:next_part_number_marker], ::String, context: "#{context}[:next_part_number_marker]")
        Hearth::Validator.validate_types!(input[:max_parts], ::Integer, context: "#{context}[:max_parts]")
        Hearth::Validator.validate_types!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Parts.validate!(input[:parts], context: "#{context}[:parts]") unless input[:parts].nil?
        Initiator.validate!(input[:initiator], context: "#{context}[:initiator]") unless input[:initiator].nil?
        Owner.validate!(input[:owner], context: "#{context}[:owner]") unless input[:owner].nil?
        Hearth::Validator.validate_types!(input[:storage_class], ::String, context: "#{context}[:storage_class]")
        Hearth::Validator.validate_types!(input[:request_charged], ::String, context: "#{context}[:request_charged]")
        Hearth::Validator.validate_types!(input[:checksum_algorithm], ::String, context: "#{context}[:checksum_algorithm]")
      end
    end

    class LocationInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::LocationInfo, context: context)
        Hearth::Validator.validate_types!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate_types!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class LoggingEnabled
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::LoggingEnabled, context: context)
        Hearth::Validator.validate_required!(input[:target_bucket], context: "#{context}[:target_bucket]")
        Hearth::Validator.validate_types!(input[:target_bucket], ::String, context: "#{context}[:target_bucket]")
        TargetGrants.validate!(input[:target_grants], context: "#{context}[:target_grants]") unless input[:target_grants].nil?
        Hearth::Validator.validate_required!(input[:target_prefix], context: "#{context}[:target_prefix]")
        Hearth::Validator.validate_types!(input[:target_prefix], ::String, context: "#{context}[:target_prefix]")
        TargetObjectKeyFormat.validate!(input[:target_object_key_format], context: "#{context}[:target_object_key_format]") unless input[:target_object_key_format].nil?
      end
    end

    class Metadata
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate_types!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate_types!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class MetadataEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::MetadataEntry, context: context)
        Hearth::Validator.validate_types!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class Metrics
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::Metrics, context: context)
        Hearth::Validator.validate_required!(input[:status], context: "#{context}[:status]")
        Hearth::Validator.validate_types!(input[:status], ::String, context: "#{context}[:status]")
        ReplicationTimeValue.validate!(input[:event_threshold], context: "#{context}[:event_threshold]") unless input[:event_threshold].nil?
      end
    end

    class MetricsAndOperator
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::MetricsAndOperator, context: context)
        Hearth::Validator.validate_types!(input[:prefix], ::String, context: "#{context}[:prefix]")
        TagSet.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate_types!(input[:access_point_arn], ::String, context: "#{context}[:access_point_arn]")
      end
    end

    class MetricsConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::MetricsConfiguration, context: context)
        Hearth::Validator.validate_required!(input[:id], context: "#{context}[:id]")
        Hearth::Validator.validate_types!(input[:id], ::String, context: "#{context}[:id]")
        MetricsFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
      end
    end

    class MetricsConfigurationList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MetricsConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MetricsFilter
      def self.validate!(input, context:)
        case input
        when Types::MetricsFilter::Prefix
          Hearth::Validator.validate_types!(input.__getobj__, ::String, context: context)
        when Types::MetricsFilter::Tag
          Tag.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::MetricsFilter::AccessPointArn
          Hearth::Validator.validate_types!(input.__getobj__, ::String, context: context)
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
          Hearth::Validator.validate_types!(input, ::String, context: context)
        end
      end

      class Tag
        def self.validate!(input, context:)
          Validators::Tag.validate!(input, context: context) unless input.nil?
        end
      end

      class AccessPointArn
        def self.validate!(input, context:)
          Hearth::Validator.validate_types!(input, ::String, context: context)
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
        Hearth::Validator.validate_types!(input, Types::MultipartUpload, context: context)
        Hearth::Validator.validate_types!(input[:upload_id], ::String, context: "#{context}[:upload_id]")
        Hearth::Validator.validate_types!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate_types!(input[:initiated], ::Time, context: "#{context}[:initiated]")
        Hearth::Validator.validate_types!(input[:storage_class], ::String, context: "#{context}[:storage_class]")
        Owner.validate!(input[:owner], context: "#{context}[:owner]") unless input[:owner].nil?
        Initiator.validate!(input[:initiator], context: "#{context}[:initiator]") unless input[:initiator].nil?
        Hearth::Validator.validate_types!(input[:checksum_algorithm], ::String, context: "#{context}[:checksum_algorithm]")
      end
    end

    class MultipartUploadList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MultipartUpload.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NoSuchBucket
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::NoSuchBucket, context: context)
      end
    end

    class NoSuchKey
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::NoSuchKey, context: context)
      end
    end

    class NoSuchUpload
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::NoSuchUpload, context: context)
      end
    end

    class NoncurrentVersionExpiration
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::NoncurrentVersionExpiration, context: context)
        Hearth::Validator.validate_types!(input[:noncurrent_days], ::Integer, context: "#{context}[:noncurrent_days]")
        Hearth::Validator.validate_types!(input[:newer_noncurrent_versions], ::Integer, context: "#{context}[:newer_noncurrent_versions]")
      end
    end

    class NoncurrentVersionTransition
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::NoncurrentVersionTransition, context: context)
        Hearth::Validator.validate_types!(input[:noncurrent_days], ::Integer, context: "#{context}[:noncurrent_days]")
        Hearth::Validator.validate_types!(input[:storage_class], ::String, context: "#{context}[:storage_class]")
        Hearth::Validator.validate_types!(input[:newer_noncurrent_versions], ::Integer, context: "#{context}[:newer_noncurrent_versions]")
      end
    end

    class NoncurrentVersionTransitionList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          NoncurrentVersionTransition.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NotFound
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::NotFound, context: context)
      end
    end

    class NotificationConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::NotificationConfiguration, context: context)
        TopicConfigurationList.validate!(input[:topic_configurations], context: "#{context}[:topic_configurations]") unless input[:topic_configurations].nil?
        QueueConfigurationList.validate!(input[:queue_configurations], context: "#{context}[:queue_configurations]") unless input[:queue_configurations].nil?
        LambdaFunctionConfigurationList.validate!(input[:lambda_function_configurations], context: "#{context}[:lambda_function_configurations]") unless input[:lambda_function_configurations].nil?
        EventBridgeConfiguration.validate!(input[:event_bridge_configuration], context: "#{context}[:event_bridge_configuration]") unless input[:event_bridge_configuration].nil?
      end
    end

    class NotificationConfigurationFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::NotificationConfigurationFilter, context: context)
        S3KeyFilter.validate!(input[:key], context: "#{context}[:key]") unless input[:key].nil?
      end
    end

    class Object
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::Object, context: context)
        Hearth::Validator.validate_types!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate_types!(input[:last_modified], ::Time, context: "#{context}[:last_modified]")
        Hearth::Validator.validate_types!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
        ChecksumAlgorithmList.validate!(input[:checksum_algorithm], context: "#{context}[:checksum_algorithm]") unless input[:checksum_algorithm].nil?
        Hearth::Validator.validate_types!(input[:size], ::Integer, context: "#{context}[:size]")
        Hearth::Validator.validate_types!(input[:storage_class], ::String, context: "#{context}[:storage_class]")
        Owner.validate!(input[:owner], context: "#{context}[:owner]") unless input[:owner].nil?
        RestoreStatus.validate!(input[:restore_status], context: "#{context}[:restore_status]") unless input[:restore_status].nil?
      end
    end

    class ObjectAlreadyInActiveTierError
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ObjectAlreadyInActiveTierError, context: context)
      end
    end

    class ObjectAttributesList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ObjectIdentifier
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ObjectIdentifier, context: context)
        Hearth::Validator.validate_required!(input[:key], context: "#{context}[:key]")
        Hearth::Validator.validate_types!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate_types!(input[:version_id], ::String, context: "#{context}[:version_id]")
      end
    end

    class ObjectIdentifierList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ObjectIdentifier.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ObjectList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Object.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ObjectLockConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ObjectLockConfiguration, context: context)
        Hearth::Validator.validate_types!(input[:object_lock_enabled], ::String, context: "#{context}[:object_lock_enabled]")
        ObjectLockRule.validate!(input[:rule], context: "#{context}[:rule]") unless input[:rule].nil?
      end
    end

    class ObjectLockLegalHold
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ObjectLockLegalHold, context: context)
        Hearth::Validator.validate_types!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class ObjectLockRetention
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ObjectLockRetention, context: context)
        Hearth::Validator.validate_types!(input[:mode], ::String, context: "#{context}[:mode]")
        Hearth::Validator.validate_types!(input[:retain_until_date], ::Time, context: "#{context}[:retain_until_date]")
      end
    end

    class ObjectLockRule
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ObjectLockRule, context: context)
        DefaultRetention.validate!(input[:default_retention], context: "#{context}[:default_retention]") unless input[:default_retention].nil?
      end
    end

    class ObjectNotInActiveTierError
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ObjectNotInActiveTierError, context: context)
      end
    end

    class ObjectPart
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ObjectPart, context: context)
        Hearth::Validator.validate_types!(input[:part_number], ::Integer, context: "#{context}[:part_number]")
        Hearth::Validator.validate_types!(input[:size], ::Integer, context: "#{context}[:size]")
        Hearth::Validator.validate_types!(input[:checksum_crc32], ::String, context: "#{context}[:checksum_crc32]")
        Hearth::Validator.validate_types!(input[:checksum_crc32_c], ::String, context: "#{context}[:checksum_crc32_c]")
        Hearth::Validator.validate_types!(input[:checksum_sha1], ::String, context: "#{context}[:checksum_sha1]")
        Hearth::Validator.validate_types!(input[:checksum_sha256], ::String, context: "#{context}[:checksum_sha256]")
      end
    end

    class ObjectVersion
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ObjectVersion, context: context)
        Hearth::Validator.validate_types!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
        ChecksumAlgorithmList.validate!(input[:checksum_algorithm], context: "#{context}[:checksum_algorithm]") unless input[:checksum_algorithm].nil?
        Hearth::Validator.validate_types!(input[:size], ::Integer, context: "#{context}[:size]")
        Hearth::Validator.validate_types!(input[:storage_class], ::String, context: "#{context}[:storage_class]")
        Hearth::Validator.validate_types!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate_types!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate_types!(input[:is_latest], ::TrueClass, ::FalseClass, context: "#{context}[:is_latest]")
        Hearth::Validator.validate_types!(input[:last_modified], ::Time, context: "#{context}[:last_modified]")
        Owner.validate!(input[:owner], context: "#{context}[:owner]") unless input[:owner].nil?
        RestoreStatus.validate!(input[:restore_status], context: "#{context}[:restore_status]") unless input[:restore_status].nil?
      end
    end

    class ObjectVersionList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ObjectVersion.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OptionalObjectAttributesList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class OutputLocation
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::OutputLocation, context: context)
        S3Location.validate!(input[:s3], context: "#{context}[:s3]") unless input[:s3].nil?
      end
    end

    class OutputSerialization
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::OutputSerialization, context: context)
        CSVOutput.validate!(input[:csv], context: "#{context}[:csv]") unless input[:csv].nil?
        JSONOutput.validate!(input[:json], context: "#{context}[:json]") unless input[:json].nil?
      end
    end

    class Owner
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::Owner, context: context)
        Hearth::Validator.validate_types!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate_types!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class OwnershipControls
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::OwnershipControls, context: context)
        Hearth::Validator.validate_required!(input[:rules], context: "#{context}[:rules]")
        OwnershipControlsRules.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
      end
    end

    class OwnershipControlsRule
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::OwnershipControlsRule, context: context)
        Hearth::Validator.validate_required!(input[:object_ownership], context: "#{context}[:object_ownership]")
        Hearth::Validator.validate_types!(input[:object_ownership], ::String, context: "#{context}[:object_ownership]")
      end
    end

    class OwnershipControlsRules
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          OwnershipControlsRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ParquetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ParquetInput, context: context)
      end
    end

    class Part
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::Part, context: context)
        Hearth::Validator.validate_types!(input[:part_number], ::Integer, context: "#{context}[:part_number]")
        Hearth::Validator.validate_types!(input[:last_modified], ::Time, context: "#{context}[:last_modified]")
        Hearth::Validator.validate_types!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
        Hearth::Validator.validate_types!(input[:size], ::Integer, context: "#{context}[:size]")
        Hearth::Validator.validate_types!(input[:checksum_crc32], ::String, context: "#{context}[:checksum_crc32]")
        Hearth::Validator.validate_types!(input[:checksum_crc32_c], ::String, context: "#{context}[:checksum_crc32_c]")
        Hearth::Validator.validate_types!(input[:checksum_sha1], ::String, context: "#{context}[:checksum_sha1]")
        Hearth::Validator.validate_types!(input[:checksum_sha256], ::String, context: "#{context}[:checksum_sha256]")
      end
    end

    class PartitionedPrefix
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PartitionedPrefix, context: context)
        Hearth::Validator.validate_types!(input[:partition_date_source], ::String, context: "#{context}[:partition_date_source]")
      end
    end

    class Parts
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Part.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PartsList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ObjectPart.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PolicyStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PolicyStatus, context: context)
        Hearth::Validator.validate_types!(input[:is_public], ::TrueClass, ::FalseClass, context: "#{context}[:is_public]")
      end
    end

    class Progress
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::Progress, context: context)
        Hearth::Validator.validate_types!(input[:bytes_scanned], ::Integer, context: "#{context}[:bytes_scanned]")
        Hearth::Validator.validate_types!(input[:bytes_processed], ::Integer, context: "#{context}[:bytes_processed]")
        Hearth::Validator.validate_types!(input[:bytes_returned], ::Integer, context: "#{context}[:bytes_returned]")
      end
    end

    class ProgressEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ProgressEvent, context: context)
        Progress.validate!(input[:details], context: "#{context}[:details]") unless input[:details].nil?
      end
    end

    class PublicAccessBlockConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PublicAccessBlockConfiguration, context: context)
        Hearth::Validator.validate_types!(input[:block_public_acls], ::TrueClass, ::FalseClass, context: "#{context}[:block_public_acls]")
        Hearth::Validator.validate_types!(input[:ignore_public_acls], ::TrueClass, ::FalseClass, context: "#{context}[:ignore_public_acls]")
        Hearth::Validator.validate_types!(input[:block_public_policy], ::TrueClass, ::FalseClass, context: "#{context}[:block_public_policy]")
        Hearth::Validator.validate_types!(input[:restrict_public_buckets], ::TrueClass, ::FalseClass, context: "#{context}[:restrict_public_buckets]")
      end
    end

    class PutBucketAccelerateConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutBucketAccelerateConfigurationInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_required!(input[:accelerate_configuration], context: "#{context}[:accelerate_configuration]")
        AccelerateConfiguration.validate!(input[:accelerate_configuration], context: "#{context}[:accelerate_configuration]") unless input[:accelerate_configuration].nil?
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
        Hearth::Validator.validate_types!(input[:checksum_algorithm], ::String, context: "#{context}[:checksum_algorithm]")
      end
    end

    class PutBucketAccelerateConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutBucketAccelerateConfigurationOutput, context: context)
      end
    end

    class PutBucketAclInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutBucketAclInput, context: context)
        Hearth::Validator.validate_types!(input[:acl], ::String, context: "#{context}[:acl]")
        AccessControlPolicy.validate!(input[:access_control_policy], context: "#{context}[:access_control_policy]") unless input[:access_control_policy].nil?
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:content_md5], ::String, context: "#{context}[:content_md5]")
        Hearth::Validator.validate_types!(input[:checksum_algorithm], ::String, context: "#{context}[:checksum_algorithm]")
        Hearth::Validator.validate_types!(input[:grant_full_control], ::String, context: "#{context}[:grant_full_control]")
        Hearth::Validator.validate_types!(input[:grant_read], ::String, context: "#{context}[:grant_read]")
        Hearth::Validator.validate_types!(input[:grant_read_acp], ::String, context: "#{context}[:grant_read_acp]")
        Hearth::Validator.validate_types!(input[:grant_write], ::String, context: "#{context}[:grant_write]")
        Hearth::Validator.validate_types!(input[:grant_write_acp], ::String, context: "#{context}[:grant_write_acp]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class PutBucketAclOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutBucketAclOutput, context: context)
      end
    end

    class PutBucketAnalyticsConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutBucketAnalyticsConfigurationInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_required!(input[:id], context: "#{context}[:id]")
        Hearth::Validator.validate_types!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate_required!(input[:analytics_configuration], context: "#{context}[:analytics_configuration]")
        AnalyticsConfiguration.validate!(input[:analytics_configuration], context: "#{context}[:analytics_configuration]") unless input[:analytics_configuration].nil?
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class PutBucketAnalyticsConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutBucketAnalyticsConfigurationOutput, context: context)
      end
    end

    class PutBucketCorsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutBucketCorsInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_required!(input[:cors_configuration], context: "#{context}[:cors_configuration]")
        CORSConfiguration.validate!(input[:cors_configuration], context: "#{context}[:cors_configuration]") unless input[:cors_configuration].nil?
        Hearth::Validator.validate_types!(input[:content_md5], ::String, context: "#{context}[:content_md5]")
        Hearth::Validator.validate_types!(input[:checksum_algorithm], ::String, context: "#{context}[:checksum_algorithm]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class PutBucketCorsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutBucketCorsOutput, context: context)
      end
    end

    class PutBucketEncryptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutBucketEncryptionInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:content_md5], ::String, context: "#{context}[:content_md5]")
        Hearth::Validator.validate_types!(input[:checksum_algorithm], ::String, context: "#{context}[:checksum_algorithm]")
        Hearth::Validator.validate_required!(input[:server_side_encryption_configuration], context: "#{context}[:server_side_encryption_configuration]")
        ServerSideEncryptionConfiguration.validate!(input[:server_side_encryption_configuration], context: "#{context}[:server_side_encryption_configuration]") unless input[:server_side_encryption_configuration].nil?
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class PutBucketEncryptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutBucketEncryptionOutput, context: context)
      end
    end

    class PutBucketIntelligentTieringConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutBucketIntelligentTieringConfigurationInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_required!(input[:id], context: "#{context}[:id]")
        Hearth::Validator.validate_types!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate_required!(input[:intelligent_tiering_configuration], context: "#{context}[:intelligent_tiering_configuration]")
        IntelligentTieringConfiguration.validate!(input[:intelligent_tiering_configuration], context: "#{context}[:intelligent_tiering_configuration]") unless input[:intelligent_tiering_configuration].nil?
      end
    end

    class PutBucketIntelligentTieringConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutBucketIntelligentTieringConfigurationOutput, context: context)
      end
    end

    class PutBucketInventoryConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutBucketInventoryConfigurationInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_required!(input[:id], context: "#{context}[:id]")
        Hearth::Validator.validate_types!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate_required!(input[:inventory_configuration], context: "#{context}[:inventory_configuration]")
        InventoryConfiguration.validate!(input[:inventory_configuration], context: "#{context}[:inventory_configuration]") unless input[:inventory_configuration].nil?
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class PutBucketInventoryConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutBucketInventoryConfigurationOutput, context: context)
      end
    end

    class PutBucketLifecycleConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutBucketLifecycleConfigurationInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:checksum_algorithm], ::String, context: "#{context}[:checksum_algorithm]")
        BucketLifecycleConfiguration.validate!(input[:lifecycle_configuration], context: "#{context}[:lifecycle_configuration]") unless input[:lifecycle_configuration].nil?
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class PutBucketLifecycleConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutBucketLifecycleConfigurationOutput, context: context)
      end
    end

    class PutBucketLoggingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutBucketLoggingInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_required!(input[:bucket_logging_status], context: "#{context}[:bucket_logging_status]")
        BucketLoggingStatus.validate!(input[:bucket_logging_status], context: "#{context}[:bucket_logging_status]") unless input[:bucket_logging_status].nil?
        Hearth::Validator.validate_types!(input[:content_md5], ::String, context: "#{context}[:content_md5]")
        Hearth::Validator.validate_types!(input[:checksum_algorithm], ::String, context: "#{context}[:checksum_algorithm]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class PutBucketLoggingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutBucketLoggingOutput, context: context)
      end
    end

    class PutBucketMetricsConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutBucketMetricsConfigurationInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_required!(input[:id], context: "#{context}[:id]")
        Hearth::Validator.validate_types!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate_required!(input[:metrics_configuration], context: "#{context}[:metrics_configuration]")
        MetricsConfiguration.validate!(input[:metrics_configuration], context: "#{context}[:metrics_configuration]") unless input[:metrics_configuration].nil?
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class PutBucketMetricsConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutBucketMetricsConfigurationOutput, context: context)
      end
    end

    class PutBucketNotificationConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutBucketNotificationConfigurationInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_required!(input[:notification_configuration], context: "#{context}[:notification_configuration]")
        NotificationConfiguration.validate!(input[:notification_configuration], context: "#{context}[:notification_configuration]") unless input[:notification_configuration].nil?
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
        Hearth::Validator.validate_types!(input[:skip_destination_validation], ::TrueClass, ::FalseClass, context: "#{context}[:skip_destination_validation]")
      end
    end

    class PutBucketNotificationConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutBucketNotificationConfigurationOutput, context: context)
      end
    end

    class PutBucketOwnershipControlsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutBucketOwnershipControlsInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:content_md5], ::String, context: "#{context}[:content_md5]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
        Hearth::Validator.validate_required!(input[:ownership_controls], context: "#{context}[:ownership_controls]")
        OwnershipControls.validate!(input[:ownership_controls], context: "#{context}[:ownership_controls]") unless input[:ownership_controls].nil?
      end
    end

    class PutBucketOwnershipControlsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutBucketOwnershipControlsOutput, context: context)
      end
    end

    class PutBucketPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutBucketPolicyInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:content_md5], ::String, context: "#{context}[:content_md5]")
        Hearth::Validator.validate_types!(input[:checksum_algorithm], ::String, context: "#{context}[:checksum_algorithm]")
        Hearth::Validator.validate_types!(input[:confirm_remove_self_bucket_access], ::TrueClass, ::FalseClass, context: "#{context}[:confirm_remove_self_bucket_access]")
        Hearth::Validator.validate_required!(input[:policy], context: "#{context}[:policy]")
        Hearth::Validator.validate_types!(input[:policy], ::String, context: "#{context}[:policy]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class PutBucketPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutBucketPolicyOutput, context: context)
      end
    end

    class PutBucketReplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutBucketReplicationInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:content_md5], ::String, context: "#{context}[:content_md5]")
        Hearth::Validator.validate_types!(input[:checksum_algorithm], ::String, context: "#{context}[:checksum_algorithm]")
        Hearth::Validator.validate_required!(input[:replication_configuration], context: "#{context}[:replication_configuration]")
        ReplicationConfiguration.validate!(input[:replication_configuration], context: "#{context}[:replication_configuration]") unless input[:replication_configuration].nil?
        Hearth::Validator.validate_types!(input[:token], ::String, context: "#{context}[:token]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class PutBucketReplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutBucketReplicationOutput, context: context)
      end
    end

    class PutBucketRequestPaymentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutBucketRequestPaymentInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:content_md5], ::String, context: "#{context}[:content_md5]")
        Hearth::Validator.validate_types!(input[:checksum_algorithm], ::String, context: "#{context}[:checksum_algorithm]")
        Hearth::Validator.validate_required!(input[:request_payment_configuration], context: "#{context}[:request_payment_configuration]")
        RequestPaymentConfiguration.validate!(input[:request_payment_configuration], context: "#{context}[:request_payment_configuration]") unless input[:request_payment_configuration].nil?
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class PutBucketRequestPaymentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutBucketRequestPaymentOutput, context: context)
      end
    end

    class PutBucketTaggingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutBucketTaggingInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:content_md5], ::String, context: "#{context}[:content_md5]")
        Hearth::Validator.validate_types!(input[:checksum_algorithm], ::String, context: "#{context}[:checksum_algorithm]")
        Hearth::Validator.validate_required!(input[:tagging], context: "#{context}[:tagging]")
        Tagging.validate!(input[:tagging], context: "#{context}[:tagging]") unless input[:tagging].nil?
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class PutBucketTaggingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutBucketTaggingOutput, context: context)
      end
    end

    class PutBucketVersioningInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutBucketVersioningInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:content_md5], ::String, context: "#{context}[:content_md5]")
        Hearth::Validator.validate_types!(input[:checksum_algorithm], ::String, context: "#{context}[:checksum_algorithm]")
        Hearth::Validator.validate_types!(input[:mfa], ::String, context: "#{context}[:mfa]")
        Hearth::Validator.validate_required!(input[:versioning_configuration], context: "#{context}[:versioning_configuration]")
        VersioningConfiguration.validate!(input[:versioning_configuration], context: "#{context}[:versioning_configuration]") unless input[:versioning_configuration].nil?
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class PutBucketVersioningOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutBucketVersioningOutput, context: context)
      end
    end

    class PutBucketWebsiteInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutBucketWebsiteInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:content_md5], ::String, context: "#{context}[:content_md5]")
        Hearth::Validator.validate_types!(input[:checksum_algorithm], ::String, context: "#{context}[:checksum_algorithm]")
        Hearth::Validator.validate_required!(input[:website_configuration], context: "#{context}[:website_configuration]")
        WebsiteConfiguration.validate!(input[:website_configuration], context: "#{context}[:website_configuration]") unless input[:website_configuration].nil?
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class PutBucketWebsiteOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutBucketWebsiteOutput, context: context)
      end
    end

    class PutObjectAclInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutObjectAclInput, context: context)
        Hearth::Validator.validate_types!(input[:acl], ::String, context: "#{context}[:acl]")
        AccessControlPolicy.validate!(input[:access_control_policy], context: "#{context}[:access_control_policy]") unless input[:access_control_policy].nil?
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:content_md5], ::String, context: "#{context}[:content_md5]")
        Hearth::Validator.validate_types!(input[:checksum_algorithm], ::String, context: "#{context}[:checksum_algorithm]")
        Hearth::Validator.validate_types!(input[:grant_full_control], ::String, context: "#{context}[:grant_full_control]")
        Hearth::Validator.validate_types!(input[:grant_read], ::String, context: "#{context}[:grant_read]")
        Hearth::Validator.validate_types!(input[:grant_read_acp], ::String, context: "#{context}[:grant_read_acp]")
        Hearth::Validator.validate_types!(input[:grant_write], ::String, context: "#{context}[:grant_write]")
        Hearth::Validator.validate_types!(input[:grant_write_acp], ::String, context: "#{context}[:grant_write_acp]")
        Hearth::Validator.validate_required!(input[:key], context: "#{context}[:key]")
        Hearth::Validator.validate_types!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate_types!(input[:request_payer], ::String, context: "#{context}[:request_payer]")
        Hearth::Validator.validate_types!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class PutObjectAclOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutObjectAclOutput, context: context)
        Hearth::Validator.validate_types!(input[:request_charged], ::String, context: "#{context}[:request_charged]")
      end
    end

    class PutObjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutObjectInput, context: context)
        Hearth::Validator.validate_types!(input[:acl], ::String, context: "#{context}[:acl]")
        unless input[:body].respond_to?(:read) || input[:body].respond_to?(:readpartial)
          raise ArgumentError, "Expected #{context} to be an IO like object, got #{input[:body].class}"
        end
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:cache_control], ::String, context: "#{context}[:cache_control]")
        Hearth::Validator.validate_types!(input[:content_disposition], ::String, context: "#{context}[:content_disposition]")
        Hearth::Validator.validate_types!(input[:content_encoding], ::String, context: "#{context}[:content_encoding]")
        Hearth::Validator.validate_types!(input[:content_language], ::String, context: "#{context}[:content_language]")
        Hearth::Validator.validate_types!(input[:content_length], ::Integer, context: "#{context}[:content_length]")
        Hearth::Validator.validate_types!(input[:content_md5], ::String, context: "#{context}[:content_md5]")
        Hearth::Validator.validate_types!(input[:content_type], ::String, context: "#{context}[:content_type]")
        Hearth::Validator.validate_types!(input[:checksum_algorithm], ::String, context: "#{context}[:checksum_algorithm]")
        Hearth::Validator.validate_types!(input[:checksum_crc32], ::String, context: "#{context}[:checksum_crc32]")
        Hearth::Validator.validate_types!(input[:checksum_crc32_c], ::String, context: "#{context}[:checksum_crc32_c]")
        Hearth::Validator.validate_types!(input[:checksum_sha1], ::String, context: "#{context}[:checksum_sha1]")
        Hearth::Validator.validate_types!(input[:checksum_sha256], ::String, context: "#{context}[:checksum_sha256]")
        Hearth::Validator.validate_types!(input[:expires], ::Time, context: "#{context}[:expires]")
        Hearth::Validator.validate_types!(input[:grant_full_control], ::String, context: "#{context}[:grant_full_control]")
        Hearth::Validator.validate_types!(input[:grant_read], ::String, context: "#{context}[:grant_read]")
        Hearth::Validator.validate_types!(input[:grant_read_acp], ::String, context: "#{context}[:grant_read_acp]")
        Hearth::Validator.validate_types!(input[:grant_write_acp], ::String, context: "#{context}[:grant_write_acp]")
        Hearth::Validator.validate_required!(input[:key], context: "#{context}[:key]")
        Hearth::Validator.validate_types!(input[:key], ::String, context: "#{context}[:key]")
        Metadata.validate!(input[:metadata], context: "#{context}[:metadata]") unless input[:metadata].nil?
        Hearth::Validator.validate_types!(input[:server_side_encryption], ::String, context: "#{context}[:server_side_encryption]")
        Hearth::Validator.validate_types!(input[:storage_class], ::String, context: "#{context}[:storage_class]")
        Hearth::Validator.validate_types!(input[:website_redirect_location], ::String, context: "#{context}[:website_redirect_location]")
        Hearth::Validator.validate_types!(input[:sse_customer_algorithm], ::String, context: "#{context}[:sse_customer_algorithm]")
        Hearth::Validator.validate_types!(input[:sse_customer_key], ::String, context: "#{context}[:sse_customer_key]")
        Hearth::Validator.validate_types!(input[:sse_customer_key_md5], ::String, context: "#{context}[:sse_customer_key_md5]")
        Hearth::Validator.validate_types!(input[:ssekms_key_id], ::String, context: "#{context}[:ssekms_key_id]")
        Hearth::Validator.validate_types!(input[:ssekms_encryption_context], ::String, context: "#{context}[:ssekms_encryption_context]")
        Hearth::Validator.validate_types!(input[:bucket_key_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:bucket_key_enabled]")
        Hearth::Validator.validate_types!(input[:request_payer], ::String, context: "#{context}[:request_payer]")
        Hearth::Validator.validate_types!(input[:tagging], ::String, context: "#{context}[:tagging]")
        Hearth::Validator.validate_types!(input[:object_lock_mode], ::String, context: "#{context}[:object_lock_mode]")
        Hearth::Validator.validate_types!(input[:object_lock_retain_until_date], ::Time, context: "#{context}[:object_lock_retain_until_date]")
        Hearth::Validator.validate_types!(input[:object_lock_legal_hold_status], ::String, context: "#{context}[:object_lock_legal_hold_status]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class PutObjectLegalHoldInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutObjectLegalHoldInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_required!(input[:key], context: "#{context}[:key]")
        Hearth::Validator.validate_types!(input[:key], ::String, context: "#{context}[:key]")
        ObjectLockLegalHold.validate!(input[:legal_hold], context: "#{context}[:legal_hold]") unless input[:legal_hold].nil?
        Hearth::Validator.validate_types!(input[:request_payer], ::String, context: "#{context}[:request_payer]")
        Hearth::Validator.validate_types!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate_types!(input[:content_md5], ::String, context: "#{context}[:content_md5]")
        Hearth::Validator.validate_types!(input[:checksum_algorithm], ::String, context: "#{context}[:checksum_algorithm]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class PutObjectLegalHoldOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutObjectLegalHoldOutput, context: context)
        Hearth::Validator.validate_types!(input[:request_charged], ::String, context: "#{context}[:request_charged]")
      end
    end

    class PutObjectLockConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutObjectLockConfigurationInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        ObjectLockConfiguration.validate!(input[:object_lock_configuration], context: "#{context}[:object_lock_configuration]") unless input[:object_lock_configuration].nil?
        Hearth::Validator.validate_types!(input[:request_payer], ::String, context: "#{context}[:request_payer]")
        Hearth::Validator.validate_types!(input[:token], ::String, context: "#{context}[:token]")
        Hearth::Validator.validate_types!(input[:content_md5], ::String, context: "#{context}[:content_md5]")
        Hearth::Validator.validate_types!(input[:checksum_algorithm], ::String, context: "#{context}[:checksum_algorithm]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class PutObjectLockConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutObjectLockConfigurationOutput, context: context)
        Hearth::Validator.validate_types!(input[:request_charged], ::String, context: "#{context}[:request_charged]")
      end
    end

    class PutObjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutObjectOutput, context: context)
        Hearth::Validator.validate_types!(input[:expiration], ::String, context: "#{context}[:expiration]")
        Hearth::Validator.validate_types!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
        Hearth::Validator.validate_types!(input[:checksum_crc32], ::String, context: "#{context}[:checksum_crc32]")
        Hearth::Validator.validate_types!(input[:checksum_crc32_c], ::String, context: "#{context}[:checksum_crc32_c]")
        Hearth::Validator.validate_types!(input[:checksum_sha1], ::String, context: "#{context}[:checksum_sha1]")
        Hearth::Validator.validate_types!(input[:checksum_sha256], ::String, context: "#{context}[:checksum_sha256]")
        Hearth::Validator.validate_types!(input[:server_side_encryption], ::String, context: "#{context}[:server_side_encryption]")
        Hearth::Validator.validate_types!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate_types!(input[:sse_customer_algorithm], ::String, context: "#{context}[:sse_customer_algorithm]")
        Hearth::Validator.validate_types!(input[:sse_customer_key_md5], ::String, context: "#{context}[:sse_customer_key_md5]")
        Hearth::Validator.validate_types!(input[:ssekms_key_id], ::String, context: "#{context}[:ssekms_key_id]")
        Hearth::Validator.validate_types!(input[:ssekms_encryption_context], ::String, context: "#{context}[:ssekms_encryption_context]")
        Hearth::Validator.validate_types!(input[:bucket_key_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:bucket_key_enabled]")
        Hearth::Validator.validate_types!(input[:request_charged], ::String, context: "#{context}[:request_charged]")
      end
    end

    class PutObjectRetentionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutObjectRetentionInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_required!(input[:key], context: "#{context}[:key]")
        Hearth::Validator.validate_types!(input[:key], ::String, context: "#{context}[:key]")
        ObjectLockRetention.validate!(input[:retention], context: "#{context}[:retention]") unless input[:retention].nil?
        Hearth::Validator.validate_types!(input[:request_payer], ::String, context: "#{context}[:request_payer]")
        Hearth::Validator.validate_types!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate_types!(input[:bypass_governance_retention], ::TrueClass, ::FalseClass, context: "#{context}[:bypass_governance_retention]")
        Hearth::Validator.validate_types!(input[:content_md5], ::String, context: "#{context}[:content_md5]")
        Hearth::Validator.validate_types!(input[:checksum_algorithm], ::String, context: "#{context}[:checksum_algorithm]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class PutObjectRetentionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutObjectRetentionOutput, context: context)
        Hearth::Validator.validate_types!(input[:request_charged], ::String, context: "#{context}[:request_charged]")
      end
    end

    class PutObjectTaggingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutObjectTaggingInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_required!(input[:key], context: "#{context}[:key]")
        Hearth::Validator.validate_types!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate_types!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate_types!(input[:content_md5], ::String, context: "#{context}[:content_md5]")
        Hearth::Validator.validate_types!(input[:checksum_algorithm], ::String, context: "#{context}[:checksum_algorithm]")
        Hearth::Validator.validate_required!(input[:tagging], context: "#{context}[:tagging]")
        Tagging.validate!(input[:tagging], context: "#{context}[:tagging]") unless input[:tagging].nil?
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
        Hearth::Validator.validate_types!(input[:request_payer], ::String, context: "#{context}[:request_payer]")
      end
    end

    class PutObjectTaggingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutObjectTaggingOutput, context: context)
        Hearth::Validator.validate_types!(input[:version_id], ::String, context: "#{context}[:version_id]")
      end
    end

    class PutPublicAccessBlockInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutPublicAccessBlockInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:content_md5], ::String, context: "#{context}[:content_md5]")
        Hearth::Validator.validate_types!(input[:checksum_algorithm], ::String, context: "#{context}[:checksum_algorithm]")
        Hearth::Validator.validate_required!(input[:public_access_block_configuration], context: "#{context}[:public_access_block_configuration]")
        PublicAccessBlockConfiguration.validate!(input[:public_access_block_configuration], context: "#{context}[:public_access_block_configuration]") unless input[:public_access_block_configuration].nil?
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class PutPublicAccessBlockOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutPublicAccessBlockOutput, context: context)
      end
    end

    class QueueConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::QueueConfiguration, context: context)
        Hearth::Validator.validate_types!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate_required!(input[:queue_arn], context: "#{context}[:queue_arn]")
        Hearth::Validator.validate_types!(input[:queue_arn], ::String, context: "#{context}[:queue_arn]")
        Hearth::Validator.validate_required!(input[:events], context: "#{context}[:events]")
        EventList.validate!(input[:events], context: "#{context}[:events]") unless input[:events].nil?
        NotificationConfigurationFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
      end
    end

    class QueueConfigurationList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          QueueConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RecordsEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::RecordsEvent, context: context)
        Hearth::Validator.validate_types!(input[:payload], ::String, context: "#{context}[:payload]")
      end
    end

    class Redirect
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::Redirect, context: context)
        Hearth::Validator.validate_types!(input[:host_name], ::String, context: "#{context}[:host_name]")
        Hearth::Validator.validate_types!(input[:http_redirect_code], ::String, context: "#{context}[:http_redirect_code]")
        Hearth::Validator.validate_types!(input[:protocol], ::String, context: "#{context}[:protocol]")
        Hearth::Validator.validate_types!(input[:replace_key_prefix_with], ::String, context: "#{context}[:replace_key_prefix_with]")
        Hearth::Validator.validate_types!(input[:replace_key_with], ::String, context: "#{context}[:replace_key_with]")
      end
    end

    class RedirectAllRequestsTo
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::RedirectAllRequestsTo, context: context)
        Hearth::Validator.validate_required!(input[:host_name], context: "#{context}[:host_name]")
        Hearth::Validator.validate_types!(input[:host_name], ::String, context: "#{context}[:host_name]")
        Hearth::Validator.validate_types!(input[:protocol], ::String, context: "#{context}[:protocol]")
      end
    end

    class ReplicaModifications
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ReplicaModifications, context: context)
        Hearth::Validator.validate_required!(input[:status], context: "#{context}[:status]")
        Hearth::Validator.validate_types!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class ReplicationConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ReplicationConfiguration, context: context)
        Hearth::Validator.validate_required!(input[:role], context: "#{context}[:role]")
        Hearth::Validator.validate_types!(input[:role], ::String, context: "#{context}[:role]")
        Hearth::Validator.validate_required!(input[:rules], context: "#{context}[:rules]")
        ReplicationRules.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
      end
    end

    class ReplicationRule
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ReplicationRule, context: context)
        Hearth::Validator.validate_types!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate_types!(input[:priority], ::Integer, context: "#{context}[:priority]")
        Hearth::Validator.validate_types!(input[:prefix], ::String, context: "#{context}[:prefix]")
        ReplicationRuleFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        Hearth::Validator.validate_required!(input[:status], context: "#{context}[:status]")
        Hearth::Validator.validate_types!(input[:status], ::String, context: "#{context}[:status]")
        SourceSelectionCriteria.validate!(input[:source_selection_criteria], context: "#{context}[:source_selection_criteria]") unless input[:source_selection_criteria].nil?
        ExistingObjectReplication.validate!(input[:existing_object_replication], context: "#{context}[:existing_object_replication]") unless input[:existing_object_replication].nil?
        Hearth::Validator.validate_required!(input[:destination], context: "#{context}[:destination]")
        Destination.validate!(input[:destination], context: "#{context}[:destination]") unless input[:destination].nil?
        DeleteMarkerReplication.validate!(input[:delete_marker_replication], context: "#{context}[:delete_marker_replication]") unless input[:delete_marker_replication].nil?
      end
    end

    class ReplicationRuleAndOperator
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ReplicationRuleAndOperator, context: context)
        Hearth::Validator.validate_types!(input[:prefix], ::String, context: "#{context}[:prefix]")
        TagSet.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ReplicationRuleFilter
      def self.validate!(input, context:)
        case input
        when Types::ReplicationRuleFilter::Prefix
          Hearth::Validator.validate_types!(input.__getobj__, ::String, context: context)
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
          Hearth::Validator.validate_types!(input, ::String, context: context)
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
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ReplicationRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReplicationTime
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ReplicationTime, context: context)
        Hearth::Validator.validate_required!(input[:status], context: "#{context}[:status]")
        Hearth::Validator.validate_types!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate_required!(input[:time], context: "#{context}[:time]")
        ReplicationTimeValue.validate!(input[:time], context: "#{context}[:time]") unless input[:time].nil?
      end
    end

    class ReplicationTimeValue
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ReplicationTimeValue, context: context)
        Hearth::Validator.validate_types!(input[:minutes], ::Integer, context: "#{context}[:minutes]")
      end
    end

    class RequestPaymentConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::RequestPaymentConfiguration, context: context)
        Hearth::Validator.validate_required!(input[:payer], context: "#{context}[:payer]")
        Hearth::Validator.validate_types!(input[:payer], ::String, context: "#{context}[:payer]")
      end
    end

    class RequestProgress
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::RequestProgress, context: context)
        Hearth::Validator.validate_types!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class RestoreObjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::RestoreObjectInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_required!(input[:key], context: "#{context}[:key]")
        Hearth::Validator.validate_types!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate_types!(input[:version_id], ::String, context: "#{context}[:version_id]")
        RestoreRequest.validate!(input[:restore_request], context: "#{context}[:restore_request]") unless input[:restore_request].nil?
        Hearth::Validator.validate_types!(input[:request_payer], ::String, context: "#{context}[:request_payer]")
        Hearth::Validator.validate_types!(input[:checksum_algorithm], ::String, context: "#{context}[:checksum_algorithm]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class RestoreObjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::RestoreObjectOutput, context: context)
        Hearth::Validator.validate_types!(input[:request_charged], ::String, context: "#{context}[:request_charged]")
        Hearth::Validator.validate_types!(input[:restore_output_path], ::String, context: "#{context}[:restore_output_path]")
      end
    end

    class RestoreRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::RestoreRequest, context: context)
        Hearth::Validator.validate_types!(input[:days], ::Integer, context: "#{context}[:days]")
        GlacierJobParameters.validate!(input[:glacier_job_parameters], context: "#{context}[:glacier_job_parameters]") unless input[:glacier_job_parameters].nil?
        Hearth::Validator.validate_types!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate_types!(input[:tier], ::String, context: "#{context}[:tier]")
        Hearth::Validator.validate_types!(input[:description], ::String, context: "#{context}[:description]")
        SelectParameters.validate!(input[:select_parameters], context: "#{context}[:select_parameters]") unless input[:select_parameters].nil?
        OutputLocation.validate!(input[:output_location], context: "#{context}[:output_location]") unless input[:output_location].nil?
      end
    end

    class RestoreStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::RestoreStatus, context: context)
        Hearth::Validator.validate_types!(input[:is_restore_in_progress], ::TrueClass, ::FalseClass, context: "#{context}[:is_restore_in_progress]")
        Hearth::Validator.validate_types!(input[:restore_expiry_date], ::Time, context: "#{context}[:restore_expiry_date]")
      end
    end

    class RoutingRule
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::RoutingRule, context: context)
        Condition.validate!(input[:condition], context: "#{context}[:condition]") unless input[:condition].nil?
        Hearth::Validator.validate_required!(input[:redirect], context: "#{context}[:redirect]")
        Redirect.validate!(input[:redirect], context: "#{context}[:redirect]") unless input[:redirect].nil?
      end
    end

    class RoutingRules
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RoutingRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class S3KeyFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::S3KeyFilter, context: context)
        FilterRuleList.validate!(input[:filter_rules], context: "#{context}[:filter_rules]") unless input[:filter_rules].nil?
      end
    end

    class S3Location
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::S3Location, context: context)
        Hearth::Validator.validate_required!(input[:bucket_name], context: "#{context}[:bucket_name]")
        Hearth::Validator.validate_types!(input[:bucket_name], ::String, context: "#{context}[:bucket_name]")
        Hearth::Validator.validate_required!(input[:prefix], context: "#{context}[:prefix]")
        Hearth::Validator.validate_types!(input[:prefix], ::String, context: "#{context}[:prefix]")
        Encryption.validate!(input[:encryption], context: "#{context}[:encryption]") unless input[:encryption].nil?
        Hearth::Validator.validate_types!(input[:canned_acl], ::String, context: "#{context}[:canned_acl]")
        Grants.validate!(input[:access_control_list], context: "#{context}[:access_control_list]") unless input[:access_control_list].nil?
        Tagging.validate!(input[:tagging], context: "#{context}[:tagging]") unless input[:tagging].nil?
        UserMetadata.validate!(input[:user_metadata], context: "#{context}[:user_metadata]") unless input[:user_metadata].nil?
        Hearth::Validator.validate_types!(input[:storage_class], ::String, context: "#{context}[:storage_class]")
      end
    end

    class SSEKMS
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::SSEKMS, context: context)
        Hearth::Validator.validate_required!(input[:key_id], context: "#{context}[:key_id]")
        Hearth::Validator.validate_types!(input[:key_id], ::String, context: "#{context}[:key_id]")
      end
    end

    class SSES3
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::SSES3, context: context)
      end
    end

    class ScanRange
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ScanRange, context: context)
        Hearth::Validator.validate_types!(input[:start], ::Integer, context: "#{context}[:start]")
        Hearth::Validator.validate_types!(input[:end], ::Integer, context: "#{context}[:end]")
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
        Hearth::Validator.validate_types!(input, Types::SelectObjectContentInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_required!(input[:key], context: "#{context}[:key]")
        Hearth::Validator.validate_types!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate_types!(input[:sse_customer_algorithm], ::String, context: "#{context}[:sse_customer_algorithm]")
        Hearth::Validator.validate_types!(input[:sse_customer_key], ::String, context: "#{context}[:sse_customer_key]")
        Hearth::Validator.validate_types!(input[:sse_customer_key_md5], ::String, context: "#{context}[:sse_customer_key_md5]")
        Hearth::Validator.validate_required!(input[:expression], context: "#{context}[:expression]")
        Hearth::Validator.validate_types!(input[:expression], ::String, context: "#{context}[:expression]")
        Hearth::Validator.validate_required!(input[:expression_type], context: "#{context}[:expression_type]")
        Hearth::Validator.validate_types!(input[:expression_type], ::String, context: "#{context}[:expression_type]")
        RequestProgress.validate!(input[:request_progress], context: "#{context}[:request_progress]") unless input[:request_progress].nil?
        Hearth::Validator.validate_required!(input[:input_serialization], context: "#{context}[:input_serialization]")
        InputSerialization.validate!(input[:input_serialization], context: "#{context}[:input_serialization]") unless input[:input_serialization].nil?
        Hearth::Validator.validate_required!(input[:output_serialization], context: "#{context}[:output_serialization]")
        OutputSerialization.validate!(input[:output_serialization], context: "#{context}[:output_serialization]") unless input[:output_serialization].nil?
        ScanRange.validate!(input[:scan_range], context: "#{context}[:scan_range]") unless input[:scan_range].nil?
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class SelectObjectContentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::SelectObjectContentOutput, context: context)
        SelectObjectContentEventStream.validate!(input[:payload], context: "#{context}[:payload]") unless input[:payload].nil?
      end
    end

    class SelectParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::SelectParameters, context: context)
        Hearth::Validator.validate_required!(input[:input_serialization], context: "#{context}[:input_serialization]")
        InputSerialization.validate!(input[:input_serialization], context: "#{context}[:input_serialization]") unless input[:input_serialization].nil?
        Hearth::Validator.validate_required!(input[:expression_type], context: "#{context}[:expression_type]")
        Hearth::Validator.validate_types!(input[:expression_type], ::String, context: "#{context}[:expression_type]")
        Hearth::Validator.validate_required!(input[:expression], context: "#{context}[:expression]")
        Hearth::Validator.validate_types!(input[:expression], ::String, context: "#{context}[:expression]")
        Hearth::Validator.validate_required!(input[:output_serialization], context: "#{context}[:output_serialization]")
        OutputSerialization.validate!(input[:output_serialization], context: "#{context}[:output_serialization]") unless input[:output_serialization].nil?
      end
    end

    class ServerSideEncryptionByDefault
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ServerSideEncryptionByDefault, context: context)
        Hearth::Validator.validate_required!(input[:sse_algorithm], context: "#{context}[:sse_algorithm]")
        Hearth::Validator.validate_types!(input[:sse_algorithm], ::String, context: "#{context}[:sse_algorithm]")
        Hearth::Validator.validate_types!(input[:kms_master_key_id], ::String, context: "#{context}[:kms_master_key_id]")
      end
    end

    class ServerSideEncryptionConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ServerSideEncryptionConfiguration, context: context)
        Hearth::Validator.validate_required!(input[:rules], context: "#{context}[:rules]")
        ServerSideEncryptionRules.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
      end
    end

    class ServerSideEncryptionRule
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ServerSideEncryptionRule, context: context)
        ServerSideEncryptionByDefault.validate!(input[:apply_server_side_encryption_by_default], context: "#{context}[:apply_server_side_encryption_by_default]") unless input[:apply_server_side_encryption_by_default].nil?
        Hearth::Validator.validate_types!(input[:bucket_key_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:bucket_key_enabled]")
      end
    end

    class ServerSideEncryptionRules
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ServerSideEncryptionRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SessionCredentials
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::SessionCredentials, context: context)
        Hearth::Validator.validate_required!(input[:access_key_id], context: "#{context}[:access_key_id]")
        Hearth::Validator.validate_types!(input[:access_key_id], ::String, context: "#{context}[:access_key_id]")
        Hearth::Validator.validate_required!(input[:secret_access_key], context: "#{context}[:secret_access_key]")
        Hearth::Validator.validate_types!(input[:secret_access_key], ::String, context: "#{context}[:secret_access_key]")
        Hearth::Validator.validate_required!(input[:session_token], context: "#{context}[:session_token]")
        Hearth::Validator.validate_types!(input[:session_token], ::String, context: "#{context}[:session_token]")
        Hearth::Validator.validate_required!(input[:expiration], context: "#{context}[:expiration]")
        Hearth::Validator.validate_types!(input[:expiration], ::Time, context: "#{context}[:expiration]")
      end
    end

    class SimplePrefix
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::SimplePrefix, context: context)
      end
    end

    class SourceSelectionCriteria
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::SourceSelectionCriteria, context: context)
        SseKmsEncryptedObjects.validate!(input[:sse_kms_encrypted_objects], context: "#{context}[:sse_kms_encrypted_objects]") unless input[:sse_kms_encrypted_objects].nil?
        ReplicaModifications.validate!(input[:replica_modifications], context: "#{context}[:replica_modifications]") unless input[:replica_modifications].nil?
      end
    end

    class SseKmsEncryptedObjects
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::SseKmsEncryptedObjects, context: context)
        Hearth::Validator.validate_required!(input[:status], context: "#{context}[:status]")
        Hearth::Validator.validate_types!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class Stats
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::Stats, context: context)
        Hearth::Validator.validate_types!(input[:bytes_scanned], ::Integer, context: "#{context}[:bytes_scanned]")
        Hearth::Validator.validate_types!(input[:bytes_processed], ::Integer, context: "#{context}[:bytes_processed]")
        Hearth::Validator.validate_types!(input[:bytes_returned], ::Integer, context: "#{context}[:bytes_returned]")
      end
    end

    class StatsEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::StatsEvent, context: context)
        Stats.validate!(input[:details], context: "#{context}[:details]") unless input[:details].nil?
      end
    end

    class StorageClassAnalysis
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::StorageClassAnalysis, context: context)
        StorageClassAnalysisDataExport.validate!(input[:data_export], context: "#{context}[:data_export]") unless input[:data_export].nil?
      end
    end

    class StorageClassAnalysisDataExport
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::StorageClassAnalysisDataExport, context: context)
        Hearth::Validator.validate_required!(input[:output_schema_version], context: "#{context}[:output_schema_version]")
        Hearth::Validator.validate_types!(input[:output_schema_version], ::String, context: "#{context}[:output_schema_version]")
        Hearth::Validator.validate_required!(input[:destination], context: "#{context}[:destination]")
        AnalyticsExportDestination.validate!(input[:destination], context: "#{context}[:destination]") unless input[:destination].nil?
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::Tag, context: context)
        Hearth::Validator.validate_required!(input[:key], context: "#{context}[:key]")
        Hearth::Validator.validate_types!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate_required!(input[:value], context: "#{context}[:value]")
        Hearth::Validator.validate_types!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagSet
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Tagging
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::Tagging, context: context)
        Hearth::Validator.validate_required!(input[:tag_set], context: "#{context}[:tag_set]")
        TagSet.validate!(input[:tag_set], context: "#{context}[:tag_set]") unless input[:tag_set].nil?
      end
    end

    class TargetGrant
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::TargetGrant, context: context)
        Grantee.validate!(input[:grantee], context: "#{context}[:grantee]") unless input[:grantee].nil?
        Hearth::Validator.validate_types!(input[:permission], ::String, context: "#{context}[:permission]")
      end
    end

    class TargetGrants
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TargetGrant.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TargetObjectKeyFormat
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::TargetObjectKeyFormat, context: context)
        SimplePrefix.validate!(input[:simple_prefix], context: "#{context}[:simple_prefix]") unless input[:simple_prefix].nil?
        PartitionedPrefix.validate!(input[:partitioned_prefix], context: "#{context}[:partitioned_prefix]") unless input[:partitioned_prefix].nil?
      end
    end

    class Tiering
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::Tiering, context: context)
        Hearth::Validator.validate_required!(input[:days], context: "#{context}[:days]")
        Hearth::Validator.validate_types!(input[:days], ::Integer, context: "#{context}[:days]")
        Hearth::Validator.validate_required!(input[:access_tier], context: "#{context}[:access_tier]")
        Hearth::Validator.validate_types!(input[:access_tier], ::String, context: "#{context}[:access_tier]")
      end
    end

    class TieringList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Tiering.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TopicConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::TopicConfiguration, context: context)
        Hearth::Validator.validate_types!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate_required!(input[:topic_arn], context: "#{context}[:topic_arn]")
        Hearth::Validator.validate_types!(input[:topic_arn], ::String, context: "#{context}[:topic_arn]")
        Hearth::Validator.validate_required!(input[:events], context: "#{context}[:events]")
        EventList.validate!(input[:events], context: "#{context}[:events]") unless input[:events].nil?
        NotificationConfigurationFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
      end
    end

    class TopicConfigurationList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TopicConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Transition
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::Transition, context: context)
        Hearth::Validator.validate_types!(input[:date], ::Time, context: "#{context}[:date]")
        Hearth::Validator.validate_types!(input[:days], ::Integer, context: "#{context}[:days]")
        Hearth::Validator.validate_types!(input[:storage_class], ::String, context: "#{context}[:storage_class]")
      end
    end

    class TransitionList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Transition.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UploadPartCopyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::UploadPartCopyInput, context: context)
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_required!(input[:copy_source], context: "#{context}[:copy_source]")
        Hearth::Validator.validate_types!(input[:copy_source], ::String, context: "#{context}[:copy_source]")
        Hearth::Validator.validate_types!(input[:copy_source_if_match], ::String, context: "#{context}[:copy_source_if_match]")
        Hearth::Validator.validate_types!(input[:copy_source_if_modified_since], ::Time, context: "#{context}[:copy_source_if_modified_since]")
        Hearth::Validator.validate_types!(input[:copy_source_if_none_match], ::String, context: "#{context}[:copy_source_if_none_match]")
        Hearth::Validator.validate_types!(input[:copy_source_if_unmodified_since], ::Time, context: "#{context}[:copy_source_if_unmodified_since]")
        Hearth::Validator.validate_types!(input[:copy_source_range], ::String, context: "#{context}[:copy_source_range]")
        Hearth::Validator.validate_required!(input[:key], context: "#{context}[:key]")
        Hearth::Validator.validate_types!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate_required!(input[:part_number], context: "#{context}[:part_number]")
        Hearth::Validator.validate_types!(input[:part_number], ::Integer, context: "#{context}[:part_number]")
        Hearth::Validator.validate_required!(input[:upload_id], context: "#{context}[:upload_id]")
        Hearth::Validator.validate_types!(input[:upload_id], ::String, context: "#{context}[:upload_id]")
        Hearth::Validator.validate_types!(input[:sse_customer_algorithm], ::String, context: "#{context}[:sse_customer_algorithm]")
        Hearth::Validator.validate_types!(input[:sse_customer_key], ::String, context: "#{context}[:sse_customer_key]")
        Hearth::Validator.validate_types!(input[:sse_customer_key_md5], ::String, context: "#{context}[:sse_customer_key_md5]")
        Hearth::Validator.validate_types!(input[:copy_source_sse_customer_algorithm], ::String, context: "#{context}[:copy_source_sse_customer_algorithm]")
        Hearth::Validator.validate_types!(input[:copy_source_sse_customer_key], ::String, context: "#{context}[:copy_source_sse_customer_key]")
        Hearth::Validator.validate_types!(input[:copy_source_sse_customer_key_md5], ::String, context: "#{context}[:copy_source_sse_customer_key_md5]")
        Hearth::Validator.validate_types!(input[:request_payer], ::String, context: "#{context}[:request_payer]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
        Hearth::Validator.validate_types!(input[:expected_source_bucket_owner], ::String, context: "#{context}[:expected_source_bucket_owner]")
      end
    end

    class UploadPartCopyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::UploadPartCopyOutput, context: context)
        Hearth::Validator.validate_types!(input[:copy_source_version_id], ::String, context: "#{context}[:copy_source_version_id]")
        CopyPartResult.validate!(input[:copy_part_result], context: "#{context}[:copy_part_result]") unless input[:copy_part_result].nil?
        Hearth::Validator.validate_types!(input[:server_side_encryption], ::String, context: "#{context}[:server_side_encryption]")
        Hearth::Validator.validate_types!(input[:sse_customer_algorithm], ::String, context: "#{context}[:sse_customer_algorithm]")
        Hearth::Validator.validate_types!(input[:sse_customer_key_md5], ::String, context: "#{context}[:sse_customer_key_md5]")
        Hearth::Validator.validate_types!(input[:ssekms_key_id], ::String, context: "#{context}[:ssekms_key_id]")
        Hearth::Validator.validate_types!(input[:bucket_key_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:bucket_key_enabled]")
        Hearth::Validator.validate_types!(input[:request_charged], ::String, context: "#{context}[:request_charged]")
      end
    end

    class UploadPartInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::UploadPartInput, context: context)
        unless input[:body].respond_to?(:read) || input[:body].respond_to?(:readpartial)
          raise ArgumentError, "Expected #{context} to be an IO like object, got #{input[:body].class}"
        end
        Hearth::Validator.validate_required!(input[:bucket], context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate_types!(input[:content_length], ::Integer, context: "#{context}[:content_length]")
        Hearth::Validator.validate_types!(input[:content_md5], ::String, context: "#{context}[:content_md5]")
        Hearth::Validator.validate_types!(input[:checksum_algorithm], ::String, context: "#{context}[:checksum_algorithm]")
        Hearth::Validator.validate_types!(input[:checksum_crc32], ::String, context: "#{context}[:checksum_crc32]")
        Hearth::Validator.validate_types!(input[:checksum_crc32_c], ::String, context: "#{context}[:checksum_crc32_c]")
        Hearth::Validator.validate_types!(input[:checksum_sha1], ::String, context: "#{context}[:checksum_sha1]")
        Hearth::Validator.validate_types!(input[:checksum_sha256], ::String, context: "#{context}[:checksum_sha256]")
        Hearth::Validator.validate_required!(input[:key], context: "#{context}[:key]")
        Hearth::Validator.validate_types!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate_required!(input[:part_number], context: "#{context}[:part_number]")
        Hearth::Validator.validate_types!(input[:part_number], ::Integer, context: "#{context}[:part_number]")
        Hearth::Validator.validate_required!(input[:upload_id], context: "#{context}[:upload_id]")
        Hearth::Validator.validate_types!(input[:upload_id], ::String, context: "#{context}[:upload_id]")
        Hearth::Validator.validate_types!(input[:sse_customer_algorithm], ::String, context: "#{context}[:sse_customer_algorithm]")
        Hearth::Validator.validate_types!(input[:sse_customer_key], ::String, context: "#{context}[:sse_customer_key]")
        Hearth::Validator.validate_types!(input[:sse_customer_key_md5], ::String, context: "#{context}[:sse_customer_key_md5]")
        Hearth::Validator.validate_types!(input[:request_payer], ::String, context: "#{context}[:request_payer]")
        Hearth::Validator.validate_types!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
      end
    end

    class UploadPartOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::UploadPartOutput, context: context)
        Hearth::Validator.validate_types!(input[:server_side_encryption], ::String, context: "#{context}[:server_side_encryption]")
        Hearth::Validator.validate_types!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
        Hearth::Validator.validate_types!(input[:checksum_crc32], ::String, context: "#{context}[:checksum_crc32]")
        Hearth::Validator.validate_types!(input[:checksum_crc32_c], ::String, context: "#{context}[:checksum_crc32_c]")
        Hearth::Validator.validate_types!(input[:checksum_sha1], ::String, context: "#{context}[:checksum_sha1]")
        Hearth::Validator.validate_types!(input[:checksum_sha256], ::String, context: "#{context}[:checksum_sha256]")
        Hearth::Validator.validate_types!(input[:sse_customer_algorithm], ::String, context: "#{context}[:sse_customer_algorithm]")
        Hearth::Validator.validate_types!(input[:sse_customer_key_md5], ::String, context: "#{context}[:sse_customer_key_md5]")
        Hearth::Validator.validate_types!(input[:ssekms_key_id], ::String, context: "#{context}[:ssekms_key_id]")
        Hearth::Validator.validate_types!(input[:bucket_key_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:bucket_key_enabled]")
        Hearth::Validator.validate_types!(input[:request_charged], ::String, context: "#{context}[:request_charged]")
      end
    end

    class UserMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MetadataEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class VersioningConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::VersioningConfiguration, context: context)
        Hearth::Validator.validate_types!(input[:mfa_delete], ::String, context: "#{context}[:mfa_delete]")
        Hearth::Validator.validate_types!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class WebsiteConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::WebsiteConfiguration, context: context)
        ErrorDocument.validate!(input[:error_document], context: "#{context}[:error_document]") unless input[:error_document].nil?
        IndexDocument.validate!(input[:index_document], context: "#{context}[:index_document]") unless input[:index_document].nil?
        RedirectAllRequestsTo.validate!(input[:redirect_all_requests_to], context: "#{context}[:redirect_all_requests_to]") unless input[:redirect_all_requests_to].nil?
        RoutingRules.validate!(input[:routing_rules], context: "#{context}[:routing_rules]") unless input[:routing_rules].nil?
      end
    end

    class WriteGetObjectResponseInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::WriteGetObjectResponseInput, context: context)
        Hearth::Validator.validate_required!(input[:request_route], context: "#{context}[:request_route]")
        Hearth::Validator.validate_types!(input[:request_route], ::String, context: "#{context}[:request_route]")
        Hearth::Validator.validate_required!(input[:request_token], context: "#{context}[:request_token]")
        Hearth::Validator.validate_types!(input[:request_token], ::String, context: "#{context}[:request_token]")
        unless input[:body].respond_to?(:read) || input[:body].respond_to?(:readpartial)
          raise ArgumentError, "Expected #{context} to be an IO like object, got #{input[:body].class}"
        end
        Hearth::Validator.validate_types!(input[:status_code], ::Integer, context: "#{context}[:status_code]")
        Hearth::Validator.validate_types!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate_types!(input[:error_message], ::String, context: "#{context}[:error_message]")
        Hearth::Validator.validate_types!(input[:accept_ranges], ::String, context: "#{context}[:accept_ranges]")
        Hearth::Validator.validate_types!(input[:cache_control], ::String, context: "#{context}[:cache_control]")
        Hearth::Validator.validate_types!(input[:content_disposition], ::String, context: "#{context}[:content_disposition]")
        Hearth::Validator.validate_types!(input[:content_encoding], ::String, context: "#{context}[:content_encoding]")
        Hearth::Validator.validate_types!(input[:content_language], ::String, context: "#{context}[:content_language]")
        Hearth::Validator.validate_types!(input[:content_length], ::Integer, context: "#{context}[:content_length]")
        Hearth::Validator.validate_types!(input[:content_range], ::String, context: "#{context}[:content_range]")
        Hearth::Validator.validate_types!(input[:content_type], ::String, context: "#{context}[:content_type]")
        Hearth::Validator.validate_types!(input[:checksum_crc32], ::String, context: "#{context}[:checksum_crc32]")
        Hearth::Validator.validate_types!(input[:checksum_crc32_c], ::String, context: "#{context}[:checksum_crc32_c]")
        Hearth::Validator.validate_types!(input[:checksum_sha1], ::String, context: "#{context}[:checksum_sha1]")
        Hearth::Validator.validate_types!(input[:checksum_sha256], ::String, context: "#{context}[:checksum_sha256]")
        Hearth::Validator.validate_types!(input[:delete_marker], ::TrueClass, ::FalseClass, context: "#{context}[:delete_marker]")
        Hearth::Validator.validate_types!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
        Hearth::Validator.validate_types!(input[:expires], ::Time, context: "#{context}[:expires]")
        Hearth::Validator.validate_types!(input[:expiration], ::String, context: "#{context}[:expiration]")
        Hearth::Validator.validate_types!(input[:last_modified], ::Time, context: "#{context}[:last_modified]")
        Hearth::Validator.validate_types!(input[:missing_meta], ::Integer, context: "#{context}[:missing_meta]")
        Metadata.validate!(input[:metadata], context: "#{context}[:metadata]") unless input[:metadata].nil?
        Hearth::Validator.validate_types!(input[:object_lock_mode], ::String, context: "#{context}[:object_lock_mode]")
        Hearth::Validator.validate_types!(input[:object_lock_legal_hold_status], ::String, context: "#{context}[:object_lock_legal_hold_status]")
        Hearth::Validator.validate_types!(input[:object_lock_retain_until_date], ::Time, context: "#{context}[:object_lock_retain_until_date]")
        Hearth::Validator.validate_types!(input[:parts_count], ::Integer, context: "#{context}[:parts_count]")
        Hearth::Validator.validate_types!(input[:replication_status], ::String, context: "#{context}[:replication_status]")
        Hearth::Validator.validate_types!(input[:request_charged], ::String, context: "#{context}[:request_charged]")
        Hearth::Validator.validate_types!(input[:restore], ::String, context: "#{context}[:restore]")
        Hearth::Validator.validate_types!(input[:server_side_encryption], ::String, context: "#{context}[:server_side_encryption]")
        Hearth::Validator.validate_types!(input[:sse_customer_algorithm], ::String, context: "#{context}[:sse_customer_algorithm]")
        Hearth::Validator.validate_types!(input[:ssekms_key_id], ::String, context: "#{context}[:ssekms_key_id]")
        Hearth::Validator.validate_types!(input[:sse_customer_key_md5], ::String, context: "#{context}[:sse_customer_key_md5]")
        Hearth::Validator.validate_types!(input[:storage_class], ::String, context: "#{context}[:storage_class]")
        Hearth::Validator.validate_types!(input[:tag_count], ::Integer, context: "#{context}[:tag_count]")
        Hearth::Validator.validate_types!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate_types!(input[:bucket_key_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:bucket_key_enabled]")
      end
    end

    class WriteGetObjectResponseOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::WriteGetObjectResponseOutput, context: context)
      end
    end

  end
end
