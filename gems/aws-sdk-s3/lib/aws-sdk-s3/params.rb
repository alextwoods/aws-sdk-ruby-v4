# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::S3
  # @api private
  module Params

    module AbortIncompleteMultipartUpload
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::AbortIncompleteMultipartUpload, context: context)
        type = Types::AbortIncompleteMultipartUpload.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.days_after_initiation = params[:days_after_initiation]
        type
      end
    end

    module AbortMultipartUploadInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::AbortMultipartUploadInput, context: context)
        type = Types::AbortMultipartUploadInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.key = params[:key]
        type.upload_id = params[:upload_id]
        type.request_payer = params[:request_payer]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module AbortMultipartUploadOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::AbortMultipartUploadOutput, context: context)
        type = Types::AbortMultipartUploadOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.request_charged = params[:request_charged]
        type
      end
    end

    module AccelerateConfiguration
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::AccelerateConfiguration, context: context)
        type = Types::AccelerateConfiguration.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.status = params[:status]
        type
      end
    end

    module AccessControlPolicy
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::AccessControlPolicy, context: context)
        type = Types::AccessControlPolicy.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.grants = Grants.build(params[:grants], context: "#{context}[:grants]") unless params[:grants].nil?
        type.owner = Owner.build(params[:owner], context: "#{context}[:owner]") unless params[:owner].nil?
        type
      end
    end

    module AccessControlTranslation
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::AccessControlTranslation, context: context)
        type = Types::AccessControlTranslation.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.owner = params[:owner]
        type
      end
    end

    module AllowedHeaders
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AllowedMethods
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AllowedOrigins
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AnalyticsAndOperator
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::AnalyticsAndOperator, context: context)
        type = Types::AnalyticsAndOperator.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.prefix = params[:prefix]
        type.tags = TagSet.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module AnalyticsConfiguration
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::AnalyticsConfiguration, context: context)
        type = Types::AnalyticsConfiguration.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.id = params[:id]
        type.filter = AnalyticsFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.storage_class_analysis = StorageClassAnalysis.build(params[:storage_class_analysis], context: "#{context}[:storage_class_analysis]") unless params[:storage_class_analysis].nil?
        type
      end
    end

    module AnalyticsConfigurationList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AnalyticsConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AnalyticsExportDestination
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::AnalyticsExportDestination, context: context)
        type = Types::AnalyticsExportDestination.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.s3_bucket_destination = AnalyticsS3BucketDestination.build(params[:s3_bucket_destination], context: "#{context}[:s3_bucket_destination]") unless params[:s3_bucket_destination].nil?
        type
      end
    end

    module AnalyticsFilter
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

    module AnalyticsS3BucketDestination
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::AnalyticsS3BucketDestination, context: context)
        type = Types::AnalyticsS3BucketDestination.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.format = params[:format]
        type.bucket_account_id = params[:bucket_account_id]
        type.bucket = params[:bucket]
        type.prefix = params[:prefix]
        type
      end
    end

    module Bucket
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Bucket, context: context)
        type = Types::Bucket.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.name = params[:name]
        type.creation_date = params[:creation_date]
        type
      end
    end

    module BucketAlreadyExists
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::BucketAlreadyExists, context: context)
        type = Types::BucketAlreadyExists.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    module BucketAlreadyOwnedByYou
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::BucketAlreadyOwnedByYou, context: context)
        type = Types::BucketAlreadyOwnedByYou.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    module BucketInfo
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::BucketInfo, context: context)
        type = Types::BucketInfo.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.data_redundancy = params[:data_redundancy]
        type.type = params[:type]
        type
      end
    end

    module BucketLifecycleConfiguration
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::BucketLifecycleConfiguration, context: context)
        type = Types::BucketLifecycleConfiguration.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.rules = LifecycleRules.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type
      end
    end

    module BucketLoggingStatus
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::BucketLoggingStatus, context: context)
        type = Types::BucketLoggingStatus.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.logging_enabled = LoggingEnabled.build(params[:logging_enabled], context: "#{context}[:logging_enabled]") unless params[:logging_enabled].nil?
        type
      end
    end

    module Buckets
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Bucket.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CORSConfiguration
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CORSConfiguration, context: context)
        type = Types::CORSConfiguration.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.cors_rules = CORSRules.build(params[:cors_rules], context: "#{context}[:cors_rules]") unless params[:cors_rules].nil?
        type
      end
    end

    module CORSRule
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CORSRule, context: context)
        type = Types::CORSRule.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.id = params[:id]
        type.allowed_headers = AllowedHeaders.build(params[:allowed_headers], context: "#{context}[:allowed_headers]") unless params[:allowed_headers].nil?
        type.allowed_methods = AllowedMethods.build(params[:allowed_methods], context: "#{context}[:allowed_methods]") unless params[:allowed_methods].nil?
        type.allowed_origins = AllowedOrigins.build(params[:allowed_origins], context: "#{context}[:allowed_origins]") unless params[:allowed_origins].nil?
        type.expose_headers = ExposeHeaders.build(params[:expose_headers], context: "#{context}[:expose_headers]") unless params[:expose_headers].nil?
        type.max_age_seconds = params[:max_age_seconds]
        type
      end
    end

    module CORSRules
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CORSRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CSVInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CSVInput, context: context)
        type = Types::CSVInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.file_header_info = params[:file_header_info]
        type.comments = params[:comments]
        type.quote_escape_character = params[:quote_escape_character]
        type.record_delimiter = params[:record_delimiter]
        type.field_delimiter = params[:field_delimiter]
        type.quote_character = params[:quote_character]
        type.allow_quoted_record_delimiter = params[:allow_quoted_record_delimiter]
        type
      end
    end

    module CSVOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CSVOutput, context: context)
        type = Types::CSVOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.quote_fields = params[:quote_fields]
        type.quote_escape_character = params[:quote_escape_character]
        type.record_delimiter = params[:record_delimiter]
        type.field_delimiter = params[:field_delimiter]
        type.quote_character = params[:quote_character]
        type
      end
    end

    module Checksum
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Checksum, context: context)
        type = Types::Checksum.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.checksum_crc32 = params[:checksum_crc32]
        type.checksum_crc32_c = params[:checksum_crc32_c]
        type.checksum_sha1 = params[:checksum_sha1]
        type.checksum_sha256 = params[:checksum_sha256]
        type
      end
    end

    module ChecksumAlgorithmList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CommonPrefix
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CommonPrefix, context: context)
        type = Types::CommonPrefix.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.prefix = params[:prefix]
        type
      end
    end

    module CommonPrefixList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CommonPrefix.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CompleteMultipartUploadInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CompleteMultipartUploadInput, context: context)
        type = Types::CompleteMultipartUploadInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.key = params[:key]
        type.multipart_upload = CompletedMultipartUpload.build(params[:multipart_upload], context: "#{context}[:multipart_upload]") unless params[:multipart_upload].nil?
        type.upload_id = params[:upload_id]
        type.checksum_crc32 = params[:checksum_crc32]
        type.checksum_crc32_c = params[:checksum_crc32_c]
        type.checksum_sha1 = params[:checksum_sha1]
        type.checksum_sha256 = params[:checksum_sha256]
        type.request_payer = params[:request_payer]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type.sse_customer_algorithm = params[:sse_customer_algorithm]
        type.sse_customer_key = params[:sse_customer_key]
        type.sse_customer_key_md5 = params[:sse_customer_key_md5]
        type
      end
    end

    module CompleteMultipartUploadOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CompleteMultipartUploadOutput, context: context)
        type = Types::CompleteMultipartUploadOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.location = params[:location]
        type.bucket = params[:bucket]
        type.key = params[:key]
        type.expiration = params[:expiration]
        type.e_tag = params[:e_tag]
        type.checksum_crc32 = params[:checksum_crc32]
        type.checksum_crc32_c = params[:checksum_crc32_c]
        type.checksum_sha1 = params[:checksum_sha1]
        type.checksum_sha256 = params[:checksum_sha256]
        type.server_side_encryption = params[:server_side_encryption]
        type.version_id = params[:version_id]
        type.ssekms_key_id = params[:ssekms_key_id]
        type.bucket_key_enabled = params[:bucket_key_enabled]
        type.request_charged = params[:request_charged]
        type
      end
    end

    module CompletedMultipartUpload
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CompletedMultipartUpload, context: context)
        type = Types::CompletedMultipartUpload.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.parts = CompletedPartList.build(params[:parts], context: "#{context}[:parts]") unless params[:parts].nil?
        type
      end
    end

    module CompletedPart
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CompletedPart, context: context)
        type = Types::CompletedPart.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.e_tag = params[:e_tag]
        type.checksum_crc32 = params[:checksum_crc32]
        type.checksum_crc32_c = params[:checksum_crc32_c]
        type.checksum_sha1 = params[:checksum_sha1]
        type.checksum_sha256 = params[:checksum_sha256]
        type.part_number = params[:part_number]
        type
      end
    end

    module CompletedPartList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CompletedPart.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Condition
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Condition, context: context)
        type = Types::Condition.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.http_error_code_returned_equals = params[:http_error_code_returned_equals]
        type.key_prefix_equals = params[:key_prefix_equals]
        type
      end
    end

    module ContinuationEvent
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ContinuationEvent, context: context)
        type = Types::ContinuationEvent.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    module CopyObjectInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CopyObjectInput, context: context)
        type = Types::CopyObjectInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.acl = params[:acl]
        type.bucket = params[:bucket]
        type.cache_control = params[:cache_control]
        type.checksum_algorithm = params[:checksum_algorithm]
        type.content_disposition = params[:content_disposition]
        type.content_encoding = params[:content_encoding]
        type.content_language = params[:content_language]
        type.content_type = params[:content_type]
        type.copy_source = params[:copy_source]
        type.copy_source_if_match = params[:copy_source_if_match]
        type.copy_source_if_modified_since = params[:copy_source_if_modified_since]
        type.copy_source_if_none_match = params[:copy_source_if_none_match]
        type.copy_source_if_unmodified_since = params[:copy_source_if_unmodified_since]
        type.expires = params[:expires]
        type.grant_full_control = params[:grant_full_control]
        type.grant_read = params[:grant_read]
        type.grant_read_acp = params[:grant_read_acp]
        type.grant_write_acp = params[:grant_write_acp]
        type.key = params[:key]
        type.metadata = Metadata.build(params[:metadata], context: "#{context}[:metadata]") unless params[:metadata].nil?
        type.metadata_directive = params[:metadata_directive]
        type.tagging_directive = params[:tagging_directive]
        type.server_side_encryption = params[:server_side_encryption]
        type.storage_class = params[:storage_class]
        type.website_redirect_location = params[:website_redirect_location]
        type.sse_customer_algorithm = params[:sse_customer_algorithm]
        type.sse_customer_key = params[:sse_customer_key]
        type.sse_customer_key_md5 = params[:sse_customer_key_md5]
        type.ssekms_key_id = params[:ssekms_key_id]
        type.ssekms_encryption_context = params[:ssekms_encryption_context]
        type.bucket_key_enabled = params[:bucket_key_enabled]
        type.copy_source_sse_customer_algorithm = params[:copy_source_sse_customer_algorithm]
        type.copy_source_sse_customer_key = params[:copy_source_sse_customer_key]
        type.copy_source_sse_customer_key_md5 = params[:copy_source_sse_customer_key_md5]
        type.request_payer = params[:request_payer]
        type.tagging = params[:tagging]
        type.object_lock_mode = params[:object_lock_mode]
        type.object_lock_retain_until_date = params[:object_lock_retain_until_date]
        type.object_lock_legal_hold_status = params[:object_lock_legal_hold_status]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type.expected_source_bucket_owner = params[:expected_source_bucket_owner]
        type
      end
    end

    module CopyObjectOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CopyObjectOutput, context: context)
        type = Types::CopyObjectOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.copy_object_result = CopyObjectResult.build(params[:copy_object_result], context: "#{context}[:copy_object_result]") unless params[:copy_object_result].nil?
        type.expiration = params[:expiration]
        type.copy_source_version_id = params[:copy_source_version_id]
        type.version_id = params[:version_id]
        type.server_side_encryption = params[:server_side_encryption]
        type.sse_customer_algorithm = params[:sse_customer_algorithm]
        type.sse_customer_key_md5 = params[:sse_customer_key_md5]
        type.ssekms_key_id = params[:ssekms_key_id]
        type.ssekms_encryption_context = params[:ssekms_encryption_context]
        type.bucket_key_enabled = params[:bucket_key_enabled]
        type.request_charged = params[:request_charged]
        type
      end
    end

    module CopyObjectResult
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CopyObjectResult, context: context)
        type = Types::CopyObjectResult.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.e_tag = params[:e_tag]
        type.last_modified = params[:last_modified]
        type.checksum_crc32 = params[:checksum_crc32]
        type.checksum_crc32_c = params[:checksum_crc32_c]
        type.checksum_sha1 = params[:checksum_sha1]
        type.checksum_sha256 = params[:checksum_sha256]
        type
      end
    end

    module CopyPartResult
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CopyPartResult, context: context)
        type = Types::CopyPartResult.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.e_tag = params[:e_tag]
        type.last_modified = params[:last_modified]
        type.checksum_crc32 = params[:checksum_crc32]
        type.checksum_crc32_c = params[:checksum_crc32_c]
        type.checksum_sha1 = params[:checksum_sha1]
        type.checksum_sha256 = params[:checksum_sha256]
        type
      end
    end

    module CreateBucketConfiguration
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CreateBucketConfiguration, context: context)
        type = Types::CreateBucketConfiguration.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.location_constraint = params[:location_constraint]
        type.location = LocationInfo.build(params[:location], context: "#{context}[:location]") unless params[:location].nil?
        type.bucket = BucketInfo.build(params[:bucket], context: "#{context}[:bucket]") unless params[:bucket].nil?
        type
      end
    end

    module CreateBucketInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CreateBucketInput, context: context)
        type = Types::CreateBucketInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.acl = params[:acl]
        type.bucket = params[:bucket]
        type.create_bucket_configuration = CreateBucketConfiguration.build(params[:create_bucket_configuration], context: "#{context}[:create_bucket_configuration]") unless params[:create_bucket_configuration].nil?
        type.grant_full_control = params[:grant_full_control]
        type.grant_read = params[:grant_read]
        type.grant_read_acp = params[:grant_read_acp]
        type.grant_write = params[:grant_write]
        type.grant_write_acp = params[:grant_write_acp]
        type.object_lock_enabled_for_bucket = params[:object_lock_enabled_for_bucket]
        type.object_ownership = params[:object_ownership]
        type
      end
    end

    module CreateBucketOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CreateBucketOutput, context: context)
        type = Types::CreateBucketOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.location = params[:location]
        type
      end
    end

    module CreateMultipartUploadInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CreateMultipartUploadInput, context: context)
        type = Types::CreateMultipartUploadInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.acl = params[:acl]
        type.bucket = params[:bucket]
        type.cache_control = params[:cache_control]
        type.content_disposition = params[:content_disposition]
        type.content_encoding = params[:content_encoding]
        type.content_language = params[:content_language]
        type.content_type = params[:content_type]
        type.expires = params[:expires]
        type.grant_full_control = params[:grant_full_control]
        type.grant_read = params[:grant_read]
        type.grant_read_acp = params[:grant_read_acp]
        type.grant_write_acp = params[:grant_write_acp]
        type.key = params[:key]
        type.metadata = Metadata.build(params[:metadata], context: "#{context}[:metadata]") unless params[:metadata].nil?
        type.server_side_encryption = params[:server_side_encryption]
        type.storage_class = params[:storage_class]
        type.website_redirect_location = params[:website_redirect_location]
        type.sse_customer_algorithm = params[:sse_customer_algorithm]
        type.sse_customer_key = params[:sse_customer_key]
        type.sse_customer_key_md5 = params[:sse_customer_key_md5]
        type.ssekms_key_id = params[:ssekms_key_id]
        type.ssekms_encryption_context = params[:ssekms_encryption_context]
        type.bucket_key_enabled = params[:bucket_key_enabled]
        type.request_payer = params[:request_payer]
        type.tagging = params[:tagging]
        type.object_lock_mode = params[:object_lock_mode]
        type.object_lock_retain_until_date = params[:object_lock_retain_until_date]
        type.object_lock_legal_hold_status = params[:object_lock_legal_hold_status]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type.checksum_algorithm = params[:checksum_algorithm]
        type
      end
    end

    module CreateMultipartUploadOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CreateMultipartUploadOutput, context: context)
        type = Types::CreateMultipartUploadOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.abort_date = params[:abort_date]
        type.abort_rule_id = params[:abort_rule_id]
        type.bucket = params[:bucket]
        type.key = params[:key]
        type.upload_id = params[:upload_id]
        type.server_side_encryption = params[:server_side_encryption]
        type.sse_customer_algorithm = params[:sse_customer_algorithm]
        type.sse_customer_key_md5 = params[:sse_customer_key_md5]
        type.ssekms_key_id = params[:ssekms_key_id]
        type.ssekms_encryption_context = params[:ssekms_encryption_context]
        type.bucket_key_enabled = params[:bucket_key_enabled]
        type.request_charged = params[:request_charged]
        type.checksum_algorithm = params[:checksum_algorithm]
        type
      end
    end

    module CreateSessionInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CreateSessionInput, context: context)
        type = Types::CreateSessionInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.session_mode = params[:session_mode]
        type.bucket = params[:bucket]
        type
      end
    end

    module CreateSessionOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CreateSessionOutput, context: context)
        type = Types::CreateSessionOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.credentials = SessionCredentials.build(params[:credentials], context: "#{context}[:credentials]") unless params[:credentials].nil?
        type
      end
    end

    module DefaultRetention
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DefaultRetention, context: context)
        type = Types::DefaultRetention.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.mode = params[:mode]
        type.days = params[:days]
        type.years = params[:years]
        type
      end
    end

    module Delete
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Delete, context: context)
        type = Types::Delete.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.objects = ObjectIdentifierList.build(params[:objects], context: "#{context}[:objects]") unless params[:objects].nil?
        type.quiet = params[:quiet]
        type
      end
    end

    module DeleteBucketAnalyticsConfigurationInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteBucketAnalyticsConfigurationInput, context: context)
        type = Types::DeleteBucketAnalyticsConfigurationInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.id = params[:id]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module DeleteBucketAnalyticsConfigurationOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteBucketAnalyticsConfigurationOutput, context: context)
        type = Types::DeleteBucketAnalyticsConfigurationOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    module DeleteBucketCorsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteBucketCorsInput, context: context)
        type = Types::DeleteBucketCorsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module DeleteBucketCorsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteBucketCorsOutput, context: context)
        type = Types::DeleteBucketCorsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    module DeleteBucketEncryptionInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteBucketEncryptionInput, context: context)
        type = Types::DeleteBucketEncryptionInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module DeleteBucketEncryptionOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteBucketEncryptionOutput, context: context)
        type = Types::DeleteBucketEncryptionOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    module DeleteBucketInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteBucketInput, context: context)
        type = Types::DeleteBucketInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module DeleteBucketIntelligentTieringConfigurationInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteBucketIntelligentTieringConfigurationInput, context: context)
        type = Types::DeleteBucketIntelligentTieringConfigurationInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.id = params[:id]
        type
      end
    end

    module DeleteBucketIntelligentTieringConfigurationOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteBucketIntelligentTieringConfigurationOutput, context: context)
        type = Types::DeleteBucketIntelligentTieringConfigurationOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    module DeleteBucketInventoryConfigurationInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteBucketInventoryConfigurationInput, context: context)
        type = Types::DeleteBucketInventoryConfigurationInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.id = params[:id]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module DeleteBucketInventoryConfigurationOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteBucketInventoryConfigurationOutput, context: context)
        type = Types::DeleteBucketInventoryConfigurationOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    module DeleteBucketLifecycleInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteBucketLifecycleInput, context: context)
        type = Types::DeleteBucketLifecycleInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module DeleteBucketLifecycleOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteBucketLifecycleOutput, context: context)
        type = Types::DeleteBucketLifecycleOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    module DeleteBucketMetricsConfigurationInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteBucketMetricsConfigurationInput, context: context)
        type = Types::DeleteBucketMetricsConfigurationInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.id = params[:id]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module DeleteBucketMetricsConfigurationOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteBucketMetricsConfigurationOutput, context: context)
        type = Types::DeleteBucketMetricsConfigurationOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    module DeleteBucketOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteBucketOutput, context: context)
        type = Types::DeleteBucketOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    module DeleteBucketOwnershipControlsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteBucketOwnershipControlsInput, context: context)
        type = Types::DeleteBucketOwnershipControlsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module DeleteBucketOwnershipControlsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteBucketOwnershipControlsOutput, context: context)
        type = Types::DeleteBucketOwnershipControlsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    module DeleteBucketPolicyInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteBucketPolicyInput, context: context)
        type = Types::DeleteBucketPolicyInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module DeleteBucketPolicyOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteBucketPolicyOutput, context: context)
        type = Types::DeleteBucketPolicyOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    module DeleteBucketReplicationInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteBucketReplicationInput, context: context)
        type = Types::DeleteBucketReplicationInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module DeleteBucketReplicationOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteBucketReplicationOutput, context: context)
        type = Types::DeleteBucketReplicationOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    module DeleteBucketTaggingInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteBucketTaggingInput, context: context)
        type = Types::DeleteBucketTaggingInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module DeleteBucketTaggingOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteBucketTaggingOutput, context: context)
        type = Types::DeleteBucketTaggingOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    module DeleteBucketWebsiteInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteBucketWebsiteInput, context: context)
        type = Types::DeleteBucketWebsiteInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module DeleteBucketWebsiteOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteBucketWebsiteOutput, context: context)
        type = Types::DeleteBucketWebsiteOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    module DeleteMarkerEntry
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteMarkerEntry, context: context)
        type = Types::DeleteMarkerEntry.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.owner = Owner.build(params[:owner], context: "#{context}[:owner]") unless params[:owner].nil?
        type.key = params[:key]
        type.version_id = params[:version_id]
        type.is_latest = params[:is_latest]
        type.last_modified = params[:last_modified]
        type
      end
    end

    module DeleteMarkerReplication
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteMarkerReplication, context: context)
        type = Types::DeleteMarkerReplication.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.status = params[:status]
        type
      end
    end

    module DeleteMarkers
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DeleteMarkerEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeleteObjectInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteObjectInput, context: context)
        type = Types::DeleteObjectInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.key = params[:key]
        type.mfa = params[:mfa]
        type.version_id = params[:version_id]
        type.request_payer = params[:request_payer]
        type.bypass_governance_retention = params[:bypass_governance_retention]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module DeleteObjectOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteObjectOutput, context: context)
        type = Types::DeleteObjectOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.delete_marker = params[:delete_marker]
        type.version_id = params[:version_id]
        type.request_charged = params[:request_charged]
        type
      end
    end

    module DeleteObjectTaggingInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteObjectTaggingInput, context: context)
        type = Types::DeleteObjectTaggingInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.key = params[:key]
        type.version_id = params[:version_id]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module DeleteObjectTaggingOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteObjectTaggingOutput, context: context)
        type = Types::DeleteObjectTaggingOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.version_id = params[:version_id]
        type
      end
    end

    module DeleteObjectsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteObjectsInput, context: context)
        type = Types::DeleteObjectsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.delete = Delete.build(params[:delete], context: "#{context}[:delete]") unless params[:delete].nil?
        type.mfa = params[:mfa]
        type.request_payer = params[:request_payer]
        type.bypass_governance_retention = params[:bypass_governance_retention]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type.checksum_algorithm = params[:checksum_algorithm]
        type
      end
    end

    module DeleteObjectsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteObjectsOutput, context: context)
        type = Types::DeleteObjectsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.deleted = DeletedObjects.build(params[:deleted], context: "#{context}[:deleted]") unless params[:deleted].nil?
        type.request_charged = params[:request_charged]
        type.errors = Errors.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type
      end
    end

    module DeletePublicAccessBlockInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeletePublicAccessBlockInput, context: context)
        type = Types::DeletePublicAccessBlockInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module DeletePublicAccessBlockOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeletePublicAccessBlockOutput, context: context)
        type = Types::DeletePublicAccessBlockOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    module DeletedObject
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeletedObject, context: context)
        type = Types::DeletedObject.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key = params[:key]
        type.version_id = params[:version_id]
        type.delete_marker = params[:delete_marker]
        type.delete_marker_version_id = params[:delete_marker_version_id]
        type
      end
    end

    module DeletedObjects
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DeletedObject.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Destination
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Destination, context: context)
        type = Types::Destination.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.account = params[:account]
        type.storage_class = params[:storage_class]
        type.access_control_translation = AccessControlTranslation.build(params[:access_control_translation], context: "#{context}[:access_control_translation]") unless params[:access_control_translation].nil?
        type.encryption_configuration = EncryptionConfiguration.build(params[:encryption_configuration], context: "#{context}[:encryption_configuration]") unless params[:encryption_configuration].nil?
        type.replication_time = ReplicationTime.build(params[:replication_time], context: "#{context}[:replication_time]") unless params[:replication_time].nil?
        type.metrics = Metrics.build(params[:metrics], context: "#{context}[:metrics]") unless params[:metrics].nil?
        type
      end
    end

    module Encryption
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Encryption, context: context)
        type = Types::Encryption.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.encryption_type = params[:encryption_type]
        type.kms_key_id = params[:kms_key_id]
        type.kms_context = params[:kms_context]
        type
      end
    end

    module EncryptionConfiguration
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::EncryptionConfiguration, context: context)
        type = Types::EncryptionConfiguration.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.replica_kms_key_id = params[:replica_kms_key_id]
        type
      end
    end

    module EndEvent
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::EndEvent, context: context)
        type = Types::EndEvent.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    module Error
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Error, context: context)
        type = Types::Error.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key = params[:key]
        type.version_id = params[:version_id]
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module ErrorDocument
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ErrorDocument, context: context)
        type = Types::ErrorDocument.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key = params[:key]
        type
      end
    end

    module Errors
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Error.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EventBridgeConfiguration
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::EventBridgeConfiguration, context: context)
        type = Types::EventBridgeConfiguration.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    module EventList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ExistingObjectReplication
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ExistingObjectReplication, context: context)
        type = Types::ExistingObjectReplication.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.status = params[:status]
        type
      end
    end

    module ExposeHeaders
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module FilterRule
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::FilterRule, context: context)
        type = Types::FilterRule.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module FilterRuleList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FilterRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GetBucketAccelerateConfigurationInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketAccelerateConfigurationInput, context: context)
        type = Types::GetBucketAccelerateConfigurationInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type.request_payer = params[:request_payer]
        type
      end
    end

    module GetBucketAccelerateConfigurationOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketAccelerateConfigurationOutput, context: context)
        type = Types::GetBucketAccelerateConfigurationOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.status = params[:status]
        type.request_charged = params[:request_charged]
        type
      end
    end

    module GetBucketAclInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketAclInput, context: context)
        type = Types::GetBucketAclInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module GetBucketAclOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketAclOutput, context: context)
        type = Types::GetBucketAclOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.owner = Owner.build(params[:owner], context: "#{context}[:owner]") unless params[:owner].nil?
        type.grants = Grants.build(params[:grants], context: "#{context}[:grants]") unless params[:grants].nil?
        type
      end
    end

    module GetBucketAnalyticsConfigurationInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketAnalyticsConfigurationInput, context: context)
        type = Types::GetBucketAnalyticsConfigurationInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.id = params[:id]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module GetBucketAnalyticsConfigurationOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketAnalyticsConfigurationOutput, context: context)
        type = Types::GetBucketAnalyticsConfigurationOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.analytics_configuration = AnalyticsConfiguration.build(params[:analytics_configuration], context: "#{context}[:analytics_configuration]") unless params[:analytics_configuration].nil?
        type
      end
    end

    module GetBucketCorsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketCorsInput, context: context)
        type = Types::GetBucketCorsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module GetBucketCorsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketCorsOutput, context: context)
        type = Types::GetBucketCorsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.cors_rules = CORSRules.build(params[:cors_rules], context: "#{context}[:cors_rules]") unless params[:cors_rules].nil?
        type
      end
    end

    module GetBucketEncryptionInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketEncryptionInput, context: context)
        type = Types::GetBucketEncryptionInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module GetBucketEncryptionOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketEncryptionOutput, context: context)
        type = Types::GetBucketEncryptionOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.server_side_encryption_configuration = ServerSideEncryptionConfiguration.build(params[:server_side_encryption_configuration], context: "#{context}[:server_side_encryption_configuration]") unless params[:server_side_encryption_configuration].nil?
        type
      end
    end

    module GetBucketIntelligentTieringConfigurationInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketIntelligentTieringConfigurationInput, context: context)
        type = Types::GetBucketIntelligentTieringConfigurationInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.id = params[:id]
        type
      end
    end

    module GetBucketIntelligentTieringConfigurationOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketIntelligentTieringConfigurationOutput, context: context)
        type = Types::GetBucketIntelligentTieringConfigurationOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.intelligent_tiering_configuration = IntelligentTieringConfiguration.build(params[:intelligent_tiering_configuration], context: "#{context}[:intelligent_tiering_configuration]") unless params[:intelligent_tiering_configuration].nil?
        type
      end
    end

    module GetBucketInventoryConfigurationInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketInventoryConfigurationInput, context: context)
        type = Types::GetBucketInventoryConfigurationInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.id = params[:id]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module GetBucketInventoryConfigurationOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketInventoryConfigurationOutput, context: context)
        type = Types::GetBucketInventoryConfigurationOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.inventory_configuration = InventoryConfiguration.build(params[:inventory_configuration], context: "#{context}[:inventory_configuration]") unless params[:inventory_configuration].nil?
        type
      end
    end

    module GetBucketLifecycleConfigurationInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketLifecycleConfigurationInput, context: context)
        type = Types::GetBucketLifecycleConfigurationInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module GetBucketLifecycleConfigurationOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketLifecycleConfigurationOutput, context: context)
        type = Types::GetBucketLifecycleConfigurationOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.rules = LifecycleRules.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type
      end
    end

    module GetBucketLocationInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketLocationInput, context: context)
        type = Types::GetBucketLocationInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module GetBucketLocationOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketLocationOutput, context: context)
        type = Types::GetBucketLocationOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.location_constraint = params[:location_constraint]
        type
      end
    end

    module GetBucketLoggingInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketLoggingInput, context: context)
        type = Types::GetBucketLoggingInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module GetBucketLoggingOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketLoggingOutput, context: context)
        type = Types::GetBucketLoggingOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.logging_enabled = LoggingEnabled.build(params[:logging_enabled], context: "#{context}[:logging_enabled]") unless params[:logging_enabled].nil?
        type
      end
    end

    module GetBucketMetricsConfigurationInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketMetricsConfigurationInput, context: context)
        type = Types::GetBucketMetricsConfigurationInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.id = params[:id]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module GetBucketMetricsConfigurationOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketMetricsConfigurationOutput, context: context)
        type = Types::GetBucketMetricsConfigurationOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.metrics_configuration = MetricsConfiguration.build(params[:metrics_configuration], context: "#{context}[:metrics_configuration]") unless params[:metrics_configuration].nil?
        type
      end
    end

    module GetBucketNotificationConfigurationInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketNotificationConfigurationInput, context: context)
        type = Types::GetBucketNotificationConfigurationInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module GetBucketNotificationConfigurationOutput
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

    module GetBucketOwnershipControlsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketOwnershipControlsInput, context: context)
        type = Types::GetBucketOwnershipControlsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module GetBucketOwnershipControlsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketOwnershipControlsOutput, context: context)
        type = Types::GetBucketOwnershipControlsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.ownership_controls = OwnershipControls.build(params[:ownership_controls], context: "#{context}[:ownership_controls]") unless params[:ownership_controls].nil?
        type
      end
    end

    module GetBucketPolicyInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketPolicyInput, context: context)
        type = Types::GetBucketPolicyInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module GetBucketPolicyOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketPolicyOutput, context: context)
        type = Types::GetBucketPolicyOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.policy = params[:policy]
        type
      end
    end

    module GetBucketPolicyStatusInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketPolicyStatusInput, context: context)
        type = Types::GetBucketPolicyStatusInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module GetBucketPolicyStatusOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketPolicyStatusOutput, context: context)
        type = Types::GetBucketPolicyStatusOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.policy_status = PolicyStatus.build(params[:policy_status], context: "#{context}[:policy_status]") unless params[:policy_status].nil?
        type
      end
    end

    module GetBucketReplicationInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketReplicationInput, context: context)
        type = Types::GetBucketReplicationInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module GetBucketReplicationOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketReplicationOutput, context: context)
        type = Types::GetBucketReplicationOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.replication_configuration = ReplicationConfiguration.build(params[:replication_configuration], context: "#{context}[:replication_configuration]") unless params[:replication_configuration].nil?
        type
      end
    end

    module GetBucketRequestPaymentInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketRequestPaymentInput, context: context)
        type = Types::GetBucketRequestPaymentInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module GetBucketRequestPaymentOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketRequestPaymentOutput, context: context)
        type = Types::GetBucketRequestPaymentOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.payer = params[:payer]
        type
      end
    end

    module GetBucketTaggingInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketTaggingInput, context: context)
        type = Types::GetBucketTaggingInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module GetBucketTaggingOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketTaggingOutput, context: context)
        type = Types::GetBucketTaggingOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.tag_set = TagSet.build(params[:tag_set], context: "#{context}[:tag_set]") unless params[:tag_set].nil?
        type
      end
    end

    module GetBucketVersioningInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketVersioningInput, context: context)
        type = Types::GetBucketVersioningInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module GetBucketVersioningOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketVersioningOutput, context: context)
        type = Types::GetBucketVersioningOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.status = params[:status]
        type.mfa_delete = params[:mfa_delete]
        type
      end
    end

    module GetBucketWebsiteInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetBucketWebsiteInput, context: context)
        type = Types::GetBucketWebsiteInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module GetBucketWebsiteOutput
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

    module GetObjectAclInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetObjectAclInput, context: context)
        type = Types::GetObjectAclInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.key = params[:key]
        type.version_id = params[:version_id]
        type.request_payer = params[:request_payer]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module GetObjectAclOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetObjectAclOutput, context: context)
        type = Types::GetObjectAclOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.owner = Owner.build(params[:owner], context: "#{context}[:owner]") unless params[:owner].nil?
        type.grants = Grants.build(params[:grants], context: "#{context}[:grants]") unless params[:grants].nil?
        type.request_charged = params[:request_charged]
        type
      end
    end

    module GetObjectAttributesInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetObjectAttributesInput, context: context)
        type = Types::GetObjectAttributesInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.key = params[:key]
        type.version_id = params[:version_id]
        type.max_parts = params[:max_parts]
        type.part_number_marker = params[:part_number_marker]
        type.sse_customer_algorithm = params[:sse_customer_algorithm]
        type.sse_customer_key = params[:sse_customer_key]
        type.sse_customer_key_md5 = params[:sse_customer_key_md5]
        type.request_payer = params[:request_payer]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type.object_attributes = ObjectAttributesList.build(params[:object_attributes], context: "#{context}[:object_attributes]") unless params[:object_attributes].nil?
        type
      end
    end

    module GetObjectAttributesOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetObjectAttributesOutput, context: context)
        type = Types::GetObjectAttributesOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.delete_marker = params[:delete_marker]
        type.last_modified = params[:last_modified]
        type.version_id = params[:version_id]
        type.request_charged = params[:request_charged]
        type.e_tag = params[:e_tag]
        type.checksum = Checksum.build(params[:checksum], context: "#{context}[:checksum]") unless params[:checksum].nil?
        type.object_parts = GetObjectAttributesParts.build(params[:object_parts], context: "#{context}[:object_parts]") unless params[:object_parts].nil?
        type.storage_class = params[:storage_class]
        type.object_size = params[:object_size]
        type
      end
    end

    module GetObjectAttributesParts
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetObjectAttributesParts, context: context)
        type = Types::GetObjectAttributesParts.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.total_parts_count = params[:total_parts_count]
        type.part_number_marker = params[:part_number_marker]
        type.next_part_number_marker = params[:next_part_number_marker]
        type.max_parts = params[:max_parts]
        type.is_truncated = params[:is_truncated]
        type.parts = PartsList.build(params[:parts], context: "#{context}[:parts]") unless params[:parts].nil?
        type
      end
    end

    module GetObjectInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetObjectInput, context: context)
        type = Types::GetObjectInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.if_match = params[:if_match]
        type.if_modified_since = params[:if_modified_since]
        type.if_none_match = params[:if_none_match]
        type.if_unmodified_since = params[:if_unmodified_since]
        type.key = params[:key]
        type.range = params[:range]
        type.response_cache_control = params[:response_cache_control]
        type.response_content_disposition = params[:response_content_disposition]
        type.response_content_encoding = params[:response_content_encoding]
        type.response_content_language = params[:response_content_language]
        type.response_content_type = params[:response_content_type]
        type.response_expires = params[:response_expires]
        type.version_id = params[:version_id]
        type.sse_customer_algorithm = params[:sse_customer_algorithm]
        type.sse_customer_key = params[:sse_customer_key]
        type.sse_customer_key_md5 = params[:sse_customer_key_md5]
        type.request_payer = params[:request_payer]
        type.part_number = params[:part_number]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type.checksum_mode = params[:checksum_mode]
        type
      end
    end

    module GetObjectLegalHoldInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetObjectLegalHoldInput, context: context)
        type = Types::GetObjectLegalHoldInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.key = params[:key]
        type.version_id = params[:version_id]
        type.request_payer = params[:request_payer]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module GetObjectLegalHoldOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetObjectLegalHoldOutput, context: context)
        type = Types::GetObjectLegalHoldOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.legal_hold = ObjectLockLegalHold.build(params[:legal_hold], context: "#{context}[:legal_hold]") unless params[:legal_hold].nil?
        type
      end
    end

    module GetObjectLockConfigurationInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetObjectLockConfigurationInput, context: context)
        type = Types::GetObjectLockConfigurationInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module GetObjectLockConfigurationOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetObjectLockConfigurationOutput, context: context)
        type = Types::GetObjectLockConfigurationOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.object_lock_configuration = ObjectLockConfiguration.build(params[:object_lock_configuration], context: "#{context}[:object_lock_configuration]") unless params[:object_lock_configuration].nil?
        type
      end
    end

    module GetObjectOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetObjectOutput, context: context)
        type = Types::GetObjectOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        io = params[:body] || StringIO.new
        unless io.respond_to?(:read) || io.respond_to?(:readpartial)
          io = StringIO.new(io)
        end
        type.body = io
        type.delete_marker = params[:delete_marker]
        type.accept_ranges = params[:accept_ranges]
        type.expiration = params[:expiration]
        type.restore = params[:restore]
        type.last_modified = params[:last_modified]
        type.content_length = params[:content_length]
        type.e_tag = params[:e_tag]
        type.checksum_crc32 = params[:checksum_crc32]
        type.checksum_crc32_c = params[:checksum_crc32_c]
        type.checksum_sha1 = params[:checksum_sha1]
        type.checksum_sha256 = params[:checksum_sha256]
        type.missing_meta = params[:missing_meta]
        type.version_id = params[:version_id]
        type.cache_control = params[:cache_control]
        type.content_disposition = params[:content_disposition]
        type.content_encoding = params[:content_encoding]
        type.content_language = params[:content_language]
        type.content_range = params[:content_range]
        type.content_type = params[:content_type]
        type.expires = params[:expires]
        type.website_redirect_location = params[:website_redirect_location]
        type.server_side_encryption = params[:server_side_encryption]
        type.metadata = Metadata.build(params[:metadata], context: "#{context}[:metadata]") unless params[:metadata].nil?
        type.sse_customer_algorithm = params[:sse_customer_algorithm]
        type.sse_customer_key_md5 = params[:sse_customer_key_md5]
        type.ssekms_key_id = params[:ssekms_key_id]
        type.bucket_key_enabled = params[:bucket_key_enabled]
        type.storage_class = params[:storage_class]
        type.request_charged = params[:request_charged]
        type.replication_status = params[:replication_status]
        type.parts_count = params[:parts_count]
        type.tag_count = params[:tag_count]
        type.object_lock_mode = params[:object_lock_mode]
        type.object_lock_retain_until_date = params[:object_lock_retain_until_date]
        type.object_lock_legal_hold_status = params[:object_lock_legal_hold_status]
        type
      end
    end

    module GetObjectRetentionInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetObjectRetentionInput, context: context)
        type = Types::GetObjectRetentionInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.key = params[:key]
        type.version_id = params[:version_id]
        type.request_payer = params[:request_payer]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module GetObjectRetentionOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetObjectRetentionOutput, context: context)
        type = Types::GetObjectRetentionOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.retention = ObjectLockRetention.build(params[:retention], context: "#{context}[:retention]") unless params[:retention].nil?
        type
      end
    end

    module GetObjectTaggingInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetObjectTaggingInput, context: context)
        type = Types::GetObjectTaggingInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.key = params[:key]
        type.version_id = params[:version_id]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type.request_payer = params[:request_payer]
        type
      end
    end

    module GetObjectTaggingOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetObjectTaggingOutput, context: context)
        type = Types::GetObjectTaggingOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.version_id = params[:version_id]
        type.tag_set = TagSet.build(params[:tag_set], context: "#{context}[:tag_set]") unless params[:tag_set].nil?
        type
      end
    end

    module GetObjectTorrentInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetObjectTorrentInput, context: context)
        type = Types::GetObjectTorrentInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.key = params[:key]
        type.request_payer = params[:request_payer]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module GetObjectTorrentOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetObjectTorrentOutput, context: context)
        type = Types::GetObjectTorrentOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        io = params[:body] || StringIO.new
        unless io.respond_to?(:read) || io.respond_to?(:readpartial)
          io = StringIO.new(io)
        end
        type.body = io
        type.request_charged = params[:request_charged]
        type
      end
    end

    module GetPublicAccessBlockInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetPublicAccessBlockInput, context: context)
        type = Types::GetPublicAccessBlockInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module GetPublicAccessBlockOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetPublicAccessBlockOutput, context: context)
        type = Types::GetPublicAccessBlockOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.public_access_block_configuration = PublicAccessBlockConfiguration.build(params[:public_access_block_configuration], context: "#{context}[:public_access_block_configuration]") unless params[:public_access_block_configuration].nil?
        type
      end
    end

    module GlacierJobParameters
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GlacierJobParameters, context: context)
        type = Types::GlacierJobParameters.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.tier = params[:tier]
        type
      end
    end

    module Grant
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Grant, context: context)
        type = Types::Grant.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.grantee = Grantee.build(params[:grantee], context: "#{context}[:grantee]") unless params[:grantee].nil?
        type.permission = params[:permission]
        type
      end
    end

    module Grantee
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Grantee, context: context)
        type = Types::Grantee.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.display_name = params[:display_name]
        type.email_address = params[:email_address]
        type.id = params[:id]
        type.uri = params[:uri]
        type.type = params[:type]
        type
      end
    end

    module Grants
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Grant.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module HeadBucketInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::HeadBucketInput, context: context)
        type = Types::HeadBucketInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module HeadBucketOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::HeadBucketOutput, context: context)
        type = Types::HeadBucketOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket_location_type = params[:bucket_location_type]
        type.bucket_location_name = params[:bucket_location_name]
        type.bucket_region = params[:bucket_region]
        type.access_point_alias = params[:access_point_alias]
        type
      end
    end

    module HeadObjectInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::HeadObjectInput, context: context)
        type = Types::HeadObjectInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.if_match = params[:if_match]
        type.if_modified_since = params[:if_modified_since]
        type.if_none_match = params[:if_none_match]
        type.if_unmodified_since = params[:if_unmodified_since]
        type.key = params[:key]
        type.range = params[:range]
        type.version_id = params[:version_id]
        type.sse_customer_algorithm = params[:sse_customer_algorithm]
        type.sse_customer_key = params[:sse_customer_key]
        type.sse_customer_key_md5 = params[:sse_customer_key_md5]
        type.request_payer = params[:request_payer]
        type.part_number = params[:part_number]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type.checksum_mode = params[:checksum_mode]
        type
      end
    end

    module HeadObjectOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::HeadObjectOutput, context: context)
        type = Types::HeadObjectOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.delete_marker = params[:delete_marker]
        type.accept_ranges = params[:accept_ranges]
        type.expiration = params[:expiration]
        type.restore = params[:restore]
        type.archive_status = params[:archive_status]
        type.last_modified = params[:last_modified]
        type.content_length = params[:content_length]
        type.checksum_crc32 = params[:checksum_crc32]
        type.checksum_crc32_c = params[:checksum_crc32_c]
        type.checksum_sha1 = params[:checksum_sha1]
        type.checksum_sha256 = params[:checksum_sha256]
        type.e_tag = params[:e_tag]
        type.missing_meta = params[:missing_meta]
        type.version_id = params[:version_id]
        type.cache_control = params[:cache_control]
        type.content_disposition = params[:content_disposition]
        type.content_encoding = params[:content_encoding]
        type.content_language = params[:content_language]
        type.content_type = params[:content_type]
        type.expires = params[:expires]
        type.website_redirect_location = params[:website_redirect_location]
        type.server_side_encryption = params[:server_side_encryption]
        type.metadata = Metadata.build(params[:metadata], context: "#{context}[:metadata]") unless params[:metadata].nil?
        type.sse_customer_algorithm = params[:sse_customer_algorithm]
        type.sse_customer_key_md5 = params[:sse_customer_key_md5]
        type.ssekms_key_id = params[:ssekms_key_id]
        type.bucket_key_enabled = params[:bucket_key_enabled]
        type.storage_class = params[:storage_class]
        type.request_charged = params[:request_charged]
        type.replication_status = params[:replication_status]
        type.parts_count = params[:parts_count]
        type.object_lock_mode = params[:object_lock_mode]
        type.object_lock_retain_until_date = params[:object_lock_retain_until_date]
        type.object_lock_legal_hold_status = params[:object_lock_legal_hold_status]
        type
      end
    end

    module IndexDocument
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::IndexDocument, context: context)
        type = Types::IndexDocument.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.suffix = params[:suffix]
        type
      end
    end

    module Initiator
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Initiator, context: context)
        type = Types::Initiator.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.id = params[:id]
        type.display_name = params[:display_name]
        type
      end
    end

    module InputSerialization
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::InputSerialization, context: context)
        type = Types::InputSerialization.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.csv = CSVInput.build(params[:csv], context: "#{context}[:csv]") unless params[:csv].nil?
        type.compression_type = params[:compression_type]
        type.json = JSONInput.build(params[:json], context: "#{context}[:json]") unless params[:json].nil?
        type.parquet = ParquetInput.build(params[:parquet], context: "#{context}[:parquet]") unless params[:parquet].nil?
        type
      end
    end

    module IntelligentTieringAndOperator
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::IntelligentTieringAndOperator, context: context)
        type = Types::IntelligentTieringAndOperator.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.prefix = params[:prefix]
        type.tags = TagSet.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module IntelligentTieringConfiguration
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::IntelligentTieringConfiguration, context: context)
        type = Types::IntelligentTieringConfiguration.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.id = params[:id]
        type.filter = IntelligentTieringFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.status = params[:status]
        type.tierings = TieringList.build(params[:tierings], context: "#{context}[:tierings]") unless params[:tierings].nil?
        type
      end
    end

    module IntelligentTieringConfigurationList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << IntelligentTieringConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module IntelligentTieringFilter
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::IntelligentTieringFilter, context: context)
        type = Types::IntelligentTieringFilter.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.prefix = params[:prefix]
        type.tag = Tag.build(params[:tag], context: "#{context}[:tag]") unless params[:tag].nil?
        type.and = IntelligentTieringAndOperator.build(params[:and], context: "#{context}[:and]") unless params[:and].nil?
        type
      end
    end

    module InvalidObjectState
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::InvalidObjectState, context: context)
        type = Types::InvalidObjectState.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.storage_class = params[:storage_class]
        type.access_tier = params[:access_tier]
        type
      end
    end

    module InventoryConfiguration
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::InventoryConfiguration, context: context)
        type = Types::InventoryConfiguration.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.destination = InventoryDestination.build(params[:destination], context: "#{context}[:destination]") unless params[:destination].nil?
        type.is_enabled = params[:is_enabled]
        type.filter = InventoryFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.id = params[:id]
        type.included_object_versions = params[:included_object_versions]
        type.optional_fields = InventoryOptionalFields.build(params[:optional_fields], context: "#{context}[:optional_fields]") unless params[:optional_fields].nil?
        type.schedule = InventorySchedule.build(params[:schedule], context: "#{context}[:schedule]") unless params[:schedule].nil?
        type
      end
    end

    module InventoryConfigurationList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InventoryConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InventoryDestination
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::InventoryDestination, context: context)
        type = Types::InventoryDestination.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.s3_bucket_destination = InventoryS3BucketDestination.build(params[:s3_bucket_destination], context: "#{context}[:s3_bucket_destination]") unless params[:s3_bucket_destination].nil?
        type
      end
    end

    module InventoryEncryption
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::InventoryEncryption, context: context)
        type = Types::InventoryEncryption.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.sses3 = SSES3.build(params[:sses3], context: "#{context}[:sses3]") unless params[:sses3].nil?
        type.ssekms = SSEKMS.build(params[:ssekms], context: "#{context}[:ssekms]") unless params[:ssekms].nil?
        type
      end
    end

    module InventoryFilter
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::InventoryFilter, context: context)
        type = Types::InventoryFilter.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.prefix = params[:prefix]
        type
      end
    end

    module InventoryOptionalFields
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module InventoryS3BucketDestination
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::InventoryS3BucketDestination, context: context)
        type = Types::InventoryS3BucketDestination.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.account_id = params[:account_id]
        type.bucket = params[:bucket]
        type.format = params[:format]
        type.prefix = params[:prefix]
        type.encryption = InventoryEncryption.build(params[:encryption], context: "#{context}[:encryption]") unless params[:encryption].nil?
        type
      end
    end

    module InventorySchedule
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::InventorySchedule, context: context)
        type = Types::InventorySchedule.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.frequency = params[:frequency]
        type
      end
    end

    module JSONInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::JSONInput, context: context)
        type = Types::JSONInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.type = params[:type]
        type
      end
    end

    module JSONOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::JSONOutput, context: context)
        type = Types::JSONOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.record_delimiter = params[:record_delimiter]
        type
      end
    end

    module LambdaFunctionConfiguration
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::LambdaFunctionConfiguration, context: context)
        type = Types::LambdaFunctionConfiguration.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.id = params[:id]
        type.lambda_function_arn = params[:lambda_function_arn]
        type.events = EventList.build(params[:events], context: "#{context}[:events]") unless params[:events].nil?
        type.filter = NotificationConfigurationFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type
      end
    end

    module LambdaFunctionConfigurationList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LambdaFunctionConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LifecycleExpiration
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::LifecycleExpiration, context: context)
        type = Types::LifecycleExpiration.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.date = params[:date]
        type.days = params[:days]
        type.expired_object_delete_marker = params[:expired_object_delete_marker]
        type
      end
    end

    module LifecycleRule
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::LifecycleRule, context: context)
        type = Types::LifecycleRule.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.expiration = LifecycleExpiration.build(params[:expiration], context: "#{context}[:expiration]") unless params[:expiration].nil?
        type.id = params[:id]
        type.prefix = params[:prefix]
        type.filter = LifecycleRuleFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.status = params[:status]
        type.transitions = TransitionList.build(params[:transitions], context: "#{context}[:transitions]") unless params[:transitions].nil?
        type.noncurrent_version_transitions = NoncurrentVersionTransitionList.build(params[:noncurrent_version_transitions], context: "#{context}[:noncurrent_version_transitions]") unless params[:noncurrent_version_transitions].nil?
        type.noncurrent_version_expiration = NoncurrentVersionExpiration.build(params[:noncurrent_version_expiration], context: "#{context}[:noncurrent_version_expiration]") unless params[:noncurrent_version_expiration].nil?
        type.abort_incomplete_multipart_upload = AbortIncompleteMultipartUpload.build(params[:abort_incomplete_multipart_upload], context: "#{context}[:abort_incomplete_multipart_upload]") unless params[:abort_incomplete_multipart_upload].nil?
        type
      end
    end

    module LifecycleRuleAndOperator
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::LifecycleRuleAndOperator, context: context)
        type = Types::LifecycleRuleAndOperator.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.prefix = params[:prefix]
        type.tags = TagSet.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.object_size_greater_than = params[:object_size_greater_than]
        type.object_size_less_than = params[:object_size_less_than]
        type
      end
    end

    module LifecycleRuleFilter
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

    module LifecycleRules
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LifecycleRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListBucketAnalyticsConfigurationsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListBucketAnalyticsConfigurationsInput, context: context)
        type = Types::ListBucketAnalyticsConfigurationsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.continuation_token = params[:continuation_token]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module ListBucketAnalyticsConfigurationsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListBucketAnalyticsConfigurationsOutput, context: context)
        type = Types::ListBucketAnalyticsConfigurationsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.is_truncated = params[:is_truncated]
        type.continuation_token = params[:continuation_token]
        type.next_continuation_token = params[:next_continuation_token]
        type.analytics_configuration_list = AnalyticsConfigurationList.build(params[:analytics_configuration_list], context: "#{context}[:analytics_configuration_list]") unless params[:analytics_configuration_list].nil?
        type
      end
    end

    module ListBucketIntelligentTieringConfigurationsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListBucketIntelligentTieringConfigurationsInput, context: context)
        type = Types::ListBucketIntelligentTieringConfigurationsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.continuation_token = params[:continuation_token]
        type
      end
    end

    module ListBucketIntelligentTieringConfigurationsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListBucketIntelligentTieringConfigurationsOutput, context: context)
        type = Types::ListBucketIntelligentTieringConfigurationsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.is_truncated = params[:is_truncated]
        type.continuation_token = params[:continuation_token]
        type.next_continuation_token = params[:next_continuation_token]
        type.intelligent_tiering_configuration_list = IntelligentTieringConfigurationList.build(params[:intelligent_tiering_configuration_list], context: "#{context}[:intelligent_tiering_configuration_list]") unless params[:intelligent_tiering_configuration_list].nil?
        type
      end
    end

    module ListBucketInventoryConfigurationsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListBucketInventoryConfigurationsInput, context: context)
        type = Types::ListBucketInventoryConfigurationsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.continuation_token = params[:continuation_token]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module ListBucketInventoryConfigurationsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListBucketInventoryConfigurationsOutput, context: context)
        type = Types::ListBucketInventoryConfigurationsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.continuation_token = params[:continuation_token]
        type.inventory_configuration_list = InventoryConfigurationList.build(params[:inventory_configuration_list], context: "#{context}[:inventory_configuration_list]") unless params[:inventory_configuration_list].nil?
        type.is_truncated = params[:is_truncated]
        type.next_continuation_token = params[:next_continuation_token]
        type
      end
    end

    module ListBucketMetricsConfigurationsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListBucketMetricsConfigurationsInput, context: context)
        type = Types::ListBucketMetricsConfigurationsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.continuation_token = params[:continuation_token]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module ListBucketMetricsConfigurationsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListBucketMetricsConfigurationsOutput, context: context)
        type = Types::ListBucketMetricsConfigurationsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.is_truncated = params[:is_truncated]
        type.continuation_token = params[:continuation_token]
        type.next_continuation_token = params[:next_continuation_token]
        type.metrics_configuration_list = MetricsConfigurationList.build(params[:metrics_configuration_list], context: "#{context}[:metrics_configuration_list]") unless params[:metrics_configuration_list].nil?
        type
      end
    end

    module ListBucketsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListBucketsInput, context: context)
        type = Types::ListBucketsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    module ListBucketsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListBucketsOutput, context: context)
        type = Types::ListBucketsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.buckets = Buckets.build(params[:buckets], context: "#{context}[:buckets]") unless params[:buckets].nil?
        type.owner = Owner.build(params[:owner], context: "#{context}[:owner]") unless params[:owner].nil?
        type
      end
    end

    module ListDirectoryBucketsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListDirectoryBucketsInput, context: context)
        type = Types::ListDirectoryBucketsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.continuation_token = params[:continuation_token]
        type.max_directory_buckets = params[:max_directory_buckets]
        type
      end
    end

    module ListDirectoryBucketsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListDirectoryBucketsOutput, context: context)
        type = Types::ListDirectoryBucketsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.buckets = Buckets.build(params[:buckets], context: "#{context}[:buckets]") unless params[:buckets].nil?
        type.continuation_token = params[:continuation_token]
        type
      end
    end

    module ListMultipartUploadsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListMultipartUploadsInput, context: context)
        type = Types::ListMultipartUploadsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.delimiter = params[:delimiter]
        type.encoding_type = params[:encoding_type]
        type.key_marker = params[:key_marker]
        type.max_uploads = params[:max_uploads]
        type.prefix = params[:prefix]
        type.upload_id_marker = params[:upload_id_marker]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type.request_payer = params[:request_payer]
        type
      end
    end

    module ListMultipartUploadsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListMultipartUploadsOutput, context: context)
        type = Types::ListMultipartUploadsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.key_marker = params[:key_marker]
        type.upload_id_marker = params[:upload_id_marker]
        type.next_key_marker = params[:next_key_marker]
        type.prefix = params[:prefix]
        type.delimiter = params[:delimiter]
        type.next_upload_id_marker = params[:next_upload_id_marker]
        type.max_uploads = params[:max_uploads]
        type.is_truncated = params[:is_truncated]
        type.uploads = MultipartUploadList.build(params[:uploads], context: "#{context}[:uploads]") unless params[:uploads].nil?
        type.common_prefixes = CommonPrefixList.build(params[:common_prefixes], context: "#{context}[:common_prefixes]") unless params[:common_prefixes].nil?
        type.encoding_type = params[:encoding_type]
        type.request_charged = params[:request_charged]
        type
      end
    end

    module ListObjectVersionsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListObjectVersionsInput, context: context)
        type = Types::ListObjectVersionsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.delimiter = params[:delimiter]
        type.encoding_type = params[:encoding_type]
        type.key_marker = params[:key_marker]
        type.max_keys = params[:max_keys]
        type.prefix = params[:prefix]
        type.version_id_marker = params[:version_id_marker]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type.request_payer = params[:request_payer]
        type.optional_object_attributes = OptionalObjectAttributesList.build(params[:optional_object_attributes], context: "#{context}[:optional_object_attributes]") unless params[:optional_object_attributes].nil?
        type
      end
    end

    module ListObjectVersionsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListObjectVersionsOutput, context: context)
        type = Types::ListObjectVersionsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.is_truncated = params[:is_truncated]
        type.key_marker = params[:key_marker]
        type.version_id_marker = params[:version_id_marker]
        type.next_key_marker = params[:next_key_marker]
        type.next_version_id_marker = params[:next_version_id_marker]
        type.versions = ObjectVersionList.build(params[:versions], context: "#{context}[:versions]") unless params[:versions].nil?
        type.delete_markers = DeleteMarkers.build(params[:delete_markers], context: "#{context}[:delete_markers]") unless params[:delete_markers].nil?
        type.name = params[:name]
        type.prefix = params[:prefix]
        type.delimiter = params[:delimiter]
        type.max_keys = params[:max_keys]
        type.common_prefixes = CommonPrefixList.build(params[:common_prefixes], context: "#{context}[:common_prefixes]") unless params[:common_prefixes].nil?
        type.encoding_type = params[:encoding_type]
        type.request_charged = params[:request_charged]
        type
      end
    end

    module ListObjectsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListObjectsInput, context: context)
        type = Types::ListObjectsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.delimiter = params[:delimiter]
        type.encoding_type = params[:encoding_type]
        type.marker = params[:marker]
        type.max_keys = params[:max_keys]
        type.prefix = params[:prefix]
        type.request_payer = params[:request_payer]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type.optional_object_attributes = OptionalObjectAttributesList.build(params[:optional_object_attributes], context: "#{context}[:optional_object_attributes]") unless params[:optional_object_attributes].nil?
        type
      end
    end

    module ListObjectsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListObjectsOutput, context: context)
        type = Types::ListObjectsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.is_truncated = params[:is_truncated]
        type.marker = params[:marker]
        type.next_marker = params[:next_marker]
        type.contents = ObjectList.build(params[:contents], context: "#{context}[:contents]") unless params[:contents].nil?
        type.name = params[:name]
        type.prefix = params[:prefix]
        type.delimiter = params[:delimiter]
        type.max_keys = params[:max_keys]
        type.common_prefixes = CommonPrefixList.build(params[:common_prefixes], context: "#{context}[:common_prefixes]") unless params[:common_prefixes].nil?
        type.encoding_type = params[:encoding_type]
        type.request_charged = params[:request_charged]
        type
      end
    end

    module ListObjectsV2Input
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListObjectsV2Input, context: context)
        type = Types::ListObjectsV2Input.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.delimiter = params[:delimiter]
        type.encoding_type = params[:encoding_type]
        type.max_keys = params[:max_keys]
        type.prefix = params[:prefix]
        type.continuation_token = params[:continuation_token]
        type.fetch_owner = params[:fetch_owner]
        type.start_after = params[:start_after]
        type.request_payer = params[:request_payer]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type.optional_object_attributes = OptionalObjectAttributesList.build(params[:optional_object_attributes], context: "#{context}[:optional_object_attributes]") unless params[:optional_object_attributes].nil?
        type
      end
    end

    module ListObjectsV2Output
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListObjectsV2Output, context: context)
        type = Types::ListObjectsV2Output.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.is_truncated = params[:is_truncated]
        type.contents = ObjectList.build(params[:contents], context: "#{context}[:contents]") unless params[:contents].nil?
        type.name = params[:name]
        type.prefix = params[:prefix]
        type.delimiter = params[:delimiter]
        type.max_keys = params[:max_keys]
        type.common_prefixes = CommonPrefixList.build(params[:common_prefixes], context: "#{context}[:common_prefixes]") unless params[:common_prefixes].nil?
        type.encoding_type = params[:encoding_type]
        type.key_count = params[:key_count]
        type.continuation_token = params[:continuation_token]
        type.next_continuation_token = params[:next_continuation_token]
        type.start_after = params[:start_after]
        type.request_charged = params[:request_charged]
        type
      end
    end

    module ListPartsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListPartsInput, context: context)
        type = Types::ListPartsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.key = params[:key]
        type.max_parts = params[:max_parts]
        type.part_number_marker = params[:part_number_marker]
        type.upload_id = params[:upload_id]
        type.request_payer = params[:request_payer]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type.sse_customer_algorithm = params[:sse_customer_algorithm]
        type.sse_customer_key = params[:sse_customer_key]
        type.sse_customer_key_md5 = params[:sse_customer_key_md5]
        type
      end
    end

    module ListPartsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListPartsOutput, context: context)
        type = Types::ListPartsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.abort_date = params[:abort_date]
        type.abort_rule_id = params[:abort_rule_id]
        type.bucket = params[:bucket]
        type.key = params[:key]
        type.upload_id = params[:upload_id]
        type.part_number_marker = params[:part_number_marker]
        type.next_part_number_marker = params[:next_part_number_marker]
        type.max_parts = params[:max_parts]
        type.is_truncated = params[:is_truncated]
        type.parts = Parts.build(params[:parts], context: "#{context}[:parts]") unless params[:parts].nil?
        type.initiator = Initiator.build(params[:initiator], context: "#{context}[:initiator]") unless params[:initiator].nil?
        type.owner = Owner.build(params[:owner], context: "#{context}[:owner]") unless params[:owner].nil?
        type.storage_class = params[:storage_class]
        type.request_charged = params[:request_charged]
        type.checksum_algorithm = params[:checksum_algorithm]
        type
      end
    end

    module LocationInfo
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::LocationInfo, context: context)
        type = Types::LocationInfo.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.type = params[:type]
        type.name = params[:name]
        type
      end
    end

    module LoggingEnabled
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::LoggingEnabled, context: context)
        type = Types::LoggingEnabled.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.target_bucket = params[:target_bucket]
        type.target_grants = TargetGrants.build(params[:target_grants], context: "#{context}[:target_grants]") unless params[:target_grants].nil?
        type.target_prefix = params[:target_prefix]
        type.target_object_key_format = TargetObjectKeyFormat.build(params[:target_object_key_format], context: "#{context}[:target_object_key_format]") unless params[:target_object_key_format].nil?
        type
      end
    end

    module Metadata
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module MetadataEntry
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::MetadataEntry, context: context)
        type = Types::MetadataEntry.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module Metrics
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Metrics, context: context)
        type = Types::Metrics.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.status = params[:status]
        type.event_threshold = ReplicationTimeValue.build(params[:event_threshold], context: "#{context}[:event_threshold]") unless params[:event_threshold].nil?
        type
      end
    end

    module MetricsAndOperator
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::MetricsAndOperator, context: context)
        type = Types::MetricsAndOperator.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.prefix = params[:prefix]
        type.tags = TagSet.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.access_point_arn = params[:access_point_arn]
        type
      end
    end

    module MetricsConfiguration
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::MetricsConfiguration, context: context)
        type = Types::MetricsConfiguration.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.id = params[:id]
        type.filter = MetricsFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type
      end
    end

    module MetricsConfigurationList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MetricsConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MetricsFilter
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

    module MultipartUpload
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::MultipartUpload, context: context)
        type = Types::MultipartUpload.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.upload_id = params[:upload_id]
        type.key = params[:key]
        type.initiated = params[:initiated]
        type.storage_class = params[:storage_class]
        type.owner = Owner.build(params[:owner], context: "#{context}[:owner]") unless params[:owner].nil?
        type.initiator = Initiator.build(params[:initiator], context: "#{context}[:initiator]") unless params[:initiator].nil?
        type.checksum_algorithm = params[:checksum_algorithm]
        type
      end
    end

    module MultipartUploadList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MultipartUpload.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NoSuchBucket
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::NoSuchBucket, context: context)
        type = Types::NoSuchBucket.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    module NoSuchKey
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::NoSuchKey, context: context)
        type = Types::NoSuchKey.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    module NoSuchUpload
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::NoSuchUpload, context: context)
        type = Types::NoSuchUpload.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    module NoncurrentVersionExpiration
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::NoncurrentVersionExpiration, context: context)
        type = Types::NoncurrentVersionExpiration.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.noncurrent_days = params[:noncurrent_days]
        type.newer_noncurrent_versions = params[:newer_noncurrent_versions]
        type
      end
    end

    module NoncurrentVersionTransition
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::NoncurrentVersionTransition, context: context)
        type = Types::NoncurrentVersionTransition.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.noncurrent_days = params[:noncurrent_days]
        type.storage_class = params[:storage_class]
        type.newer_noncurrent_versions = params[:newer_noncurrent_versions]
        type
      end
    end

    module NoncurrentVersionTransitionList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NoncurrentVersionTransition.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NotFound
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::NotFound, context: context)
        type = Types::NotFound.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    module NotificationConfiguration
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

    module NotificationConfigurationFilter
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::NotificationConfigurationFilter, context: context)
        type = Types::NotificationConfigurationFilter.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key = S3KeyFilter.build(params[:key], context: "#{context}[:key]") unless params[:key].nil?
        type
      end
    end

    module Object
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Object, context: context)
        type = Types::Object.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key = params[:key]
        type.last_modified = params[:last_modified]
        type.e_tag = params[:e_tag]
        type.checksum_algorithm = ChecksumAlgorithmList.build(params[:checksum_algorithm], context: "#{context}[:checksum_algorithm]") unless params[:checksum_algorithm].nil?
        type.size = params[:size]
        type.storage_class = params[:storage_class]
        type.owner = Owner.build(params[:owner], context: "#{context}[:owner]") unless params[:owner].nil?
        type.restore_status = RestoreStatus.build(params[:restore_status], context: "#{context}[:restore_status]") unless params[:restore_status].nil?
        type
      end
    end

    module ObjectAlreadyInActiveTierError
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ObjectAlreadyInActiveTierError, context: context)
        type = Types::ObjectAlreadyInActiveTierError.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    module ObjectAttributesList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ObjectIdentifier
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ObjectIdentifier, context: context)
        type = Types::ObjectIdentifier.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key = params[:key]
        type.version_id = params[:version_id]
        type
      end
    end

    module ObjectIdentifierList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ObjectIdentifier.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ObjectList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Object.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ObjectLockConfiguration
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ObjectLockConfiguration, context: context)
        type = Types::ObjectLockConfiguration.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.object_lock_enabled = params[:object_lock_enabled]
        type.rule = ObjectLockRule.build(params[:rule], context: "#{context}[:rule]") unless params[:rule].nil?
        type
      end
    end

    module ObjectLockLegalHold
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ObjectLockLegalHold, context: context)
        type = Types::ObjectLockLegalHold.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.status = params[:status]
        type
      end
    end

    module ObjectLockRetention
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ObjectLockRetention, context: context)
        type = Types::ObjectLockRetention.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.mode = params[:mode]
        type.retain_until_date = params[:retain_until_date]
        type
      end
    end

    module ObjectLockRule
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ObjectLockRule, context: context)
        type = Types::ObjectLockRule.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.default_retention = DefaultRetention.build(params[:default_retention], context: "#{context}[:default_retention]") unless params[:default_retention].nil?
        type
      end
    end

    module ObjectNotInActiveTierError
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ObjectNotInActiveTierError, context: context)
        type = Types::ObjectNotInActiveTierError.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    module ObjectPart
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ObjectPart, context: context)
        type = Types::ObjectPart.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.part_number = params[:part_number]
        type.size = params[:size]
        type.checksum_crc32 = params[:checksum_crc32]
        type.checksum_crc32_c = params[:checksum_crc32_c]
        type.checksum_sha1 = params[:checksum_sha1]
        type.checksum_sha256 = params[:checksum_sha256]
        type
      end
    end

    module ObjectVersion
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ObjectVersion, context: context)
        type = Types::ObjectVersion.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.e_tag = params[:e_tag]
        type.checksum_algorithm = ChecksumAlgorithmList.build(params[:checksum_algorithm], context: "#{context}[:checksum_algorithm]") unless params[:checksum_algorithm].nil?
        type.size = params[:size]
        type.storage_class = params[:storage_class]
        type.key = params[:key]
        type.version_id = params[:version_id]
        type.is_latest = params[:is_latest]
        type.last_modified = params[:last_modified]
        type.owner = Owner.build(params[:owner], context: "#{context}[:owner]") unless params[:owner].nil?
        type.restore_status = RestoreStatus.build(params[:restore_status], context: "#{context}[:restore_status]") unless params[:restore_status].nil?
        type
      end
    end

    module ObjectVersionList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ObjectVersion.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OptionalObjectAttributesList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module OutputLocation
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::OutputLocation, context: context)
        type = Types::OutputLocation.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.s3 = S3Location.build(params[:s3], context: "#{context}[:s3]") unless params[:s3].nil?
        type
      end
    end

    module OutputSerialization
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::OutputSerialization, context: context)
        type = Types::OutputSerialization.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.csv = CSVOutput.build(params[:csv], context: "#{context}[:csv]") unless params[:csv].nil?
        type.json = JSONOutput.build(params[:json], context: "#{context}[:json]") unless params[:json].nil?
        type
      end
    end

    module Owner
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Owner, context: context)
        type = Types::Owner.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.display_name = params[:display_name]
        type.id = params[:id]
        type
      end
    end

    module OwnershipControls
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::OwnershipControls, context: context)
        type = Types::OwnershipControls.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.rules = OwnershipControlsRules.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type
      end
    end

    module OwnershipControlsRule
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::OwnershipControlsRule, context: context)
        type = Types::OwnershipControlsRule.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.object_ownership = params[:object_ownership]
        type
      end
    end

    module OwnershipControlsRules
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OwnershipControlsRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ParquetInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ParquetInput, context: context)
        type = Types::ParquetInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    module Part
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Part, context: context)
        type = Types::Part.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.part_number = params[:part_number]
        type.last_modified = params[:last_modified]
        type.e_tag = params[:e_tag]
        type.size = params[:size]
        type.checksum_crc32 = params[:checksum_crc32]
        type.checksum_crc32_c = params[:checksum_crc32_c]
        type.checksum_sha1 = params[:checksum_sha1]
        type.checksum_sha256 = params[:checksum_sha256]
        type
      end
    end

    module PartitionedPrefix
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PartitionedPrefix, context: context)
        type = Types::PartitionedPrefix.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.partition_date_source = params[:partition_date_source]
        type
      end
    end

    module Parts
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Part.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PartsList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ObjectPart.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PolicyStatus
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PolicyStatus, context: context)
        type = Types::PolicyStatus.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.is_public = params[:is_public]
        type
      end
    end

    module Progress
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Progress, context: context)
        type = Types::Progress.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bytes_scanned = params[:bytes_scanned]
        type.bytes_processed = params[:bytes_processed]
        type.bytes_returned = params[:bytes_returned]
        type
      end
    end

    module ProgressEvent
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ProgressEvent, context: context)
        type = Types::ProgressEvent.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.details = Progress.build(params[:details], context: "#{context}[:details]") unless params[:details].nil?
        type
      end
    end

    module PublicAccessBlockConfiguration
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PublicAccessBlockConfiguration, context: context)
        type = Types::PublicAccessBlockConfiguration.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.block_public_acls = params[:block_public_acls]
        type.ignore_public_acls = params[:ignore_public_acls]
        type.block_public_policy = params[:block_public_policy]
        type.restrict_public_buckets = params[:restrict_public_buckets]
        type
      end
    end

    module PutBucketAccelerateConfigurationInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketAccelerateConfigurationInput, context: context)
        type = Types::PutBucketAccelerateConfigurationInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.accelerate_configuration = AccelerateConfiguration.build(params[:accelerate_configuration], context: "#{context}[:accelerate_configuration]") unless params[:accelerate_configuration].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type.checksum_algorithm = params[:checksum_algorithm]
        type
      end
    end

    module PutBucketAccelerateConfigurationOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketAccelerateConfigurationOutput, context: context)
        type = Types::PutBucketAccelerateConfigurationOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    module PutBucketAclInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketAclInput, context: context)
        type = Types::PutBucketAclInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.acl = params[:acl]
        type.access_control_policy = AccessControlPolicy.build(params[:access_control_policy], context: "#{context}[:access_control_policy]") unless params[:access_control_policy].nil?
        type.bucket = params[:bucket]
        type.content_md5 = params[:content_md5]
        type.checksum_algorithm = params[:checksum_algorithm]
        type.grant_full_control = params[:grant_full_control]
        type.grant_read = params[:grant_read]
        type.grant_read_acp = params[:grant_read_acp]
        type.grant_write = params[:grant_write]
        type.grant_write_acp = params[:grant_write_acp]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module PutBucketAclOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketAclOutput, context: context)
        type = Types::PutBucketAclOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    module PutBucketAnalyticsConfigurationInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketAnalyticsConfigurationInput, context: context)
        type = Types::PutBucketAnalyticsConfigurationInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.id = params[:id]
        type.analytics_configuration = AnalyticsConfiguration.build(params[:analytics_configuration], context: "#{context}[:analytics_configuration]") unless params[:analytics_configuration].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module PutBucketAnalyticsConfigurationOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketAnalyticsConfigurationOutput, context: context)
        type = Types::PutBucketAnalyticsConfigurationOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    module PutBucketCorsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketCorsInput, context: context)
        type = Types::PutBucketCorsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.cors_configuration = CORSConfiguration.build(params[:cors_configuration], context: "#{context}[:cors_configuration]") unless params[:cors_configuration].nil?
        type.content_md5 = params[:content_md5]
        type.checksum_algorithm = params[:checksum_algorithm]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module PutBucketCorsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketCorsOutput, context: context)
        type = Types::PutBucketCorsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    module PutBucketEncryptionInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketEncryptionInput, context: context)
        type = Types::PutBucketEncryptionInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.content_md5 = params[:content_md5]
        type.checksum_algorithm = params[:checksum_algorithm]
        type.server_side_encryption_configuration = ServerSideEncryptionConfiguration.build(params[:server_side_encryption_configuration], context: "#{context}[:server_side_encryption_configuration]") unless params[:server_side_encryption_configuration].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module PutBucketEncryptionOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketEncryptionOutput, context: context)
        type = Types::PutBucketEncryptionOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    module PutBucketIntelligentTieringConfigurationInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketIntelligentTieringConfigurationInput, context: context)
        type = Types::PutBucketIntelligentTieringConfigurationInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.id = params[:id]
        type.intelligent_tiering_configuration = IntelligentTieringConfiguration.build(params[:intelligent_tiering_configuration], context: "#{context}[:intelligent_tiering_configuration]") unless params[:intelligent_tiering_configuration].nil?
        type
      end
    end

    module PutBucketIntelligentTieringConfigurationOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketIntelligentTieringConfigurationOutput, context: context)
        type = Types::PutBucketIntelligentTieringConfigurationOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    module PutBucketInventoryConfigurationInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketInventoryConfigurationInput, context: context)
        type = Types::PutBucketInventoryConfigurationInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.id = params[:id]
        type.inventory_configuration = InventoryConfiguration.build(params[:inventory_configuration], context: "#{context}[:inventory_configuration]") unless params[:inventory_configuration].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module PutBucketInventoryConfigurationOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketInventoryConfigurationOutput, context: context)
        type = Types::PutBucketInventoryConfigurationOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    module PutBucketLifecycleConfigurationInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketLifecycleConfigurationInput, context: context)
        type = Types::PutBucketLifecycleConfigurationInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.checksum_algorithm = params[:checksum_algorithm]
        type.lifecycle_configuration = BucketLifecycleConfiguration.build(params[:lifecycle_configuration], context: "#{context}[:lifecycle_configuration]") unless params[:lifecycle_configuration].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module PutBucketLifecycleConfigurationOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketLifecycleConfigurationOutput, context: context)
        type = Types::PutBucketLifecycleConfigurationOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    module PutBucketLoggingInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketLoggingInput, context: context)
        type = Types::PutBucketLoggingInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.bucket_logging_status = BucketLoggingStatus.build(params[:bucket_logging_status], context: "#{context}[:bucket_logging_status]") unless params[:bucket_logging_status].nil?
        type.content_md5 = params[:content_md5]
        type.checksum_algorithm = params[:checksum_algorithm]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module PutBucketLoggingOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketLoggingOutput, context: context)
        type = Types::PutBucketLoggingOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    module PutBucketMetricsConfigurationInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketMetricsConfigurationInput, context: context)
        type = Types::PutBucketMetricsConfigurationInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.id = params[:id]
        type.metrics_configuration = MetricsConfiguration.build(params[:metrics_configuration], context: "#{context}[:metrics_configuration]") unless params[:metrics_configuration].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module PutBucketMetricsConfigurationOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketMetricsConfigurationOutput, context: context)
        type = Types::PutBucketMetricsConfigurationOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    module PutBucketNotificationConfigurationInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketNotificationConfigurationInput, context: context)
        type = Types::PutBucketNotificationConfigurationInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.notification_configuration = NotificationConfiguration.build(params[:notification_configuration], context: "#{context}[:notification_configuration]") unless params[:notification_configuration].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type.skip_destination_validation = params[:skip_destination_validation]
        type
      end
    end

    module PutBucketNotificationConfigurationOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketNotificationConfigurationOutput, context: context)
        type = Types::PutBucketNotificationConfigurationOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    module PutBucketOwnershipControlsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketOwnershipControlsInput, context: context)
        type = Types::PutBucketOwnershipControlsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.content_md5 = params[:content_md5]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type.ownership_controls = OwnershipControls.build(params[:ownership_controls], context: "#{context}[:ownership_controls]") unless params[:ownership_controls].nil?
        type
      end
    end

    module PutBucketOwnershipControlsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketOwnershipControlsOutput, context: context)
        type = Types::PutBucketOwnershipControlsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    module PutBucketPolicyInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketPolicyInput, context: context)
        type = Types::PutBucketPolicyInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.content_md5 = params[:content_md5]
        type.checksum_algorithm = params[:checksum_algorithm]
        type.confirm_remove_self_bucket_access = params[:confirm_remove_self_bucket_access]
        type.policy = params[:policy]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module PutBucketPolicyOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketPolicyOutput, context: context)
        type = Types::PutBucketPolicyOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    module PutBucketReplicationInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketReplicationInput, context: context)
        type = Types::PutBucketReplicationInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.content_md5 = params[:content_md5]
        type.checksum_algorithm = params[:checksum_algorithm]
        type.replication_configuration = ReplicationConfiguration.build(params[:replication_configuration], context: "#{context}[:replication_configuration]") unless params[:replication_configuration].nil?
        type.token = params[:token]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module PutBucketReplicationOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketReplicationOutput, context: context)
        type = Types::PutBucketReplicationOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    module PutBucketRequestPaymentInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketRequestPaymentInput, context: context)
        type = Types::PutBucketRequestPaymentInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.content_md5 = params[:content_md5]
        type.checksum_algorithm = params[:checksum_algorithm]
        type.request_payment_configuration = RequestPaymentConfiguration.build(params[:request_payment_configuration], context: "#{context}[:request_payment_configuration]") unless params[:request_payment_configuration].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module PutBucketRequestPaymentOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketRequestPaymentOutput, context: context)
        type = Types::PutBucketRequestPaymentOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    module PutBucketTaggingInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketTaggingInput, context: context)
        type = Types::PutBucketTaggingInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.content_md5 = params[:content_md5]
        type.checksum_algorithm = params[:checksum_algorithm]
        type.tagging = Tagging.build(params[:tagging], context: "#{context}[:tagging]") unless params[:tagging].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module PutBucketTaggingOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketTaggingOutput, context: context)
        type = Types::PutBucketTaggingOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    module PutBucketVersioningInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketVersioningInput, context: context)
        type = Types::PutBucketVersioningInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.content_md5 = params[:content_md5]
        type.checksum_algorithm = params[:checksum_algorithm]
        type.mfa = params[:mfa]
        type.versioning_configuration = VersioningConfiguration.build(params[:versioning_configuration], context: "#{context}[:versioning_configuration]") unless params[:versioning_configuration].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module PutBucketVersioningOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketVersioningOutput, context: context)
        type = Types::PutBucketVersioningOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    module PutBucketWebsiteInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketWebsiteInput, context: context)
        type = Types::PutBucketWebsiteInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.content_md5 = params[:content_md5]
        type.checksum_algorithm = params[:checksum_algorithm]
        type.website_configuration = WebsiteConfiguration.build(params[:website_configuration], context: "#{context}[:website_configuration]") unless params[:website_configuration].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module PutBucketWebsiteOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutBucketWebsiteOutput, context: context)
        type = Types::PutBucketWebsiteOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    module PutObjectAclInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutObjectAclInput, context: context)
        type = Types::PutObjectAclInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.acl = params[:acl]
        type.access_control_policy = AccessControlPolicy.build(params[:access_control_policy], context: "#{context}[:access_control_policy]") unless params[:access_control_policy].nil?
        type.bucket = params[:bucket]
        type.content_md5 = params[:content_md5]
        type.checksum_algorithm = params[:checksum_algorithm]
        type.grant_full_control = params[:grant_full_control]
        type.grant_read = params[:grant_read]
        type.grant_read_acp = params[:grant_read_acp]
        type.grant_write = params[:grant_write]
        type.grant_write_acp = params[:grant_write_acp]
        type.key = params[:key]
        type.request_payer = params[:request_payer]
        type.version_id = params[:version_id]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module PutObjectAclOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutObjectAclOutput, context: context)
        type = Types::PutObjectAclOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.request_charged = params[:request_charged]
        type
      end
    end

    module PutObjectInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutObjectInput, context: context)
        type = Types::PutObjectInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.acl = params[:acl]
        io = params[:body] || StringIO.new
        unless io.respond_to?(:read) || io.respond_to?(:readpartial)
          io = StringIO.new(io)
        end
        type.body = io
        type.bucket = params[:bucket]
        type.cache_control = params[:cache_control]
        type.content_disposition = params[:content_disposition]
        type.content_encoding = params[:content_encoding]
        type.content_language = params[:content_language]
        type.content_length = params[:content_length]
        type.content_md5 = params[:content_md5]
        type.content_type = params[:content_type]
        type.checksum_algorithm = params[:checksum_algorithm]
        type.checksum_crc32 = params[:checksum_crc32]
        type.checksum_crc32_c = params[:checksum_crc32_c]
        type.checksum_sha1 = params[:checksum_sha1]
        type.checksum_sha256 = params[:checksum_sha256]
        type.expires = params[:expires]
        type.grant_full_control = params[:grant_full_control]
        type.grant_read = params[:grant_read]
        type.grant_read_acp = params[:grant_read_acp]
        type.grant_write_acp = params[:grant_write_acp]
        type.key = params[:key]
        type.metadata = Metadata.build(params[:metadata], context: "#{context}[:metadata]") unless params[:metadata].nil?
        type.server_side_encryption = params[:server_side_encryption]
        type.storage_class = params[:storage_class]
        type.website_redirect_location = params[:website_redirect_location]
        type.sse_customer_algorithm = params[:sse_customer_algorithm]
        type.sse_customer_key = params[:sse_customer_key]
        type.sse_customer_key_md5 = params[:sse_customer_key_md5]
        type.ssekms_key_id = params[:ssekms_key_id]
        type.ssekms_encryption_context = params[:ssekms_encryption_context]
        type.bucket_key_enabled = params[:bucket_key_enabled]
        type.request_payer = params[:request_payer]
        type.tagging = params[:tagging]
        type.object_lock_mode = params[:object_lock_mode]
        type.object_lock_retain_until_date = params[:object_lock_retain_until_date]
        type.object_lock_legal_hold_status = params[:object_lock_legal_hold_status]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module PutObjectLegalHoldInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutObjectLegalHoldInput, context: context)
        type = Types::PutObjectLegalHoldInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.key = params[:key]
        type.legal_hold = ObjectLockLegalHold.build(params[:legal_hold], context: "#{context}[:legal_hold]") unless params[:legal_hold].nil?
        type.request_payer = params[:request_payer]
        type.version_id = params[:version_id]
        type.content_md5 = params[:content_md5]
        type.checksum_algorithm = params[:checksum_algorithm]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module PutObjectLegalHoldOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutObjectLegalHoldOutput, context: context)
        type = Types::PutObjectLegalHoldOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.request_charged = params[:request_charged]
        type
      end
    end

    module PutObjectLockConfigurationInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutObjectLockConfigurationInput, context: context)
        type = Types::PutObjectLockConfigurationInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.object_lock_configuration = ObjectLockConfiguration.build(params[:object_lock_configuration], context: "#{context}[:object_lock_configuration]") unless params[:object_lock_configuration].nil?
        type.request_payer = params[:request_payer]
        type.token = params[:token]
        type.content_md5 = params[:content_md5]
        type.checksum_algorithm = params[:checksum_algorithm]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module PutObjectLockConfigurationOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutObjectLockConfigurationOutput, context: context)
        type = Types::PutObjectLockConfigurationOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.request_charged = params[:request_charged]
        type
      end
    end

    module PutObjectOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutObjectOutput, context: context)
        type = Types::PutObjectOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.expiration = params[:expiration]
        type.e_tag = params[:e_tag]
        type.checksum_crc32 = params[:checksum_crc32]
        type.checksum_crc32_c = params[:checksum_crc32_c]
        type.checksum_sha1 = params[:checksum_sha1]
        type.checksum_sha256 = params[:checksum_sha256]
        type.server_side_encryption = params[:server_side_encryption]
        type.version_id = params[:version_id]
        type.sse_customer_algorithm = params[:sse_customer_algorithm]
        type.sse_customer_key_md5 = params[:sse_customer_key_md5]
        type.ssekms_key_id = params[:ssekms_key_id]
        type.ssekms_encryption_context = params[:ssekms_encryption_context]
        type.bucket_key_enabled = params[:bucket_key_enabled]
        type.request_charged = params[:request_charged]
        type
      end
    end

    module PutObjectRetentionInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutObjectRetentionInput, context: context)
        type = Types::PutObjectRetentionInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.key = params[:key]
        type.retention = ObjectLockRetention.build(params[:retention], context: "#{context}[:retention]") unless params[:retention].nil?
        type.request_payer = params[:request_payer]
        type.version_id = params[:version_id]
        type.bypass_governance_retention = params[:bypass_governance_retention]
        type.content_md5 = params[:content_md5]
        type.checksum_algorithm = params[:checksum_algorithm]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module PutObjectRetentionOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutObjectRetentionOutput, context: context)
        type = Types::PutObjectRetentionOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.request_charged = params[:request_charged]
        type
      end
    end

    module PutObjectTaggingInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutObjectTaggingInput, context: context)
        type = Types::PutObjectTaggingInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.key = params[:key]
        type.version_id = params[:version_id]
        type.content_md5 = params[:content_md5]
        type.checksum_algorithm = params[:checksum_algorithm]
        type.tagging = Tagging.build(params[:tagging], context: "#{context}[:tagging]") unless params[:tagging].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type.request_payer = params[:request_payer]
        type
      end
    end

    module PutObjectTaggingOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutObjectTaggingOutput, context: context)
        type = Types::PutObjectTaggingOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.version_id = params[:version_id]
        type
      end
    end

    module PutPublicAccessBlockInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutPublicAccessBlockInput, context: context)
        type = Types::PutPublicAccessBlockInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.content_md5 = params[:content_md5]
        type.checksum_algorithm = params[:checksum_algorithm]
        type.public_access_block_configuration = PublicAccessBlockConfiguration.build(params[:public_access_block_configuration], context: "#{context}[:public_access_block_configuration]") unless params[:public_access_block_configuration].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module PutPublicAccessBlockOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutPublicAccessBlockOutput, context: context)
        type = Types::PutPublicAccessBlockOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    module QueueConfiguration
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::QueueConfiguration, context: context)
        type = Types::QueueConfiguration.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.id = params[:id]
        type.queue_arn = params[:queue_arn]
        type.events = EventList.build(params[:events], context: "#{context}[:events]") unless params[:events].nil?
        type.filter = NotificationConfigurationFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type
      end
    end

    module QueueConfigurationList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << QueueConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RecordsEvent
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::RecordsEvent, context: context)
        type = Types::RecordsEvent.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.payload = params[:payload]
        type
      end
    end

    module Redirect
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Redirect, context: context)
        type = Types::Redirect.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.host_name = params[:host_name]
        type.http_redirect_code = params[:http_redirect_code]
        type.protocol = params[:protocol]
        type.replace_key_prefix_with = params[:replace_key_prefix_with]
        type.replace_key_with = params[:replace_key_with]
        type
      end
    end

    module RedirectAllRequestsTo
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::RedirectAllRequestsTo, context: context)
        type = Types::RedirectAllRequestsTo.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.host_name = params[:host_name]
        type.protocol = params[:protocol]
        type
      end
    end

    module ReplicaModifications
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ReplicaModifications, context: context)
        type = Types::ReplicaModifications.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.status = params[:status]
        type
      end
    end

    module ReplicationConfiguration
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ReplicationConfiguration, context: context)
        type = Types::ReplicationConfiguration.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.role = params[:role]
        type.rules = ReplicationRules.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type
      end
    end

    module ReplicationRule
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ReplicationRule, context: context)
        type = Types::ReplicationRule.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.id = params[:id]
        type.priority = params[:priority]
        type.prefix = params[:prefix]
        type.filter = ReplicationRuleFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.status = params[:status]
        type.source_selection_criteria = SourceSelectionCriteria.build(params[:source_selection_criteria], context: "#{context}[:source_selection_criteria]") unless params[:source_selection_criteria].nil?
        type.existing_object_replication = ExistingObjectReplication.build(params[:existing_object_replication], context: "#{context}[:existing_object_replication]") unless params[:existing_object_replication].nil?
        type.destination = Destination.build(params[:destination], context: "#{context}[:destination]") unless params[:destination].nil?
        type.delete_marker_replication = DeleteMarkerReplication.build(params[:delete_marker_replication], context: "#{context}[:delete_marker_replication]") unless params[:delete_marker_replication].nil?
        type
      end
    end

    module ReplicationRuleAndOperator
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ReplicationRuleAndOperator, context: context)
        type = Types::ReplicationRuleAndOperator.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.prefix = params[:prefix]
        type.tags = TagSet.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ReplicationRuleFilter
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

    module ReplicationRules
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReplicationRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReplicationTime
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ReplicationTime, context: context)
        type = Types::ReplicationTime.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.status = params[:status]
        type.time = ReplicationTimeValue.build(params[:time], context: "#{context}[:time]") unless params[:time].nil?
        type
      end
    end

    module ReplicationTimeValue
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ReplicationTimeValue, context: context)
        type = Types::ReplicationTimeValue.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.minutes = params[:minutes]
        type
      end
    end

    module RequestPaymentConfiguration
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::RequestPaymentConfiguration, context: context)
        type = Types::RequestPaymentConfiguration.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.payer = params[:payer]
        type
      end
    end

    module RequestProgress
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::RequestProgress, context: context)
        type = Types::RequestProgress.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.enabled = params[:enabled]
        type
      end
    end

    module RestoreObjectInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::RestoreObjectInput, context: context)
        type = Types::RestoreObjectInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.key = params[:key]
        type.version_id = params[:version_id]
        type.restore_request = RestoreRequest.build(params[:restore_request], context: "#{context}[:restore_request]") unless params[:restore_request].nil?
        type.request_payer = params[:request_payer]
        type.checksum_algorithm = params[:checksum_algorithm]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module RestoreObjectOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::RestoreObjectOutput, context: context)
        type = Types::RestoreObjectOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.request_charged = params[:request_charged]
        type.restore_output_path = params[:restore_output_path]
        type
      end
    end

    module RestoreRequest
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::RestoreRequest, context: context)
        type = Types::RestoreRequest.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.days = params[:days]
        type.glacier_job_parameters = GlacierJobParameters.build(params[:glacier_job_parameters], context: "#{context}[:glacier_job_parameters]") unless params[:glacier_job_parameters].nil?
        type.type = params[:type]
        type.tier = params[:tier]
        type.description = params[:description]
        type.select_parameters = SelectParameters.build(params[:select_parameters], context: "#{context}[:select_parameters]") unless params[:select_parameters].nil?
        type.output_location = OutputLocation.build(params[:output_location], context: "#{context}[:output_location]") unless params[:output_location].nil?
        type
      end
    end

    module RestoreStatus
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::RestoreStatus, context: context)
        type = Types::RestoreStatus.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.is_restore_in_progress = params[:is_restore_in_progress]
        type.restore_expiry_date = params[:restore_expiry_date]
        type
      end
    end

    module RoutingRule
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::RoutingRule, context: context)
        type = Types::RoutingRule.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.condition = Condition.build(params[:condition], context: "#{context}[:condition]") unless params[:condition].nil?
        type.redirect = Redirect.build(params[:redirect], context: "#{context}[:redirect]") unless params[:redirect].nil?
        type
      end
    end

    module RoutingRules
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RoutingRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module S3KeyFilter
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::S3KeyFilter, context: context)
        type = Types::S3KeyFilter.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.filter_rules = FilterRuleList.build(params[:filter_rules], context: "#{context}[:filter_rules]") unless params[:filter_rules].nil?
        type
      end
    end

    module S3Location
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::S3Location, context: context)
        type = Types::S3Location.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket_name = params[:bucket_name]
        type.prefix = params[:prefix]
        type.encryption = Encryption.build(params[:encryption], context: "#{context}[:encryption]") unless params[:encryption].nil?
        type.canned_acl = params[:canned_acl]
        type.access_control_list = Grants.build(params[:access_control_list], context: "#{context}[:access_control_list]") unless params[:access_control_list].nil?
        type.tagging = Tagging.build(params[:tagging], context: "#{context}[:tagging]") unless params[:tagging].nil?
        type.user_metadata = UserMetadata.build(params[:user_metadata], context: "#{context}[:user_metadata]") unless params[:user_metadata].nil?
        type.storage_class = params[:storage_class]
        type
      end
    end

    module SSEKMS
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::SSEKMS, context: context)
        type = Types::SSEKMS.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key_id = params[:key_id]
        type
      end
    end

    module SSES3
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::SSES3, context: context)
        type = Types::SSES3.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    module ScanRange
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ScanRange, context: context)
        type = Types::ScanRange.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.start = params[:start]
        type.end = params[:end]
        type
      end
    end

    module SelectObjectContentEventStream
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

    module SelectObjectContentInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::SelectObjectContentInput, context: context)
        type = Types::SelectObjectContentInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.key = params[:key]
        type.sse_customer_algorithm = params[:sse_customer_algorithm]
        type.sse_customer_key = params[:sse_customer_key]
        type.sse_customer_key_md5 = params[:sse_customer_key_md5]
        type.expression = params[:expression]
        type.expression_type = params[:expression_type]
        type.request_progress = RequestProgress.build(params[:request_progress], context: "#{context}[:request_progress]") unless params[:request_progress].nil?
        type.input_serialization = InputSerialization.build(params[:input_serialization], context: "#{context}[:input_serialization]") unless params[:input_serialization].nil?
        type.output_serialization = OutputSerialization.build(params[:output_serialization], context: "#{context}[:output_serialization]") unless params[:output_serialization].nil?
        type.scan_range = ScanRange.build(params[:scan_range], context: "#{context}[:scan_range]") unless params[:scan_range].nil?
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module SelectObjectContentOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::SelectObjectContentOutput, context: context)
        type = Types::SelectObjectContentOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.payload = SelectObjectContentEventStream.build(params[:payload], context: "#{context}[:payload]") unless params[:payload].nil?
        type
      end
    end

    module SelectParameters
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::SelectParameters, context: context)
        type = Types::SelectParameters.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.input_serialization = InputSerialization.build(params[:input_serialization], context: "#{context}[:input_serialization]") unless params[:input_serialization].nil?
        type.expression_type = params[:expression_type]
        type.expression = params[:expression]
        type.output_serialization = OutputSerialization.build(params[:output_serialization], context: "#{context}[:output_serialization]") unless params[:output_serialization].nil?
        type
      end
    end

    module ServerSideEncryptionByDefault
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ServerSideEncryptionByDefault, context: context)
        type = Types::ServerSideEncryptionByDefault.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.sse_algorithm = params[:sse_algorithm]
        type.kms_master_key_id = params[:kms_master_key_id]
        type
      end
    end

    module ServerSideEncryptionConfiguration
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ServerSideEncryptionConfiguration, context: context)
        type = Types::ServerSideEncryptionConfiguration.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.rules = ServerSideEncryptionRules.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type
      end
    end

    module ServerSideEncryptionRule
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ServerSideEncryptionRule, context: context)
        type = Types::ServerSideEncryptionRule.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.apply_server_side_encryption_by_default = ServerSideEncryptionByDefault.build(params[:apply_server_side_encryption_by_default], context: "#{context}[:apply_server_side_encryption_by_default]") unless params[:apply_server_side_encryption_by_default].nil?
        type.bucket_key_enabled = params[:bucket_key_enabled]
        type
      end
    end

    module ServerSideEncryptionRules
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ServerSideEncryptionRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SessionCredentials
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::SessionCredentials, context: context)
        type = Types::SessionCredentials.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.access_key_id = params[:access_key_id]
        type.secret_access_key = params[:secret_access_key]
        type.session_token = params[:session_token]
        type.expiration = params[:expiration]
        type
      end
    end

    module SimplePrefix
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::SimplePrefix, context: context)
        type = Types::SimplePrefix.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    module SourceSelectionCriteria
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::SourceSelectionCriteria, context: context)
        type = Types::SourceSelectionCriteria.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.sse_kms_encrypted_objects = SseKmsEncryptedObjects.build(params[:sse_kms_encrypted_objects], context: "#{context}[:sse_kms_encrypted_objects]") unless params[:sse_kms_encrypted_objects].nil?
        type.replica_modifications = ReplicaModifications.build(params[:replica_modifications], context: "#{context}[:replica_modifications]") unless params[:replica_modifications].nil?
        type
      end
    end

    module SseKmsEncryptedObjects
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::SseKmsEncryptedObjects, context: context)
        type = Types::SseKmsEncryptedObjects.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.status = params[:status]
        type
      end
    end

    module Stats
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Stats, context: context)
        type = Types::Stats.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bytes_scanned = params[:bytes_scanned]
        type.bytes_processed = params[:bytes_processed]
        type.bytes_returned = params[:bytes_returned]
        type
      end
    end

    module StatsEvent
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::StatsEvent, context: context)
        type = Types::StatsEvent.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.details = Stats.build(params[:details], context: "#{context}[:details]") unless params[:details].nil?
        type
      end
    end

    module StorageClassAnalysis
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::StorageClassAnalysis, context: context)
        type = Types::StorageClassAnalysis.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.data_export = StorageClassAnalysisDataExport.build(params[:data_export], context: "#{context}[:data_export]") unless params[:data_export].nil?
        type
      end
    end

    module StorageClassAnalysisDataExport
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::StorageClassAnalysisDataExport, context: context)
        type = Types::StorageClassAnalysisDataExport.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.output_schema_version = params[:output_schema_version]
        type.destination = AnalyticsExportDestination.build(params[:destination], context: "#{context}[:destination]") unless params[:destination].nil?
        type
      end
    end

    module Tag
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module TagSet
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Tagging
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Tagging, context: context)
        type = Types::Tagging.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.tag_set = TagSet.build(params[:tag_set], context: "#{context}[:tag_set]") unless params[:tag_set].nil?
        type
      end
    end

    module TargetGrant
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::TargetGrant, context: context)
        type = Types::TargetGrant.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.grantee = Grantee.build(params[:grantee], context: "#{context}[:grantee]") unless params[:grantee].nil?
        type.permission = params[:permission]
        type
      end
    end

    module TargetGrants
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TargetGrant.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TargetObjectKeyFormat
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::TargetObjectKeyFormat, context: context)
        type = Types::TargetObjectKeyFormat.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.simple_prefix = SimplePrefix.build(params[:simple_prefix], context: "#{context}[:simple_prefix]") unless params[:simple_prefix].nil?
        type.partitioned_prefix = PartitionedPrefix.build(params[:partitioned_prefix], context: "#{context}[:partitioned_prefix]") unless params[:partitioned_prefix].nil?
        type
      end
    end

    module Tiering
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Tiering, context: context)
        type = Types::Tiering.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.days = params[:days]
        type.access_tier = params[:access_tier]
        type
      end
    end

    module TieringList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tiering.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TopicConfiguration
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::TopicConfiguration, context: context)
        type = Types::TopicConfiguration.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.id = params[:id]
        type.topic_arn = params[:topic_arn]
        type.events = EventList.build(params[:events], context: "#{context}[:events]") unless params[:events].nil?
        type.filter = NotificationConfigurationFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type
      end
    end

    module TopicConfigurationList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TopicConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Transition
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Transition, context: context)
        type = Types::Transition.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.date = params[:date]
        type.days = params[:days]
        type.storage_class = params[:storage_class]
        type
      end
    end

    module TransitionList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Transition.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UploadPartCopyInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::UploadPartCopyInput, context: context)
        type = Types::UploadPartCopyInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.bucket = params[:bucket]
        type.copy_source = params[:copy_source]
        type.copy_source_if_match = params[:copy_source_if_match]
        type.copy_source_if_modified_since = params[:copy_source_if_modified_since]
        type.copy_source_if_none_match = params[:copy_source_if_none_match]
        type.copy_source_if_unmodified_since = params[:copy_source_if_unmodified_since]
        type.copy_source_range = params[:copy_source_range]
        type.key = params[:key]
        type.part_number = params[:part_number]
        type.upload_id = params[:upload_id]
        type.sse_customer_algorithm = params[:sse_customer_algorithm]
        type.sse_customer_key = params[:sse_customer_key]
        type.sse_customer_key_md5 = params[:sse_customer_key_md5]
        type.copy_source_sse_customer_algorithm = params[:copy_source_sse_customer_algorithm]
        type.copy_source_sse_customer_key = params[:copy_source_sse_customer_key]
        type.copy_source_sse_customer_key_md5 = params[:copy_source_sse_customer_key_md5]
        type.request_payer = params[:request_payer]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type.expected_source_bucket_owner = params[:expected_source_bucket_owner]
        type
      end
    end

    module UploadPartCopyOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::UploadPartCopyOutput, context: context)
        type = Types::UploadPartCopyOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.copy_source_version_id = params[:copy_source_version_id]
        type.copy_part_result = CopyPartResult.build(params[:copy_part_result], context: "#{context}[:copy_part_result]") unless params[:copy_part_result].nil?
        type.server_side_encryption = params[:server_side_encryption]
        type.sse_customer_algorithm = params[:sse_customer_algorithm]
        type.sse_customer_key_md5 = params[:sse_customer_key_md5]
        type.ssekms_key_id = params[:ssekms_key_id]
        type.bucket_key_enabled = params[:bucket_key_enabled]
        type.request_charged = params[:request_charged]
        type
      end
    end

    module UploadPartInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::UploadPartInput, context: context)
        type = Types::UploadPartInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        io = params[:body] || StringIO.new
        unless io.respond_to?(:read) || io.respond_to?(:readpartial)
          io = StringIO.new(io)
        end
        type.body = io
        type.bucket = params[:bucket]
        type.content_length = params[:content_length]
        type.content_md5 = params[:content_md5]
        type.checksum_algorithm = params[:checksum_algorithm]
        type.checksum_crc32 = params[:checksum_crc32]
        type.checksum_crc32_c = params[:checksum_crc32_c]
        type.checksum_sha1 = params[:checksum_sha1]
        type.checksum_sha256 = params[:checksum_sha256]
        type.key = params[:key]
        type.part_number = params[:part_number]
        type.upload_id = params[:upload_id]
        type.sse_customer_algorithm = params[:sse_customer_algorithm]
        type.sse_customer_key = params[:sse_customer_key]
        type.sse_customer_key_md5 = params[:sse_customer_key_md5]
        type.request_payer = params[:request_payer]
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type
      end
    end

    module UploadPartOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::UploadPartOutput, context: context)
        type = Types::UploadPartOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.server_side_encryption = params[:server_side_encryption]
        type.e_tag = params[:e_tag]
        type.checksum_crc32 = params[:checksum_crc32]
        type.checksum_crc32_c = params[:checksum_crc32_c]
        type.checksum_sha1 = params[:checksum_sha1]
        type.checksum_sha256 = params[:checksum_sha256]
        type.sse_customer_algorithm = params[:sse_customer_algorithm]
        type.sse_customer_key_md5 = params[:sse_customer_key_md5]
        type.ssekms_key_id = params[:ssekms_key_id]
        type.bucket_key_enabled = params[:bucket_key_enabled]
        type.request_charged = params[:request_charged]
        type
      end
    end

    module UserMetadata
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MetadataEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module VersioningConfiguration
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::VersioningConfiguration, context: context)
        type = Types::VersioningConfiguration.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.mfa_delete = params[:mfa_delete]
        type.status = params[:status]
        type
      end
    end

    module WebsiteConfiguration
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

    module WriteGetObjectResponseInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::WriteGetObjectResponseInput, context: context)
        type = Types::WriteGetObjectResponseInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.request_route = params[:request_route]
        type.request_token = params[:request_token]
        io = params[:body] || StringIO.new
        unless io.respond_to?(:read) || io.respond_to?(:readpartial)
          io = StringIO.new(io)
        end
        type.body = io
        type.status_code = params[:status_code]
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type.accept_ranges = params[:accept_ranges]
        type.cache_control = params[:cache_control]
        type.content_disposition = params[:content_disposition]
        type.content_encoding = params[:content_encoding]
        type.content_language = params[:content_language]
        type.content_length = params[:content_length]
        type.content_range = params[:content_range]
        type.content_type = params[:content_type]
        type.checksum_crc32 = params[:checksum_crc32]
        type.checksum_crc32_c = params[:checksum_crc32_c]
        type.checksum_sha1 = params[:checksum_sha1]
        type.checksum_sha256 = params[:checksum_sha256]
        type.delete_marker = params[:delete_marker]
        type.e_tag = params[:e_tag]
        type.expires = params[:expires]
        type.expiration = params[:expiration]
        type.last_modified = params[:last_modified]
        type.missing_meta = params[:missing_meta]
        type.metadata = Metadata.build(params[:metadata], context: "#{context}[:metadata]") unless params[:metadata].nil?
        type.object_lock_mode = params[:object_lock_mode]
        type.object_lock_legal_hold_status = params[:object_lock_legal_hold_status]
        type.object_lock_retain_until_date = params[:object_lock_retain_until_date]
        type.parts_count = params[:parts_count]
        type.replication_status = params[:replication_status]
        type.request_charged = params[:request_charged]
        type.restore = params[:restore]
        type.server_side_encryption = params[:server_side_encryption]
        type.sse_customer_algorithm = params[:sse_customer_algorithm]
        type.ssekms_key_id = params[:ssekms_key_id]
        type.sse_customer_key_md5 = params[:sse_customer_key_md5]
        type.storage_class = params[:storage_class]
        type.tag_count = params[:tag_count]
        type.version_id = params[:version_id]
        type.bucket_key_enabled = params[:bucket_key_enabled]
        type
      end
    end

    module WriteGetObjectResponseOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::WriteGetObjectResponseOutput, context: context)
        type = Types::WriteGetObjectResponseOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

  end
end
