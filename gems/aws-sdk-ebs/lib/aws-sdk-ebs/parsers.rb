# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::EBS
  module Parsers

    # Operation Parser for CompleteSnapshot
    class CompleteSnapshot
      def self.parse(http_resp)
        data = Types::CompleteSnapshotOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.status = map['Status']
        data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.reason = map['Reason']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.reason = map['Reason']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.reason = map['Reason']
        data
      end
    end

    # Error Parser for RequestThrottledException
    class RequestThrottledException
      def self.parse(http_resp)
        data = Types::RequestThrottledException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.reason = map['Reason']
        data
      end
    end

    # Error Parser for ServiceQuotaExceededException
    class ServiceQuotaExceededException
      def self.parse(http_resp)
        data = Types::ServiceQuotaExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.reason = map['Reason']
        data
      end
    end

    # Operation Parser for GetSnapshotBlock
    class GetSnapshotBlock
      def self.parse(http_resp)
        data = Types::GetSnapshotBlockOutput.new
        data.data_length = http_resp.headers['x-amz-Data-Length'].to_i unless http_resp.headers['x-amz-Data-Length'].nil?
        data.checksum = http_resp.headers['x-amz-Checksum']
        data.checksum_algorithm = http_resp.headers['x-amz-Checksum-Algorithm']
        data.block_data = http_resp.body
        data
      end
    end

    # Operation Parser for ListChangedBlocks
    class ListChangedBlocks
      def self.parse(http_resp)
        data = Types::ListChangedBlocksOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.changed_blocks = (ChangedBlocks.parse(map['ChangedBlocks']) unless map['ChangedBlocks'].nil?)
        data.expiry_time = Time.at(map['ExpiryTime'].to_i) if map['ExpiryTime']
        data.volume_size = map['VolumeSize']
        data.block_size = map['BlockSize']
        data.next_token = map['NextToken']
        data
      end
    end

    class ChangedBlocks
      def self.parse(list)
        data = []
        list.map do |value|
          data << ChangedBlock.parse(value) unless value.nil?
        end
        data
      end
    end

    class ChangedBlock
      def self.parse(map)
        data = Types::ChangedBlock.new
        data.block_index = map['BlockIndex']
        data.first_block_token = map['FirstBlockToken']
        data.second_block_token = map['SecondBlockToken']
        return data
      end
    end

    # Operation Parser for ListSnapshotBlocks
    class ListSnapshotBlocks
      def self.parse(http_resp)
        data = Types::ListSnapshotBlocksOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.blocks = (Blocks.parse(map['Blocks']) unless map['Blocks'].nil?)
        data.expiry_time = Time.at(map['ExpiryTime'].to_i) if map['ExpiryTime']
        data.volume_size = map['VolumeSize']
        data.block_size = map['BlockSize']
        data.next_token = map['NextToken']
        data
      end
    end

    class Blocks
      def self.parse(list)
        data = []
        list.map do |value|
          data << Block.parse(value) unless value.nil?
        end
        data
      end
    end

    class Block
      def self.parse(map)
        data = Types::Block.new
        data.block_index = map['BlockIndex']
        data.block_token = map['BlockToken']
        return data
      end
    end

    # Operation Parser for PutSnapshotBlock
    class PutSnapshotBlock
      def self.parse(http_resp)
        data = Types::PutSnapshotBlockOutput.new
        data.checksum = http_resp.headers['x-amz-Checksum']
        data.checksum_algorithm = http_resp.headers['x-amz-Checksum-Algorithm']
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for StartSnapshot
    class StartSnapshot
      def self.parse(http_resp)
        data = Types::StartSnapshotOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.description = map['Description']
        data.snapshot_id = map['SnapshotId']
        data.owner_id = map['OwnerId']
        data.status = map['Status']
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        data.volume_size = map['VolumeSize']
        data.block_size = map['BlockSize']
        data.tags = (Tags.parse(map['Tags']) unless map['Tags'].nil?)
        data.parent_snapshot_id = map['ParentSnapshotId']
        data.kms_key_arn = map['KmsKeyArn']
        data
      end
    end

    class Tags
      def self.parse(list)
        data = []
        list.map do |value|
          data << Tag.parse(value) unless value.nil?
        end
        data
      end
    end

    class Tag
      def self.parse(map)
        data = Types::Tag.new
        data.key = map['Key']
        data.value = map['Value']
        return data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ConcurrentLimitExceededException
    class ConcurrentLimitExceededException
      def self.parse(http_resp)
        data = Types::ConcurrentLimitExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end
  end
end
