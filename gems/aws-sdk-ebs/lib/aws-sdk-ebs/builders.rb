# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::EBS
  module Builders

    # Operation Builder for CompleteSnapshot
    class CompleteSnapshot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:snapshot_id].to_s.empty?
          raise ArgumentError, "HTTP label :snapshot_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/snapshots/completion/%<SnapshotId>s',
            SnapshotId: Hearth::HTTP.uri_escape(input[:snapshot_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-ChangedBlocksCount'] = input[:changed_blocks_count].to_s unless input[:changed_blocks_count].nil?
        http_req.headers['x-amz-Checksum'] = input[:checksum] unless input[:checksum].nil? || input[:checksum].empty?
        http_req.headers['x-amz-Checksum-Algorithm'] = input[:checksum_algorithm] unless input[:checksum_algorithm].nil? || input[:checksum_algorithm].empty?
        http_req.headers['x-amz-Checksum-Aggregation-Method'] = input[:checksum_aggregation_method] unless input[:checksum_aggregation_method].nil? || input[:checksum_aggregation_method].empty?
      end
    end

    # Operation Builder for GetSnapshotBlock
    class GetSnapshotBlock
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:snapshot_id].to_s.empty?
          raise ArgumentError, "HTTP label :snapshot_id cannot be nil or empty."
        end
        if input[:block_index].to_s.empty?
          raise ArgumentError, "HTTP label :block_index cannot be nil or empty."
        end
        http_req.append_path(format(
            '/snapshots/%<SnapshotId>s/blocks/%<BlockIndex>s',
            SnapshotId: Hearth::HTTP.uri_escape(input[:snapshot_id].to_s),
            BlockIndex: Hearth::HTTP.uri_escape(input[:block_index].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['blockToken'] = input[:block_token].to_s unless input[:block_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListChangedBlocks
    class ListChangedBlocks
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:second_snapshot_id].to_s.empty?
          raise ArgumentError, "HTTP label :second_snapshot_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/snapshots/%<SecondSnapshotId>s/changedblocks',
            SecondSnapshotId: Hearth::HTTP.uri_escape(input[:second_snapshot_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['firstSnapshotId'] = input[:first_snapshot_id].to_s unless input[:first_snapshot_id].nil?
        params['pageToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['startingBlockIndex'] = input[:starting_block_index].to_s unless input[:starting_block_index].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListSnapshotBlocks
    class ListSnapshotBlocks
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:snapshot_id].to_s.empty?
          raise ArgumentError, "HTTP label :snapshot_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/snapshots/%<SnapshotId>s/blocks',
            SnapshotId: Hearth::HTTP.uri_escape(input[:snapshot_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['pageToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['startingBlockIndex'] = input[:starting_block_index].to_s unless input[:starting_block_index].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for PutSnapshotBlock
    class PutSnapshotBlock
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:snapshot_id].to_s.empty?
          raise ArgumentError, "HTTP label :snapshot_id cannot be nil or empty."
        end
        if input[:block_index].to_s.empty?
          raise ArgumentError, "HTTP label :block_index cannot be nil or empty."
        end
        http_req.append_path(format(
            '/snapshots/%<SnapshotId>s/blocks/%<BlockIndex>s',
            SnapshotId: Hearth::HTTP.uri_escape(input[:snapshot_id].to_s),
            BlockIndex: Hearth::HTTP.uri_escape(input[:block_index].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.body = input[:block_data]
        http_req.headers['Transfer-Encoding'] = 'chunked'
        http_req.headers['Content-Type'] = 'application/octet-stream'
        http_req.headers['x-amz-Data-Length'] = input[:data_length].to_s unless input[:data_length].nil?
        http_req.headers['x-amz-Progress'] = input[:progress].to_s unless input[:progress].nil?
        http_req.headers['x-amz-Checksum'] = input[:checksum] unless input[:checksum].nil? || input[:checksum].empty?
        http_req.headers['x-amz-Checksum-Algorithm'] = input[:checksum_algorithm] unless input[:checksum_algorithm].nil? || input[:checksum_algorithm].empty?
      end
    end

    # Operation Builder for StartSnapshot
    class StartSnapshot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/snapshots')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['VolumeSize'] = input[:volume_size] unless input[:volume_size].nil?
        data['ParentSnapshotId'] = input[:parent_snapshot_id] unless input[:parent_snapshot_id].nil?
        data['Tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        data['Encrypted'] = input[:encrypted] unless input[:encrypted].nil?
        data['KmsKeyArn'] = input[:kms_key_arn] unless input[:kms_key_arn].nil?
        data['Timeout'] = input[:timeout] unless input[:timeout].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for Tags
    class Tags
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end
  end
end
