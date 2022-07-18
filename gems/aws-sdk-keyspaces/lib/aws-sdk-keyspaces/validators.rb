# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::Keyspaces
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CapacitySpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CapacitySpecification, context: context)
        Hearth::Validator.validate!(input[:throughput_mode], ::String, context: "#{context}[:throughput_mode]")
        Hearth::Validator.validate!(input[:read_capacity_units], ::Integer, context: "#{context}[:read_capacity_units]")
        Hearth::Validator.validate!(input[:write_capacity_units], ::Integer, context: "#{context}[:write_capacity_units]")
      end
    end

    class CapacitySpecificationSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CapacitySpecificationSummary, context: context)
        Hearth::Validator.validate!(input[:throughput_mode], ::String, context: "#{context}[:throughput_mode]")
        Hearth::Validator.validate!(input[:read_capacity_units], ::Integer, context: "#{context}[:read_capacity_units]")
        Hearth::Validator.validate!(input[:write_capacity_units], ::Integer, context: "#{context}[:write_capacity_units]")
        Hearth::Validator.validate!(input[:last_update_to_pay_per_request_timestamp], ::Time, context: "#{context}[:last_update_to_pay_per_request_timestamp]")
      end
    end

    class ClusteringKey
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClusteringKey, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:order_by], ::String, context: "#{context}[:order_by]")
      end
    end

    class ClusteringKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ClusteringKey.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ColumnDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ColumnDefinition, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class ColumnDefinitionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ColumnDefinition.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Comment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Comment, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CreateKeyspaceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateKeyspaceInput, context: context)
        Hearth::Validator.validate!(input[:keyspace_name], ::String, context: "#{context}[:keyspace_name]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateKeyspaceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateKeyspaceOutput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class CreateTableInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTableInput, context: context)
        Hearth::Validator.validate!(input[:keyspace_name], ::String, context: "#{context}[:keyspace_name]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        SchemaDefinition.validate!(input[:schema_definition], context: "#{context}[:schema_definition]") unless input[:schema_definition].nil?
        Comment.validate!(input[:comment], context: "#{context}[:comment]") unless input[:comment].nil?
        CapacitySpecification.validate!(input[:capacity_specification], context: "#{context}[:capacity_specification]") unless input[:capacity_specification].nil?
        EncryptionSpecification.validate!(input[:encryption_specification], context: "#{context}[:encryption_specification]") unless input[:encryption_specification].nil?
        PointInTimeRecovery.validate!(input[:point_in_time_recovery], context: "#{context}[:point_in_time_recovery]") unless input[:point_in_time_recovery].nil?
        TimeToLive.validate!(input[:ttl], context: "#{context}[:ttl]") unless input[:ttl].nil?
        Hearth::Validator.validate!(input[:default_time_to_live], ::Integer, context: "#{context}[:default_time_to_live]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateTableOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTableOutput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class DeleteKeyspaceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteKeyspaceInput, context: context)
        Hearth::Validator.validate!(input[:keyspace_name], ::String, context: "#{context}[:keyspace_name]")
      end
    end

    class DeleteKeyspaceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteKeyspaceOutput, context: context)
      end
    end

    class DeleteTableInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTableInput, context: context)
        Hearth::Validator.validate!(input[:keyspace_name], ::String, context: "#{context}[:keyspace_name]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
      end
    end

    class DeleteTableOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTableOutput, context: context)
      end
    end

    class EncryptionSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EncryptionSpecification, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:kms_key_identifier], ::String, context: "#{context}[:kms_key_identifier]")
      end
    end

    class GetKeyspaceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetKeyspaceInput, context: context)
        Hearth::Validator.validate!(input[:keyspace_name], ::String, context: "#{context}[:keyspace_name]")
      end
    end

    class GetKeyspaceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetKeyspaceOutput, context: context)
        Hearth::Validator.validate!(input[:keyspace_name], ::String, context: "#{context}[:keyspace_name]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class GetTableInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTableInput, context: context)
        Hearth::Validator.validate!(input[:keyspace_name], ::String, context: "#{context}[:keyspace_name]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
      end
    end

    class GetTableOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTableOutput, context: context)
        Hearth::Validator.validate!(input[:keyspace_name], ::String, context: "#{context}[:keyspace_name]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:creation_timestamp], ::Time, context: "#{context}[:creation_timestamp]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        SchemaDefinition.validate!(input[:schema_definition], context: "#{context}[:schema_definition]") unless input[:schema_definition].nil?
        CapacitySpecificationSummary.validate!(input[:capacity_specification], context: "#{context}[:capacity_specification]") unless input[:capacity_specification].nil?
        EncryptionSpecification.validate!(input[:encryption_specification], context: "#{context}[:encryption_specification]") unless input[:encryption_specification].nil?
        PointInTimeRecoverySummary.validate!(input[:point_in_time_recovery], context: "#{context}[:point_in_time_recovery]") unless input[:point_in_time_recovery].nil?
        TimeToLive.validate!(input[:ttl], context: "#{context}[:ttl]") unless input[:ttl].nil?
        Hearth::Validator.validate!(input[:default_time_to_live], ::Integer, context: "#{context}[:default_time_to_live]")
        Comment.validate!(input[:comment], context: "#{context}[:comment]") unless input[:comment].nil?
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KeyspaceSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KeyspaceSummary, context: context)
        Hearth::Validator.validate!(input[:keyspace_name], ::String, context: "#{context}[:keyspace_name]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class KeyspaceSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          KeyspaceSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListKeyspacesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListKeyspacesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListKeyspacesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListKeyspacesOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        KeyspaceSummaryList.validate!(input[:keyspaces], context: "#{context}[:keyspaces]") unless input[:keyspaces].nil?
      end
    end

    class ListTablesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTablesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:keyspace_name], ::String, context: "#{context}[:keyspace_name]")
      end
    end

    class ListTablesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTablesOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        TableSummaryList.validate!(input[:tables], context: "#{context}[:tables]") unless input[:tables].nil?
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class PartitionKey
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PartitionKey, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class PartitionKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PartitionKey.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PointInTimeRecovery
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PointInTimeRecovery, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class PointInTimeRecoverySummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PointInTimeRecoverySummary, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:earliest_restorable_timestamp], ::Time, context: "#{context}[:earliest_restorable_timestamp]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class RestoreTableInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestoreTableInput, context: context)
        Hearth::Validator.validate!(input[:source_keyspace_name], ::String, context: "#{context}[:source_keyspace_name]")
        Hearth::Validator.validate!(input[:source_table_name], ::String, context: "#{context}[:source_table_name]")
        Hearth::Validator.validate!(input[:target_keyspace_name], ::String, context: "#{context}[:target_keyspace_name]")
        Hearth::Validator.validate!(input[:target_table_name], ::String, context: "#{context}[:target_table_name]")
        Hearth::Validator.validate!(input[:restore_timestamp], ::Time, context: "#{context}[:restore_timestamp]")
        CapacitySpecification.validate!(input[:capacity_specification_override], context: "#{context}[:capacity_specification_override]") unless input[:capacity_specification_override].nil?
        EncryptionSpecification.validate!(input[:encryption_specification_override], context: "#{context}[:encryption_specification_override]") unless input[:encryption_specification_override].nil?
        PointInTimeRecovery.validate!(input[:point_in_time_recovery_override], context: "#{context}[:point_in_time_recovery_override]") unless input[:point_in_time_recovery_override].nil?
        TagList.validate!(input[:tags_override], context: "#{context}[:tags_override]") unless input[:tags_override].nil?
      end
    end

    class RestoreTableOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestoreTableOutput, context: context)
        Hearth::Validator.validate!(input[:restored_table_arn], ::String, context: "#{context}[:restored_table_arn]")
      end
    end

    class SchemaDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SchemaDefinition, context: context)
        ColumnDefinitionList.validate!(input[:all_columns], context: "#{context}[:all_columns]") unless input[:all_columns].nil?
        PartitionKeyList.validate!(input[:partition_keys], context: "#{context}[:partition_keys]") unless input[:partition_keys].nil?
        ClusteringKeyList.validate!(input[:clustering_keys], context: "#{context}[:clustering_keys]") unless input[:clustering_keys].nil?
        StaticColumnList.validate!(input[:static_columns], context: "#{context}[:static_columns]") unless input[:static_columns].nil?
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class StaticColumn
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StaticColumn, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class StaticColumnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          StaticColumn.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TableSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TableSummary, context: context)
        Hearth::Validator.validate!(input[:keyspace_name], ::String, context: "#{context}[:keyspace_name]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class TableSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TableSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class TimeToLive
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TimeToLive, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateTableInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTableInput, context: context)
        Hearth::Validator.validate!(input[:keyspace_name], ::String, context: "#{context}[:keyspace_name]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        ColumnDefinitionList.validate!(input[:add_columns], context: "#{context}[:add_columns]") unless input[:add_columns].nil?
        CapacitySpecification.validate!(input[:capacity_specification], context: "#{context}[:capacity_specification]") unless input[:capacity_specification].nil?
        EncryptionSpecification.validate!(input[:encryption_specification], context: "#{context}[:encryption_specification]") unless input[:encryption_specification].nil?
        PointInTimeRecovery.validate!(input[:point_in_time_recovery], context: "#{context}[:point_in_time_recovery]") unless input[:point_in_time_recovery].nil?
        TimeToLive.validate!(input[:ttl], context: "#{context}[:ttl]") unless input[:ttl].nil?
        Hearth::Validator.validate!(input[:default_time_to_live], ::Integer, context: "#{context}[:default_time_to_live]")
      end
    end

    class UpdateTableOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTableOutput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

  end
end
