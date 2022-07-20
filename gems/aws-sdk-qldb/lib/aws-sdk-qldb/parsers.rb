# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::QLDB
  module Parsers

    # Operation Parser for CancelJournalKinesisStream
    class CancelJournalKinesisStream
      def self.parse(http_resp)
        data = Types::CancelJournalKinesisStreamOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.stream_id = map['StreamId']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.resource_type = map['ResourceType']
        data.resource_name = map['ResourceName']
        data
      end
    end

    # Error Parser for InvalidParameterException
    class InvalidParameterException
      def self.parse(http_resp)
        data = Types::InvalidParameterException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.parameter_name = map['ParameterName']
        data
      end
    end

    # Error Parser for ResourcePreconditionNotMetException
    class ResourcePreconditionNotMetException
      def self.parse(http_resp)
        data = Types::ResourcePreconditionNotMetException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.resource_type = map['ResourceType']
        data.resource_name = map['ResourceName']
        data
      end
    end

    # Operation Parser for CreateLedger
    class CreateLedger
      def self.parse(http_resp)
        data = Types::CreateLedgerOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['Name']
        data.arn = map['Arn']
        data.state = map['State']
        data.creation_date_time = Time.at(map['CreationDateTime'].to_i) if map['CreationDateTime']
        data.permissions_mode = map['PermissionsMode']
        data.deletion_protection = map['DeletionProtection']
        data.kms_key_arn = map['KmsKeyArn']
        data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.resource_type = map['ResourceType']
        data
      end
    end

    # Error Parser for ResourceInUseException
    class ResourceInUseException
      def self.parse(http_resp)
        data = Types::ResourceInUseException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.resource_type = map['ResourceType']
        data.resource_name = map['ResourceName']
        data
      end
    end

    # Error Parser for ResourceAlreadyExistsException
    class ResourceAlreadyExistsException
      def self.parse(http_resp)
        data = Types::ResourceAlreadyExistsException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.resource_type = map['ResourceType']
        data.resource_name = map['ResourceName']
        data
      end
    end

    # Operation Parser for DeleteLedger
    class DeleteLedger
      def self.parse(http_resp)
        data = Types::DeleteLedgerOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DescribeJournalKinesisStream
    class DescribeJournalKinesisStream
      def self.parse(http_resp)
        data = Types::DescribeJournalKinesisStreamOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.stream = (JournalKinesisStreamDescription.parse(map['Stream']) unless map['Stream'].nil?)
        data
      end
    end

    class JournalKinesisStreamDescription
      def self.parse(map)
        data = Types::JournalKinesisStreamDescription.new
        data.ledger_name = map['LedgerName']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.inclusive_start_time = Time.at(map['InclusiveStartTime'].to_i) if map['InclusiveStartTime']
        data.exclusive_end_time = Time.at(map['ExclusiveEndTime'].to_i) if map['ExclusiveEndTime']
        data.role_arn = map['RoleArn']
        data.stream_id = map['StreamId']
        data.arn = map['Arn']
        data.status = map['Status']
        data.kinesis_configuration = (KinesisConfiguration.parse(map['KinesisConfiguration']) unless map['KinesisConfiguration'].nil?)
        data.error_cause = map['ErrorCause']
        data.stream_name = map['StreamName']
        return data
      end
    end

    class KinesisConfiguration
      def self.parse(map)
        data = Types::KinesisConfiguration.new
        data.stream_arn = map['StreamArn']
        data.aggregation_enabled = map['AggregationEnabled']
        return data
      end
    end

    # Operation Parser for DescribeJournalS3Export
    class DescribeJournalS3Export
      def self.parse(http_resp)
        data = Types::DescribeJournalS3ExportOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.export_description = (JournalS3ExportDescription.parse(map['ExportDescription']) unless map['ExportDescription'].nil?)
        data
      end
    end

    class JournalS3ExportDescription
      def self.parse(map)
        data = Types::JournalS3ExportDescription.new
        data.ledger_name = map['LedgerName']
        data.export_id = map['ExportId']
        data.export_creation_time = Time.at(map['ExportCreationTime'].to_i) if map['ExportCreationTime']
        data.status = map['Status']
        data.inclusive_start_time = Time.at(map['InclusiveStartTime'].to_i) if map['InclusiveStartTime']
        data.exclusive_end_time = Time.at(map['ExclusiveEndTime'].to_i) if map['ExclusiveEndTime']
        data.s3_export_configuration = (S3ExportConfiguration.parse(map['S3ExportConfiguration']) unless map['S3ExportConfiguration'].nil?)
        data.role_arn = map['RoleArn']
        data.output_format = map['OutputFormat']
        return data
      end
    end

    class S3ExportConfiguration
      def self.parse(map)
        data = Types::S3ExportConfiguration.new
        data.bucket = map['Bucket']
        data.prefix = map['Prefix']
        data.encryption_configuration = (S3EncryptionConfiguration.parse(map['EncryptionConfiguration']) unless map['EncryptionConfiguration'].nil?)
        return data
      end
    end

    class S3EncryptionConfiguration
      def self.parse(map)
        data = Types::S3EncryptionConfiguration.new
        data.object_encryption_type = map['ObjectEncryptionType']
        data.kms_key_arn = map['KmsKeyArn']
        return data
      end
    end

    # Operation Parser for DescribeLedger
    class DescribeLedger
      def self.parse(http_resp)
        data = Types::DescribeLedgerOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['Name']
        data.arn = map['Arn']
        data.state = map['State']
        data.creation_date_time = Time.at(map['CreationDateTime'].to_i) if map['CreationDateTime']
        data.permissions_mode = map['PermissionsMode']
        data.deletion_protection = map['DeletionProtection']
        data.encryption_description = (LedgerEncryptionDescription.parse(map['EncryptionDescription']) unless map['EncryptionDescription'].nil?)
        data
      end
    end

    class LedgerEncryptionDescription
      def self.parse(map)
        data = Types::LedgerEncryptionDescription.new
        data.kms_key_arn = map['KmsKeyArn']
        data.encryption_status = map['EncryptionStatus']
        data.inaccessible_kms_key_date_time = Time.at(map['InaccessibleKmsKeyDateTime'].to_i) if map['InaccessibleKmsKeyDateTime']
        return data
      end
    end

    # Operation Parser for ExportJournalToS3
    class ExportJournalToS3
      def self.parse(http_resp)
        data = Types::ExportJournalToS3Output.new
        map = Hearth::JSON.load(http_resp.body)
        data.export_id = map['ExportId']
        data
      end
    end

    # Operation Parser for GetBlock
    class GetBlock
      def self.parse(http_resp)
        data = Types::GetBlockOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.block = (ValueHolder.parse(map['Block']) unless map['Block'].nil?)
        data.proof = (ValueHolder.parse(map['Proof']) unless map['Proof'].nil?)
        data
      end
    end

    class ValueHolder
      def self.parse(map)
        data = Types::ValueHolder.new
        data.ion_text = map['IonText']
        return data
      end
    end

    # Operation Parser for GetDigest
    class GetDigest
      def self.parse(http_resp)
        data = Types::GetDigestOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.digest = Base64::decode64(map['Digest']) unless map['Digest'].nil?
        data.digest_tip_address = (ValueHolder.parse(map['DigestTipAddress']) unless map['DigestTipAddress'].nil?)
        data
      end
    end

    # Operation Parser for GetRevision
    class GetRevision
      def self.parse(http_resp)
        data = Types::GetRevisionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.proof = (ValueHolder.parse(map['Proof']) unless map['Proof'].nil?)
        data.revision = (ValueHolder.parse(map['Revision']) unless map['Revision'].nil?)
        data
      end
    end

    # Operation Parser for ListJournalKinesisStreamsForLedger
    class ListJournalKinesisStreamsForLedger
      def self.parse(http_resp)
        data = Types::ListJournalKinesisStreamsForLedgerOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.streams = (JournalKinesisStreamDescriptionList.parse(map['Streams']) unless map['Streams'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class JournalKinesisStreamDescriptionList
      def self.parse(list)
        data = []
        list.map do |value|
          data << JournalKinesisStreamDescription.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListJournalS3Exports
    class ListJournalS3Exports
      def self.parse(http_resp)
        data = Types::ListJournalS3ExportsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.journal_s3_exports = (JournalS3ExportList.parse(map['JournalS3Exports']) unless map['JournalS3Exports'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class JournalS3ExportList
      def self.parse(list)
        data = []
        list.map do |value|
          data << JournalS3ExportDescription.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListJournalS3ExportsForLedger
    class ListJournalS3ExportsForLedger
      def self.parse(http_resp)
        data = Types::ListJournalS3ExportsForLedgerOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.journal_s3_exports = (JournalS3ExportList.parse(map['JournalS3Exports']) unless map['JournalS3Exports'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for ListLedgers
    class ListLedgers
      def self.parse(http_resp)
        data = Types::ListLedgersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.ledgers = (LedgerList.parse(map['Ledgers']) unless map['Ledgers'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class LedgerList
      def self.parse(list)
        data = []
        list.map do |value|
          data << LedgerSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class LedgerSummary
      def self.parse(map)
        data = Types::LedgerSummary.new
        data.name = map['Name']
        data.state = map['State']
        data.creation_date_time = Time.at(map['CreationDateTime'].to_i) if map['CreationDateTime']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Tags.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    class Tags
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value
        end
        data
      end
    end

    # Operation Parser for StreamJournalToKinesis
    class StreamJournalToKinesis
      def self.parse(http_resp)
        data = Types::StreamJournalToKinesisOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.stream_id = map['StreamId']
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateLedger
    class UpdateLedger
      def self.parse(http_resp)
        data = Types::UpdateLedgerOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['Name']
        data.arn = map['Arn']
        data.state = map['State']
        data.creation_date_time = Time.at(map['CreationDateTime'].to_i) if map['CreationDateTime']
        data.deletion_protection = map['DeletionProtection']
        data.encryption_description = (LedgerEncryptionDescription.parse(map['EncryptionDescription']) unless map['EncryptionDescription'].nil?)
        data
      end
    end

    # Operation Parser for UpdateLedgerPermissionsMode
    class UpdateLedgerPermissionsMode
      def self.parse(http_resp)
        data = Types::UpdateLedgerPermissionsModeOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['Name']
        data.arn = map['Arn']
        data.permissions_mode = map['PermissionsMode']
        data
      end
    end
  end
end
