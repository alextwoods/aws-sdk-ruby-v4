# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::EBS
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type.reason = params[:reason]
        type
      end
    end

    module Block
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Block, context: context)
        type = Types::Block.new
        type.block_index = params[:block_index]
        type.block_token = params[:block_token]
        type
      end
    end

    module Blocks
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Block.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ChangedBlock
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChangedBlock, context: context)
        type = Types::ChangedBlock.new
        type.block_index = params[:block_index]
        type.first_block_token = params[:first_block_token]
        type.second_block_token = params[:second_block_token]
        type
      end
    end

    module ChangedBlocks
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ChangedBlock.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CompleteSnapshotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CompleteSnapshotInput, context: context)
        type = Types::CompleteSnapshotInput.new
        type.snapshot_id = params[:snapshot_id]
        type.changed_blocks_count = params[:changed_blocks_count]
        type.checksum = params[:checksum]
        type.checksum_algorithm = params[:checksum_algorithm]
        type.checksum_aggregation_method = params[:checksum_aggregation_method]
        type
      end
    end

    module CompleteSnapshotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CompleteSnapshotOutput, context: context)
        type = Types::CompleteSnapshotOutput.new
        type.status = params[:status]
        type
      end
    end

    module ConcurrentLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConcurrentLimitExceededException, context: context)
        type = Types::ConcurrentLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type
      end
    end

    module GetSnapshotBlockInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSnapshotBlockInput, context: context)
        type = Types::GetSnapshotBlockInput.new
        type.snapshot_id = params[:snapshot_id]
        type.block_index = params[:block_index]
        type.block_token = params[:block_token]
        type
      end
    end

    module GetSnapshotBlockOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSnapshotBlockOutput, context: context)
        type = Types::GetSnapshotBlockOutput.new
        type.data_length = params[:data_length]
        io = params[:block_data] || StringIO.new
        unless io.respond_to?(:read) || io.respond_to?(:readpartial)
          io = StringIO.new(io)
        end
        type.block_data = io
        type.checksum = params[:checksum]
        type.checksum_algorithm = params[:checksum_algorithm]
        type
      end
    end

    module InternalServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        type.message = params[:message]
        type
      end
    end

    module ListChangedBlocksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListChangedBlocksInput, context: context)
        type = Types::ListChangedBlocksInput.new
        type.first_snapshot_id = params[:first_snapshot_id]
        type.second_snapshot_id = params[:second_snapshot_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.starting_block_index = params[:starting_block_index]
        type
      end
    end

    module ListChangedBlocksOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListChangedBlocksOutput, context: context)
        type = Types::ListChangedBlocksOutput.new
        type.changed_blocks = ChangedBlocks.build(params[:changed_blocks], context: "#{context}[:changed_blocks]") unless params[:changed_blocks].nil?
        type.expiry_time = params[:expiry_time]
        type.volume_size = params[:volume_size]
        type.block_size = params[:block_size]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSnapshotBlocksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSnapshotBlocksInput, context: context)
        type = Types::ListSnapshotBlocksInput.new
        type.snapshot_id = params[:snapshot_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.starting_block_index = params[:starting_block_index]
        type
      end
    end

    module ListSnapshotBlocksOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSnapshotBlocksOutput, context: context)
        type = Types::ListSnapshotBlocksOutput.new
        type.blocks = Blocks.build(params[:blocks], context: "#{context}[:blocks]") unless params[:blocks].nil?
        type.expiry_time = params[:expiry_time]
        type.volume_size = params[:volume_size]
        type.block_size = params[:block_size]
        type.next_token = params[:next_token]
        type
      end
    end

    module PutSnapshotBlockInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutSnapshotBlockInput, context: context)
        type = Types::PutSnapshotBlockInput.new
        type.snapshot_id = params[:snapshot_id]
        type.block_index = params[:block_index]
        io = params[:block_data] || StringIO.new
        unless io.respond_to?(:read) || io.respond_to?(:readpartial)
          io = StringIO.new(io)
        end
        type.block_data = io
        type.data_length = params[:data_length]
        type.progress = params[:progress]
        type.checksum = params[:checksum]
        type.checksum_algorithm = params[:checksum_algorithm]
        type
      end
    end

    module PutSnapshotBlockOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutSnapshotBlockOutput, context: context)
        type = Types::PutSnapshotBlockOutput.new
        type.checksum = params[:checksum]
        type.checksum_algorithm = params[:checksum_algorithm]
        type
      end
    end

    module RequestThrottledException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RequestThrottledException, context: context)
        type = Types::RequestThrottledException.new
        type.message = params[:message]
        type.reason = params[:reason]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type.reason = params[:reason]
        type
      end
    end

    module ServiceQuotaExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceQuotaExceededException, context: context)
        type = Types::ServiceQuotaExceededException.new
        type.message = params[:message]
        type.reason = params[:reason]
        type
      end
    end

    module StartSnapshotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartSnapshotInput, context: context)
        type = Types::StartSnapshotInput.new
        type.volume_size = params[:volume_size]
        type.parent_snapshot_id = params[:parent_snapshot_id]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.description = params[:description]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.encrypted = params[:encrypted]
        type.kms_key_arn = params[:kms_key_arn]
        type.timeout = params[:timeout]
        type
      end
    end

    module StartSnapshotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartSnapshotOutput, context: context)
        type = Types::StartSnapshotOutput.new
        type.description = params[:description]
        type.snapshot_id = params[:snapshot_id]
        type.owner_id = params[:owner_id]
        type.status = params[:status]
        type.start_time = params[:start_time]
        type.volume_size = params[:volume_size]
        type.block_size = params[:block_size]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.parent_snapshot_id = params[:parent_snapshot_id]
        type.kms_key_arn = params[:kms_key_arn]
        type
      end
    end

    module Tag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module Tags
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type.reason = params[:reason]
        type
      end
    end

  end
end
