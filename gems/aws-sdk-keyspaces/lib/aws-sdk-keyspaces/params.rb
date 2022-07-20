# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Keyspaces
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module CapacitySpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CapacitySpecification, context: context)
        type = Types::CapacitySpecification.new
        type.throughput_mode = params[:throughput_mode]
        type.read_capacity_units = params[:read_capacity_units]
        type.write_capacity_units = params[:write_capacity_units]
        type
      end
    end

    module CapacitySpecificationSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CapacitySpecificationSummary, context: context)
        type = Types::CapacitySpecificationSummary.new
        type.throughput_mode = params[:throughput_mode]
        type.read_capacity_units = params[:read_capacity_units]
        type.write_capacity_units = params[:write_capacity_units]
        type.last_update_to_pay_per_request_timestamp = params[:last_update_to_pay_per_request_timestamp]
        type
      end
    end

    module ClusteringKey
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClusteringKey, context: context)
        type = Types::ClusteringKey.new
        type.name = params[:name]
        type.order_by = params[:order_by]
        type
      end
    end

    module ClusteringKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ClusteringKey.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ColumnDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ColumnDefinition, context: context)
        type = Types::ColumnDefinition.new
        type.name = params[:name]
        type.type = params[:type]
        type
      end
    end

    module ColumnDefinitionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ColumnDefinition.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Comment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Comment, context: context)
        type = Types::Comment.new
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

    module CreateKeyspaceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateKeyspaceInput, context: context)
        type = Types::CreateKeyspaceInput.new
        type.keyspace_name = params[:keyspace_name]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateKeyspaceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateKeyspaceOutput, context: context)
        type = Types::CreateKeyspaceOutput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module CreateTableInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTableInput, context: context)
        type = Types::CreateTableInput.new
        type.keyspace_name = params[:keyspace_name]
        type.table_name = params[:table_name]
        type.schema_definition = SchemaDefinition.build(params[:schema_definition], context: "#{context}[:schema_definition]") unless params[:schema_definition].nil?
        type.comment = Comment.build(params[:comment], context: "#{context}[:comment]") unless params[:comment].nil?
        type.capacity_specification = CapacitySpecification.build(params[:capacity_specification], context: "#{context}[:capacity_specification]") unless params[:capacity_specification].nil?
        type.encryption_specification = EncryptionSpecification.build(params[:encryption_specification], context: "#{context}[:encryption_specification]") unless params[:encryption_specification].nil?
        type.point_in_time_recovery = PointInTimeRecovery.build(params[:point_in_time_recovery], context: "#{context}[:point_in_time_recovery]") unless params[:point_in_time_recovery].nil?
        type.ttl = TimeToLive.build(params[:ttl], context: "#{context}[:ttl]") unless params[:ttl].nil?
        type.default_time_to_live = params[:default_time_to_live]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateTableOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTableOutput, context: context)
        type = Types::CreateTableOutput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module DeleteKeyspaceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteKeyspaceInput, context: context)
        type = Types::DeleteKeyspaceInput.new
        type.keyspace_name = params[:keyspace_name]
        type
      end
    end

    module DeleteKeyspaceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteKeyspaceOutput, context: context)
        type = Types::DeleteKeyspaceOutput.new
        type
      end
    end

    module DeleteTableInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTableInput, context: context)
        type = Types::DeleteTableInput.new
        type.keyspace_name = params[:keyspace_name]
        type.table_name = params[:table_name]
        type
      end
    end

    module DeleteTableOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTableOutput, context: context)
        type = Types::DeleteTableOutput.new
        type
      end
    end

    module EncryptionSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EncryptionSpecification, context: context)
        type = Types::EncryptionSpecification.new
        type.type = params[:type]
        type.kms_key_identifier = params[:kms_key_identifier]
        type
      end
    end

    module GetKeyspaceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetKeyspaceInput, context: context)
        type = Types::GetKeyspaceInput.new
        type.keyspace_name = params[:keyspace_name]
        type
      end
    end

    module GetKeyspaceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetKeyspaceOutput, context: context)
        type = Types::GetKeyspaceOutput.new
        type.keyspace_name = params[:keyspace_name]
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module GetTableInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTableInput, context: context)
        type = Types::GetTableInput.new
        type.keyspace_name = params[:keyspace_name]
        type.table_name = params[:table_name]
        type
      end
    end

    module GetTableOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTableOutput, context: context)
        type = Types::GetTableOutput.new
        type.keyspace_name = params[:keyspace_name]
        type.table_name = params[:table_name]
        type.resource_arn = params[:resource_arn]
        type.creation_timestamp = params[:creation_timestamp]
        type.status = params[:status]
        type.schema_definition = SchemaDefinition.build(params[:schema_definition], context: "#{context}[:schema_definition]") unless params[:schema_definition].nil?
        type.capacity_specification = CapacitySpecificationSummary.build(params[:capacity_specification], context: "#{context}[:capacity_specification]") unless params[:capacity_specification].nil?
        type.encryption_specification = EncryptionSpecification.build(params[:encryption_specification], context: "#{context}[:encryption_specification]") unless params[:encryption_specification].nil?
        type.point_in_time_recovery = PointInTimeRecoverySummary.build(params[:point_in_time_recovery], context: "#{context}[:point_in_time_recovery]") unless params[:point_in_time_recovery].nil?
        type.ttl = TimeToLive.build(params[:ttl], context: "#{context}[:ttl]") unless params[:ttl].nil?
        type.default_time_to_live = params[:default_time_to_live]
        type.comment = Comment.build(params[:comment], context: "#{context}[:comment]") unless params[:comment].nil?
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

    module KeyspaceSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KeyspaceSummary, context: context)
        type = Types::KeyspaceSummary.new
        type.keyspace_name = params[:keyspace_name]
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module KeyspaceSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << KeyspaceSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListKeyspacesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListKeyspacesInput, context: context)
        type = Types::ListKeyspacesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListKeyspacesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListKeyspacesOutput, context: context)
        type = Types::ListKeyspacesOutput.new
        type.next_token = params[:next_token]
        type.keyspaces = KeyspaceSummaryList.build(params[:keyspaces], context: "#{context}[:keyspaces]") unless params[:keyspaces].nil?
        type
      end
    end

    module ListTablesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTablesInput, context: context)
        type = Types::ListTablesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.keyspace_name = params[:keyspace_name]
        type
      end
    end

    module ListTablesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTablesOutput, context: context)
        type = Types::ListTablesOutput.new
        type.next_token = params[:next_token]
        type.tables = TableSummaryList.build(params[:tables], context: "#{context}[:tables]") unless params[:tables].nil?
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.next_token = params[:next_token]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module PartitionKey
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PartitionKey, context: context)
        type = Types::PartitionKey.new
        type.name = params[:name]
        type
      end
    end

    module PartitionKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PartitionKey.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PointInTimeRecovery
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PointInTimeRecovery, context: context)
        type = Types::PointInTimeRecovery.new
        type.status = params[:status]
        type
      end
    end

    module PointInTimeRecoverySummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PointInTimeRecoverySummary, context: context)
        type = Types::PointInTimeRecoverySummary.new
        type.status = params[:status]
        type.earliest_restorable_timestamp = params[:earliest_restorable_timestamp]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module RestoreTableInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RestoreTableInput, context: context)
        type = Types::RestoreTableInput.new
        type.source_keyspace_name = params[:source_keyspace_name]
        type.source_table_name = params[:source_table_name]
        type.target_keyspace_name = params[:target_keyspace_name]
        type.target_table_name = params[:target_table_name]
        type.restore_timestamp = params[:restore_timestamp]
        type.capacity_specification_override = CapacitySpecification.build(params[:capacity_specification_override], context: "#{context}[:capacity_specification_override]") unless params[:capacity_specification_override].nil?
        type.encryption_specification_override = EncryptionSpecification.build(params[:encryption_specification_override], context: "#{context}[:encryption_specification_override]") unless params[:encryption_specification_override].nil?
        type.point_in_time_recovery_override = PointInTimeRecovery.build(params[:point_in_time_recovery_override], context: "#{context}[:point_in_time_recovery_override]") unless params[:point_in_time_recovery_override].nil?
        type.tags_override = TagList.build(params[:tags_override], context: "#{context}[:tags_override]") unless params[:tags_override].nil?
        type
      end
    end

    module RestoreTableOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RestoreTableOutput, context: context)
        type = Types::RestoreTableOutput.new
        type.restored_table_arn = params[:restored_table_arn]
        type
      end
    end

    module SchemaDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SchemaDefinition, context: context)
        type = Types::SchemaDefinition.new
        type.all_columns = ColumnDefinitionList.build(params[:all_columns], context: "#{context}[:all_columns]") unless params[:all_columns].nil?
        type.partition_keys = PartitionKeyList.build(params[:partition_keys], context: "#{context}[:partition_keys]") unless params[:partition_keys].nil?
        type.clustering_keys = ClusteringKeyList.build(params[:clustering_keys], context: "#{context}[:clustering_keys]") unless params[:clustering_keys].nil?
        type.static_columns = StaticColumnList.build(params[:static_columns], context: "#{context}[:static_columns]") unless params[:static_columns].nil?
        type
      end
    end

    module ServiceQuotaExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceQuotaExceededException, context: context)
        type = Types::ServiceQuotaExceededException.new
        type.message = params[:message]
        type
      end
    end

    module StaticColumn
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StaticColumn, context: context)
        type = Types::StaticColumn.new
        type.name = params[:name]
        type
      end
    end

    module StaticColumnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StaticColumn.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TableSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TableSummary, context: context)
        type = Types::TableSummary.new
        type.keyspace_name = params[:keyspace_name]
        type.table_name = params[:table_name]
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module TableSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TableSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
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

    module TagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module TimeToLive
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TimeToLive, context: context)
        type = Types::TimeToLive.new
        type.status = params[:status]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module UpdateTableInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTableInput, context: context)
        type = Types::UpdateTableInput.new
        type.keyspace_name = params[:keyspace_name]
        type.table_name = params[:table_name]
        type.add_columns = ColumnDefinitionList.build(params[:add_columns], context: "#{context}[:add_columns]") unless params[:add_columns].nil?
        type.capacity_specification = CapacitySpecification.build(params[:capacity_specification], context: "#{context}[:capacity_specification]") unless params[:capacity_specification].nil?
        type.encryption_specification = EncryptionSpecification.build(params[:encryption_specification], context: "#{context}[:encryption_specification]") unless params[:encryption_specification].nil?
        type.point_in_time_recovery = PointInTimeRecovery.build(params[:point_in_time_recovery], context: "#{context}[:point_in_time_recovery]") unless params[:point_in_time_recovery].nil?
        type.ttl = TimeToLive.build(params[:ttl], context: "#{context}[:ttl]") unless params[:ttl].nil?
        type.default_time_to_live = params[:default_time_to_live]
        type
      end
    end

    module UpdateTableOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTableOutput, context: context)
        type = Types::UpdateTableOutput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type
      end
    end

  end
end
