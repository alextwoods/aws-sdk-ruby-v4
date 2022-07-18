# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::QLDB
  module Stubs

    # Operation Stubber for CancelJournalKinesisStream
    class CancelJournalKinesisStream
      def self.default(visited=[])
        {
          stream_id: 'stream_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['StreamId'] = stub[:stream_id] unless stub[:stream_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateLedger
    class CreateLedger
      def self.default(visited=[])
        {
          name: 'name',
          arn: 'arn',
          state: 'state',
          creation_date_time: Time.now,
          permissions_mode: 'permissions_mode',
          deletion_protection: false,
          kms_key_arn: 'kms_key_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['CreationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['PermissionsMode'] = stub[:permissions_mode] unless stub[:permissions_mode].nil?
        data['DeletionProtection'] = stub[:deletion_protection] unless stub[:deletion_protection].nil?
        data['KmsKeyArn'] = stub[:kms_key_arn] unless stub[:kms_key_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteLedger
    class DeleteLedger
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeJournalKinesisStream
    class DescribeJournalKinesisStream
      def self.default(visited=[])
        {
          stream: JournalKinesisStreamDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Stream'] = Stubs::JournalKinesisStreamDescription.stub(stub[:stream]) unless stub[:stream].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for JournalKinesisStreamDescription
    class JournalKinesisStreamDescription
      def self.default(visited=[])
        return nil if visited.include?('JournalKinesisStreamDescription')
        visited = visited + ['JournalKinesisStreamDescription']
        {
          ledger_name: 'ledger_name',
          creation_time: Time.now,
          inclusive_start_time: Time.now,
          exclusive_end_time: Time.now,
          role_arn: 'role_arn',
          stream_id: 'stream_id',
          arn: 'arn',
          status: 'status',
          kinesis_configuration: KinesisConfiguration.default(visited),
          error_cause: 'error_cause',
          stream_name: 'stream_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::JournalKinesisStreamDescription.new
        data = {}
        data['LedgerName'] = stub[:ledger_name] unless stub[:ledger_name].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['InclusiveStartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:inclusive_start_time]).to_i unless stub[:inclusive_start_time].nil?
        data['ExclusiveEndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:exclusive_end_time]).to_i unless stub[:exclusive_end_time].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['StreamId'] = stub[:stream_id] unless stub[:stream_id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['KinesisConfiguration'] = Stubs::KinesisConfiguration.stub(stub[:kinesis_configuration]) unless stub[:kinesis_configuration].nil?
        data['ErrorCause'] = stub[:error_cause] unless stub[:error_cause].nil?
        data['StreamName'] = stub[:stream_name] unless stub[:stream_name].nil?
        data
      end
    end

    # Structure Stubber for KinesisConfiguration
    class KinesisConfiguration
      def self.default(visited=[])
        return nil if visited.include?('KinesisConfiguration')
        visited = visited + ['KinesisConfiguration']
        {
          stream_arn: 'stream_arn',
          aggregation_enabled: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::KinesisConfiguration.new
        data = {}
        data['StreamArn'] = stub[:stream_arn] unless stub[:stream_arn].nil?
        data['AggregationEnabled'] = stub[:aggregation_enabled] unless stub[:aggregation_enabled].nil?
        data
      end
    end

    # Operation Stubber for DescribeJournalS3Export
    class DescribeJournalS3Export
      def self.default(visited=[])
        {
          export_description: JournalS3ExportDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ExportDescription'] = Stubs::JournalS3ExportDescription.stub(stub[:export_description]) unless stub[:export_description].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for JournalS3ExportDescription
    class JournalS3ExportDescription
      def self.default(visited=[])
        return nil if visited.include?('JournalS3ExportDescription')
        visited = visited + ['JournalS3ExportDescription']
        {
          ledger_name: 'ledger_name',
          export_id: 'export_id',
          export_creation_time: Time.now,
          status: 'status',
          inclusive_start_time: Time.now,
          exclusive_end_time: Time.now,
          s3_export_configuration: S3ExportConfiguration.default(visited),
          role_arn: 'role_arn',
          output_format: 'output_format',
        }
      end

      def self.stub(stub)
        stub ||= Types::JournalS3ExportDescription.new
        data = {}
        data['LedgerName'] = stub[:ledger_name] unless stub[:ledger_name].nil?
        data['ExportId'] = stub[:export_id] unless stub[:export_id].nil?
        data['ExportCreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:export_creation_time]).to_i unless stub[:export_creation_time].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['InclusiveStartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:inclusive_start_time]).to_i unless stub[:inclusive_start_time].nil?
        data['ExclusiveEndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:exclusive_end_time]).to_i unless stub[:exclusive_end_time].nil?
        data['S3ExportConfiguration'] = Stubs::S3ExportConfiguration.stub(stub[:s3_export_configuration]) unless stub[:s3_export_configuration].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['OutputFormat'] = stub[:output_format] unless stub[:output_format].nil?
        data
      end
    end

    # Structure Stubber for S3ExportConfiguration
    class S3ExportConfiguration
      def self.default(visited=[])
        return nil if visited.include?('S3ExportConfiguration')
        visited = visited + ['S3ExportConfiguration']
        {
          bucket: 'bucket',
          prefix: 'prefix',
          encryption_configuration: S3EncryptionConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::S3ExportConfiguration.new
        data = {}
        data['Bucket'] = stub[:bucket] unless stub[:bucket].nil?
        data['Prefix'] = stub[:prefix] unless stub[:prefix].nil?
        data['EncryptionConfiguration'] = Stubs::S3EncryptionConfiguration.stub(stub[:encryption_configuration]) unless stub[:encryption_configuration].nil?
        data
      end
    end

    # Structure Stubber for S3EncryptionConfiguration
    class S3EncryptionConfiguration
      def self.default(visited=[])
        return nil if visited.include?('S3EncryptionConfiguration')
        visited = visited + ['S3EncryptionConfiguration']
        {
          object_encryption_type: 'object_encryption_type',
          kms_key_arn: 'kms_key_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3EncryptionConfiguration.new
        data = {}
        data['ObjectEncryptionType'] = stub[:object_encryption_type] unless stub[:object_encryption_type].nil?
        data['KmsKeyArn'] = stub[:kms_key_arn] unless stub[:kms_key_arn].nil?
        data
      end
    end

    # Operation Stubber for DescribeLedger
    class DescribeLedger
      def self.default(visited=[])
        {
          name: 'name',
          arn: 'arn',
          state: 'state',
          creation_date_time: Time.now,
          permissions_mode: 'permissions_mode',
          deletion_protection: false,
          encryption_description: LedgerEncryptionDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['CreationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['PermissionsMode'] = stub[:permissions_mode] unless stub[:permissions_mode].nil?
        data['DeletionProtection'] = stub[:deletion_protection] unless stub[:deletion_protection].nil?
        data['EncryptionDescription'] = Stubs::LedgerEncryptionDescription.stub(stub[:encryption_description]) unless stub[:encryption_description].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for LedgerEncryptionDescription
    class LedgerEncryptionDescription
      def self.default(visited=[])
        return nil if visited.include?('LedgerEncryptionDescription')
        visited = visited + ['LedgerEncryptionDescription']
        {
          kms_key_arn: 'kms_key_arn',
          encryption_status: 'encryption_status',
          inaccessible_kms_key_date_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::LedgerEncryptionDescription.new
        data = {}
        data['KmsKeyArn'] = stub[:kms_key_arn] unless stub[:kms_key_arn].nil?
        data['EncryptionStatus'] = stub[:encryption_status] unless stub[:encryption_status].nil?
        data['InaccessibleKmsKeyDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:inaccessible_kms_key_date_time]).to_i unless stub[:inaccessible_kms_key_date_time].nil?
        data
      end
    end

    # Operation Stubber for ExportJournalToS3
    class ExportJournalToS3
      def self.default(visited=[])
        {
          export_id: 'export_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ExportId'] = stub[:export_id] unless stub[:export_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetBlock
    class GetBlock
      def self.default(visited=[])
        {
          block: ValueHolder.default(visited),
          proof: ValueHolder.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Block'] = Stubs::ValueHolder.stub(stub[:block]) unless stub[:block].nil?
        data['Proof'] = Stubs::ValueHolder.stub(stub[:proof]) unless stub[:proof].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ValueHolder
    class ValueHolder
      def self.default(visited=[])
        return nil if visited.include?('ValueHolder')
        visited = visited + ['ValueHolder']
        {
          ion_text: 'ion_text',
        }
      end

      def self.stub(stub)
        stub ||= Types::ValueHolder.new
        data = {}
        data['IonText'] = stub[:ion_text] unless stub[:ion_text].nil?
        data
      end
    end

    # Operation Stubber for GetDigest
    class GetDigest
      def self.default(visited=[])
        {
          digest: 'digest',
          digest_tip_address: ValueHolder.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Digest'] = Base64::encode64(stub[:digest]) unless stub[:digest].nil?
        data['DigestTipAddress'] = Stubs::ValueHolder.stub(stub[:digest_tip_address]) unless stub[:digest_tip_address].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetRevision
    class GetRevision
      def self.default(visited=[])
        {
          proof: ValueHolder.default(visited),
          revision: ValueHolder.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Proof'] = Stubs::ValueHolder.stub(stub[:proof]) unless stub[:proof].nil?
        data['Revision'] = Stubs::ValueHolder.stub(stub[:revision]) unless stub[:revision].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListJournalKinesisStreamsForLedger
    class ListJournalKinesisStreamsForLedger
      def self.default(visited=[])
        {
          streams: JournalKinesisStreamDescriptionList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Streams'] = Stubs::JournalKinesisStreamDescriptionList.stub(stub[:streams]) unless stub[:streams].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for JournalKinesisStreamDescriptionList
    class JournalKinesisStreamDescriptionList
      def self.default(visited=[])
        return nil if visited.include?('JournalKinesisStreamDescriptionList')
        visited = visited + ['JournalKinesisStreamDescriptionList']
        [
          JournalKinesisStreamDescription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::JournalKinesisStreamDescription.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListJournalS3Exports
    class ListJournalS3Exports
      def self.default(visited=[])
        {
          journal_s3_exports: JournalS3ExportList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['JournalS3Exports'] = Stubs::JournalS3ExportList.stub(stub[:journal_s3_exports]) unless stub[:journal_s3_exports].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for JournalS3ExportList
    class JournalS3ExportList
      def self.default(visited=[])
        return nil if visited.include?('JournalS3ExportList')
        visited = visited + ['JournalS3ExportList']
        [
          JournalS3ExportDescription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::JournalS3ExportDescription.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListJournalS3ExportsForLedger
    class ListJournalS3ExportsForLedger
      def self.default(visited=[])
        {
          journal_s3_exports: JournalS3ExportList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['JournalS3Exports'] = Stubs::JournalS3ExportList.stub(stub[:journal_s3_exports]) unless stub[:journal_s3_exports].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListLedgers
    class ListLedgers
      def self.default(visited=[])
        {
          ledgers: LedgerList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Ledgers'] = Stubs::LedgerList.stub(stub[:ledgers]) unless stub[:ledgers].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for LedgerList
    class LedgerList
      def self.default(visited=[])
        return nil if visited.include?('LedgerList')
        visited = visited + ['LedgerList']
        [
          LedgerSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::LedgerSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LedgerSummary
    class LedgerSummary
      def self.default(visited=[])
        return nil if visited.include?('LedgerSummary')
        visited = visited + ['LedgerSummary']
        {
          name: 'name',
          state: 'state',
          creation_date_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::LedgerSummary.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['CreationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for Tags
    class Tags
      def self.default(visited=[])
        return nil if visited.include?('Tags')
        visited = visited + ['Tags']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    # Operation Stubber for StreamJournalToKinesis
    class StreamJournalToKinesis
      def self.default(visited=[])
        {
          stream_id: 'stream_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['StreamId'] = stub[:stream_id] unless stub[:stream_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateLedger
    class UpdateLedger
      def self.default(visited=[])
        {
          name: 'name',
          arn: 'arn',
          state: 'state',
          creation_date_time: Time.now,
          deletion_protection: false,
          encryption_description: LedgerEncryptionDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['CreationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['DeletionProtection'] = stub[:deletion_protection] unless stub[:deletion_protection].nil?
        data['EncryptionDescription'] = Stubs::LedgerEncryptionDescription.stub(stub[:encryption_description]) unless stub[:encryption_description].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateLedgerPermissionsMode
    class UpdateLedgerPermissionsMode
      def self.default(visited=[])
        {
          name: 'name',
          arn: 'arn',
          permissions_mode: 'permissions_mode',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['PermissionsMode'] = stub[:permissions_mode] unless stub[:permissions_mode].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
