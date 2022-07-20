# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::QLDB
  module Builders

    # Operation Builder for CancelJournalKinesisStream
    class CancelJournalKinesisStream
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:ledger_name].to_s.empty?
          raise ArgumentError, "HTTP label :ledger_name cannot be nil or empty."
        end
        if input[:stream_id].to_s.empty?
          raise ArgumentError, "HTTP label :stream_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/ledgers/%<LedgerName>s/journal-kinesis-streams/%<StreamId>s',
            LedgerName: Hearth::HTTP.uri_escape(input[:ledger_name].to_s),
            StreamId: Hearth::HTTP.uri_escape(input[:stream_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for CreateLedger
    class CreateLedger
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/ledgers')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        data['PermissionsMode'] = input[:permissions_mode] unless input[:permissions_mode].nil?
        data['DeletionProtection'] = input[:deletion_protection] unless input[:deletion_protection].nil?
        data['KmsKey'] = input[:kms_key] unless input[:kms_key].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for Tags
    class Tags
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    # Operation Builder for DeleteLedger
    class DeleteLedger
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/ledgers/%<Name>s',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeJournalKinesisStream
    class DescribeJournalKinesisStream
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:ledger_name].to_s.empty?
          raise ArgumentError, "HTTP label :ledger_name cannot be nil or empty."
        end
        if input[:stream_id].to_s.empty?
          raise ArgumentError, "HTTP label :stream_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/ledgers/%<LedgerName>s/journal-kinesis-streams/%<StreamId>s',
            LedgerName: Hearth::HTTP.uri_escape(input[:ledger_name].to_s),
            StreamId: Hearth::HTTP.uri_escape(input[:stream_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeJournalS3Export
    class DescribeJournalS3Export
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        if input[:export_id].to_s.empty?
          raise ArgumentError, "HTTP label :export_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/ledgers/%<Name>s/journal-s3-exports/%<ExportId>s',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s),
            ExportId: Hearth::HTTP.uri_escape(input[:export_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeLedger
    class DescribeLedger
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/ledgers/%<Name>s',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ExportJournalToS3
    class ExportJournalToS3
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/ledgers/%<Name>s/journal-s3-exports',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['InclusiveStartTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:inclusive_start_time]).to_i unless input[:inclusive_start_time].nil?
        data['ExclusiveEndTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:exclusive_end_time]).to_i unless input[:exclusive_end_time].nil?
        data['S3ExportConfiguration'] = Builders::S3ExportConfiguration.build(input[:s3_export_configuration]) unless input[:s3_export_configuration].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['OutputFormat'] = input[:output_format] unless input[:output_format].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for S3ExportConfiguration
    class S3ExportConfiguration
      def self.build(input)
        data = {}
        data['Bucket'] = input[:bucket] unless input[:bucket].nil?
        data['Prefix'] = input[:prefix] unless input[:prefix].nil?
        data['EncryptionConfiguration'] = Builders::S3EncryptionConfiguration.build(input[:encryption_configuration]) unless input[:encryption_configuration].nil?
        data
      end
    end

    # Structure Builder for S3EncryptionConfiguration
    class S3EncryptionConfiguration
      def self.build(input)
        data = {}
        data['ObjectEncryptionType'] = input[:object_encryption_type] unless input[:object_encryption_type].nil?
        data['KmsKeyArn'] = input[:kms_key_arn] unless input[:kms_key_arn].nil?
        data
      end
    end

    # Operation Builder for GetBlock
    class GetBlock
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/ledgers/%<Name>s/block',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['BlockAddress'] = Builders::ValueHolder.build(input[:block_address]) unless input[:block_address].nil?
        data['DigestTipAddress'] = Builders::ValueHolder.build(input[:digest_tip_address]) unless input[:digest_tip_address].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ValueHolder
    class ValueHolder
      def self.build(input)
        data = {}
        data['IonText'] = input[:ion_text] unless input[:ion_text].nil?
        data
      end
    end

    # Operation Builder for GetDigest
    class GetDigest
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/ledgers/%<Name>s/digest',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetRevision
    class GetRevision
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/ledgers/%<Name>s/revision',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['BlockAddress'] = Builders::ValueHolder.build(input[:block_address]) unless input[:block_address].nil?
        data['DocumentId'] = input[:document_id] unless input[:document_id].nil?
        data['DigestTipAddress'] = Builders::ValueHolder.build(input[:digest_tip_address]) unless input[:digest_tip_address].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListJournalKinesisStreamsForLedger
    class ListJournalKinesisStreamsForLedger
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:ledger_name].to_s.empty?
          raise ArgumentError, "HTTP label :ledger_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/ledgers/%<LedgerName>s/journal-kinesis-streams',
            LedgerName: Hearth::HTTP.uri_escape(input[:ledger_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['max_results'] = input[:max_results].to_s unless input[:max_results].nil?
        params['next_token'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListJournalS3Exports
    class ListJournalS3Exports
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/journal-s3-exports')
        params = Hearth::Query::ParamList.new
        params['max_results'] = input[:max_results].to_s unless input[:max_results].nil?
        params['next_token'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListJournalS3ExportsForLedger
    class ListJournalS3ExportsForLedger
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/ledgers/%<Name>s/journal-s3-exports',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['max_results'] = input[:max_results].to_s unless input[:max_results].nil?
        params['next_token'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListLedgers
    class ListLedgers
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/ledgers')
        params = Hearth::Query::ParamList.new
        params['max_results'] = input[:max_results].to_s unless input[:max_results].nil?
        params['next_token'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for StreamJournalToKinesis
    class StreamJournalToKinesis
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:ledger_name].to_s.empty?
          raise ArgumentError, "HTTP label :ledger_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/ledgers/%<LedgerName>s/journal-kinesis-streams',
            LedgerName: Hearth::HTTP.uri_escape(input[:ledger_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['Tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        data['InclusiveStartTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:inclusive_start_time]).to_i unless input[:inclusive_start_time].nil?
        data['ExclusiveEndTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:exclusive_end_time]).to_i unless input[:exclusive_end_time].nil?
        data['KinesisConfiguration'] = Builders::KinesisConfiguration.build(input[:kinesis_configuration]) unless input[:kinesis_configuration].nil?
        data['StreamName'] = input[:stream_name] unless input[:stream_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for KinesisConfiguration
    class KinesisConfiguration
      def self.build(input)
        data = {}
        data['StreamArn'] = input[:stream_arn] unless input[:stream_arn].nil?
        data['AggregationEnabled'] = input[:aggregation_enabled] unless input[:aggregation_enabled].nil?
        data
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:tag_keys].nil? || input[:tag_keys].empty?
          params['tagKeys'] = input[:tag_keys].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateLedger
    class UpdateLedger
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/ledgers/%<Name>s',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['DeletionProtection'] = input[:deletion_protection] unless input[:deletion_protection].nil?
        data['KmsKey'] = input[:kms_key] unless input[:kms_key].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateLedgerPermissionsMode
    class UpdateLedgerPermissionsMode
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/ledgers/%<Name>s/permissions-mode',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['PermissionsMode'] = input[:permissions_mode] unless input[:permissions_mode].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
