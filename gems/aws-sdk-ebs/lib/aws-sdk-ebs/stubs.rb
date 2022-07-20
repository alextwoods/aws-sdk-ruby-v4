# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::EBS
  module Stubs

    # Operation Stubber for CompleteSnapshot
    class CompleteSnapshot
      def self.default(visited=[])
        {
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetSnapshotBlock
    class GetSnapshotBlock
      def self.default(visited=[])
        {
          data_length: 1,
          block_data: 'block_data',
          checksum: 'checksum',
          checksum_algorithm: 'checksum_algorithm',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['x-amz-Data-Length'] = stub[:data_length].to_s unless stub[:data_length].nil?
        http_resp.headers['x-amz-Checksum'] = stub[:checksum] unless stub[:checksum].nil? || stub[:checksum].empty?
        http_resp.headers['x-amz-Checksum-Algorithm'] = stub[:checksum_algorithm] unless stub[:checksum_algorithm].nil? || stub[:checksum_algorithm].empty?
        IO.copy_stream(stub[:block_data], http_resp.body)
      end
    end

    # Operation Stubber for ListChangedBlocks
    class ListChangedBlocks
      def self.default(visited=[])
        {
          changed_blocks: ChangedBlocks.default(visited),
          expiry_time: Time.now,
          volume_size: 1,
          block_size: 1,
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ChangedBlocks'] = Stubs::ChangedBlocks.stub(stub[:changed_blocks]) unless stub[:changed_blocks].nil?
        data['ExpiryTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:expiry_time]).to_i unless stub[:expiry_time].nil?
        data['VolumeSize'] = stub[:volume_size] unless stub[:volume_size].nil?
        data['BlockSize'] = stub[:block_size] unless stub[:block_size].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ChangedBlocks
    class ChangedBlocks
      def self.default(visited=[])
        return nil if visited.include?('ChangedBlocks')
        visited = visited + ['ChangedBlocks']
        [
          ChangedBlock.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ChangedBlock.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ChangedBlock
    class ChangedBlock
      def self.default(visited=[])
        return nil if visited.include?('ChangedBlock')
        visited = visited + ['ChangedBlock']
        {
          block_index: 1,
          first_block_token: 'first_block_token',
          second_block_token: 'second_block_token',
        }
      end

      def self.stub(stub)
        stub ||= Types::ChangedBlock.new
        data = {}
        data['BlockIndex'] = stub[:block_index] unless stub[:block_index].nil?
        data['FirstBlockToken'] = stub[:first_block_token] unless stub[:first_block_token].nil?
        data['SecondBlockToken'] = stub[:second_block_token] unless stub[:second_block_token].nil?
        data
      end
    end

    # Operation Stubber for ListSnapshotBlocks
    class ListSnapshotBlocks
      def self.default(visited=[])
        {
          blocks: Blocks.default(visited),
          expiry_time: Time.now,
          volume_size: 1,
          block_size: 1,
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Blocks'] = Stubs::Blocks.stub(stub[:blocks]) unless stub[:blocks].nil?
        data['ExpiryTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:expiry_time]).to_i unless stub[:expiry_time].nil?
        data['VolumeSize'] = stub[:volume_size] unless stub[:volume_size].nil?
        data['BlockSize'] = stub[:block_size] unless stub[:block_size].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for Blocks
    class Blocks
      def self.default(visited=[])
        return nil if visited.include?('Blocks')
        visited = visited + ['Blocks']
        [
          Block.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Block.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Block
    class Block
      def self.default(visited=[])
        return nil if visited.include?('Block')
        visited = visited + ['Block']
        {
          block_index: 1,
          block_token: 'block_token',
        }
      end

      def self.stub(stub)
        stub ||= Types::Block.new
        data = {}
        data['BlockIndex'] = stub[:block_index] unless stub[:block_index].nil?
        data['BlockToken'] = stub[:block_token] unless stub[:block_token].nil?
        data
      end
    end

    # Operation Stubber for PutSnapshotBlock
    class PutSnapshotBlock
      def self.default(visited=[])
        {
          checksum: 'checksum',
          checksum_algorithm: 'checksum_algorithm',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['x-amz-Checksum'] = stub[:checksum] unless stub[:checksum].nil? || stub[:checksum].empty?
        http_resp.headers['x-amz-Checksum-Algorithm'] = stub[:checksum_algorithm] unless stub[:checksum_algorithm].nil? || stub[:checksum_algorithm].empty?
      end
    end

    # Operation Stubber for StartSnapshot
    class StartSnapshot
      def self.default(visited=[])
        {
          description: 'description',
          snapshot_id: 'snapshot_id',
          owner_id: 'owner_id',
          status: 'status',
          start_time: Time.now,
          volume_size: 1,
          block_size: 1,
          tags: Tags.default(visited),
          parent_snapshot_id: 'parent_snapshot_id',
          kms_key_arn: 'kms_key_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['SnapshotId'] = stub[:snapshot_id] unless stub[:snapshot_id].nil?
        data['OwnerId'] = stub[:owner_id] unless stub[:owner_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['VolumeSize'] = stub[:volume_size] unless stub[:volume_size].nil?
        data['BlockSize'] = stub[:block_size] unless stub[:block_size].nil?
        data['Tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['ParentSnapshotId'] = stub[:parent_snapshot_id] unless stub[:parent_snapshot_id].nil?
        data['KmsKeyArn'] = stub[:kms_key_arn] unless stub[:kms_key_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for Tags
    class Tags
      def self.default(visited=[])
        return nil if visited.include?('Tags')
        visited = visited + ['Tags']
        [
          Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Tag.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Tag
    class Tag
      def self.default(visited=[])
        return nil if visited.include?('Tag')
        visited = visited + ['Tag']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Tag.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end
  end
end
