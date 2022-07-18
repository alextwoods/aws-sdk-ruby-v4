# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::QLDB
  module Validators

    class CancelJournalKinesisStreamInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelJournalKinesisStreamInput, context: context)
        Hearth::Validator.validate!(input[:ledger_name], ::String, context: "#{context}[:ledger_name]")
        Hearth::Validator.validate!(input[:stream_id], ::String, context: "#{context}[:stream_id]")
      end
    end

    class CancelJournalKinesisStreamOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelJournalKinesisStreamOutput, context: context)
        Hearth::Validator.validate!(input[:stream_id], ::String, context: "#{context}[:stream_id]")
      end
    end

    class CreateLedgerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLedgerInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:permissions_mode], ::String, context: "#{context}[:permissions_mode]")
        Hearth::Validator.validate!(input[:deletion_protection], ::TrueClass, ::FalseClass, context: "#{context}[:deletion_protection]")
        Hearth::Validator.validate!(input[:kms_key], ::String, context: "#{context}[:kms_key]")
      end
    end

    class CreateLedgerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLedgerOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:permissions_mode], ::String, context: "#{context}[:permissions_mode]")
        Hearth::Validator.validate!(input[:deletion_protection], ::TrueClass, ::FalseClass, context: "#{context}[:deletion_protection]")
        Hearth::Validator.validate!(input[:kms_key_arn], ::String, context: "#{context}[:kms_key_arn]")
      end
    end

    class DeleteLedgerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLedgerInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteLedgerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLedgerOutput, context: context)
      end
    end

    class DescribeJournalKinesisStreamInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeJournalKinesisStreamInput, context: context)
        Hearth::Validator.validate!(input[:ledger_name], ::String, context: "#{context}[:ledger_name]")
        Hearth::Validator.validate!(input[:stream_id], ::String, context: "#{context}[:stream_id]")
      end
    end

    class DescribeJournalKinesisStreamOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeJournalKinesisStreamOutput, context: context)
        JournalKinesisStreamDescription.validate!(input[:stream], context: "#{context}[:stream]") unless input[:stream].nil?
      end
    end

    class DescribeJournalS3ExportInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeJournalS3ExportInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:export_id], ::String, context: "#{context}[:export_id]")
      end
    end

    class DescribeJournalS3ExportOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeJournalS3ExportOutput, context: context)
        JournalS3ExportDescription.validate!(input[:export_description], context: "#{context}[:export_description]") unless input[:export_description].nil?
      end
    end

    class DescribeLedgerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLedgerInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DescribeLedgerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLedgerOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:permissions_mode], ::String, context: "#{context}[:permissions_mode]")
        Hearth::Validator.validate!(input[:deletion_protection], ::TrueClass, ::FalseClass, context: "#{context}[:deletion_protection]")
        LedgerEncryptionDescription.validate!(input[:encryption_description], context: "#{context}[:encryption_description]") unless input[:encryption_description].nil?
      end
    end

    class ExportJournalToS3Input
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportJournalToS3Input, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:inclusive_start_time], ::Time, context: "#{context}[:inclusive_start_time]")
        Hearth::Validator.validate!(input[:exclusive_end_time], ::Time, context: "#{context}[:exclusive_end_time]")
        S3ExportConfiguration.validate!(input[:s3_export_configuration], context: "#{context}[:s3_export_configuration]") unless input[:s3_export_configuration].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:output_format], ::String, context: "#{context}[:output_format]")
      end
    end

    class ExportJournalToS3Output
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportJournalToS3Output, context: context)
        Hearth::Validator.validate!(input[:export_id], ::String, context: "#{context}[:export_id]")
      end
    end

    class GetBlockInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBlockInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        ValueHolder.validate!(input[:block_address], context: "#{context}[:block_address]") unless input[:block_address].nil?
        ValueHolder.validate!(input[:digest_tip_address], context: "#{context}[:digest_tip_address]") unless input[:digest_tip_address].nil?
      end
    end

    class GetBlockOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBlockOutput, context: context)
        ValueHolder.validate!(input[:block], context: "#{context}[:block]") unless input[:block].nil?
        ValueHolder.validate!(input[:proof], context: "#{context}[:proof]") unless input[:proof].nil?
      end
    end

    class GetDigestInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDigestInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class GetDigestOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDigestOutput, context: context)
        Hearth::Validator.validate!(input[:digest], ::String, context: "#{context}[:digest]")
        ValueHolder.validate!(input[:digest_tip_address], context: "#{context}[:digest_tip_address]") unless input[:digest_tip_address].nil?
      end
    end

    class GetRevisionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRevisionInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        ValueHolder.validate!(input[:block_address], context: "#{context}[:block_address]") unless input[:block_address].nil?
        Hearth::Validator.validate!(input[:document_id], ::String, context: "#{context}[:document_id]")
        ValueHolder.validate!(input[:digest_tip_address], context: "#{context}[:digest_tip_address]") unless input[:digest_tip_address].nil?
      end
    end

    class GetRevisionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRevisionOutput, context: context)
        ValueHolder.validate!(input[:proof], context: "#{context}[:proof]") unless input[:proof].nil?
        ValueHolder.validate!(input[:revision], context: "#{context}[:revision]") unless input[:revision].nil?
      end
    end

    class InvalidParameterException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidParameterException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:parameter_name], ::String, context: "#{context}[:parameter_name]")
      end
    end

    class JournalKinesisStreamDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JournalKinesisStreamDescription, context: context)
        Hearth::Validator.validate!(input[:ledger_name], ::String, context: "#{context}[:ledger_name]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:inclusive_start_time], ::Time, context: "#{context}[:inclusive_start_time]")
        Hearth::Validator.validate!(input[:exclusive_end_time], ::Time, context: "#{context}[:exclusive_end_time]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:stream_id], ::String, context: "#{context}[:stream_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        KinesisConfiguration.validate!(input[:kinesis_configuration], context: "#{context}[:kinesis_configuration]") unless input[:kinesis_configuration].nil?
        Hearth::Validator.validate!(input[:error_cause], ::String, context: "#{context}[:error_cause]")
        Hearth::Validator.validate!(input[:stream_name], ::String, context: "#{context}[:stream_name]")
      end
    end

    class JournalKinesisStreamDescriptionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          JournalKinesisStreamDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class JournalS3ExportDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JournalS3ExportDescription, context: context)
        Hearth::Validator.validate!(input[:ledger_name], ::String, context: "#{context}[:ledger_name]")
        Hearth::Validator.validate!(input[:export_id], ::String, context: "#{context}[:export_id]")
        Hearth::Validator.validate!(input[:export_creation_time], ::Time, context: "#{context}[:export_creation_time]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:inclusive_start_time], ::Time, context: "#{context}[:inclusive_start_time]")
        Hearth::Validator.validate!(input[:exclusive_end_time], ::Time, context: "#{context}[:exclusive_end_time]")
        S3ExportConfiguration.validate!(input[:s3_export_configuration], context: "#{context}[:s3_export_configuration]") unless input[:s3_export_configuration].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:output_format], ::String, context: "#{context}[:output_format]")
      end
    end

    class JournalS3ExportList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          JournalS3ExportDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class KinesisConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KinesisConfiguration, context: context)
        Hearth::Validator.validate!(input[:stream_arn], ::String, context: "#{context}[:stream_arn]")
        Hearth::Validator.validate!(input[:aggregation_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:aggregation_enabled]")
      end
    end

    class LedgerEncryptionDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LedgerEncryptionDescription, context: context)
        Hearth::Validator.validate!(input[:kms_key_arn], ::String, context: "#{context}[:kms_key_arn]")
        Hearth::Validator.validate!(input[:encryption_status], ::String, context: "#{context}[:encryption_status]")
        Hearth::Validator.validate!(input[:inaccessible_kms_key_date_time], ::Time, context: "#{context}[:inaccessible_kms_key_date_time]")
      end
    end

    class LedgerList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LedgerSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LedgerSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LedgerSummary, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class ListJournalKinesisStreamsForLedgerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListJournalKinesisStreamsForLedgerInput, context: context)
        Hearth::Validator.validate!(input[:ledger_name], ::String, context: "#{context}[:ledger_name]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListJournalKinesisStreamsForLedgerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListJournalKinesisStreamsForLedgerOutput, context: context)
        JournalKinesisStreamDescriptionList.validate!(input[:streams], context: "#{context}[:streams]") unless input[:streams].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListJournalS3ExportsForLedgerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListJournalS3ExportsForLedgerInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListJournalS3ExportsForLedgerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListJournalS3ExportsForLedgerOutput, context: context)
        JournalS3ExportList.validate!(input[:journal_s3_exports], context: "#{context}[:journal_s3_exports]") unless input[:journal_s3_exports].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListJournalS3ExportsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListJournalS3ExportsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListJournalS3ExportsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListJournalS3ExportsOutput, context: context)
        JournalS3ExportList.validate!(input[:journal_s3_exports], context: "#{context}[:journal_s3_exports]") unless input[:journal_s3_exports].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListLedgersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLedgersInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListLedgersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLedgersOutput, context: context)
        LedgerList.validate!(input[:ledgers], context: "#{context}[:ledgers]") unless input[:ledgers].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ResourceAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
      end
    end

    class ResourceInUseException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceInUseException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
      end
    end

    class ResourcePreconditionNotMetException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourcePreconditionNotMetException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
      end
    end

    class S3EncryptionConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3EncryptionConfiguration, context: context)
        Hearth::Validator.validate!(input[:object_encryption_type], ::String, context: "#{context}[:object_encryption_type]")
        Hearth::Validator.validate!(input[:kms_key_arn], ::String, context: "#{context}[:kms_key_arn]")
      end
    end

    class S3ExportConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3ExportConfiguration, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
        S3EncryptionConfiguration.validate!(input[:encryption_configuration], context: "#{context}[:encryption_configuration]") unless input[:encryption_configuration].nil?
      end
    end

    class StreamJournalToKinesisInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StreamJournalToKinesisInput, context: context)
        Hearth::Validator.validate!(input[:ledger_name], ::String, context: "#{context}[:ledger_name]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:inclusive_start_time], ::Time, context: "#{context}[:inclusive_start_time]")
        Hearth::Validator.validate!(input[:exclusive_end_time], ::Time, context: "#{context}[:exclusive_end_time]")
        KinesisConfiguration.validate!(input[:kinesis_configuration], context: "#{context}[:kinesis_configuration]") unless input[:kinesis_configuration].nil?
        Hearth::Validator.validate!(input[:stream_name], ::String, context: "#{context}[:stream_name]")
      end
    end

    class StreamJournalToKinesisOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StreamJournalToKinesisOutput, context: context)
        Hearth::Validator.validate!(input[:stream_id], ::String, context: "#{context}[:stream_id]")
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class Tags
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateLedgerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateLedgerInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:deletion_protection], ::TrueClass, ::FalseClass, context: "#{context}[:deletion_protection]")
        Hearth::Validator.validate!(input[:kms_key], ::String, context: "#{context}[:kms_key]")
      end
    end

    class UpdateLedgerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateLedgerOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:deletion_protection], ::TrueClass, ::FalseClass, context: "#{context}[:deletion_protection]")
        LedgerEncryptionDescription.validate!(input[:encryption_description], context: "#{context}[:encryption_description]") unless input[:encryption_description].nil?
      end
    end

    class UpdateLedgerPermissionsModeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateLedgerPermissionsModeInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:permissions_mode], ::String, context: "#{context}[:permissions_mode]")
      end
    end

    class UpdateLedgerPermissionsModeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateLedgerPermissionsModeOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:permissions_mode], ::String, context: "#{context}[:permissions_mode]")
      end
    end

    class ValueHolder
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValueHolder, context: context)
        Hearth::Validator.validate!(input[:ion_text], ::String, context: "#{context}[:ion_text]")
      end
    end

  end
end
