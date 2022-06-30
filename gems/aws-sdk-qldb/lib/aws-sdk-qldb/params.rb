# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::QLDB
  module Params

    module CancelJournalKinesisStreamInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelJournalKinesisStreamInput, context: context)
        type = Types::CancelJournalKinesisStreamInput.new
        type.ledger_name = params[:ledger_name]
        type.stream_id = params[:stream_id]
        type
      end
    end

    module CancelJournalKinesisStreamOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelJournalKinesisStreamOutput, context: context)
        type = Types::CancelJournalKinesisStreamOutput.new
        type.stream_id = params[:stream_id]
        type
      end
    end

    module CreateLedgerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLedgerInput, context: context)
        type = Types::CreateLedgerInput.new
        type.name = params[:name]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.permissions_mode = params[:permissions_mode]
        type.deletion_protection = params[:deletion_protection]
        type.kms_key = params[:kms_key]
        type
      end
    end

    module CreateLedgerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLedgerOutput, context: context)
        type = Types::CreateLedgerOutput.new
        type.name = params[:name]
        type.arn = params[:arn]
        type.state = params[:state]
        type.creation_date_time = params[:creation_date_time]
        type.permissions_mode = params[:permissions_mode]
        type.deletion_protection = params[:deletion_protection]
        type.kms_key_arn = params[:kms_key_arn]
        type
      end
    end

    module DeleteLedgerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLedgerInput, context: context)
        type = Types::DeleteLedgerInput.new
        type.name = params[:name]
        type
      end
    end

    module DeleteLedgerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLedgerOutput, context: context)
        type = Types::DeleteLedgerOutput.new
        type
      end
    end

    module DescribeJournalKinesisStreamInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeJournalKinesisStreamInput, context: context)
        type = Types::DescribeJournalKinesisStreamInput.new
        type.ledger_name = params[:ledger_name]
        type.stream_id = params[:stream_id]
        type
      end
    end

    module DescribeJournalKinesisStreamOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeJournalKinesisStreamOutput, context: context)
        type = Types::DescribeJournalKinesisStreamOutput.new
        type.stream = JournalKinesisStreamDescription.build(params[:stream], context: "#{context}[:stream]") unless params[:stream].nil?
        type
      end
    end

    module DescribeJournalS3ExportInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeJournalS3ExportInput, context: context)
        type = Types::DescribeJournalS3ExportInput.new
        type.name = params[:name]
        type.export_id = params[:export_id]
        type
      end
    end

    module DescribeJournalS3ExportOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeJournalS3ExportOutput, context: context)
        type = Types::DescribeJournalS3ExportOutput.new
        type.export_description = JournalS3ExportDescription.build(params[:export_description], context: "#{context}[:export_description]") unless params[:export_description].nil?
        type
      end
    end

    module DescribeLedgerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLedgerInput, context: context)
        type = Types::DescribeLedgerInput.new
        type.name = params[:name]
        type
      end
    end

    module DescribeLedgerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLedgerOutput, context: context)
        type = Types::DescribeLedgerOutput.new
        type.name = params[:name]
        type.arn = params[:arn]
        type.state = params[:state]
        type.creation_date_time = params[:creation_date_time]
        type.permissions_mode = params[:permissions_mode]
        type.deletion_protection = params[:deletion_protection]
        type.encryption_description = LedgerEncryptionDescription.build(params[:encryption_description], context: "#{context}[:encryption_description]") unless params[:encryption_description].nil?
        type
      end
    end

    module ExportJournalToS3Input
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportJournalToS3Input, context: context)
        type = Types::ExportJournalToS3Input.new
        type.name = params[:name]
        type.inclusive_start_time = params[:inclusive_start_time]
        type.exclusive_end_time = params[:exclusive_end_time]
        type.s3_export_configuration = S3ExportConfiguration.build(params[:s3_export_configuration], context: "#{context}[:s3_export_configuration]") unless params[:s3_export_configuration].nil?
        type.role_arn = params[:role_arn]
        type.output_format = params[:output_format]
        type
      end
    end

    module ExportJournalToS3Output
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportJournalToS3Output, context: context)
        type = Types::ExportJournalToS3Output.new
        type.export_id = params[:export_id]
        type
      end
    end

    module GetBlockInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBlockInput, context: context)
        type = Types::GetBlockInput.new
        type.name = params[:name]
        type.block_address = ValueHolder.build(params[:block_address], context: "#{context}[:block_address]") unless params[:block_address].nil?
        type.digest_tip_address = ValueHolder.build(params[:digest_tip_address], context: "#{context}[:digest_tip_address]") unless params[:digest_tip_address].nil?
        type
      end
    end

    module GetBlockOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBlockOutput, context: context)
        type = Types::GetBlockOutput.new
        type.block = ValueHolder.build(params[:block], context: "#{context}[:block]") unless params[:block].nil?
        type.proof = ValueHolder.build(params[:proof], context: "#{context}[:proof]") unless params[:proof].nil?
        type
      end
    end

    module GetDigestInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDigestInput, context: context)
        type = Types::GetDigestInput.new
        type.name = params[:name]
        type
      end
    end

    module GetDigestOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDigestOutput, context: context)
        type = Types::GetDigestOutput.new
        type.digest = params[:digest]
        type.digest_tip_address = ValueHolder.build(params[:digest_tip_address], context: "#{context}[:digest_tip_address]") unless params[:digest_tip_address].nil?
        type
      end
    end

    module GetRevisionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRevisionInput, context: context)
        type = Types::GetRevisionInput.new
        type.name = params[:name]
        type.block_address = ValueHolder.build(params[:block_address], context: "#{context}[:block_address]") unless params[:block_address].nil?
        type.document_id = params[:document_id]
        type.digest_tip_address = ValueHolder.build(params[:digest_tip_address], context: "#{context}[:digest_tip_address]") unless params[:digest_tip_address].nil?
        type
      end
    end

    module GetRevisionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRevisionOutput, context: context)
        type = Types::GetRevisionOutput.new
        type.proof = ValueHolder.build(params[:proof], context: "#{context}[:proof]") unless params[:proof].nil?
        type.revision = ValueHolder.build(params[:revision], context: "#{context}[:revision]") unless params[:revision].nil?
        type
      end
    end

    module InvalidParameterException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidParameterException, context: context)
        type = Types::InvalidParameterException.new
        type.message = params[:message]
        type.parameter_name = params[:parameter_name]
        type
      end
    end

    module JournalKinesisStreamDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JournalKinesisStreamDescription, context: context)
        type = Types::JournalKinesisStreamDescription.new
        type.ledger_name = params[:ledger_name]
        type.creation_time = params[:creation_time]
        type.inclusive_start_time = params[:inclusive_start_time]
        type.exclusive_end_time = params[:exclusive_end_time]
        type.role_arn = params[:role_arn]
        type.stream_id = params[:stream_id]
        type.arn = params[:arn]
        type.status = params[:status]
        type.kinesis_configuration = KinesisConfiguration.build(params[:kinesis_configuration], context: "#{context}[:kinesis_configuration]") unless params[:kinesis_configuration].nil?
        type.error_cause = params[:error_cause]
        type.stream_name = params[:stream_name]
        type
      end
    end

    module JournalKinesisStreamDescriptionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << JournalKinesisStreamDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module JournalS3ExportDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JournalS3ExportDescription, context: context)
        type = Types::JournalS3ExportDescription.new
        type.ledger_name = params[:ledger_name]
        type.export_id = params[:export_id]
        type.export_creation_time = params[:export_creation_time]
        type.status = params[:status]
        type.inclusive_start_time = params[:inclusive_start_time]
        type.exclusive_end_time = params[:exclusive_end_time]
        type.s3_export_configuration = S3ExportConfiguration.build(params[:s3_export_configuration], context: "#{context}[:s3_export_configuration]") unless params[:s3_export_configuration].nil?
        type.role_arn = params[:role_arn]
        type.output_format = params[:output_format]
        type
      end
    end

    module JournalS3ExportList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << JournalS3ExportDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module KinesisConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KinesisConfiguration, context: context)
        type = Types::KinesisConfiguration.new
        type.stream_arn = params[:stream_arn]
        type.aggregation_enabled = params[:aggregation_enabled]
        type
      end
    end

    module LedgerEncryptionDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LedgerEncryptionDescription, context: context)
        type = Types::LedgerEncryptionDescription.new
        type.kms_key_arn = params[:kms_key_arn]
        type.encryption_status = params[:encryption_status]
        type.inaccessible_kms_key_date_time = params[:inaccessible_kms_key_date_time]
        type
      end
    end

    module LedgerList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LedgerSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LedgerSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LedgerSummary, context: context)
        type = Types::LedgerSummary.new
        type.name = params[:name]
        type.state = params[:state]
        type.creation_date_time = params[:creation_date_time]
        type
      end
    end

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.message = params[:message]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module ListJournalKinesisStreamsForLedgerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListJournalKinesisStreamsForLedgerInput, context: context)
        type = Types::ListJournalKinesisStreamsForLedgerInput.new
        type.ledger_name = params[:ledger_name]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListJournalKinesisStreamsForLedgerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListJournalKinesisStreamsForLedgerOutput, context: context)
        type = Types::ListJournalKinesisStreamsForLedgerOutput.new
        type.streams = JournalKinesisStreamDescriptionList.build(params[:streams], context: "#{context}[:streams]") unless params[:streams].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListJournalS3ExportsForLedgerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListJournalS3ExportsForLedgerInput, context: context)
        type = Types::ListJournalS3ExportsForLedgerInput.new
        type.name = params[:name]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListJournalS3ExportsForLedgerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListJournalS3ExportsForLedgerOutput, context: context)
        type = Types::ListJournalS3ExportsForLedgerOutput.new
        type.journal_s3_exports = JournalS3ExportList.build(params[:journal_s3_exports], context: "#{context}[:journal_s3_exports]") unless params[:journal_s3_exports].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListJournalS3ExportsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListJournalS3ExportsInput, context: context)
        type = Types::ListJournalS3ExportsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListJournalS3ExportsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListJournalS3ExportsOutput, context: context)
        type = Types::ListJournalS3ExportsOutput.new
        type.journal_s3_exports = JournalS3ExportList.build(params[:journal_s3_exports], context: "#{context}[:journal_s3_exports]") unless params[:journal_s3_exports].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListLedgersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLedgersInput, context: context)
        type = Types::ListLedgersInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListLedgersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLedgersOutput, context: context)
        type = Types::ListLedgersOutput.new
        type.ledgers = LedgerList.build(params[:ledgers], context: "#{context}[:ledgers]") unless params[:ledgers].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ResourceAlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceAlreadyExistsException, context: context)
        type = Types::ResourceAlreadyExistsException.new
        type.message = params[:message]
        type.resource_type = params[:resource_type]
        type.resource_name = params[:resource_name]
        type
      end
    end

    module ResourceInUseException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceInUseException, context: context)
        type = Types::ResourceInUseException.new
        type.message = params[:message]
        type.resource_type = params[:resource_type]
        type.resource_name = params[:resource_name]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type.resource_type = params[:resource_type]
        type.resource_name = params[:resource_name]
        type
      end
    end

    module ResourcePreconditionNotMetException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourcePreconditionNotMetException, context: context)
        type = Types::ResourcePreconditionNotMetException.new
        type.message = params[:message]
        type.resource_type = params[:resource_type]
        type.resource_name = params[:resource_name]
        type
      end
    end

    module S3EncryptionConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3EncryptionConfiguration, context: context)
        type = Types::S3EncryptionConfiguration.new
        type.object_encryption_type = params[:object_encryption_type]
        type.kms_key_arn = params[:kms_key_arn]
        type
      end
    end

    module S3ExportConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3ExportConfiguration, context: context)
        type = Types::S3ExportConfiguration.new
        type.bucket = params[:bucket]
        type.prefix = params[:prefix]
        type.encryption_configuration = S3EncryptionConfiguration.build(params[:encryption_configuration], context: "#{context}[:encryption_configuration]") unless params[:encryption_configuration].nil?
        type
      end
    end

    module StreamJournalToKinesisInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StreamJournalToKinesisInput, context: context)
        type = Types::StreamJournalToKinesisInput.new
        type.ledger_name = params[:ledger_name]
        type.role_arn = params[:role_arn]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.inclusive_start_time = params[:inclusive_start_time]
        type.exclusive_end_time = params[:exclusive_end_time]
        type.kinesis_configuration = KinesisConfiguration.build(params[:kinesis_configuration], context: "#{context}[:kinesis_configuration]") unless params[:kinesis_configuration].nil?
        type.stream_name = params[:stream_name]
        type
      end
    end

    module StreamJournalToKinesisOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StreamJournalToKinesisOutput, context: context)
        type = Types::StreamJournalToKinesisOutput.new
        type.stream_id = params[:stream_id]
        type
      end
    end

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type
      end
    end

    module Tags
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type
      end
    end

    module UpdateLedgerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateLedgerInput, context: context)
        type = Types::UpdateLedgerInput.new
        type.name = params[:name]
        type.deletion_protection = params[:deletion_protection]
        type.kms_key = params[:kms_key]
        type
      end
    end

    module UpdateLedgerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateLedgerOutput, context: context)
        type = Types::UpdateLedgerOutput.new
        type.name = params[:name]
        type.arn = params[:arn]
        type.state = params[:state]
        type.creation_date_time = params[:creation_date_time]
        type.deletion_protection = params[:deletion_protection]
        type.encryption_description = LedgerEncryptionDescription.build(params[:encryption_description], context: "#{context}[:encryption_description]") unless params[:encryption_description].nil?
        type
      end
    end

    module UpdateLedgerPermissionsModeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateLedgerPermissionsModeInput, context: context)
        type = Types::UpdateLedgerPermissionsModeInput.new
        type.name = params[:name]
        type.permissions_mode = params[:permissions_mode]
        type
      end
    end

    module UpdateLedgerPermissionsModeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateLedgerPermissionsModeOutput, context: context)
        type = Types::UpdateLedgerPermissionsModeOutput.new
        type.name = params[:name]
        type.arn = params[:arn]
        type.permissions_mode = params[:permissions_mode]
        type
      end
    end

    module ValueHolder
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValueHolder, context: context)
        type = Types::ValueHolder.new
        type.ion_text = params[:ion_text]
        type
      end
    end

  end
end
