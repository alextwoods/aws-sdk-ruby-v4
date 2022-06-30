# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::EBS
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
      end
    end

    class Block
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Block, context: context)
        Hearth::Validator.validate!(input[:block_index], ::Integer, context: "#{context}[:block_index]")
        Hearth::Validator.validate!(input[:block_token], ::String, context: "#{context}[:block_token]")
      end
    end

    class Blocks
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Block.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ChangedBlock
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChangedBlock, context: context)
        Hearth::Validator.validate!(input[:block_index], ::Integer, context: "#{context}[:block_index]")
        Hearth::Validator.validate!(input[:first_block_token], ::String, context: "#{context}[:first_block_token]")
        Hearth::Validator.validate!(input[:second_block_token], ::String, context: "#{context}[:second_block_token]")
      end
    end

    class ChangedBlocks
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ChangedBlock.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CompleteSnapshotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CompleteSnapshotInput, context: context)
        Hearth::Validator.validate!(input[:snapshot_id], ::String, context: "#{context}[:snapshot_id]")
        Hearth::Validator.validate!(input[:changed_blocks_count], ::Integer, context: "#{context}[:changed_blocks_count]")
        Hearth::Validator.validate!(input[:checksum], ::String, context: "#{context}[:checksum]")
        Hearth::Validator.validate!(input[:checksum_algorithm], ::String, context: "#{context}[:checksum_algorithm]")
        Hearth::Validator.validate!(input[:checksum_aggregation_method], ::String, context: "#{context}[:checksum_aggregation_method]")
      end
    end

    class CompleteSnapshotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CompleteSnapshotOutput, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class ConcurrentLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConcurrentLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class GetSnapshotBlockInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSnapshotBlockInput, context: context)
        Hearth::Validator.validate!(input[:snapshot_id], ::String, context: "#{context}[:snapshot_id]")
        Hearth::Validator.validate!(input[:block_index], ::Integer, context: "#{context}[:block_index]")
        Hearth::Validator.validate!(input[:block_token], ::String, context: "#{context}[:block_token]")
      end
    end

    class GetSnapshotBlockOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSnapshotBlockOutput, context: context)
        Hearth::Validator.validate!(input[:data_length], ::Integer, context: "#{context}[:data_length]")
        unless input[:block_data].respond_to?(:read) || input[:block_data].respond_to?(:readpartial)
          raise ArgumentError, "Expected #{context} to be an IO like object, got #{input[:block_data].class}"
        end
        Hearth::Validator.validate!(input[:checksum], ::String, context: "#{context}[:checksum]")
        Hearth::Validator.validate!(input[:checksum_algorithm], ::String, context: "#{context}[:checksum_algorithm]")
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListChangedBlocksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListChangedBlocksInput, context: context)
        Hearth::Validator.validate!(input[:first_snapshot_id], ::String, context: "#{context}[:first_snapshot_id]")
        Hearth::Validator.validate!(input[:second_snapshot_id], ::String, context: "#{context}[:second_snapshot_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:starting_block_index], ::Integer, context: "#{context}[:starting_block_index]")
      end
    end

    class ListChangedBlocksOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListChangedBlocksOutput, context: context)
        Validators::ChangedBlocks.validate!(input[:changed_blocks], context: "#{context}[:changed_blocks]") unless input[:changed_blocks].nil?
        Hearth::Validator.validate!(input[:expiry_time], ::Time, context: "#{context}[:expiry_time]")
        Hearth::Validator.validate!(input[:volume_size], ::Integer, context: "#{context}[:volume_size]")
        Hearth::Validator.validate!(input[:block_size], ::Integer, context: "#{context}[:block_size]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSnapshotBlocksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSnapshotBlocksInput, context: context)
        Hearth::Validator.validate!(input[:snapshot_id], ::String, context: "#{context}[:snapshot_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:starting_block_index], ::Integer, context: "#{context}[:starting_block_index]")
      end
    end

    class ListSnapshotBlocksOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSnapshotBlocksOutput, context: context)
        Validators::Blocks.validate!(input[:blocks], context: "#{context}[:blocks]") unless input[:blocks].nil?
        Hearth::Validator.validate!(input[:expiry_time], ::Time, context: "#{context}[:expiry_time]")
        Hearth::Validator.validate!(input[:volume_size], ::Integer, context: "#{context}[:volume_size]")
        Hearth::Validator.validate!(input[:block_size], ::Integer, context: "#{context}[:block_size]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class PutSnapshotBlockInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutSnapshotBlockInput, context: context)
        Hearth::Validator.validate!(input[:snapshot_id], ::String, context: "#{context}[:snapshot_id]")
        Hearth::Validator.validate!(input[:block_index], ::Integer, context: "#{context}[:block_index]")
        unless input[:block_data].respond_to?(:read) || input[:block_data].respond_to?(:readpartial)
          raise ArgumentError, "Expected #{context} to be an IO like object, got #{input[:block_data].class}"
        end
        Hearth::Validator.validate!(input[:data_length], ::Integer, context: "#{context}[:data_length]")
        Hearth::Validator.validate!(input[:progress], ::Integer, context: "#{context}[:progress]")
        Hearth::Validator.validate!(input[:checksum], ::String, context: "#{context}[:checksum]")
        Hearth::Validator.validate!(input[:checksum_algorithm], ::String, context: "#{context}[:checksum_algorithm]")
      end
    end

    class PutSnapshotBlockOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutSnapshotBlockOutput, context: context)
        Hearth::Validator.validate!(input[:checksum], ::String, context: "#{context}[:checksum]")
        Hearth::Validator.validate!(input[:checksum_algorithm], ::String, context: "#{context}[:checksum_algorithm]")
      end
    end

    class RequestThrottledException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RequestThrottledException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
      end
    end

    class StartSnapshotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartSnapshotInput, context: context)
        Hearth::Validator.validate!(input[:volume_size], ::Integer, context: "#{context}[:volume_size]")
        Hearth::Validator.validate!(input[:parent_snapshot_id], ::String, context: "#{context}[:parent_snapshot_id]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:encrypted]")
        Hearth::Validator.validate!(input[:kms_key_arn], ::String, context: "#{context}[:kms_key_arn]")
        Hearth::Validator.validate!(input[:timeout], ::Integer, context: "#{context}[:timeout]")
      end
    end

    class StartSnapshotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartSnapshotOutput, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:snapshot_id], ::String, context: "#{context}[:snapshot_id]")
        Hearth::Validator.validate!(input[:owner_id], ::String, context: "#{context}[:owner_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:volume_size], ::Integer, context: "#{context}[:volume_size]")
        Hearth::Validator.validate!(input[:block_size], ::Integer, context: "#{context}[:block_size]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:parent_snapshot_id], ::String, context: "#{context}[:parent_snapshot_id]")
        Hearth::Validator.validate!(input[:kms_key_arn], ::String, context: "#{context}[:kms_key_arn]")
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class Tags
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
      end
    end

  end
end
